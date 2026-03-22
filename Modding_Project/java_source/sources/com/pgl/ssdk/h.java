package com.pgl.ssdk;

import androidx.collection.SieveCacheKt;
import com.pgl.ssdk.d;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes6.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f36761a = "0123456789abcdef".toCharArray();

    public static i a(q qVar, t tVar, int i10) throws IOException, j {
        try {
            d.a a10 = d.a(qVar, tVar);
            long b10 = a10.b();
            q a11 = a10.a();
            ByteBuffer a12 = a11.a(0L, (int) a11.a());
            a12.order(ByteOrder.LITTLE_ENDIAN);
            return new i(a(a12, i10), b10, tVar.a(), tVar.e(), tVar.d());
        } catch (b e10) {
            throw new j(e10.getMessage(), e10);
        }
    }

    private static ByteBuffer b(ByteBuffer byteBuffer, int i10) {
        if (i10 >= 0) {
            int limit = byteBuffer.limit();
            int position = byteBuffer.position();
            int i11 = i10 + position;
            if (i11 >= position && i11 <= limit) {
                byteBuffer.limit(i11);
                try {
                    ByteBuffer slice = byteBuffer.slice();
                    slice.order(byteBuffer.order());
                    byteBuffer.position(i11);
                    return slice;
                } finally {
                    byteBuffer.limit(limit);
                }
            }
            throw new BufferUnderflowException();
        }
        throw new IllegalArgumentException("size: ".concat(String.valueOf(i10)));
    }

    public static byte[] c(ByteBuffer byteBuffer) throws a {
        int i10 = byteBuffer.getInt();
        if (i10 >= 0) {
            if (i10 <= byteBuffer.remaining()) {
                byte[] bArr = new byte[i10];
                byteBuffer.get(bArr);
                return bArr;
            }
            throw new a("Underflow while reading length-prefixed value. Length: " + i10 + ", available: " + byteBuffer.remaining());
        }
        throw new a("Negative length");
    }

    public static ByteBuffer b(ByteBuffer byteBuffer) throws a {
        if (byteBuffer.remaining() >= 4) {
            int i10 = byteBuffer.getInt();
            if (i10 >= 0) {
                if (i10 <= byteBuffer.remaining()) {
                    return b(byteBuffer, i10);
                }
                throw new a("Length-prefixed field longer than remaining buffer. Field length: " + i10 + ", remaining: " + byteBuffer.remaining());
            }
            throw new IllegalArgumentException("Negative length");
        }
        throw new a("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + byteBuffer.remaining());
    }

    public static ByteBuffer a(ByteBuffer byteBuffer, int i10) throws j {
        a(byteBuffer);
        ByteBuffer a10 = a(byteBuffer, 8, byteBuffer.capacity() - 24);
        int i11 = 0;
        while (a10.hasRemaining()) {
            i11++;
            if (a10.remaining() >= 8) {
                long j10 = a10.getLong();
                if (j10 >= 4 && j10 <= SieveCacheKt.NodeLinkMask) {
                    int i12 = (int) j10;
                    int position = a10.position() + i12;
                    if (i12 <= a10.remaining()) {
                        if (a10.getInt() == i10) {
                            return b(a10, i12 - 4);
                        }
                        a10.position(position);
                    } else {
                        throw new j("APK Signing Block entry #" + i11 + " size out of range: " + i12 + ", available: " + a10.remaining());
                    }
                } else {
                    throw new j("APK Signing Block entry #" + i11 + " size out of range: " + j10);
                }
            } else {
                throw new j("Insufficient data to read size of APK Signing Block entry #".concat(String.valueOf(i11)));
            }
        }
        throw new j("No APK Signature Scheme block in APK Signing Block with ID: ".concat(String.valueOf(i10)));
    }

    public static void a(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static ByteBuffer a(ByteBuffer byteBuffer, int i10, int i11) {
        if (i10 >= 0) {
            if (i11 >= i10) {
                int capacity = byteBuffer.capacity();
                if (i11 <= byteBuffer.capacity()) {
                    int limit = byteBuffer.limit();
                    int position = byteBuffer.position();
                    try {
                        byteBuffer.position(0);
                        byteBuffer.limit(i11);
                        byteBuffer.position(i10);
                        ByteBuffer slice = byteBuffer.slice();
                        slice.order(byteBuffer.order());
                        return slice;
                    } finally {
                        byteBuffer.position(0);
                        byteBuffer.limit(limit);
                        byteBuffer.position(position);
                    }
                }
                throw new IllegalArgumentException("end > capacity: " + i11 + " > " + capacity);
            }
            throw new IllegalArgumentException("end < start: " + i11 + " < " + i10);
        }
        throw new IllegalArgumentException("start: ".concat(String.valueOf(i10)));
    }
}
