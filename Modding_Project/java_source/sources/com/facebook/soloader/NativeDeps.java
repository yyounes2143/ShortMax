package com.facebook.soloader;

import android.annotation.SuppressLint;
import android.os.StrictMode;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.facebook.soloader.MinElf;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes2.dex */
public final class NativeDeps {

    /* renamed from: a  reason: collision with root package name */
    private static final int f16807a = 3;

    /* renamed from: b  reason: collision with root package name */
    private static final int f16808b = 3;

    /* renamed from: d  reason: collision with root package name */
    private static volatile boolean f16810d = false;

    /* renamed from: e  reason: collision with root package name */
    private static byte[] f16811e = null;

    /* renamed from: f  reason: collision with root package name */
    private static List<Integer> f16812f = null;

    /* renamed from: g  reason: collision with root package name */
    private static Map<Integer, List<Integer>> f16813g = null;

    /* renamed from: h  reason: collision with root package name */
    private static volatile boolean f16814h = false;

    /* renamed from: c  reason: collision with root package name */
    private static final int f16809c = 3 + 3;

    /* renamed from: i  reason: collision with root package name */
    private static final ReentrantReadWriteLock f16815i = new ReentrantReadWriteLock();

    /* renamed from: j  reason: collision with root package name */
    private static final HashSet<String> f16816j = new HashSet<String>() { // from class: com.facebook.soloader.NativeDeps.1
        {
            add("libEGL.so");
            add("libGLESv2.so");
            add("libGLESv3.so");
            add("libOpenSLES.so");
            add("libandroid.so");
            add("libc.so");
            add("libdl.so");
            add("libjnigraphics.so");
            add("liblog.so");
            add("libm.so");
            add("libstdc++.so");
            add("libz.so");
        }
    };

    private static String[] a(String str) {
        if (f16810d) {
            return i(str);
        }
        if (!f16814h) {
            return null;
        }
        ReentrantReadWriteLock reentrantReadWriteLock = f16815i;
        reentrantReadWriteLock.readLock().lock();
        try {
            String[] i10 = i(str);
            reentrantReadWriteLock.readLock().unlock();
            return i10;
        } catch (Throwable th2) {
            f16815i.readLock().unlock();
            throw th2;
        }
    }

    @SuppressLint({"CatchGeneralException", "EmptyCatchBlock"})
    public static String[] b(String str, h hVar) throws IOException {
        boolean z10 = SoLoader.f16817a;
        if (z10) {
            Api18TraceUtils.a("soloader.NativeDeps.getDependencies[", str, "]");
        }
        x4.b.b();
        try {
            try {
                String[] a10 = a(str);
                if (a10 != null) {
                    x4.b.a(null);
                    if (z10) {
                        Api18TraceUtils.b();
                    }
                    return a10;
                }
                String[] a11 = MinElf.a(hVar);
                x4.b.a(null);
                if (z10) {
                    Api18TraceUtils.b();
                }
                return a11;
            } catch (MinElf.ElfError e10) {
                throw v.b(str, e10);
            } catch (Error e11) {
                e = e11;
                throw e;
            } catch (RuntimeException e12) {
                e = e12;
                throw e;
            }
        } catch (Throwable th2) {
            x4.b.a(null);
            if (SoLoader.f16817a) {
                Api18TraceUtils.b();
            }
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String[] c(int r6, int r7) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            int r6 = r6 + r7
            int r7 = com.facebook.soloader.NativeDeps.f16809c
            int r6 = r6 - r7
            r7 = 0
            r1 = r7
            r2 = r1
        Lc:
            byte[] r3 = com.facebook.soloader.NativeDeps.f16811e
            int r4 = r3.length
            r5 = 0
            if (r6 >= r4) goto L3e
            r3 = r3[r6]
            r4 = 10
            if (r3 == r4) goto L3e
            r4 = 32
            if (r3 != r4) goto L2b
            if (r2 == 0) goto L3a
            java.lang.String r1 = d(r1)
            if (r1 != 0) goto L25
            return r5
        L25:
            r0.add(r1)
            r1 = r7
            r2 = r1
            goto L3a
        L2b:
            r2 = 48
            if (r3 < r2) goto L3d
            r2 = 57
            if (r3 <= r2) goto L34
            goto L3d
        L34:
            int r1 = r1 * 10
            int r3 = r3 + (-48)
            int r1 = r1 + r3
            r2 = 1
        L3a:
            int r6 = r6 + 1
            goto Lc
        L3d:
            return r5
        L3e:
            if (r2 == 0) goto L4a
            java.lang.String r6 = d(r1)
            if (r6 != 0) goto L47
            return r5
        L47:
            r0.add(r6)
        L4a:
            boolean r6 = r0.isEmpty()
            if (r6 == 0) goto L51
            return r5
        L51:
            int r6 = r0.size()
            java.lang.String[] r6 = new java.lang.String[r6]
            java.lang.Object[] r6 = r0.toArray(r6)
            java.lang.String[] r6 = (java.lang.String[]) r6
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.NativeDeps.c(int, int):java.lang.String[]");
    }

    private static String d(int i10) {
        if (i10 >= f16812f.size()) {
            return null;
        }
        int intValue = f16812f.get(i10).intValue();
        int i11 = intValue;
        while (true) {
            byte[] bArr = f16811e;
            if (i11 >= bArr.length || bArr[i11] <= 32) {
                break;
            }
            i11++;
        }
        int i12 = (i11 - intValue) + f16809c;
        char[] cArr = new char[i12];
        cArr[0] = 'l';
        cArr[1] = 'i';
        cArr[2] = 'b';
        for (int i13 = 0; i13 < i12 - f16809c; i13++) {
            cArr[f16807a + i13] = (char) f16811e[intValue + i13];
        }
        cArr[i12 - 3] = '.';
        cArr[i12 - 2] = 's';
        cArr[i12 - 1] = 'o';
        return new String(cArr);
    }

    private static int e(String str) {
        List<Integer> list = f16813g.get(Integer.valueOf(f(str)));
        if (list == null) {
            return -1;
        }
        for (Integer num : list) {
            int intValue = num.intValue();
            if (g(str, intValue)) {
                return intValue;
            }
        }
        return -1;
    }

    private static int f(String str) {
        int i10 = 5381;
        for (int i11 = f16807a; i11 < str.length() - f16808b; i11++) {
            i10 = str.codePointAt(i11) + (i10 << 5) + i10;
        }
        return i10;
    }

    private static boolean g(String str, int i10) {
        int i11;
        int i12 = f16807a;
        while (true) {
            int length = str.length();
            i11 = f16808b;
            if (i12 >= length - i11 || i10 >= f16811e.length || (str.codePointAt(i12) & 255) != f16811e[i10]) {
                break;
            }
            i12++;
            i10++;
        }
        if (i12 == str.length() - i11) {
            return true;
        }
        return false;
    }

    public static void h(String str, h hVar, int i10, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        String[] b10 = b(str, hVar);
        o.a("SoLoader", "Loading " + str + "'s dependencies: " + Arrays.toString(b10));
        for (String str2 : b10) {
            if (!str2.startsWith(DomExceptionUtils.SEPARATOR) && !f16816j.contains(str2)) {
                SoLoader.r(str2, i10, threadPolicy);
            }
        }
    }

    static String[] i(String str) {
        int e10;
        if (!f16810d || str.length() <= f16809c || (e10 = e(str)) == -1) {
            return null;
        }
        return c(e10, str.length());
    }
}
