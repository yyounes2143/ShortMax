package b4;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
/* compiled from: LruBitmapPool.java */
/* loaded from: classes3.dex */
public class t implements i {

    /* renamed from: a  reason: collision with root package name */
    protected final a0<Bitmap> f2249a = new j();

    /* renamed from: b  reason: collision with root package name */
    private final int f2250b;

    /* renamed from: c  reason: collision with root package name */
    private int f2251c;

    /* renamed from: d  reason: collision with root package name */
    private final f0 f2252d;

    /* renamed from: e  reason: collision with root package name */
    private int f2253e;

    public t(int i10, int i11, f0 f0Var, n2.c cVar) {
        this.f2250b = i10;
        this.f2251c = i11;
        this.f2252d = f0Var;
        if (cVar != null) {
            cVar.a(this);
        }
    }

    @VisibleForTesting
    private Bitmap f(int i10) {
        this.f2252d.a(i10);
        return Bitmap.createBitmap(1, i10, Bitmap.Config.ALPHA_8);
    }

    private synchronized void i(int i10) {
        Bitmap a10;
        while (this.f2253e > i10 && (a10 = this.f2249a.a()) != null) {
            int b10 = this.f2249a.b(a10);
            this.f2253e -= b10;
            this.f2252d.e(b10);
        }
    }

    @Override // n2.e
    /* renamed from: g */
    public synchronized Bitmap get(int i10) {
        try {
            int i11 = this.f2253e;
            int i12 = this.f2250b;
            if (i11 > i12) {
                i(i12);
            }
            Bitmap bitmap = this.f2249a.get(i10);
            if (bitmap != null) {
                int b10 = this.f2249a.b(bitmap);
                this.f2253e -= b10;
                this.f2252d.b(b10);
                return bitmap;
            }
            return f(i10);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // n2.e, o2.h
    /* renamed from: h */
    public void release(Bitmap bitmap) {
        int b10 = this.f2249a.b(bitmap);
        if (b10 <= this.f2251c) {
            this.f2252d.f(b10);
            this.f2249a.put(bitmap);
            synchronized (this) {
                this.f2253e += b10;
            }
        }
    }
}
