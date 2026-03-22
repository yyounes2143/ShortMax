package cn;

import androidx.core.view.MotionEventCompat;
import com.inmobi.commons.core.configs.AdConfig;
import java.nio.charset.Charset;
/* compiled from: ParsableBitArray.java */
/* loaded from: classes8.dex */
public final class a0 {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f3559a;

    /* renamed from: b  reason: collision with root package name */
    private int f3560b;

    /* renamed from: c  reason: collision with root package name */
    private int f3561c;

    /* renamed from: d  reason: collision with root package name */
    private int f3562d;

    public a0() {
        this.f3559a = m0.f3619f;
    }

    private void a() {
        boolean z10;
        int i10;
        int i11 = this.f3560b;
        if (i11 >= 0 && (i11 < (i10 = this.f3562d) || (i11 == i10 && this.f3561c == 0))) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.g(z10);
    }

    public int b() {
        return ((this.f3562d - this.f3560b) * 8) - this.f3561c;
    }

    public void c() {
        if (this.f3561c == 0) {
            return;
        }
        this.f3561c = 0;
        this.f3560b++;
        a();
    }

    public int d() {
        boolean z10;
        if (this.f3561c == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.g(z10);
        return this.f3560b;
    }

    public int e() {
        return (this.f3560b * 8) + this.f3561c;
    }

    public void f(int i10, int i11) {
        if (i11 < 32) {
            i10 &= (1 << i11) - 1;
        }
        int min = Math.min(8 - this.f3561c, i11);
        int i12 = this.f3561c;
        int i13 = (8 - i12) - min;
        int i14 = (MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i12) | ((1 << i13) - 1);
        byte[] bArr = this.f3559a;
        int i15 = this.f3560b;
        byte b10 = (byte) (i14 & bArr[i15]);
        bArr[i15] = b10;
        int i16 = i11 - min;
        bArr[i15] = (byte) (b10 | ((i10 >>> i16) << i13));
        int i17 = i15 + 1;
        while (i16 > 8) {
            this.f3559a[i17] = (byte) (i10 >>> (i16 - 8));
            i16 -= 8;
            i17++;
        }
        int i18 = 8 - i16;
        byte[] bArr2 = this.f3559a;
        byte b11 = (byte) (bArr2[i17] & ((1 << i18) - 1));
        bArr2[i17] = b11;
        bArr2[i17] = (byte) (((i10 & ((1 << i16) - 1)) << i18) | b11);
        r(i11);
        a();
    }

    public boolean g() {
        boolean z10;
        if ((this.f3559a[this.f3560b] & (128 >> this.f3561c)) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        q();
        return z10;
    }

    public int h(int i10) {
        int i11;
        if (i10 == 0) {
            return 0;
        }
        this.f3561c += i10;
        int i12 = 0;
        while (true) {
            i11 = this.f3561c;
            if (i11 <= 8) {
                break;
            }
            int i13 = i11 - 8;
            this.f3561c = i13;
            byte[] bArr = this.f3559a;
            int i14 = this.f3560b;
            this.f3560b = i14 + 1;
            i12 |= (bArr[i14] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << i13;
        }
        byte[] bArr2 = this.f3559a;
        int i15 = this.f3560b;
        int i16 = ((-1) >>> (32 - i10)) & (i12 | ((bArr2[i15] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> (8 - i11)));
        if (i11 == 8) {
            this.f3561c = 0;
            this.f3560b = i15 + 1;
        }
        a();
        return i16;
    }

    public void i(byte[] bArr, int i10, int i11) {
        int i12 = (i11 >> 3) + i10;
        while (i10 < i12) {
            byte[] bArr2 = this.f3559a;
            int i13 = this.f3560b;
            int i14 = i13 + 1;
            this.f3560b = i14;
            byte b10 = bArr2[i13];
            int i15 = this.f3561c;
            byte b11 = (byte) (b10 << i15);
            bArr[i10] = b11;
            bArr[i10] = (byte) (((255 & bArr2[i14]) >> (8 - i15)) | b11);
            i10++;
        }
        int i16 = i11 & 7;
        if (i16 == 0) {
            return;
        }
        byte b12 = (byte) (bArr[i12] & (255 >> i16));
        bArr[i12] = b12;
        int i17 = this.f3561c;
        if (i17 + i16 > 8) {
            byte[] bArr3 = this.f3559a;
            int i18 = this.f3560b;
            this.f3560b = i18 + 1;
            bArr[i12] = (byte) (b12 | ((bArr3[i18] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << i17));
            this.f3561c = i17 - 8;
        }
        int i19 = this.f3561c + i16;
        this.f3561c = i19;
        byte[] bArr4 = this.f3559a;
        int i20 = this.f3560b;
        bArr[i12] = (byte) (((byte) (((255 & bArr4[i20]) >> (8 - i19)) << (8 - i16))) | bArr[i12]);
        if (i19 == 8) {
            this.f3561c = 0;
            this.f3560b = i20 + 1;
        }
        a();
    }

    public long j(int i10) {
        if (i10 <= 32) {
            return m0.t1(h(i10));
        }
        return m0.s1(h(i10 - 32), h(32));
    }

    public void k(byte[] bArr, int i10, int i11) {
        boolean z10;
        if (this.f3561c == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.g(z10);
        System.arraycopy(this.f3559a, this.f3560b, bArr, i10, i11);
        this.f3560b += i11;
        a();
    }

    public String l(int i10, Charset charset) {
        byte[] bArr = new byte[i10];
        k(bArr, 0, i10);
        return new String(bArr, charset);
    }

    public void m(b0 b0Var) {
        o(b0Var.e(), b0Var.g());
        p(b0Var.f() * 8);
    }

    public void n(byte[] bArr) {
        o(bArr, bArr.length);
    }

    public void o(byte[] bArr, int i10) {
        this.f3559a = bArr;
        this.f3560b = 0;
        this.f3561c = 0;
        this.f3562d = i10;
    }

    public void p(int i10) {
        int i11 = i10 / 8;
        this.f3560b = i11;
        this.f3561c = i10 - (i11 * 8);
        a();
    }

    public void q() {
        int i10 = this.f3561c + 1;
        this.f3561c = i10;
        if (i10 == 8) {
            this.f3561c = 0;
            this.f3560b++;
        }
        a();
    }

    public void r(int i10) {
        int i11 = i10 / 8;
        int i12 = this.f3560b + i11;
        this.f3560b = i12;
        int i13 = this.f3561c + (i10 - (i11 * 8));
        this.f3561c = i13;
        if (i13 > 7) {
            this.f3560b = i12 + 1;
            this.f3561c = i13 - 8;
        }
        a();
    }

    public void s(int i10) {
        boolean z10;
        if (this.f3561c == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.g(z10);
        this.f3560b += i10;
        a();
    }

    public a0(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public a0(byte[] bArr, int i10) {
        this.f3559a = bArr;
        this.f3562d = i10;
    }
}
