package com.bytedance.sdk.component.ZYk.oJ.ZYk;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
/* loaded from: classes3.dex */
public class ex implements Serializable, Comparable<ex> {
    transient int Pfn;

    /* renamed from: ba  reason: collision with root package name */
    transient String f12608ba;
    final byte[] ex;
    static final char[] oJ = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final Charset ZYk = Charset.forName("UTF-8");
    public static final ex tB = oJ(new byte[0]);

    /* JADX INFO: Access modifiers changed from: package-private */
    public ex(byte[] bArr) {
        this.ex = bArr;
    }

    public static ex oJ(byte... bArr) {
        if (bArr != null) {
            return new ex((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public String ZYk() {
        byte[] bArr = this.ex;
        char[] cArr = new char[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = oJ;
            cArr[i10] = cArr2[(b10 >> 4) & 15];
            i10 += 2;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ex) {
            ex exVar = (ex) obj;
            int tB2 = exVar.tB();
            byte[] bArr = this.ex;
            if (tB2 == bArr.length && exVar.oJ(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public byte[] ex() {
        return (byte[]) this.ex.clone();
    }

    public int hashCode() {
        int i10 = this.Pfn;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = Arrays.hashCode(this.ex);
        this.Pfn = hashCode;
        return hashCode;
    }

    public int tB() {
        return this.ex.length;
    }

    public String toString() {
        if (this.ex.length == 0) {
            return "[size=0]";
        }
        String oJ2 = oJ();
        int oJ3 = oJ(oJ2, 64);
        if (oJ3 == -1) {
            if (this.ex.length <= 64) {
                return "[hex=" + ZYk() + "]";
            }
            return "[size=" + this.ex.length + " hex=" + oJ(0, 64).ZYk() + "…]";
        }
        String replace = oJ2.substring(0, oJ3).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (oJ3 < oJ2.length()) {
            return "[size=" + this.ex.length + " text=" + replace + "…]";
        }
        return "[text=" + replace + "]";
    }

    public String oJ() {
        String str = this.f12608ba;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.ex, ZYk);
        this.f12608ba = str2;
        return str2;
    }

    public ex oJ(int i10, int i11) {
        if (i10 >= 0) {
            byte[] bArr = this.ex;
            if (i11 > bArr.length) {
                throw new IllegalArgumentException("endIndex > length(" + this.ex.length + ")");
            }
            int i12 = i11 - i10;
            if (i12 >= 0) {
                if (i10 == 0 && i11 == bArr.length) {
                    return this;
                }
                byte[] bArr2 = new byte[i12];
                System.arraycopy(bArr, i10, bArr2, 0, i12);
                return new ex(bArr2);
            }
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    public byte oJ(int i10) {
        return this.ex[i10];
    }

    public boolean oJ(int i10, ex exVar, int i11, int i12) {
        return exVar.oJ(i11, this.ex, i10, i12);
    }

    public boolean oJ(int i10, byte[] bArr, int i11, int i12) {
        if (i10 >= 0) {
            byte[] bArr2 = this.ex;
            return i10 <= bArr2.length - i12 && i11 >= 0 && i11 <= bArr.length - i12 && jFA.oJ(bArr2, i10, bArr, i11, i12);
        }
        return false;
    }

    @Override // java.lang.Comparable
    /* renamed from: oJ */
    public int compareTo(ex exVar) {
        int tB2 = tB();
        int tB3 = exVar.tB();
        int min = Math.min(tB2, tB3);
        for (int i10 = 0; i10 < min; i10++) {
            int oJ2 = oJ(i10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int oJ3 = exVar.oJ(i10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            if (oJ2 != oJ3) {
                return oJ2 < oJ3 ? -1 : 1;
            }
        }
        if (tB2 == tB3) {
            return 0;
        }
        return tB2 < tB3 ? -1 : 1;
    }

    static int oJ(String str, int i10) {
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
