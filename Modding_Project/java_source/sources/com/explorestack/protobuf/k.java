package com.explorestack.protobuf;

import com.appsflyer.AppsFlyerProperties;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* compiled from: ByteBufferWriter.java */
/* loaded from: classes3.dex */
final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<SoftReference<byte[]>> f14438a = new ThreadLocal<>();

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?> f14439b;

    /* renamed from: c  reason: collision with root package name */
    private static final long f14440c;

    static {
        Class<?> e10 = e("java.io.FileOutputStream");
        f14439b = e10;
        f14440c = b(e10);
    }

    private static byte[] a() {
        SoftReference<byte[]> softReference = f14438a.get();
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    private static long b(Class<?> cls) {
        if (cls != null) {
            try {
                if (o2.J()) {
                    return o2.M(cls.getDeclaredField(AppsFlyerProperties.CHANNEL));
                }
                return -1L;
            } catch (Throwable unused) {
                return -1L;
            }
        }
        return -1L;
    }

    private static byte[] c(int i10) {
        int max = Math.max(i10, 1024);
        byte[] a10 = a();
        if (a10 == null || d(max, a10.length)) {
            a10 = new byte[max];
            if (max <= 16384) {
                f(a10);
            }
        }
        return a10;
    }

    private static boolean d(int i10, int i11) {
        if (i11 < i10 && i11 < i10 * 0.5f) {
            return true;
        }
        return false;
    }

    private static Class<?> e(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private static void f(byte[] bArr) {
        f14438a.set(new SoftReference<>(bArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(ByteBuffer byteBuffer, OutputStream outputStream) throws IOException {
        int position = byteBuffer.position();
        try {
            if (byteBuffer.hasArray()) {
                outputStream.write(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            } else if (!h(byteBuffer, outputStream)) {
                byte[] c10 = c(byteBuffer.remaining());
                while (byteBuffer.hasRemaining()) {
                    int min = Math.min(byteBuffer.remaining(), c10.length);
                    byteBuffer.get(c10, 0, min);
                    outputStream.write(c10, 0, min);
                }
            }
            byteBuffer.position(position);
        } catch (Throwable th2) {
            byteBuffer.position(position);
            throw th2;
        }
    }

    private static boolean h(ByteBuffer byteBuffer, OutputStream outputStream) throws IOException {
        WritableByteChannel writableByteChannel;
        long j10 = f14440c;
        if (j10 >= 0 && f14439b.isInstance(outputStream)) {
            try {
                writableByteChannel = (WritableByteChannel) o2.G(outputStream, j10);
            } catch (ClassCastException unused) {
                writableByteChannel = null;
            }
            if (writableByteChannel != null) {
                writableByteChannel.write(byteBuffer);
                return true;
            }
            return false;
        }
        return false;
    }
}
