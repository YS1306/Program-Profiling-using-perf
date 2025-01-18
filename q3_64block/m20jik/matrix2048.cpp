#include<iostream>

using namespace std;

#define MAX_SIZE 2048 // Maximum size of the matrices

void multiplyMatrices(int **A, int **B1, int **C, int B) 
{
    

    // Multiply A and B, store the result in C
    for(int j=0; j<MAX_SIZE; j=j+B) 
        for(int i=0; i<MAX_SIZE; i=i+B){ 
            C[i][j] = 0;
            for (int k=0; k < MAX_SIZE; k=k+B) 
                for(int jj=j; jj<j+B; jj++) 
                    for(int ii=i; ii < i+B; ii++){
                        for(int kk=k; kk < k+B; kk++){ 
                            C[ii][jj] += A[ii][kk] * B1[kk][jj]; 
                                                }
                                            }
                             }
}

void generateMatrix(int **matrix) {
    for (int i = 0; i < MAX_SIZE; ++i) {
        for (int j = 0; j < MAX_SIZE; ++j) {
            matrix[i][j] = rand() % 100; // Random integers from 0 to 99
        }
    }
}


// void printMatrix(int **matrix) {
//     cout<<"{";
//     for (int i = 0; i < MAX_SIZE; ++i) {
//       cout<<"{";
//         for (int j = 0; j < MAX_SIZE; ++j) {
//             cout << matrix[i][j]<<","<< " ";
//         }
//         cout<<"},";
//         cout << endl;
//     }
//     cout<<"}";
// }

int main() {

srand(static_cast<unsigned int>(time(0))); // Seed the random number generator

    int **B1 = (int**)(malloc(MAX_SIZE*sizeof(int*)));
    int **A = (int**)(malloc(MAX_SIZE*sizeof(int*)));
    int **C = (int**)(malloc(MAX_SIZE*sizeof(int*)));

    for(int i=0; i<MAX_SIZE; i++){
        B1[i] = (int*)(malloc(MAX_SIZE*sizeof(int)));
        C[i] = (int*)(malloc(MAX_SIZE*sizeof(int)));
        A[i] = (int*)(malloc(MAX_SIZE*sizeof(int)));
        
    }

    generateMatrix(A);
    generateMatrix(B1);

    // Initialize the resulting matrix C to 0
    // int C[MAX_SIZE][MAX_SIZE] = {0};

//    printMatrix(A);
    // printMatrix(A);  

    //A Matrix
    
    multiplyMatrices(A, B1, C, 64);

    // printMatrix(C);                                                 

    return 0;
}
