package ip;

import java.util.Arrays;
/* compiled from: NalUnitTargetBuffer.java */
/* loaded from: classes8.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private final int f60046a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f60047b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f60048c;

    /* renamed from: d  reason: collision with root package name */
    public byte[] f60049d;

    /* renamed from: e  reason: collision with root package name */
    public int f60050e;

    public w(int i10, int i11) {
        this.f60046a = i10;
        byte[] bArr = new byte[i11 + 3];
        this.f60049d = bArr;
        bArr[2] = 1;
    }

    public void a(byte[] bArr, int i10, int i11) {
        if (!this.f60047b) {
            return;
        }
        int i12 = i11 - i10;
        byte[] bArr2 = this.f60049d;
        int length = bArr2.length;
        int i13 = this.f60050e;
        if (length < i13 + i12) {
            this.f60049d = Arrays.copyOf(bArr2, (i13 + i12) * 2);
        }
        System.arraycopy(bArr, i10, this.f60049d, this.f60050e, i12);
        this.f60050e += i12;
    }

    public boolean b(int i10) {
        if (!this.f60047b) {
            return false;
        }
        this.f60050e -= i10;
        this.f60047b = false;
        this.f60048c = true;
        return true;
    }

    public boolean c() {
        return this.f60048c;
    }

    public void d() {
        this.f60047b = false;
        this.f60048c = false;
    }

    public void e(int i10) {
        boolean z10 = true;
        cn.a.g(!this.f60047b);
        if (i10 != this.f60046a) {
            z10 = false;
        }
        this.f60047b = z10;
        if (z10) {
            this.f60050e = 3;
            this.f60048c = false;
        }
    }
}
