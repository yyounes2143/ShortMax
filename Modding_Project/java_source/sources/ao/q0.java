package ao;

import com.inmobi.commons.core.configs.AdConfig;
/* compiled from: VorbisBitArray.java */
/* loaded from: classes8.dex */
public final class q0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f1925a;

    /* renamed from: b  reason: collision with root package name */
    private final int f1926b;

    /* renamed from: c  reason: collision with root package name */
    private int f1927c;

    /* renamed from: d  reason: collision with root package name */
    private int f1928d;

    public q0(byte[] bArr) {
        this.f1925a = bArr;
        this.f1926b = bArr.length;
    }

    private void a() {
        boolean z10;
        int i10;
        int i11 = this.f1927c;
        if (i11 >= 0 && (i11 < (i10 = this.f1926b) || (i11 == i10 && this.f1928d == 0))) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
    }

    public int b() {
        return (this.f1927c * 8) + this.f1928d;
    }

    public boolean c() {
        boolean z10;
        if ((((this.f1925a[this.f1927c] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> this.f1928d) & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        e(1);
        return z10;
    }

    public int d(int i10) {
        int i11 = this.f1927c;
        int min = Math.min(i10, 8 - this.f1928d);
        int i12 = i11 + 1;
        int i13 = ((this.f1925a[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> this.f1928d) & (255 >> (8 - min));
        while (min < i10) {
            i13 |= (this.f1925a[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << min;
            min += 8;
            i12++;
        }
        int i14 = i13 & ((-1) >>> (32 - i10));
        e(i10);
        return i14;
    }

    public void e(int i10) {
        int i11 = i10 / 8;
        int i12 = this.f1927c + i11;
        this.f1927c = i12;
        int i13 = this.f1928d + (i10 - (i11 * 8));
        this.f1928d = i13;
        if (i13 > 7) {
            this.f1927c = i12 + 1;
            this.f1928d = i13 - 8;
        }
        a();
    }
}
