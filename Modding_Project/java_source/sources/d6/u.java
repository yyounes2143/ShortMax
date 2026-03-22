package d6;

import java.util.Arrays;
/* compiled from: NalUnitTargetBuffer.java */
/* loaded from: classes4.dex */
final class u {

    /* renamed from: a  reason: collision with root package name */
    private final int f50162a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f50163b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f50164c;

    /* renamed from: d  reason: collision with root package name */
    public byte[] f50165d;

    /* renamed from: e  reason: collision with root package name */
    public int f50166e;

    public u(int i10, int i11) {
        this.f50162a = i10;
        byte[] bArr = new byte[i11 + 3];
        this.f50165d = bArr;
        bArr[2] = 1;
    }

    public void a(byte[] bArr, int i10, int i11) {
        if (!this.f50163b) {
            return;
        }
        int i12 = i11 - i10;
        byte[] bArr2 = this.f50165d;
        int length = bArr2.length;
        int i13 = this.f50166e;
        if (length < i13 + i12) {
            this.f50165d = Arrays.copyOf(bArr2, (i13 + i12) * 2);
        }
        System.arraycopy(bArr, i10, this.f50165d, this.f50166e, i12);
        this.f50166e += i12;
    }

    public boolean b(int i10) {
        if (!this.f50163b) {
            return false;
        }
        this.f50166e -= i10;
        this.f50163b = false;
        this.f50164c = true;
        return true;
    }

    public boolean c() {
        return this.f50164c;
    }

    public void d() {
        this.f50163b = false;
        this.f50164c = false;
    }

    public void e(int i10) {
        boolean z10 = true;
        b7.a.g(!this.f50163b);
        if (i10 != this.f50162a) {
            z10 = false;
        }
        this.f50163b = z10;
        if (z10) {
            this.f50166e = 3;
            this.f50164c = false;
        }
    }
}
