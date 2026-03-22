package s2;

import java.io.UnsupportedEncodingException;
/* compiled from: WebpSupportStatus.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f66252a = true;

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f66253b = e();

    /* renamed from: c  reason: collision with root package name */
    public static b f66254c = null;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f66255d = false;

    /* renamed from: e  reason: collision with root package name */
    private static final byte[] f66256e = a("RIFF");

    /* renamed from: f  reason: collision with root package name */
    private static final byte[] f66257f = a("WEBP");

    /* renamed from: g  reason: collision with root package name */
    private static final byte[] f66258g = a("VP8 ");

    /* renamed from: h  reason: collision with root package name */
    private static final byte[] f66259h = a("VP8L");

    /* renamed from: i  reason: collision with root package name */
    private static final byte[] f66260i = a("VP8X");

    private static byte[] a(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("ASCII not found!", e10);
        }
    }

    public static boolean b(byte[] bArr, int i10) {
        boolean z10;
        boolean j10 = j(bArr, i10 + 12, f66260i);
        if ((bArr[i10 + 20] & 2) == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!j10 || !z10) {
            return false;
        }
        return true;
    }

    public static boolean c(byte[] bArr, int i10, int i11) {
        if (i11 >= 21 && j(bArr, i10 + 12, f66260i)) {
            return true;
        }
        return false;
    }

    public static boolean d(byte[] bArr, int i10) {
        boolean z10;
        boolean j10 = j(bArr, i10 + 12, f66260i);
        if ((bArr[i10 + 20] & 16) == 16) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!j10 || !z10) {
            return false;
        }
        return true;
    }

    private static boolean e() {
        return true;
    }

    public static boolean f(byte[] bArr, int i10) {
        return j(bArr, i10 + 12, f66259h);
    }

    public static boolean g(byte[] bArr, int i10) {
        return j(bArr, i10 + 12, f66258g);
    }

    public static boolean h(byte[] bArr, int i10, int i11) {
        if (i11 >= 20 && j(bArr, i10, f66256e) && j(bArr, i10 + 8, f66257f)) {
            return true;
        }
        return false;
    }

    public static b i() {
        b bVar;
        if (f66255d) {
            return f66254c;
        }
        try {
            bVar = (b) Class.forName("com.facebook.webpsupport.WebpBitmapFactoryImpl").newInstance();
        } catch (Throwable unused) {
            bVar = null;
        }
        f66255d = true;
        return bVar;
    }

    private static boolean j(byte[] bArr, int i10, byte[] bArr2) {
        if (bArr2 == null || bArr == null || bArr2.length + i10 > bArr.length) {
            return false;
        }
        for (int i11 = 0; i11 < bArr2.length; i11++) {
            if (bArr[i11 + i10] != bArr2[i11]) {
                return false;
            }
        }
        return true;
    }
}
