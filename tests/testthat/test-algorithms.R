library(testthat)

# 定义图
graph <- data.frame(
  v1 = c(1, 1, 1, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 5, 5, 6, 6, 6),
  v2 = c(2, 3, 6, 1, 3, 4, 1, 2, 4, 6, 2, 3, 5, 4, 6, 1, 3, 5),
  w = c(7, 9, 14, 7, 10, 15, 9, 10, 11, 2, 15, 11, 6, 6, 9, 14, 2, 9)
)

# 测试 dijkstra 函数
test_that("dijkstra function returns correct shortest paths", {
  result <- dijkstra(graph, init_node = 1)

  # 输出结果，方便调试
  print("Result from dijkstra function:")
  print(result)

  # 更新预期路径
  expected_paths <- c(0, 7, 9, 20, 20, 11)  # 根据手动计算的结果

  print("Expected paths:")
  print(expected_paths)

  expect_equal(result, expected_paths)
})

# 测试 euclidean 函数（如果有）
test_that("euclidean function calculates GCD correctly", {
  expect_equal(euclidean(48, 18), 6)
  expect_equal(euclidean(123612, 13892347912), 4)
})


