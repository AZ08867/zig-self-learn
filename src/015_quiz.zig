const std = @import("std");

pub fn main() !void {
    const my_numbers = [4]u16{ 5, 6, 7, 8 };
    // 处理my_number数组中的每一个数字对应的2的幂次方
    printPowerOfTwo(my_numbers);
}

fn printPowerOfTwo(numbers: [4]u16) void {
    for (numbers) |v| {
        std.debug.print("{}\n", .{twoToThe(v)});
    }
}

fn twoToThe(number: u16) u16 {
    var n: u16 = 0;
    var total: u16 = 1;
    while (n < number) : (n += 1) {
        total *= 2;
    }
    return total;
}
