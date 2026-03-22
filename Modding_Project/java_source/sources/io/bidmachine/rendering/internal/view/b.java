package io.bidmachine.rendering.internal.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.SystemClock;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.rendering.model.FontStyleType;
import java.util.concurrent.atomic.AtomicBoolean;
import sq.j;
import tp.h;
import tp.k;
import tp.r;
/* loaded from: classes8.dex */
public class b extends View implements h {
    @NonNull
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final Paint f58465a;
    @NonNull
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final Paint f58466b;
    @NonNull
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    final Paint f58467c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final RectF f58468d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final RectF f58469e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final c f58470f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final AtomicBoolean f58471g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private d f58472h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Runnable f58473i;

    /* renamed from: j  reason: collision with root package name */
    private float f58474j;

    /* renamed from: k  reason: collision with root package name */
    private float f58475k;

    /* renamed from: l  reason: collision with root package name */
    private float f58476l;

    /* renamed from: m  reason: collision with root package name */
    private float f58477m;

    /* renamed from: n  reason: collision with root package name */
    private int f58478n;

    /* renamed from: o  reason: collision with root package name */
    private byte f58479o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f58480p;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: io.bidmachine.rendering.internal.view.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class C0821b implements r {
        private C0821b() {
        }

        @Override // yq.m
        public void s() {
            boolean z10;
            if (b.this.k() && !b.this.isShown()) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (z10) {
                b.this.f58470f.k();
            } else {
                b.this.f58470f.j();
            }
            long c10 = b.this.f58470f.c();
            long d10 = b.this.f58470f.d();
            if (z10) {
                b.this.e((((float) d10) * 100.0f) / ((float) c10), (int) Math.ceil((c10 - d10) / 1000.0d));
            }
            if (b.this.f58470f.f()) {
                b.this.l();
            } else {
                j.l(this, 16L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes8.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private boolean f58482a = false;

        /* renamed from: b  reason: collision with root package name */
        private long f58483b = 0;

        /* renamed from: c  reason: collision with root package name */
        private long f58484c = 0;

        /* renamed from: d  reason: collision with root package name */
        private long f58485d = 0;

        c() {
        }

        @VisibleForTesting
        long a() {
            return SystemClock.elapsedRealtime();
        }

        public void b(long j10) {
            this.f58483b = j10;
            h();
        }

        public long c() {
            return this.f58483b;
        }

        public long d() {
            return this.f58484c;
        }

        public boolean e() {
            return this.f58482a;
        }

        public boolean f() {
            if (this.f58484c >= this.f58483b) {
                return true;
            }
            return false;
        }

        public void g() {
            this.f58482a = false;
        }

        public void h() {
            this.f58484c = 0L;
            this.f58485d = a();
        }

        public void i() {
            this.f58482a = true;
            this.f58485d = a();
        }

        public void j() {
            this.f58485d = a();
        }

        public void k() {
            if (!e()) {
                return;
            }
            long a10 = a();
            this.f58484c = Math.min(this.f58483b, this.f58484c + (a10 - this.f58485d));
            this.f58485d = a10;
        }
    }

    /* loaded from: classes8.dex */
    public interface d {
        void a();
    }

    public b(Context context) {
        super(context);
        this.f58468d = new RectF();
        this.f58469e = new RectF();
        this.f58470f = new c();
        this.f58471g = new AtomicBoolean(false);
        this.f58477m = 100.0f;
        this.f58479o = (byte) -1;
        this.f58480p = false;
        Paint paint = new Paint(1);
        this.f58465a = paint;
        paint.setColor(k.f67637d);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        Paint paint2 = new Paint(1);
        this.f58466b = paint2;
        int i10 = k.f67636c;
        paint2.setColor(i10);
        paint2.setStyle(Paint.Style.STROKE);
        Paint paint3 = new Paint(1);
        this.f58467c = paint3;
        paint3.setColor(i10);
        paint3.setStyle(style);
        paint3.setAntiAlias(true);
        paint3.setTextAlign(Paint.Align.CENTER);
        paint3.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
        f(context);
    }

    private void f(@NonNull Context context) {
        setLayerType(1, null);
        this.f58474j = j.e(context, 54.0f);
        this.f58475k = j.e(context, 54.0f);
        float e10 = j.e(context, 3.0f);
        this.f58476l = e10;
        this.f58466b.setStrokeWidth(e10);
        d();
    }

    private void g(@NonNull Canvas canvas) {
        canvas.drawArc(this.f58468d, 0.0f, 360.0f, false, this.f58465a);
        canvas.drawArc(this.f58469e, 270.0f, this.f58479o * (360.0f - ((this.f58477m * 360.0f) * 0.01f)), false, this.f58466b);
    }

    private void i(@NonNull Canvas canvas) {
        canvas.drawText(String.valueOf(this.f58478n), this.f58474j, this.f58475k - ((this.f58467c.descent() + this.f58467c.ascent()) / 2.0f), this.f58467c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        d dVar;
        if (!this.f58471g.compareAndSet(false, true) || (dVar = this.f58472h) == null) {
            return;
        }
        dVar.a();
    }

    @Override // tp.h
    @SuppressLint({"WrongConstant"})
    public void a(@NonNull rq.e eVar) {
        FontStyleType k10 = eVar.k();
        if (k10 != null) {
            this.f58467c.setTypeface(Typeface.create(Typeface.DEFAULT, k10.getTypeface()));
        }
        Integer i10 = eVar.i();
        if (i10 != null) {
            this.f58465a.setColor(i10.intValue());
        }
        Integer p10 = eVar.p(getContext());
        if (p10 != null) {
            float intValue = p10.intValue();
            this.f58476l = intValue;
            this.f58466b.setStrokeWidth(intValue);
        }
        Integer o10 = eVar.o();
        if (o10 != null) {
            this.f58466b.setColor(o10.intValue());
        }
        d();
    }

    @VisibleForTesting
    float b(@NonNull RectF rectF, boolean z10) {
        float width = rectF.width();
        if (z10) {
            width -= this.f58476l * 2.0f;
        }
        return width * 0.70710677f * 0.9f;
    }

    @VisibleForTesting
    void d() {
        int min;
        float width = (getWidth() - min) / 2.0f;
        float height = (getHeight() - min) / 2.0f;
        float min2 = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        this.f58468d.set(width, height, width + min2, min2 + height);
        this.f58474j = this.f58468d.centerX();
        this.f58475k = this.f58468d.centerY();
        float f10 = this.f58476l / 2.0f;
        RectF rectF = this.f58469e;
        RectF rectF2 = this.f58468d;
        rectF.set(rectF2.left + f10, rectF2.top + f10, rectF2.right - f10, rectF2.bottom - f10);
        this.f58467c.setTextSize(b(this.f58468d, true));
    }

    public void e(float f10, int i10) {
        if (f10 >= 0.0f || f10 <= 100.0f) {
            this.f58477m = f10;
        }
        this.f58478n = i10;
        postInvalidate();
    }

    public void h() {
        o();
        this.f58472h = null;
    }

    public boolean k() {
        return this.f58480p;
    }

    public void m() {
        o();
        if (this.f58471g.get()) {
            return;
        }
        this.f58470f.i();
        C0821b c0821b = new C0821b();
        this.f58473i = c0821b;
        j.l(c0821b, 16L);
    }

    public void n() {
        this.f58471g.set(false);
        this.f58470f.h();
        m();
    }

    public void o() {
        this.f58470f.g();
        Runnable runnable = this.f58473i;
        if (runnable == null) {
            return;
        }
        j.d(runnable);
        this.f58473i = null;
    }

    @Override // android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        super.onDraw(canvas);
        if (getWidth() != 0 && getHeight() != 0 && this.f58478n != 0) {
            g(canvas);
            i(canvas);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        d();
    }

    public void setClockwise(boolean z10) {
        if (z10) {
            this.f58479o = (byte) -1;
        } else {
            this.f58479o = (byte) 1;
        }
    }

    public void setDuration(long j10) {
        this.f58470f.b(j10);
    }

    public void setListener(@Nullable d dVar) {
        this.f58472h = dVar;
    }

    public void setOnlyVisibleWork(boolean z10) {
        this.f58480p = z10;
    }
}
