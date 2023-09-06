const print = @import("std").debug.print;
pub fn main() !void {
    const foo = [3]*const [5]u8{ "~{s}~", "<{s}>", "d{s}b" };
    comptime var i = 0;

    inline while (i < foo.len) : (i += 1) {
        print(foo[i] ++ "\n", .{foo[i]});
    }
}
