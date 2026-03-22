package io.bidmachine.media3.ui;

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
import java.util.Objects;
/* compiled from: SubtitlePainter.java */
/* loaded from: classes8.dex */
final class f1 {
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
    private final float f57794a;

    /* renamed from: b  reason: collision with root package name */
    private final float f57795b;

    /* renamed from: c  reason: collision with root package name */
    private final float f57796c;

    /* renamed from: d  reason: collision with root package name */
    private final float f57797d;

    /* renamed from: e  reason: collision with root package name */
    private final float f57798e;

    /* renamed from: f  reason: collision with root package name */
    private final TextPaint f57799f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f57800g;

    /* renamed from: h  reason: collision with root package name */
    private final Paint f57801h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private CharSequence f57802i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private Layout.Alignment f57803j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Bitmap f57804k;

    /* renamed from: l  reason: collision with root package name */
    private float f57805l;

    /* renamed from: m  reason: collision with root package name */
    private int f57806m;

    /* renamed from: n  reason: collision with root package name */
    private int f57807n;

    /* renamed from: o  reason: collision with root package name */
    private float f57808o;

    /* renamed from: p  reason: collision with root package name */
    private int f57809p;

    /* renamed from: q  reason: collision with root package name */
    private float f57810q;

    /* renamed from: r  reason: collision with root package name */
    private float f57811r;

    /* renamed from: s  reason: collision with root package name */
    private int f57812s;

    /* renamed from: t  reason: collision with root package name */
    private int f57813t;

    /* renamed from: u  reason: collision with root package name */
    private int f57814u;

    /* renamed from: v  reason: collision with root package name */
    private int f57815v;

    /* renamed from: w  reason: collision with root package name */
    private int f57816w;

    /* renamed from: x  reason: collision with root package name */
    private float f57817x;

    /* renamed from: y  reason: collision with root package name */
    private float f57818y;

    /* renamed from: z  reason: collision with root package name */
    private float f57819z;

    public f1(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{16843287, 16843288}, 0, 0);
        this.f57798e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f57797d = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f57794a = round;
        this.f57795b = round;
        this.f57796c = round;
        TextPaint textPaint = new TextPaint();
        this.f57799f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f57800g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f57801h = paint2;
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
        canvas.drawBitmap(this.f57804k, (Rect) null, this.J, this.f57801h);
    }

    private void d(Canvas canvas, boolean z10) {
        if (z10) {
            e(canvas);
            return;
        }
        cn.a.e(this.J);
        cn.a.e(this.f57804k);
        c(canvas);
    }

    private void e(Canvas canvas) {
        int i10;
        StaticLayout staticLayout = this.E;
        StaticLayout staticLayout2 = this.F;
        if (staticLayout != null && staticLayout2 != null) {
            int save = canvas.save();
            canvas.translate(this.G, this.H);
            if (Color.alpha(this.f57814u) > 0) {
                this.f57800g.setColor(this.f57814u);
                canvas.drawRect(-this.I, 0.0f, staticLayout.getWidth() + this.I, staticLayout.getHeight(), this.f57800g);
            }
            int i11 = this.f57816w;
            boolean z10 = true;
            if (i11 == 1) {
                this.f57799f.setStrokeJoin(Paint.Join.ROUND);
                this.f57799f.setStrokeWidth(this.f57794a);
                this.f57799f.setColor(this.f57815v);
                this.f57799f.setStyle(Paint.Style.FILL_AND_STROKE);
                staticLayout2.draw(canvas);
            } else if (i11 == 2) {
                TextPaint textPaint = this.f57799f;
                float f10 = this.f57795b;
                float f11 = this.f57796c;
                textPaint.setShadowLayer(f10, f11, f11, this.f57815v);
            } else if (i11 == 3 || i11 == 4) {
                if (i11 != 3) {
                    z10 = false;
                }
                int i12 = -1;
                if (z10) {
                    i10 = -1;
                } else {
                    i10 = this.f57815v;
                }
                if (z10) {
                    i12 = this.f57815v;
                }
                float f12 = this.f57795b / 2.0f;
                this.f57799f.setColor(this.f57812s);
                this.f57799f.setStyle(Paint.Style.FILL);
                float f13 = -f12;
                this.f57799f.setShadowLayer(this.f57795b, f13, f13, i10);
                staticLayout2.draw(canvas);
                this.f57799f.setShadowLayer(this.f57795b, f12, f12, i12);
            }
            this.f57799f.setColor(this.f57812s);
            this.f57799f.setStyle(Paint.Style.FILL);
            staticLayout.draw(canvas);
            this.f57799f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
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
            android.graphics.Bitmap r0 = r7.f57804k
            int r1 = r7.C
            int r2 = r7.A
            int r1 = r1 - r2
            int r3 = r7.D
            int r4 = r7.B
            int r3 = r3 - r4
            float r2 = (float) r2
            float r1 = (float) r1
            float r5 = r7.f57808o
            float r5 = r5 * r1
            float r2 = r2 + r5
            float r4 = (float) r4
            float r3 = (float) r3
            float r5 = r7.f57805l
            float r5 = r5 * r3
            float r4 = r4 + r5
            float r5 = r7.f57810q
            float r1 = r1 * r5
            int r1 = java.lang.Math.round(r1)
            float r5 = r7.f57811r
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
            int r3 = r7.f57809p
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
            int r3 = r7.f57807n
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
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.ui.f1.f():void");
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
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.ui.f1.g():void");
    }

    public void b(bn.a aVar, a aVar2, float f10, float f11, float f12, Canvas canvas, int i10, int i11, int i12, int i13) {
        boolean z10;
        int i14;
        if (aVar.f2703d == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (TextUtils.isEmpty(aVar.f2700a)) {
                return;
            }
            if (aVar.f2711l) {
                i14 = aVar.f2712m;
            } else {
                i14 = aVar2.f57679c;
            }
        } else {
            i14 = ViewCompat.MEASURED_STATE_MASK;
        }
        if (a(this.f57802i, aVar.f2700a) && Objects.equals(this.f57803j, aVar.f2701b) && this.f57804k == aVar.f2703d && this.f57805l == aVar.f2704e && this.f57806m == aVar.f2705f && Integer.valueOf(this.f57807n).equals(Integer.valueOf(aVar.f2706g)) && this.f57808o == aVar.f2707h && Integer.valueOf(this.f57809p).equals(Integer.valueOf(aVar.f2708i)) && this.f57810q == aVar.f2709j && this.f57811r == aVar.f2710k && this.f57812s == aVar2.f57677a && this.f57813t == aVar2.f57678b && this.f57814u == i14 && this.f57816w == aVar2.f57680d && this.f57815v == aVar2.f57681e && Objects.equals(this.f57799f.getTypeface(), aVar2.f57682f) && this.f57817x == f10 && this.f57818y == f11 && this.f57819z == f12 && this.A == i10 && this.B == i11 && this.C == i12 && this.D == i13) {
            d(canvas, z10);
            return;
        }
        this.f57802i = aVar.f2700a;
        this.f57803j = aVar.f2701b;
        this.f57804k = aVar.f2703d;
        this.f57805l = aVar.f2704e;
        this.f57806m = aVar.f2705f;
        this.f57807n = aVar.f2706g;
        this.f57808o = aVar.f2707h;
        this.f57809p = aVar.f2708i;
        this.f57810q = aVar.f2709j;
        this.f57811r = aVar.f2710k;
        this.f57812s = aVar2.f57677a;
        this.f57813t = aVar2.f57678b;
        this.f57814u = i14;
        this.f57816w = aVar2.f57680d;
        this.f57815v = aVar2.f57681e;
        this.f57799f.setTypeface(aVar2.f57682f);
        this.f57817x = f10;
        this.f57818y = f11;
        this.f57819z = f12;
        this.A = i10;
        this.B = i11;
        this.C = i12;
        this.D = i13;
        if (z10) {
            cn.a.e(this.f57802i);
            g();
        } else {
            cn.a.e(this.f57804k);
            f();
        }
        d(canvas, z10);
    }
}
