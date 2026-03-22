package y3;

import android.graphics.Bitmap;
/* compiled from: BaseCloseableStaticBitmap.java */
/* loaded from: classes3.dex */
public class b extends a implements f {

    /* renamed from: i  reason: collision with root package name */
    private static boolean f70608i = false;

    /* renamed from: d  reason: collision with root package name */
    private o2.a<Bitmap> f70609d;

    /* renamed from: e  reason: collision with root package name */
    private volatile Bitmap f70610e;

    /* renamed from: f  reason: collision with root package name */
    private final p f70611f;

    /* renamed from: g  reason: collision with root package name */
    private final int f70612g;

    /* renamed from: h  reason: collision with root package name */
    private final int f70613h;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(Bitmap bitmap, o2.h<Bitmap> hVar, p pVar, int i10, int i11) {
        this.f70610e = (Bitmap) k2.h.g(bitmap);
        this.f70609d = o2.a.F(this.f70610e, (o2.h) k2.h.g(hVar));
        this.f70611f = pVar;
        this.f70612g = i10;
        this.f70613h = i11;
    }

    private static int F(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getWidth();
    }

    public static boolean P() {
        return f70608i;
    }

    private synchronized o2.a<Bitmap> w() {
        o2.a<Bitmap> aVar;
        aVar = this.f70609d;
        this.f70609d = null;
        this.f70610e = null;
        return aVar;
    }

    private static int x(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getHeight();
    }

    @Override // y3.d
    public Bitmap B0() {
        return this.f70610e;
    }

    @Override // y3.f
    public synchronized o2.a<Bitmap> E() {
        return o2.a.p(this.f70609d);
    }

    @Override // y3.f
    public int H() {
        return this.f70613h;
    }

    @Override // y3.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        o2.a<Bitmap> w10 = w();
        if (w10 != null) {
            w10.close();
        }
    }

    @Override // y3.e, y3.m
    public int getHeight() {
        int i10;
        if (this.f70612g % 180 == 0 && (i10 = this.f70613h) != 5 && i10 != 7) {
            return x(this.f70610e);
        }
        return F(this.f70610e);
    }

    @Override // y3.e
    public int getSizeInBytes() {
        return com.facebook.imageutils.d.j(this.f70610e);
    }

    @Override // y3.e, y3.m
    public int getWidth() {
        int i10;
        if (this.f70612g % 180 == 0 && (i10 = this.f70613h) != 5 && i10 != 7) {
            return F(this.f70610e);
        }
        return x(this.f70610e);
    }

    @Override // y3.e
    public synchronized boolean isClosed() {
        boolean z10;
        if (this.f70609d == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10;
    }

    @Override // y3.f
    public int q0() {
        return this.f70612g;
    }

    @Override // y3.a, y3.e
    public p x0() {
        return this.f70611f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(o2.a<Bitmap> aVar, p pVar, int i10, int i11) {
        o2.a<Bitmap> aVar2 = (o2.a) k2.h.g(aVar.o());
        this.f70609d = aVar2;
        this.f70610e = aVar2.s();
        this.f70611f = pVar;
        this.f70612g = i10;
        this.f70613h = i11;
    }
}
