package b4;

import android.graphics.Bitmap;
/* compiled from: BitmapCounter.java */
/* loaded from: classes3.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private int f2221a;

    /* renamed from: b  reason: collision with root package name */
    private long f2222b;

    /* renamed from: c  reason: collision with root package name */
    private final int f2223c;

    /* renamed from: d  reason: collision with root package name */
    private final int f2224d;

    /* renamed from: e  reason: collision with root package name */
    private final o2.h<Bitmap> f2225e;

    /* compiled from: BitmapCounter.java */
    /* loaded from: classes3.dex */
    class a implements o2.h<Bitmap> {
        a() {
        }

        @Override // o2.h
        /* renamed from: a */
        public void release(Bitmap bitmap) {
            try {
                g.this.a(bitmap);
            } finally {
                bitmap.recycle();
            }
        }
    }

    public g(int i10, int i11) {
        boolean z10;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.b(Boolean.valueOf(z10));
        k2.h.b(Boolean.valueOf(i11 > 0));
        this.f2223c = i10;
        this.f2224d = i11;
        this.f2225e = new a();
    }

    public synchronized void a(Bitmap bitmap) {
        boolean z10;
        int j10 = com.facebook.imageutils.d.j(bitmap);
        boolean z11 = false;
        if (this.f2221a > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.c(z10, "No bitmaps registered.");
        long j11 = j10;
        if (j11 <= this.f2222b) {
            z11 = true;
        }
        k2.h.d(z11, "Bitmap size bigger than the total registered size: %d, %d", Integer.valueOf(j10), Long.valueOf(this.f2222b));
        this.f2222b -= j11;
        this.f2221a--;
    }

    public synchronized int b() {
        return this.f2221a;
    }

    public synchronized int c() {
        return this.f2223c;
    }

    public synchronized int d() {
        return this.f2224d;
    }

    public o2.h<Bitmap> e() {
        return this.f2225e;
    }

    public synchronized long f() {
        return this.f2222b;
    }

    public synchronized boolean g(Bitmap bitmap) {
        int j10 = com.facebook.imageutils.d.j(bitmap);
        int i10 = this.f2221a;
        if (i10 < this.f2223c) {
            long j11 = this.f2222b;
            long j12 = j10;
            if (j11 + j12 <= this.f2224d) {
                this.f2221a = i10 + 1;
                this.f2222b = j11 + j12;
                return true;
            }
        }
        return false;
    }
}
