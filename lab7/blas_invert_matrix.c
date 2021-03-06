#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <cblas.h>

void delete_matrix(float **mat){
    free(mat);
}

float **create_zero_matrix(int N){
    float **mat = malloc(N * sizeof(float*));
    if (!mat) return NULL;

    float *mat1 = calloc(N * N, sizeof(float));
    for (int i = 0; i < N; i++)
        mat[i] = &mat1[i * N];

    return mat;
}

float **create_user_matrix(int N){
    float **mat = create_zero_matrix(N);

    printf("Enter the matrix: \n");

    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j)
            scanf("%f", &mat[i][j]);
    }

    return mat;
}

float **create_random_matrix(int N){
    float **mat = create_zero_matrix(N);

    srand(time(NULL));

    //printf("Generated matrix: \n");

    for (int i = 0; i < N; ++i){
        for (int j = 0; j < N; ++j) {
            mat[i][j] = rand() % 100;
            //printf("%.1f ", mat[i][j]);
        }
        //printf("\n");
    }

    return mat;
}


float **create_unit_matrix(int N){
    float **mat = create_zero_matrix(N);

    for (int i = 0; i < N; ++i){
        for (int j = 0; j < N; ++j){
            if (i == j) mat[i][j] = 1;
        }
    }

    return mat;
}


float **transpose_matrix(float **matA, int N) {
    float **matB = create_zero_matrix(N);
    float **unit_mat = create_unit_matrix(N);

    cblas_sgemm(CblasRowMajor, CblasTrans, CblasNoTrans, N, N, N, (float)1.0, &matA[0][0],
                N, &unit_mat[0][0], N, (float)0.0, &matB[0][0], N);

    return matB;
}


float columns_norm(float **mat, int N){
    float max = 0;

    float **copy_mat = transpose_matrix(mat, N);

    for (int i = 0; i < N; ++i){
        float sum = 0;
        sum = cblas_sasum(N, copy_mat[i], 1);
        if (sum > max) max = sum;
    }

    delete_matrix(copy_mat);

    return max;
}

float rows_norm(float **mat, int N){
    float max = 0;

    for (int i = 0; i < N; ++i){
        float sum = 0;
        sum = cblas_sasum(N, mat[i], 1);
        if (sum > max) max = sum;
    }

    return max;
}


float **add_matrix(float **matA, float **matB, int N){
    for (int i = 0; i < N; ++i)
        cblas_saxpy(N, 1, matB[i], 1, matA[i], 1);

    return matA;
}

float** div_mat_by_num(float **mat, int N, float num){
    num = (float) 1 / num;

    for (int i = 0; i < N; ++i)
        cblas_sscal(N, num, mat[i], 1);

    return mat;
}

float **sub_matrix(float **matA, float **matB, int N){
    div_mat_by_num(matB, N, -1);

    add_matrix(matA, matB, N);

    return matA;
}


float **mul_matrix(float **matA, float **matB, int N){
    float **matC = create_zero_matrix(N);

    cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, N, N, N, (float)1.0, &matA[0][0],
            N, &matB[0][0], N, (float)0.0, &matC[0][0], N);

    delete_matrix(matA);

    return matC;
}


float **create_B_matrix(float **matA, int N){
    float **trans_matA = transpose_matrix(matA, N);

    float denom = columns_norm(matA, N) * rows_norm(matA, N);

    trans_matA = div_mat_by_num(trans_matA, N, denom);

    return trans_matA;

}

float **create_R_matrix(float **matA, int N) {
    float **mat_unit = create_unit_matrix(N);

    float **matB = create_B_matrix(matA, N);

    matB = mul_matrix(matB, matA, N);

    mat_unit = sub_matrix(mat_unit, matB, N);

    return mat_unit;
}



float **invert_matrix(float **matA, int N, int M){
    float **unit_mat = create_unit_matrix(N);

    float **matB = create_B_matrix(matA, N);

    float **sq_matR = create_unit_matrix(N);

    float **matR = create_R_matrix(matA, N);

    for (int i = 0; i < M - 1; ++i){
        sq_matR = mul_matrix(sq_matR, matR, N);
        unit_mat = add_matrix(unit_mat, sq_matR, N);
    }

    unit_mat = mul_matrix(unit_mat, matB, N);

    delete_matrix(matB);
    delete_matrix(sq_matR);
    delete_matrix(matR);

    return unit_mat;
}
