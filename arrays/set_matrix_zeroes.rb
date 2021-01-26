# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
    is_col = false
    row_size = matrix.length
    col_size = matrix[0].length
    
    for i in (0..row_size - 1)
        if(matrix[i][0] == 0)
            is_col = true
        end
        for j in (1..col_size - 1)
            if(matrix[i][j] == 0)
                matrix[0][j] = 0
                matrix[i][0] = 0
            end
        end
    end
    
    for i in (1..row_size - 1)
        for j in (1..col_size - 1)
            if(matrix[i][0] == 0 || matrix[0][j] == 0)
                matrix[i][j] = 0
            end
        end
    end
    
    if (matrix[0][0] == 0)
        for j in (0..col_size - 1)
            matrix[0][j] = 0
        end
    end
    
    if is_col
        for i in (0..row_size - 1)
            matrix[i][0] = 0
        end
    end
end
