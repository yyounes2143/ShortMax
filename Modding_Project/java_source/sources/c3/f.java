package c3;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.facebook.fresco.ui.common.OnFadeListener;
import java.util.Arrays;
/* compiled from: FadeDrawable.java */
/* loaded from: classes3.dex */
public class f extends a {

    /* renamed from: i  reason: collision with root package name */
    private final Drawable[] f2942i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f2943j;

    /* renamed from: k  reason: collision with root package name */
    private final int f2944k;

    /* renamed from: l  reason: collision with root package name */
    private final int f2945l;
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    int f2946m;
    @VisibleForTesting

    /* renamed from: n  reason: collision with root package name */
    int f2947n;
    @VisibleForTesting

    /* renamed from: o  reason: collision with root package name */
    long f2948o;
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    int[] f2949p;
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    int[] f2950q;
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    int f2951r;
    @VisibleForTesting

    /* renamed from: s  reason: collision with root package name */
    boolean[] f2952s;
    @VisibleForTesting

    /* renamed from: t  reason: collision with root package name */
    int f2953t;

    /* renamed from: u  reason: collision with root package name */
    private OnFadeListener f2954u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f2955v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f2956w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f2957x;

    public f(Drawable[] drawableArr, boolean z10, int i10) {
        super(drawableArr);
        this.f2957x = true;
        k2.h.j(drawableArr.length >= 1, "At least one layer required!");
        this.f2942i = drawableArr;
        this.f2949p = new int[drawableArr.length];
        this.f2950q = new int[drawableArr.length];
        this.f2951r = 255;
        this.f2952s = new boolean[drawableArr.length];
        this.f2953t = 0;
        this.f2943j = z10;
        this.f2944k = z10 ? 255 : 0;
        this.f2945l = i10;
        t();
    }

    private void g(Canvas canvas, Drawable drawable, int i10) {
        if (drawable != null && i10 > 0) {
            this.f2953t++;
            if (this.f2957x) {
                drawable.mutate();
            }
            drawable.setAlpha(i10);
            this.f2953t--;
            drawable.draw(canvas);
        }
    }

    private void q() {
        if (!this.f2955v) {
            return;
        }
        this.f2955v = false;
        OnFadeListener onFadeListener = this.f2954u;
        if (onFadeListener != null) {
            onFadeListener.onFadeFinished();
        }
    }

    private void r() {
        int i10;
        if (!this.f2955v && (i10 = this.f2945l) >= 0) {
            boolean[] zArr = this.f2952s;
            if (i10 >= zArr.length || !zArr[i10]) {
                return;
            }
            this.f2955v = true;
            OnFadeListener onFadeListener = this.f2954u;
            if (onFadeListener != null) {
                onFadeListener.onFadeStarted();
            }
        }
    }

    private void s() {
        if (this.f2956w && this.f2946m == 2 && this.f2952s[this.f2945l]) {
            OnFadeListener onFadeListener = this.f2954u;
            if (onFadeListener != null) {
                onFadeListener.onShownImmediately();
            }
            this.f2956w = false;
        }
    }

    private void t() {
        this.f2946m = 2;
        Arrays.fill(this.f2949p, this.f2944k);
        this.f2949p[0] = 255;
        Arrays.fill(this.f2950q, this.f2944k);
        this.f2950q[0] = 255;
        Arrays.fill(this.f2952s, this.f2943j);
        this.f2952s[0] = true;
    }

    private boolean w(float f10) {
        int i10;
        boolean z10 = true;
        for (int i11 = 0; i11 < this.f2942i.length; i11++) {
            boolean z11 = this.f2952s[i11];
            if (z11) {
                i10 = 1;
            } else {
                i10 = -1;
            }
            int[] iArr = this.f2950q;
            int i12 = (int) (this.f2949p[i11] + (i10 * 255 * f10));
            iArr[i11] = i12;
            if (i12 < 0) {
                iArr[i11] = 0;
            }
            if (iArr[i11] > 255) {
                iArr[i11] = 255;
            }
            if (z11 && iArr[i11] < 255) {
                z10 = false;
            }
            if (!z11 && iArr[i11] > 0) {
                z10 = false;
            }
        }
        return z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0057 A[LOOP:0: B:25:0x0052->B:27:0x0057, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0072 A[EDGE_INSN: B:32:0x0072->B:28:0x0072 ?: BREAK  , SYNTHETIC] */
    @Override // c3.a, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r9) {
        /*
            r8 = this;
            int r0 = r8.f2946m
            r1 = 2
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L2c
            if (r0 == r3) goto La
            goto L52
        La:
            int r0 = r8.f2947n
            if (r0 <= 0) goto L10
            r0 = r3
            goto L11
        L10:
            r0 = r2
        L11:
            k2.h.i(r0)
            long r4 = r8.p()
            long r6 = r8.f2948o
            long r4 = r4 - r6
            float r0 = (float) r4
            int r4 = r8.f2947n
            float r4 = (float) r4
            float r0 = r0 / r4
            boolean r0 = r8.w(r0)
            if (r0 == 0) goto L27
            goto L28
        L27:
            r1 = r3
        L28:
            r8.f2946m = r1
        L2a:
            r3 = r0
            goto L52
        L2c:
            int[] r0 = r8.f2950q
            int[] r4 = r8.f2949p
            android.graphics.drawable.Drawable[] r5 = r8.f2942i
            int r5 = r5.length
            java.lang.System.arraycopy(r0, r2, r4, r2, r5)
            long r4 = r8.p()
            r8.f2948o = r4
            int r0 = r8.f2947n
            if (r0 != 0) goto L43
            r0 = 1065353216(0x3f800000, float:1.0)
            goto L44
        L43:
            r0 = 0
        L44:
            boolean r0 = r8.w(r0)
            r8.r()
            if (r0 == 0) goto L4e
            goto L4f
        L4e:
            r1 = r3
        L4f:
            r8.f2946m = r1
            goto L2a
        L52:
            android.graphics.drawable.Drawable[] r0 = r8.f2942i
            int r1 = r0.length
            if (r2 >= r1) goto L72
            r0 = r0[r2]
            int[] r1 = r8.f2950q
            r1 = r1[r2]
            int r4 = r8.f2951r
            int r1 = r1 * r4
            double r4 = (double) r1
            r6 = 4643176031446892544(0x406fe00000000000, double:255.0)
            double r4 = r4 / r6
            double r4 = java.lang.Math.ceil(r4)
            int r1 = (int) r4
            r8.g(r9, r0, r1)
            int r2 = r2 + 1
            goto L52
        L72:
            if (r3 == 0) goto L7b
            r8.q()
            r8.s()
            goto L7e
        L7b:
            r8.invalidateSelf()
        L7e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c3.f.draw(android.graphics.Canvas):void");
    }

    public void f() {
        this.f2953t++;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2951r;
    }

    public void h() {
        this.f2953t--;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.f2953t == 0) {
            super.invalidateSelf();
        }
    }

    public void k() {
        this.f2946m = 0;
        Arrays.fill(this.f2952s, true);
        invalidateSelf();
    }

    public void l(int i10) {
        this.f2946m = 0;
        this.f2952s[i10] = true;
        invalidateSelf();
    }

    public void n(int i10) {
        this.f2946m = 0;
        this.f2952s[i10] = false;
        invalidateSelf();
    }

    public void o() {
        int i10;
        this.f2946m = 2;
        for (int i11 = 0; i11 < this.f2942i.length; i11++) {
            int[] iArr = this.f2950q;
            if (this.f2952s[i11]) {
                i10 = 255;
            } else {
                i10 = 0;
            }
            iArr[i11] = i10;
        }
        invalidateSelf();
    }

    protected long p() {
        return SystemClock.uptimeMillis();
    }

    @Override // c3.a, android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (this.f2951r != i10) {
            this.f2951r = i10;
            invalidateSelf();
        }
    }

    public void u(OnFadeListener onFadeListener) {
        this.f2954u = onFadeListener;
    }

    public void v(int i10) {
        this.f2947n = i10;
        if (this.f2946m == 1) {
            this.f2946m = 0;
        }
    }
}
