package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
/* compiled from: SubtitlePainter.java */
/* loaded from: classes4.dex */
final class u0 {
    private int A;
    private int B;
    private int C;
    private int D;
    private StaticLayout E;
    private StaticLayout F;
    private int G;
    private int H;
    private int I;
    private Rect J;

    /* renamed from: a  reason: collision with root package name */
    private final float f19017a;

    /* renamed from: b  reason: collision with root package name */
    private final float f19018b;

    /* renamed from: c  reason: collision with root package name */
    private final float f19019c;

    /* renamed from: d  reason: collision with root package name */
    private final float f19020d;

    /* renamed from: e  reason: collision with root package name */
    private final float f19021e;

    /* renamed from: f  reason: collision with root package name */
    private final TextPaint f19022f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f19023g;

    /* renamed from: h  reason: collision with root package name */
    private final Paint f19024h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private CharSequence f19025i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private Layout.Alignment f19026j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Bitmap f19027k;

    /* renamed from: l  reason: collision with root package name */
    private float f19028l;

    /* renamed from: m  reason: collision with root package name */
    private int f19029m;

    /* renamed from: n  reason: collision with root package name */
    private int f19030n;

    /* renamed from: o  reason: collision with root package name */
    private float f19031o;

    /* renamed from: p  reason: collision with root package name */
    private int f19032p;

    /* renamed from: q  reason: collision with root package name */
    private float f19033q;

    /* renamed from: r  reason: collision with root package name */
    private float f19034r;

    /* renamed from: s  reason: collision with root package name */
    private int f19035s;

    /* renamed from: t  reason: collision with root package name */
    private int f19036t;

    /* renamed from: u  reason: collision with root package name */
    private int f19037u;

    /* renamed from: v  reason: collision with root package name */
    private int f19038v;

    /* renamed from: w  reason: collision with root package name */
    private int f19039w;

    /* renamed from: x  reason: collision with root package name */
    private float f19040x;

    /* renamed from: y  reason: collision with root package name */
    private float f19041y;

    /* renamed from: z  reason: collision with root package name */
    private float f19042z;

    public u0(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{16843287, 16843288}, 0, 0);
        this.f19021e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f19020d = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f19017a = round;
        this.f19018b = round;
        this.f19019c = round;
        TextPaint textPaint = new TextPaint();
        this.f19022f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f19023g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f19024h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    private static boolean a(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        if (charSequence != charSequence2 && (charSequence == null || !charSequence.equals(charSequence2))) {
            return false;
        }
        return true;
    }

    private void c(Canvas canvas) {
        canvas.drawBitmap(this.f19027k, (Rect) null, this.J, this.f19024h);
    }

    private void d(Canvas canvas, boolean z10) {
        if (z10) {
            e(canvas);
            return;
        }
        b7.a.e(this.J);
        b7.a.e(this.f19027k);
        c(canvas);
    }

    private void e(Canvas canvas) {
        int i10;
        StaticLayout staticLayout = this.E;
        StaticLayout staticLayout2 = this.F;
        if (staticLayout != null && staticLayout2 != null) {
            int save = canvas.save();
            canvas.translate(this.G, this.H);
            if (Color.alpha(this.f19037u) > 0) {
                this.f19023g.setColor(this.f19037u);
                canvas.drawRect(-this.I, 0.0f, staticLayout.getWidth() + this.I, staticLayout.getHeight(), this.f19023g);
            }
            int i11 = this.f19039w;
            boolean z10 = true;
            if (i11 == 1) {
                this.f19022f.setStrokeJoin(Paint.Join.ROUND);
                this.f19022f.setStrokeWidth(this.f19017a);
                this.f19022f.setColor(this.f19038v);
                this.f19022f.setStyle(Paint.Style.FILL_AND_STROKE);
                staticLayout2.draw(canvas);
            } else if (i11 == 2) {
                TextPaint textPaint = this.f19022f;
                float f10 = this.f19018b;
                float f11 = this.f19019c;
                textPaint.setShadowLayer(f10, f11, f11, this.f19038v);
            } else if (i11 == 3 || i11 == 4) {
                if (i11 != 3) {
                    z10 = false;
                }
                int i12 = -1;
                if (z10) {
                    i10 = -1;
                } else {
                    i10 = this.f19038v;
                }
                if (z10) {
                    i12 = this.f19038v;
                }
                float f12 = this.f19018b / 2.0f;
                this.f19022f.setColor(this.f19035s);
                this.f19022f.setStyle(Paint.Style.FILL);
                float f13 = -f12;
                this.f19022f.setShadowLayer(this.f19018b, f13, f13, i10);
                staticLayout2.draw(canvas);
                this.f19022f.setShadowLayer(this.f19018b, f12, f12, i12);
            }
            this.f19022f.setColor(this.f19035s);
            this.f19022f.setStyle(Paint.Style.FILL);
            staticLayout.draw(canvas);
            this.f19022f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            canvas.restoreToCount(save);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void f() {
        /*
            r7 = this;
            android.graphics.Bitmap r0 = r7.f19027k
            int r1 = r7.C
            int r2 = r7.A
            int r1 = r1 - r2
            int r3 = r7.D
            int r4 = r7.B
            int r3 = r3 - r4
            float r2 = (float) r2
            float r1 = (float) r1
            float r5 = r7.f19031o
            float r5 = r5 * r1
            float r2 = r2 + r5
            float r4 = (float) r4
            float r3 = (float) r3
            float r5 = r7.f19028l
            float r5 = r5 * r3
            float r4 = r4 + r5
            float r5 = r7.f19033q
            float r1 = r1 * r5
            int r1 = java.lang.Math.round(r1)
            float r5 = r7.f19034r
            r6 = -8388609(0xffffffffff7fffff, float:-3.4028235E38)
            int r6 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r6 == 0) goto L2e
            float r3 = r3 * r5
            int r0 = java.lang.Math.round(r3)
            goto L3f
        L2e:
            float r3 = (float) r1
            int r5 = r0.getHeight()
            float r5 = (float) r5
            int r0 = r0.getWidth()
            float r0 = (float) r0
            float r5 = r5 / r0
            float r3 = r3 * r5
            int r0 = java.lang.Math.round(r3)
        L3f:
            int r3 = r7.f19032p
            r5 = 1
            r6 = 2
            if (r3 != r6) goto L48
            float r3 = (float) r1
        L46:
            float r2 = r2 - r3
            goto L4e
        L48:
            if (r3 != r5) goto L4e
            int r3 = r1 / 2
            float r3 = (float) r3
            goto L46
        L4e:
            int r2 = java.lang.Math.round(r2)
            int r3 = r7.f19030n
            if (r3 != r6) goto L59
            float r3 = (float) r0
        L57:
            float r4 = r4 - r3
            goto L5f
        L59:
            if (r3 != r5) goto L5f
            int r3 = r0 / 2
            float r3 = (float) r3
            goto L57
        L5f:
            int r3 = java.lang.Math.round(r4)
            android.graphics.Rect r4 = new android.graphics.Rect
            int r1 = r1 + r2
            int r0 = r0 + r3
            r4.<init>(r2, r3, r1, r0)
            r7.J = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.u0.f():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void g() {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.u0.g():void");
    }

    public void b(p6.b bVar, b bVar2, float f10, float f11, float f12, Canvas canvas, int i10, int i11, int i12, int i13) {
        boolean z10;
        int i14;
        if (bVar.f64738d == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (TextUtils.isEmpty(bVar.f64735a)) {
                return;
            }
            if (bVar.f64746l) {
                i14 = bVar.f64747m;
            } else {
                i14 = bVar2.f18808c;
            }
        } else {
            i14 = ViewCompat.MEASURED_STATE_MASK;
        }
        if (a(this.f19025i, bVar.f64735a) && b7.s0.c(this.f19026j, bVar.f64736b) && this.f19027k == bVar.f64738d && this.f19028l == bVar.f64739e && this.f19029m == bVar.f64740f && b7.s0.c(Integer.valueOf(this.f19030n), Integer.valueOf(bVar.f64741g)) && this.f19031o == bVar.f64742h && b7.s0.c(Integer.valueOf(this.f19032p), Integer.valueOf(bVar.f64743i)) && this.f19033q == bVar.f64744j && this.f19034r == bVar.f64745k && this.f19035s == bVar2.f18806a && this.f19036t == bVar2.f18807b && this.f19037u == i14 && this.f19039w == bVar2.f18809d && this.f19038v == bVar2.f18810e && b7.s0.c(this.f19022f.getTypeface(), bVar2.f18811f) && this.f19040x == f10 && this.f19041y == f11 && this.f19042z == f12 && this.A == i10 && this.B == i11 && this.C == i12 && this.D == i13) {
            d(canvas, z10);
            return;
        }
        this.f19025i = bVar.f64735a;
        this.f19026j = bVar.f64736b;
        this.f19027k = bVar.f64738d;
        this.f19028l = bVar.f64739e;
        this.f19029m = bVar.f64740f;
        this.f19030n = bVar.f64741g;
        this.f19031o = bVar.f64742h;
        this.f19032p = bVar.f64743i;
        this.f19033q = bVar.f64744j;
        this.f19034r = bVar.f64745k;
        this.f19035s = bVar2.f18806a;
        this.f19036t = bVar2.f18807b;
        this.f19037u = i14;
        this.f19039w = bVar2.f18809d;
        this.f19038v = bVar2.f18810e;
        this.f19022f.setTypeface(bVar2.f18811f);
        this.f19040x = f10;
        this.f19041y = f11;
        this.f19042z = f12;
        this.A = i10;
        this.B = i11;
        this.C = i12;
        this.D = i13;
        if (z10) {
            b7.a.e(this.f19025i);
            g();
        } else {
            b7.a.e(this.f19027k);
            f();
        }
        d(canvas, z10);
    }
}
