const std = @import("std");

pub fn main() void {
    const answer: u8 = deepThought();
    std.debug.print("Answer to the Ultimate Question: {}\n", .{answer});
}

// 定义 deepThought 函数
// 1. 不需要参数 ()
// 2. 返回类型是 u8
// 3. 这里的 42 刚好在 u8 (0-255) 的范围内
fn deepThought() u8 {
    return 42;
}

// 语法：
//     fn foo(n: u8) u8 {
//         return n + 1;
//     }
//
