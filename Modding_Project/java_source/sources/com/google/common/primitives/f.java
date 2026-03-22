package com.google.common.primitives;

import h7.k;
import java.util.Arrays;
/* compiled from: Longs.java */
/* loaded from: classes5.dex */
public final class f {

    /* compiled from: Longs.java */
    /* loaded from: classes5.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final byte[] f20303a;

        static {
            byte[] bArr = new byte[128];
            Arrays.fill(bArr, (byte) -1);
            for (int i10 = 0; i10 < 10; i10++) {
                bArr[i10 + 48] = (byte) i10;
            }
            for (int i11 = 0; i11 < 26; i11++) {
                byte b10 = (byte) (i11 + 10);
                bArr[i11 + 65] = b10;
                bArr[i11 + 97] = b10;
            }
            f20303a = bArr;
        }

        static int a(char c10) {
            if (c10 < 128) {
                return f20303a[c10];
            }
            return -1;
        }
    }

    public static int a(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static long b(long... jArr) {
        boolean z10;
        if (jArr.length > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k.d(z10);
        long j10 = jArr[0];
        for (int i10 = 1; i10 < jArr.length; i10++) {
            long j11 = jArr[i10];
            if (j11 > j10) {
                j10 = j11;
            }
        }
        return j10;
    }

    public static Long c(String str, int i10) {
        if (((String) k.j(str)).isEmpty()) {
            return null;
        }
        if (i10 >= 2 && i10 <= 36) {
            int i11 = 0;
            if (str.charAt(0) == '-') {
                i11 = 1;
            }
            if (i11 == str.length()) {
                return null;
            }
            int i12 = i11 + 1;
            int a10 = a.a(str.charAt(i11));
            if (a10 < 0 || a10 >= i10) {
                return null;
            }
            long j10 = -a10;
            long j11 = i10;
            long j12 = Long.MIN_VALUE / j11;
            while (i12 < str.length()) {
                int i13 = i12 + 1;
                int a11 = a.a(str.charAt(i12));
                if (a11 < 0 || a11 >= i10 || j10 < j12) {
                    return null;
                }
                long j13 = j10 * j11;
                long j14 = a11;
                if (j13 < j14 - Long.MIN_VALUE) {
                    return null;
                }
                j10 = j13 - j14;
                i12 = i13;
            }
            if (i11 != 0) {
                return Long.valueOf(j10);
            }
            if (j10 == Long.MIN_VALUE) {
                return null;
            }
            return Long.valueOf(-j10);
        }
        throw new IllegalArgumentException("radix must be between MIN_RADIX and MAX_RADIX but was " + i10);
    }
}
