package au;
/* compiled from: PendingPostQueue.java */
/* loaded from: classes8.dex */
final class j {

    /* renamed from: a  reason: collision with root package name */
    private i f2102a;

    /* renamed from: b  reason: collision with root package name */
    private i f2103b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(i iVar) {
        try {
            if (iVar != null) {
                i iVar2 = this.f2103b;
                if (iVar2 != null) {
                    iVar2.f2101c = iVar;
                    this.f2103b = iVar;
                } else if (this.f2102a == null) {
                    this.f2103b = iVar;
                    this.f2102a = iVar;
                } else {
                    throw new IllegalStateException("Head present, but no tail");
                }
                notifyAll();
            } else {
                throw new NullPointerException("null cannot be enqueued");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized i b() {
        i iVar;
        iVar = this.f2102a;
        if (iVar != null) {
            i iVar2 = iVar.f2101c;
            this.f2102a = iVar2;
            if (iVar2 == null) {
                this.f2103b = null;
            }
        }
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized i c(int i10) throws InterruptedException {
        try {
            if (this.f2102a == null) {
                wait(i10);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return b();
    }
}
