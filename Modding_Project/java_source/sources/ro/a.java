package ro;

import cn.b0;
/* compiled from: PrivateCommand.java */
/* loaded from: classes8.dex */
public final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    public final long f65912a;

    /* renamed from: b  reason: collision with root package name */
    public final long f65913b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f65914c;

    private a(long j10, byte[] bArr, long j11) {
        this.f65912a = j11;
        this.f65913b = j10;
        this.f65914c = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a b(b0 b0Var, int i10, long j10) {
        long J = b0Var.J();
        int i11 = i10 - 4;
        byte[] bArr = new byte[i11];
        b0Var.l(bArr, 0, i11);
        return new a(J, bArr, j10);
    }

    @Override // ro.b
    public String toString() {
        return "SCTE-35 PrivateCommand { ptsAdjustment=" + this.f65912a + ", identifier= " + this.f65913b + " }";
    }
}
