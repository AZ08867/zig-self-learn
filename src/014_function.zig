const std = @import("std");

pub fn main() void {
    const answer: u8 = deepThought();
    std.debug.print("Answer to the Ultimate Question: {}\n", .{answer});

    // 调用twoToThe函数
    std.debug.print("Powers of two: {} {} {} {}\n", .{ twoToThe(1), twoToThe(2), twoToThe(3), twoToThe(4) });
}

// 定义 deepThought 函数
// 1. 不需要参数 ()
// 2. 返回类型是 u8
// 3. 这里的 42 刚好在 u8 (0-255) 的范围内
fn deepThought() u8 {
    return 42;
}

// 语法 examples：
//     fn foo(n: u8) u8 {
//         return n + 1;
//     }
//

//     fn myFunction(number: u8, is_lucky: bool) {
//         ...
//     }

fn twoToThe(my_number: u32) u32 {
    // std.math.pow(T,x,y)
    // T: 返回的结果类型
    // 计算 x^y
    return std.math.pow(u32, 2, my_number);
}
