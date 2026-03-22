package n3;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import l3.d;
/* compiled from: AnimatedDrawableBackendImpl.java */
/* loaded from: classes3.dex */
public class a implements l3.a {

    /* renamed from: a  reason: collision with root package name */
    private final o3.a f62738a;

    /* renamed from: b  reason: collision with root package name */
    private final d f62739b;

    /* renamed from: c  reason: collision with root package name */
    private final l3.b f62740c;

    /* renamed from: d  reason: collision with root package name */
    private final Rect f62741d;

    /* renamed from: e  reason: collision with root package name */
    private final int[] f62742e;

    /* renamed from: f  reason: collision with root package name */
    private final int[] f62743f;

    /* renamed from: g  reason: collision with root package name */
    private final int f62744g;

    /* renamed from: h  reason: collision with root package name */
    private final AnimatedDrawableFrameInfo[] f62745h;

    /* renamed from: i  reason: collision with root package name */
    private final Rect f62746i = new Rect();

    /* renamed from: j  reason: collision with root package name */
    private final Rect f62747j = new Rect();

    /* renamed from: k  reason: collision with root package name */
    private final boolean f62748k;

    /* renamed from: l  reason: collision with root package name */
    private final Paint f62749l;

    /* renamed from: m  reason: collision with root package name */
    private Bitmap f62750m;

    public a(o3.a aVar, d dVar, Rect rect, boolean z10) {
        this.f62738a = aVar;
        this.f62739b = dVar;
        l3.b d10 = dVar.d();
        this.f62740c = d10;
        int[] g10 = d10.g();
        this.f62742e = g10;
        aVar.a(g10);
        this.f62744g = aVar.c(g10);
        this.f62743f = aVar.b(g10);
        this.f62741d = k(d10, rect);
        this.f62748k = z10;
        this.f62745h = new AnimatedDrawableFrameInfo[d10.getFrameCount()];
        for (int i10 = 0; i10 < this.f62740c.getFrameCount(); i10++) {
            this.f62745h[i10] = this.f62740c.a(i10);
        }
        Paint paint = new Paint();
        this.f62749l = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    }

    private synchronized void j() {
        Bitmap bitmap = this.f62750m;
        if (bitmap != null) {
            bitmap.recycle();
            this.f62750m = null;
        }
    }

    private static Rect k(l3.b bVar, Rect rect) {
        if (rect == null) {
            return new Rect(0, 0, bVar.getWidth(), bVar.getHeight());
        }
        return new Rect(0, 0, Math.min(rect.width(), bVar.getWidth()), Math.min(rect.height(), bVar.getHeight()));
    }

    private void l(Canvas canvas, float f10, float f11, AnimatedDrawableFrameInfo animatedDrawableFrameInfo) {
        if (animatedDrawableFrameInfo.f15636g == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND) {
            int ceil = (int) Math.ceil(animatedDrawableFrameInfo.f15631b * f10);
            int ceil2 = (int) Math.ceil(animatedDrawableFrameInfo.f15632c * f11);
            canvas.drawRect(new Rect(ceil, ceil2, ((int) Math.ceil(animatedDrawableFrameInfo.f15633d * f10)) + ceil, ((int) Math.ceil(animatedDrawableFrameInfo.f15634e * f11)) + ceil2), this.f62749l);
        }
    }

    private synchronized Bitmap m(int i10, int i11) {
        try {
            Bitmap bitmap = this.f62750m;
            if (bitmap != null) {
                if (bitmap.getWidth() >= i10) {
                    if (this.f62750m.getHeight() < i11) {
                    }
                }
                j();
            }
            if (this.f62750m == null) {
                this.f62750m = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
            }
            this.f62750m.eraseColor(0);
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f62750m;
    }

    private void n(Canvas canvas, l3.c cVar) {
        int width;
        int height;
        int b10;
        int c10;
        if (this.f62748k) {
            float max = Math.max(cVar.getWidth() / Math.min(cVar.getWidth(), canvas.getWidth()), cVar.getHeight() / Math.min(cVar.getHeight(), canvas.getHeight()));
            width = (int) (cVar.getWidth() / max);
            height = (int) (cVar.getHeight() / max);
            b10 = (int) (cVar.b() / max);
            c10 = (int) (cVar.c() / max);
        } else {
            width = cVar.getWidth();
            height = cVar.getHeight();
            b10 = cVar.b();
            c10 = cVar.c();
        }
        synchronized (this) {
            Bitmap m10 = m(width, height);
            this.f62750m = m10;
            cVar.a(width, height, m10);
            canvas.save();
            canvas.translate(b10, c10);
            canvas.drawBitmap(this.f62750m, 0.0f, 0.0f, (Paint) null);
            canvas.restore();
        }
    }

    private void o(Canvas canvas, l3.c cVar) {
        double width = this.f62741d.width() / this.f62740c.getWidth();
        double height = this.f62741d.height() / this.f62740c.getHeight();
        int round = (int) Math.round(cVar.getWidth() * width);
        int round2 = (int) Math.round(cVar.getHeight() * height);
        int b10 = (int) (cVar.b() * width);
        int c10 = (int) (cVar.c() * height);
        synchronized (this) {
            try {
                int width2 = this.f62741d.width();
                int height2 = this.f62741d.height();
                m(width2, height2);
                Bitmap bitmap = this.f62750m;
                if (bitmap != null) {
                    cVar.a(round, round2, bitmap);
                }
                this.f62746i.set(0, 0, width2, height2);
                this.f62747j.set(b10, c10, width2 + b10, height2 + c10);
                Bitmap bitmap2 = this.f62750m;
                if (bitmap2 != null) {
                    canvas.drawBitmap(bitmap2, this.f62746i, this.f62747j, (Paint) null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void p(Canvas canvas, l3.c cVar, AnimatedDrawableFrameInfo animatedDrawableFrameInfo, AnimatedDrawableFrameInfo animatedDrawableFrameInfo2) {
        Rect rect = this.f62741d;
        if (rect != null && rect.width() > 0 && this.f62741d.height() > 0) {
            float width = canvas.getWidth() / this.f62741d.width();
            if (animatedDrawableFrameInfo2 != null) {
                l(canvas, width, width, animatedDrawableFrameInfo2);
            }
            int width2 = cVar.getWidth();
            int height = cVar.getHeight();
            Rect rect2 = new Rect(0, 0, width2, height);
            int b10 = (int) (cVar.b() * width);
            int c10 = (int) (cVar.c() * width);
            Rect rect3 = new Rect(b10, c10, ((int) (width2 * width)) + b10, ((int) (height * width)) + c10);
            if (animatedDrawableFrameInfo.f15635f == AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND) {
                canvas.drawRect(rect3, this.f62749l);
            }
            synchronized (this) {
                Bitmap m10 = m(width2, height);
                cVar.a(width2, height, m10);
                canvas.drawBitmap(m10, rect2, rect3, (Paint) null);
            }
        }
    }

    private void q(Canvas canvas, l3.c cVar, AnimatedDrawableFrameInfo animatedDrawableFrameInfo, AnimatedDrawableFrameInfo animatedDrawableFrameInfo2) {
        float f10;
        float f11;
        float f12;
        float f13;
        int width = this.f62740c.getWidth();
        int height = this.f62740c.getHeight();
        float f14 = width;
        float f15 = height;
        int width2 = cVar.getWidth();
        int height2 = cVar.getHeight();
        int b10 = cVar.b();
        int c10 = cVar.c();
        if (f14 <= canvas.getWidth() && f15 <= canvas.getHeight()) {
            f12 = 1.0f;
            f13 = 1.0f;
        } else {
            int min = Math.min(canvas.getWidth(), width);
            int min2 = Math.min(canvas.getHeight(), height);
            float f16 = f14 / f15;
            if (min > min2) {
                f11 = min;
                f10 = f11 / f16;
            } else {
                f10 = min2;
                f11 = f10 * f16;
            }
            f12 = f11 / f14;
            f13 = f10 / f15;
            width2 = (int) Math.ceil(cVar.getWidth() * f12);
            height2 = (int) Math.ceil(cVar.getHeight() * f13);
            b10 = (int) Math.ceil(cVar.b() * f12);
            c10 = (int) Math.ceil(cVar.c() * f13);
        }
        Rect rect = new Rect(0, 0, width2, height2);
        Rect rect2 = new Rect(b10, c10, b10 + width2, c10 + height2);
        if (animatedDrawableFrameInfo2 != null) {
            l(canvas, f12, f13, animatedDrawableFrameInfo2);
        }
        if (animatedDrawableFrameInfo.f15635f == AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND) {
            canvas.drawRect(rect2, this.f62749l);
        }
        synchronized (this) {
            Bitmap m10 = m(width2, height2);
            cVar.a(width2, height2, m10);
            canvas.drawBitmap(m10, rect, rect2, (Paint) null);
        }
    }

    @Override // l3.a
    public AnimatedDrawableFrameInfo a(int i10) {
        return this.f62745h[i10];
    }

    @Override // l3.a
    public int b(int i10) {
        return this.f62742e[i10];
    }

    @Override // l3.a
    public int c() {
        return this.f62741d.width();
    }

    @Override // l3.a
    public d d() {
        return this.f62739b;
    }

    @Override // l3.a
    public int e() {
        return this.f62744g;
    }

    @Override // l3.a
    public void f(int i10, Canvas canvas) {
        l3.c e10 = this.f62740c.e(i10);
        try {
            if (e10.getWidth() > 0 && e10.getHeight() > 0) {
                if (this.f62740c.b()) {
                    o(canvas, e10);
                } else {
                    n(canvas, e10);
                }
                e10.dispose();
            }
        } finally {
            e10.dispose();
        }
    }

    @Override // l3.a
    public l3.a g(Rect rect) {
        if (k(this.f62740c, rect).equals(this.f62741d)) {
            return this;
        }
        return new a(this.f62738a, this.f62739b, rect, this.f62748k);
    }

    @Override // l3.a
    public int getFrameCount() {
        return this.f62740c.getFrameCount();
    }

    @Override // l3.a
    public int getHeight() {
        return this.f62740c.getHeight();
    }

    @Override // l3.a
    public int getLoopCount() {
        return this.f62740c.getLoopCount();
    }

    @Override // l3.a
    public int getWidth() {
        return this.f62740c.getWidth();
    }

    @Override // l3.a
    public int h() {
        return this.f62741d.height();
    }

    @Override // l3.a
    public void i(int i10, Canvas canvas) {
        AnimatedDrawableFrameInfo a10;
        l3.c e10 = this.f62740c.e(i10);
        AnimatedDrawableFrameInfo a11 = this.f62740c.a(i10);
        if (i10 == 0) {
            a10 = null;
        } else {
            a10 = this.f62740c.a(i10 - 1);
        }
        try {
            if (e10.getWidth() > 0 && e10.getHeight() > 0) {
                if (this.f62740c.b()) {
                    q(canvas, e10, a11, a10);
                } else {
                    p(canvas, e10, a11, a10);
                }
                e10.dispose();
            }
        } finally {
            e10.dispose();
        }
    }
}
