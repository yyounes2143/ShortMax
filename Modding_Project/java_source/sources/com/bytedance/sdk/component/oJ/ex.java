package com.bytedance.sdk.component.oJ;
/* loaded from: classes3.dex */
public abstract class ex<P, R> extends com.bytedance.sdk.component.oJ.ZYk<P, R> {
    private oJ ZYk;
    private boolean oJ = true;
    private ba tB;

    /* loaded from: classes3.dex */
    public interface ZYk {
        ex oJ();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(Object obj);

        void oJ(Throwable th2);
    }

    private boolean ba() {
        if (!this.oJ) {
            jFA.oJ(new IllegalStateException("Jsb async call already finished: " + oJ() + ", hashcode: " + hashCode()));
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Pfn() {
        ex();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ex() {
        this.oJ = false;
        this.tB = null;
    }

    @Override // com.bytedance.sdk.component.oJ.ZYk
    public /* bridge */ /* synthetic */ String oJ() {
        return super.oJ();
    }

    protected abstract void oJ(P p10, ba baVar) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    public final void tB() {
        oJ((Throwable) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void oJ(R r10) {
        if (ba()) {
            this.ZYk.oJ(r10);
            ex();
        }
    }

    protected final void oJ(Throwable th2) {
        if (ba()) {
            this.ZYk.oJ(th2);
            ex();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(P p10, ba baVar, oJ oJVar) throws Exception {
        this.tB = baVar;
        this.ZYk = oJVar;
        oJ(p10, baVar);
    }
}
