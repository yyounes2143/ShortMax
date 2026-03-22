package com.mbridge.msdk.foundation.tools;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.SecureRandom;
/* compiled from: Util.java */
/* loaded from: classes5.dex */
class c1 {

    /* compiled from: Util.java */
    /* loaded from: classes5.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        static final char[] f27390a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

        /* renamed from: b  reason: collision with root package name */
        static final SecureRandom f27391b = new SecureRandom();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int[] iArr, int i10) {
        int length = (iArr.length >> 1) - 1;
        int i11 = 0;
        while (i11 <= length) {
            int i12 = (i11 + length) >>> 1;
            int i13 = iArr[i12 << 1];
            if (i13 < i10) {
                i11 = i12 + 1;
            } else if (i13 <= i10) {
                return i12;
            } else {
                length = i12 - 1;
            }
        }
        return length;
    }

    private static void b(File file) {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                b(file2);
            }
        }
        file.delete();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] c(File file) throws IOException {
        if (!file.isFile()) {
            return null;
        }
        long length = file.length();
        if ((length >> 32) == 0) {
            int i10 = (int) length;
            byte[] bArr = new byte[i10];
            a(file, bArr, i10);
            return bArr;
        }
        throw new IllegalArgumentException("file too large, path:" + file.getPath());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(File file) throws IOException {
        if (file.isFile()) {
            return true;
        }
        File parentFile = file.getParentFile();
        if (parentFile != null && ((parentFile.isDirectory() || parentFile.mkdirs()) && file.createNewFile())) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(File file) {
        try {
            if (file.exists()) {
                b(file);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(File file, byte[] bArr, int i10) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        int i11 = 0;
        while (i11 < i10) {
            try {
                int read = randomAccessFile.read(bArr, i11, i10 - i11);
                if (read < 0) {
                    break;
                }
                i11 += read;
            } finally {
                a(randomAccessFile);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b() {
        byte[] bArr = new byte[16];
        a.f27391b.nextBytes(bArr);
        char[] cArr = new char[32];
        for (int i10 = 0; i10 < 16; i10++) {
            byte b10 = bArr[i10];
            int i11 = i10 << 1;
            char[] cArr2 = a.f27390a;
            cArr[i11] = cArr2[(b10 >> 4) & 15];
            cArr[i11 + 1] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            Method declaredMethod = cls.getDeclaredMethod("pageSize", new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Integer) declaredMethod.invoke(declaredField.get(null), new Object[0])).intValue();
        } catch (Throwable unused) {
            return 4096;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(File file, byte[] bArr) {
        File file2;
        try {
            String parent = file.getParent();
            file2 = new File(parent, file.getName() + ".tmp");
        } catch (Exception unused) {
        }
        if (d(file2)) {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rw");
            randomAccessFile.setLength(bArr.length);
            randomAccessFile.write(bArr);
            a(randomAccessFile);
            if (!file.exists() || file.delete()) {
                return file2.renameTo(file);
            }
            return false;
        }
        return false;
    }
}
