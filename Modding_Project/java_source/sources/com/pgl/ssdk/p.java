package com.pgl.ssdk;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes6.dex */
public abstract class p {
    public static o<ByteBuffer, Long> a(q qVar) throws IOException {
        if (qVar.a() < 22) {
            return null;
        }
        o<ByteBuffer, Long> a10 = a(qVar, 0);
        return a10 != null ? a10 : a(qVar, 65535);
    }

    private static int b(ByteBuffer byteBuffer) {
        a(byteBuffer);
        int capacity = byteBuffer.capacity();
        if (capacity < 22) {
            return -1;
        }
        int i10 = capacity - 22;
        int min = Math.min(i10, 65535);
        for (int i11 = 0; i11 <= min; i11++) {
            int i12 = i10 - i11;
            if (byteBuffer.getInt(i12) == 101010256 && a(byteBuffer, i12 + 20) == i11) {
                return i12;
            }
        }
        return -1;
    }

    public static long c(ByteBuffer byteBuffer) {
        a(byteBuffer);
        return b(byteBuffer, byteBuffer.position() + 16);
    }

    public static long d(ByteBuffer byteBuffer) {
        a(byteBuffer);
        return b(byteBuffer, byteBuffer.position() + 12);
    }

    public static int e(ByteBuffer byteBuffer) {
        a(byteBuffer);
        return a(byteBuffer, byteBuffer.position() + 10);
    }

    private static o<ByteBuffer, Long> a(q qVar, int i10) throws IOException {
        if (i10 >= 0 && i10 <= 65535) {
            long a10 = qVar.a();
            if (a10 < 22) {
                return null;
            }
            int min = ((int) Math.min(i10, a10 - 22)) + 22;
            long j10 = a10 - min;
            ByteBuffer a11 = qVar.a(j10, min);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            a11.order(byteOrder);
            int b10 = b(a11);
            if (b10 == -1) {
                return null;
            }
            a11.position(b10);
            ByteBuffer slice = a11.slice();
            slice.order(byteOrder);
            return o.a(slice, Long.valueOf(j10 + b10));
        }
        throw new IllegalArgumentException("maxCommentSize: ".concat(String.valueOf(i10)));
    }

    static long b(ByteBuffer byteBuffer, int i10) {
        return byteBuffer.getInt(i10) & 4294967295L;
    }

    static void a(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static int a(ByteBuffer byteBuffer, int i10) {
        return byteBuffer.getShort(i10) & 65535;
    }
}
