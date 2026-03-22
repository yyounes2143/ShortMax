package com.mbridge.msdk.thrid.okio;

import com.inmobi.commons.core.configs.AdConfig;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
/* compiled from: ByteString.java */
/* loaded from: classes6.dex */
public class f implements Serializable, Comparable<f> {

    /* renamed from: d  reason: collision with root package name */
    static final char[] f30134d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: e  reason: collision with root package name */
    public static final f f30135e = a(new byte[0]);

    /* renamed from: a  reason: collision with root package name */
    final byte[] f30136a;

    /* renamed from: b  reason: collision with root package name */
    transient int f30137b;

    /* renamed from: c  reason: collision with root package name */
    transient String f30138c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(byte[] bArr) {
        this.f30136a = bArr;
    }

    public static f a(byte... bArr) {
        if (bArr != null) {
            return new f((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    private f b(String str) {
        try {
            return a(MessageDigest.getInstance(str).digest(this.f30136a));
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    public static f c(String str) {
        if (str != null) {
            f fVar = new f(str.getBytes(u.f30179a));
            fVar.f30138c = str;
            return fVar;
        }
        throw new IllegalArgumentException("s == null");
    }

    public f d() {
        return b("SHA-256");
    }

    public int e() {
        return this.f30136a.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            int e10 = fVar.e();
            byte[] bArr = this.f30136a;
            if (e10 == bArr.length && fVar.a(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public f f() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f30136a;
            if (i10 < bArr.length) {
                byte b10 = bArr[i10];
                if (b10 >= 65 && b10 <= 90) {
                    byte[] bArr2 = (byte[]) bArr.clone();
                    bArr2[i10] = (byte) (b10 + 32);
                    for (int i11 = i10 + 1; i11 < bArr2.length; i11++) {
                        byte b11 = bArr2[i11];
                        if (b11 >= 65 && b11 <= 90) {
                            bArr2[i11] = (byte) (b11 + 32);
                        }
                    }
                    return new f(bArr2);
                }
                i10++;
            } else {
                return this;
            }
        }
    }

    public byte[] g() {
        return (byte[]) this.f30136a.clone();
    }

    public String h() {
        String str = this.f30138c;
        if (str == null) {
            String str2 = new String(this.f30136a, u.f30179a);
            this.f30138c = str2;
            return str2;
        }
        return str;
    }

    public int hashCode() {
        int i10 = this.f30137b;
        if (i10 == 0) {
            int hashCode = Arrays.hashCode(this.f30136a);
            this.f30137b = hashCode;
            return hashCode;
        }
        return i10;
    }

    public String toString() {
        StringBuilder sb2;
        if (this.f30136a.length == 0) {
            return "[size=0]";
        }
        String h10 = h();
        int a10 = a(h10, 64);
        if (a10 == -1) {
            if (this.f30136a.length <= 64) {
                return "[hex=" + b() + "]";
            }
            return "[size=" + this.f30136a.length + " hex=" + a(0, 64).b() + "…]";
        }
        String replace = h10.substring(0, a10).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (a10 < h10.length()) {
            sb2 = new StringBuilder();
            sb2.append("[size=");
            sb2.append(this.f30136a.length);
            sb2.append(" text=");
            sb2.append(replace);
            sb2.append("…]");
        } else {
            sb2 = new StringBuilder();
            sb2.append("[text=");
            sb2.append(replace);
            sb2.append("]");
        }
        return sb2.toString();
    }

    public String a() {
        return b.a(this.f30136a);
    }

    public String b() {
        byte[] bArr = this.f30136a;
        char[] cArr = new char[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = f30134d;
            cArr[i10] = cArr2[(b10 >> 4) & 15];
            i10 += 2;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public static f a(String str) {
        if (str != null) {
            if (str.length() % 2 == 0) {
                int length = str.length() / 2;
                byte[] bArr = new byte[length];
                for (int i10 = 0; i10 < length; i10++) {
                    int i11 = i10 * 2;
                    bArr[i10] = (byte) ((a(str.charAt(i11)) << 4) + a(str.charAt(i11 + 1)));
                }
                return a(bArr);
            }
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        throw new IllegalArgumentException("hex == null");
    }

    public f c() {
        return b(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1);
    }

    public final boolean b(f fVar) {
        return a(0, fVar, 0, fVar.e());
    }

    private static int a(char c10) {
        if (c10 < '0' || c10 > '9') {
            if (c10 < 'a' || c10 > 'f') {
                if (c10 < 'A' || c10 > 'F') {
                    throw new IllegalArgumentException("Unexpected hex digit: " + c10);
                }
                return c10 - '7';
            }
            return c10 - 'W';
        }
        return c10 - '0';
    }

    public f a(int i10, int i11) {
        if (i10 >= 0) {
            byte[] bArr = this.f30136a;
            if (i11 > bArr.length) {
                throw new IllegalArgumentException("endIndex > length(" + this.f30136a.length + ")");
            }
            int i12 = i11 - i10;
            if (i12 >= 0) {
                if (i10 == 0 && i11 == bArr.length) {
                    return this;
                }
                byte[] bArr2 = new byte[i12];
                System.arraycopy(bArr, i10, bArr2, 0, i12);
                return new f(bArr2);
            }
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    public byte a(int i10) {
        return this.f30136a[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar) {
        byte[] bArr = this.f30136a;
        cVar.write(bArr, 0, bArr.length);
    }

    public boolean a(int i10, f fVar, int i11, int i12) {
        return fVar.a(i11, this.f30136a, i10, i12);
    }

    public boolean a(int i10, byte[] bArr, int i11, int i12) {
        if (i10 >= 0) {
            byte[] bArr2 = this.f30136a;
            if (i10 <= bArr2.length - i12 && i11 >= 0 && i11 <= bArr.length - i12 && u.a(bArr2, i10, bArr, i11, i12)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(f fVar) {
        int e10 = e();
        int e11 = fVar.e();
        int min = Math.min(e10, e11);
        for (int i10 = 0; i10 < min; i10++) {
            int a10 = a(i10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int a11 = fVar.a(i10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            if (a10 != a11) {
                return a10 < a11 ? -1 : 1;
            }
        }
        if (e10 == e11) {
            return 0;
        }
        return e10 < e11 ? -1 : 1;
    }

    static int a(String str, int i10) {
        int length = str.length();
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            if (i12 == i10) {
                return i11;
            }
            int codePointAt = str.codePointAt(i11);
            if ((Character.isISOControl(codePointAt) && codePointAt != 10 && codePointAt != 13) || codePointAt == 65533) {
                return -1;
            }
            i12++;
            i11 += Character.charCount(codePointAt);
        }
        return str.length();
    }
}
