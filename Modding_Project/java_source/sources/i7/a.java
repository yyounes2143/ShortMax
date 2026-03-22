package i7;

import h7.k;
import j7.d;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Queue;
/* compiled from: ByteStreams.java */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final OutputStream f53319a = new C0773a();

    /* compiled from: ByteStreams.java */
    /* renamed from: i7.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class C0773a extends OutputStream {
        C0773a() {
        }

        public String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i10) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            k.j(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i10, int i11) {
            k.j(bArr);
            k.n(i10, i11 + i10, bArr.length);
        }
    }

    private static byte[] a(Queue<byte[]> queue, int i10) {
        if (queue.isEmpty()) {
            return new byte[0];
        }
        byte[] remove = queue.remove();
        if (remove.length == i10) {
            return remove;
        }
        int length = i10 - remove.length;
        byte[] copyOf = Arrays.copyOf(remove, i10);
        while (length > 0) {
            byte[] remove2 = queue.remove();
            int min = Math.min(length, remove2.length);
            System.arraycopy(remove2, 0, copyOf, i10 - length, min);
            length -= min;
        }
        return copyOf;
    }

    public static byte[] b(InputStream inputStream) throws IOException {
        k.j(inputStream);
        return c(inputStream, new ArrayDeque(20), 0);
    }

    private static byte[] c(InputStream inputStream, Queue<byte[]> queue, int i10) throws IOException {
        int i11;
        int min = Math.min(8192, Math.max(128, Integer.highestOneBit(i10) * 2));
        while (i10 < 2147483639) {
            int min2 = Math.min(min, 2147483639 - i10);
            byte[] bArr = new byte[min2];
            queue.add(bArr);
            int i12 = 0;
            while (i12 < min2) {
                int read = inputStream.read(bArr, i12, min2 - i12);
                if (read == -1) {
                    return a(queue, i10);
                }
                i12 += read;
                i10 += read;
            }
            if (min < 4096) {
                i11 = 4;
            } else {
                i11 = 2;
            }
            min = d.c(min, i11);
        }
        if (inputStream.read() == -1) {
            return a(queue, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }
}
