package com.bytedance.sdk.component.ZYk.oJ.ZYk;
/* loaded from: classes3.dex */
final class Pfn {
    boolean Pfn;
    int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    Pfn f12606ba;
    Pfn cFZ;
    boolean ex;
    final byte[] oJ;
    int tB;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pfn() {
        this.oJ = new byte[8192];
        this.Pfn = true;
        this.ex = false;
    }

    public final Pfn ZYk() {
        Pfn pfn;
        Pfn pfn2 = this.f12606ba;
        if (pfn2 != this) {
            pfn = pfn2;
        } else {
            pfn = null;
        }
        Pfn pfn3 = this.cFZ;
        if (pfn3 != null) {
            pfn3.f12606ba = pfn2;
        }
        Pfn pfn4 = this.f12606ba;
        if (pfn4 != null) {
            pfn4.cFZ = pfn3;
        }
        this.f12606ba = null;
        this.cFZ = null;
        return pfn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Pfn oJ() {
        this.ex = true;
        return new Pfn(this.oJ, this.ZYk, this.tB, true, false);
    }

    public final Pfn oJ(Pfn pfn) {
        pfn.cFZ = this;
        pfn.f12606ba = this.f12606ba;
        this.f12606ba.cFZ = pfn;
        this.f12606ba = pfn;
        return pfn;
    }

    Pfn(byte[] bArr, int i10, int i11, boolean z10, boolean z11) {
        this.oJ = bArr;
        this.ZYk = i10;
        this.tB = i11;
        this.ex = z10;
        this.Pfn = z11;
    }
}
