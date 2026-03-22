package y3;
/* compiled from: CloseableAnimatedImage.java */
/* loaded from: classes3.dex */
public class c extends h {

    /* renamed from: d  reason: collision with root package name */
    private l3.d f70614d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f70615e;

    public c(l3.d dVar, boolean z10) {
        this.f70614d = dVar;
        this.f70615e = z10;
    }

    @Override // y3.a, y3.e
    public boolean J0() {
        return this.f70615e;
    }

    @Override // y3.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            try {
                l3.d dVar = this.f70614d;
                if (dVar == null) {
                    return;
                }
                this.f70614d = null;
                dVar.a();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // y3.e, y3.m
    public synchronized int getHeight() {
        int height;
        l3.d dVar = this.f70614d;
        if (dVar == null) {
            height = 0;
        } else {
            height = dVar.d().getHeight();
        }
        return height;
    }

    @Override // y3.e
    public synchronized int getSizeInBytes() {
        int sizeInBytes;
        l3.d dVar = this.f70614d;
        if (dVar == null) {
            sizeInBytes = 0;
        } else {
            sizeInBytes = dVar.d().getSizeInBytes();
        }
        return sizeInBytes;
    }

    @Override // y3.e, y3.m
    public synchronized int getWidth() {
        int width;
        l3.d dVar = this.f70614d;
        if (dVar == null) {
            width = 0;
        } else {
            width = dVar.d().getWidth();
        }
        return width;
    }

    @Override // y3.e
    public synchronized boolean isClosed() {
        boolean z10;
        if (this.f70614d == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10;
    }

    public synchronized l3.b w() {
        l3.b d10;
        l3.d dVar = this.f70614d;
        if (dVar == null) {
            d10 = null;
        } else {
            d10 = dVar.d();
        }
        return d10;
    }

    public synchronized l3.d x() {
        return this.f70614d;
    }
}
