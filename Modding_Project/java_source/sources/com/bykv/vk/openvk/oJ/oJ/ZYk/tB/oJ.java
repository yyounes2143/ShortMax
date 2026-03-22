package com.bykv.vk.openvk.oJ.oJ.ZYk.tB;

import com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB;
/* loaded from: classes3.dex */
public abstract class oJ implements tB {
    private tB.ba Pfn;
    private tB.Pfn ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private tB.cFZ f11012ba;
    private tB.InterfaceC0132tB cFZ;
    private tB.oJ ex;
    protected boolean oJ = false;

    /* renamed from: so  reason: collision with root package name */
    private tB.ex f11013so;
    private tB.ZYk tB;

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ZYk() {
        try {
            tB.Pfn pfn = this.ZYk;
            if (pfn != null) {
                pfn.ZYk(this);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ex() {
        try {
            tB.ba baVar = this.Pfn;
            if (baVar != null) {
                baVar.tB(this);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public final void oJ(tB.Pfn pfn) {
        this.ZYk = pfn;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void tB() {
        try {
            tB.ZYk zYk = this.tB;
            if (zYk != null) {
                zYk.oJ(this);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public final void oJ(tB.ZYk zYk) {
        this.tB = zYk;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean ZYk(int i10, int i11) {
        try {
            tB.ex exVar = this.f11013so;
            if (exVar != null) {
                if (exVar.ZYk(this, i10, i11)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public final void oJ(tB.oJ oJVar) {
        this.ex = oJVar;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public final void oJ(tB.ba baVar) {
        this.Pfn = baVar;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public final void oJ(tB.InterfaceC0132tB interfaceC0132tB) {
        this.cFZ = interfaceC0132tB;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public final void oJ(tB.ex exVar) {
        this.f11013so = exVar;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public final void oJ(tB.cFZ cfz) {
        this.f11012ba = cfz;
    }

    public void oJ() {
        this.ZYk = null;
        this.ex = null;
        this.tB = null;
        this.Pfn = null;
        this.f11012ba = null;
        this.cFZ = null;
        this.f11013so = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void oJ(int i10) {
        try {
            tB.oJ oJVar = this.ex;
            if (oJVar != null) {
                oJVar.oJ(this, i10);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void oJ(int i10, int i11, int i12, int i13) {
        try {
            tB.cFZ cfz = this.f11012ba;
            if (cfz != null) {
                cfz.oJ(this, i10, i11, i12, i13);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean oJ(int i10, int i11) {
        try {
            tB.InterfaceC0132tB interfaceC0132tB = this.cFZ;
            if (interfaceC0132tB != null) {
                if (interfaceC0132tB.oJ(this, i10, i11)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public void oJ(boolean z10) {
        this.oJ = z10;
    }
}
