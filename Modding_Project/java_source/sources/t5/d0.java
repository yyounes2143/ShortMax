package t5;

import com.inmobi.commons.core.configs.AdConfig;
/* compiled from: VorbisBitArray.java */
/* loaded from: classes4.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f67124a;

    /* renamed from: b  reason: collision with root package name */
    private final int f67125b;

    /* renamed from: c  reason: collision with root package name */
    private int f67126c;

    /* renamed from: d  reason: collision with root package name */
    private int f67127d;

    public d0(byte[] bArr) {
        this.f67124a = bArr;
        this.f67125b = bArr.length;
    }

    private void a() {
        boolean z10;
        int i10;
        int i11 = this.f67126c;
        if (i11 >= 0 && (i11 < (i10 = this.f67125b) || (i11 == i10 && this.f67127d == 0))) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
    }

    public int b() {
        return (this.f67126c * 8) + this.f67127d;
    }

    public boolean c() {
        boolean z10;
        if ((((this.f67124a[this.f67126c] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> this.f67127d) & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        e(1);
        return z10;
    }

    public int d(int i10) {
        int i11 = this.f67126c;
        int min = Math.min(i10, 8 - this.f67127d);
        int i12 = i11 + 1;
        int i13 = ((this.f67124a[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> this.f67127d) & (255 >> (8 - min));
        while (min < i10) {
            i13 |= (this.f67124a[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << min;
            min += 8;
            i12++;
        }
        int i14 = i13 & ((-1) >>> (32 - i10));
        e(i10);
        return i14;
    }

    public void e(int i10) {
        int i11 = i10 / 8;
        int i12 = this.f67126c + i11;
        this.f67126c = i12;
        int i13 = this.f67127d + (i10 - (i11 * 8));
        this.f67127d = i13;
        if (i13 > 7) {
            this.f67126c = i12 + 1;
            this.f67127d = i13 - 8;
        }
        a();
    }
}
