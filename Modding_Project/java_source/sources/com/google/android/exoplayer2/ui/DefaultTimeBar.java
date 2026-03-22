package com.google.android.exoplayer2.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.ui.y0;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes4.dex */
public class DefaultTimeBar extends View implements y0 {
    private int A;
    private long B;
    private int C;
    private Rect D;
    private ValueAnimator E;
    private float F;
    private boolean G;
    private boolean H;
    private long I;
    private long J;
    private long K;
    private long L;
    private int M;
    @Nullable
    private long[] N;
    @Nullable
    private boolean[] O;

    /* renamed from: a  reason: collision with root package name */
    private final Rect f18581a;

    /* renamed from: b  reason: collision with root package name */
    private final Rect f18582b;

    /* renamed from: c  reason: collision with root package name */
    private final Rect f18583c;

    /* renamed from: d  reason: collision with root package name */
    private final Rect f18584d;

    /* renamed from: e  reason: collision with root package name */
    private final Paint f18585e;

    /* renamed from: f  reason: collision with root package name */
    private final Paint f18586f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f18587g;

    /* renamed from: h  reason: collision with root package name */
    private final Paint f18588h;

    /* renamed from: i  reason: collision with root package name */
    private final Paint f18589i;

    /* renamed from: j  reason: collision with root package name */
    private final Paint f18590j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final Drawable f18591k;

    /* renamed from: l  reason: collision with root package name */
    private final int f18592l;

    /* renamed from: m  reason: collision with root package name */
    private final int f18593m;

    /* renamed from: n  reason: collision with root package name */
    private final int f18594n;

    /* renamed from: o  reason: collision with root package name */
    private final int f18595o;

    /* renamed from: p  reason: collision with root package name */
    private final int f18596p;

    /* renamed from: q  reason: collision with root package name */
    private final int f18597q;

    /* renamed from: r  reason: collision with root package name */
    private final int f18598r;

    /* renamed from: s  reason: collision with root package name */
    private final int f18599s;

    /* renamed from: t  reason: collision with root package name */
    private final int f18600t;

    /* renamed from: u  reason: collision with root package name */
    private final StringBuilder f18601u;

    /* renamed from: v  reason: collision with root package name */
    private final Formatter f18602v;

    /* renamed from: w  reason: collision with root package name */
    private final Runnable f18603w;

    /* renamed from: x  reason: collision with root package name */
    private final CopyOnWriteArraySet<y0.a> f18604x;

    /* renamed from: y  reason: collision with root package name */
    private final Point f18605y;

    /* renamed from: z  reason: collision with root package name */
    private final float f18606z;

    public DefaultTimeBar(Context context) {
        this(context, null);
    }

    private static int d(float f10, int i10) {
        return (int) ((i10 * f10) + 0.5f);
    }

    private void e(Canvas canvas) {
        int i10;
        if (this.J <= 0) {
            return;
        }
        Rect rect = this.f18584d;
        int p10 = b7.s0.p(rect.right, rect.left, this.f18582b.right);
        int centerY = this.f18584d.centerY();
        Drawable drawable = this.f18591k;
        if (drawable == null) {
            if (!this.H && !isFocused()) {
                if (isEnabled()) {
                    i10 = this.f18596p;
                } else {
                    i10 = this.f18597q;
                }
            } else {
                i10 = this.f18598r;
            }
            canvas.drawCircle(p10, centerY, (int) ((i10 * this.F) / 2.0f), this.f18590j);
            return;
        }
        int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.F)) / 2;
        int intrinsicHeight = ((int) (this.f18591k.getIntrinsicHeight() * this.F)) / 2;
        this.f18591k.setBounds(p10 - intrinsicWidth, centerY - intrinsicHeight, p10 + intrinsicWidth, centerY + intrinsicHeight);
        this.f18591k.draw(canvas);
    }

    private void f(Canvas canvas) {
        Paint paint;
        int height = this.f18582b.height();
        int centerY = this.f18582b.centerY() - (height / 2);
        int i10 = height + centerY;
        if (this.J <= 0) {
            Rect rect = this.f18582b;
            canvas.drawRect(rect.left, centerY, rect.right, i10, this.f18587g);
            return;
        }
        Rect rect2 = this.f18583c;
        int i11 = rect2.left;
        int i12 = rect2.right;
        int max = Math.max(Math.max(this.f18582b.left, i12), this.f18584d.right);
        int i13 = this.f18582b.right;
        if (max < i13) {
            canvas.drawRect(max, centerY, i13, i10, this.f18587g);
        }
        int max2 = Math.max(i11, this.f18584d.right);
        if (i12 > max2) {
            canvas.drawRect(max2, centerY, i12, i10, this.f18586f);
        }
        if (this.f18584d.width() > 0) {
            Rect rect3 = this.f18584d;
            canvas.drawRect(rect3.left, centerY, rect3.right, i10, this.f18585e);
        }
        if (this.M == 0) {
            return;
        }
        long[] jArr = (long[]) b7.a.e(this.N);
        boolean[] zArr = (boolean[]) b7.a.e(this.O);
        int i14 = this.f18595o / 2;
        for (int i15 = 0; i15 < this.M; i15++) {
            long q10 = b7.s0.q(jArr[i15], 0L, this.J);
            Rect rect4 = this.f18582b;
            int min = rect4.left + Math.min(rect4.width() - this.f18595o, Math.max(0, ((int) ((this.f18582b.width() * q10) / this.J)) - i14));
            if (zArr[i15]) {
                paint = this.f18589i;
            } else {
                paint = this.f18588h;
            }
            canvas.drawRect(min, centerY, min + this.f18595o, i10, paint);
        }
    }

    private long getPositionIncrement() {
        long j10 = this.B;
        if (j10 == -9223372036854775807L) {
            long j11 = this.J;
            if (j11 == -9223372036854775807L) {
                return 0L;
            }
            return j11 / this.A;
        }
        return j10;
    }

    private String getProgressText() {
        return b7.s0.b0(this.f18601u, this.f18602v, this.K);
    }

    private long getScrubberPosition() {
        if (this.f18582b.width() > 0 && this.J != -9223372036854775807L) {
            return (this.f18584d.width() * this.J) / this.f18582b.width();
        }
        return 0L;
    }

    private boolean i(float f10, float f11) {
        return this.f18581a.contains((int) f10, (int) f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        v(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(ValueAnimator valueAnimator) {
        this.F = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate(this.f18581a);
    }

    private void l(float f10) {
        Rect rect = this.f18584d;
        Rect rect2 = this.f18582b;
        rect.right = b7.s0.p((int) f10, rect2.left, rect2.right);
    }

    private static int m(float f10, int i10) {
        return (int) (i10 / f10);
    }

    private Point n(MotionEvent motionEvent) {
        this.f18605y.set((int) motionEvent.getX(), (int) motionEvent.getY());
        return this.f18605y;
    }

    private boolean o(long j10) {
        long j11;
        long j12 = this.J;
        if (j12 <= 0) {
            return false;
        }
        if (this.H) {
            j11 = this.I;
        } else {
            j11 = this.K;
        }
        long j13 = j11;
        long q10 = b7.s0.q(j13 + j10, 0L, j12);
        if (q10 == j13) {
            return false;
        }
        if (!this.H) {
            u(q10);
        } else {
            y(q10);
        }
        w();
        return true;
    }

    private boolean p(Drawable drawable) {
        if (b7.s0.f2506a >= 23 && q(drawable, getLayoutDirection())) {
            return true;
        }
        return false;
    }

    private static boolean q(Drawable drawable, int i10) {
        if (b7.s0.f2506a >= 23 && drawable.setLayoutDirection(i10)) {
            return true;
        }
        return false;
    }

    @RequiresApi(29)
    private void r(int i10, int i11) {
        Rect rect = this.D;
        if (rect != null && rect.width() == i10 && this.D.height() == i11) {
            return;
        }
        Rect rect2 = new Rect(0, 0, i10, i11);
        this.D = rect2;
        setSystemGestureExclusionRects(Collections.singletonList(rect2));
    }

    private void u(long j10) {
        this.I = j10;
        this.H = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<y0.a> it = this.f18604x.iterator();
        while (it.hasNext()) {
            it.next().x(this, j10);
        }
    }

    private void v(boolean z10) {
        removeCallbacks(this.f18603w);
        this.H = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<y0.a> it = this.f18604x.iterator();
        while (it.hasNext()) {
            it.next().i(this, this.I, z10);
        }
    }

    private void w() {
        long j10;
        this.f18583c.set(this.f18582b);
        this.f18584d.set(this.f18582b);
        if (this.H) {
            j10 = this.I;
        } else {
            j10 = this.K;
        }
        if (this.J > 0) {
            Rect rect = this.f18583c;
            Rect rect2 = this.f18582b;
            rect.right = Math.min(rect2.left + ((int) ((this.f18582b.width() * this.L) / this.J)), rect2.right);
            int width = (int) ((this.f18582b.width() * j10) / this.J);
            Rect rect3 = this.f18584d;
            Rect rect4 = this.f18582b;
            rect3.right = Math.min(rect4.left + width, rect4.right);
        } else {
            Rect rect5 = this.f18583c;
            int i10 = this.f18582b.left;
            rect5.right = i10;
            this.f18584d.right = i10;
        }
        invalidate(this.f18581a);
    }

    private void x() {
        Drawable drawable = this.f18591k;
        if (drawable != null && drawable.isStateful() && this.f18591k.setState(getDrawableState())) {
            invalidate();
        }
    }

    private void y(long j10) {
        if (this.I == j10) {
            return;
        }
        this.I = j10;
        Iterator<y0.a> it = this.f18604x.iterator();
        while (it.hasNext()) {
            it.next().v(this, j10);
        }
    }

    @Override // com.google.android.exoplayer2.ui.y0
    public void a(y0.a aVar) {
        b7.a.e(aVar);
        this.f18604x.add(aVar);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        x();
    }

    public void g(long j10) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.E.setFloatValues(this.F, 0.0f);
        this.E.setDuration(j10);
        this.E.start();
    }

    @Override // com.google.android.exoplayer2.ui.y0
    public long getPreferredUpdateDelay() {
        int m10 = m(this.f18606z, this.f18582b.width());
        if (m10 != 0) {
            long j10 = this.J;
            if (j10 != 0 && j10 != -9223372036854775807L) {
                return j10 / m10;
            }
        }
        return Long.MAX_VALUE;
    }

    public void h(boolean z10) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = z10;
        this.F = 0.0f;
        invalidate(this.f18581a);
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f18591k;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        f(canvas);
        e(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z10, int i10, @Nullable Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        if (this.H && !z10) {
            v(false);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.J <= 0) {
            return;
        }
        if (b7.s0.f2506a >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
            return;
        }
        accessibilityNodeInfo.addAction(4096);
        accessibilityNodeInfo.addAction(8192);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onKeyDown(int r5, android.view.KeyEvent r6) {
        /*
            r4 = this;
            boolean r0 = r4.isEnabled()
            if (r0 == 0) goto L30
            long r0 = r4.getPositionIncrement()
            r2 = 66
            r3 = 1
            if (r5 == r2) goto L27
            switch(r5) {
                case 21: goto L13;
                case 22: goto L14;
                case 23: goto L27;
                default: goto L12;
            }
        L12:
            goto L30
        L13:
            long r0 = -r0
        L14:
            boolean r0 = r4.o(r0)
            if (r0 == 0) goto L30
            java.lang.Runnable r5 = r4.f18603w
            r4.removeCallbacks(r5)
            java.lang.Runnable r5 = r4.f18603w
            r0 = 1000(0x3e8, double:4.94E-321)
            r4.postDelayed(r5, r0)
            return r3
        L27:
            boolean r0 = r4.H
            if (r0 == 0) goto L30
            r5 = 0
            r4.v(r5)
            return r3
        L30:
            boolean r5 = super.onKeyDown(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DefaultTimeBar.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        int i17 = i12 - i10;
        int i18 = i13 - i11;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i17 - getPaddingRight();
        if (this.G) {
            i14 = 0;
        } else {
            i14 = this.f18599s;
        }
        if (this.f18594n == 1) {
            i15 = (i18 - getPaddingBottom()) - this.f18593m;
            int i19 = this.f18592l;
            i16 = ((i18 - getPaddingBottom()) - i19) - Math.max(i14 - (i19 / 2), 0);
        } else {
            i15 = (i18 - this.f18593m) / 2;
            i16 = (i18 - this.f18592l) / 2;
        }
        this.f18581a.set(paddingLeft, i15, paddingRight, this.f18593m + i15);
        Rect rect = this.f18582b;
        Rect rect2 = this.f18581a;
        rect.set(rect2.left + i14, i16, rect2.right - i14, this.f18592l + i16);
        if (b7.s0.f2506a >= 29) {
            r(i17, i18);
        }
        w();
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode == 0) {
            size = this.f18593m;
        } else if (mode != 1073741824) {
            size = Math.min(this.f18593m, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i10), size);
        x();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
        Drawable drawable = this.f18591k;
        if (drawable != null && q(drawable, i10)) {
            invalidate();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
        if (r3 != 3) goto L32;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            boolean r0 = r7.isEnabled()
            r1 = 0
            if (r0 == 0) goto L76
            long r2 = r7.J
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 > 0) goto L10
            goto L76
        L10:
            android.graphics.Point r0 = r7.n(r8)
            int r2 = r0.x
            int r0 = r0.y
            int r3 = r8.getAction()
            r4 = 1
            if (r3 == 0) goto L5d
            r5 = 3
            if (r3 == r4) goto L4e
            r6 = 2
            if (r3 == r6) goto L28
            if (r3 == r5) goto L4e
            goto L76
        L28:
            boolean r8 = r7.H
            if (r8 == 0) goto L76
            int r8 = r7.f18600t
            if (r0 >= r8) goto L3a
            int r8 = r7.C
            int r2 = r2 - r8
            int r2 = r2 / r5
            int r8 = r8 + r2
            float r8 = (float) r8
            r7.l(r8)
            goto L40
        L3a:
            r7.C = r2
            float r8 = (float) r2
            r7.l(r8)
        L40:
            long r0 = r7.getScrubberPosition()
            r7.y(r0)
            r7.w()
            r7.invalidate()
            return r4
        L4e:
            boolean r0 = r7.H
            if (r0 == 0) goto L76
            int r8 = r8.getAction()
            if (r8 != r5) goto L59
            r1 = r4
        L59:
            r7.v(r1)
            return r4
        L5d:
            float r8 = (float) r2
            float r0 = (float) r0
            boolean r0 = r7.i(r8, r0)
            if (r0 == 0) goto L76
            r7.l(r8)
            long r0 = r7.getScrubberPosition()
            r7.u(r0)
            r7.w()
            r7.invalidate()
            return r4
        L76:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DefaultTimeBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i10, @Nullable Bundle bundle) {
        if (super.performAccessibilityAction(i10, bundle)) {
            return true;
        }
        if (this.J <= 0) {
            return false;
        }
        if (i10 == 8192) {
            if (o(-getPositionIncrement())) {
                v(false);
            }
        } else if (i10 != 4096) {
            return false;
        } else {
            if (o(getPositionIncrement())) {
                v(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void s() {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = false;
        this.F = 1.0f;
        invalidate(this.f18581a);
    }

    @Override // com.google.android.exoplayer2.ui.y0
    public void setAdGroupTimesMs(@Nullable long[] jArr, @Nullable boolean[] zArr, int i10) {
        boolean z10;
        if (i10 != 0 && (jArr == null || zArr == null)) {
            z10 = false;
        } else {
            z10 = true;
        }
        b7.a.a(z10);
        this.M = i10;
        this.N = jArr;
        this.O = zArr;
        w();
    }

    public void setAdMarkerColor(@ColorInt int i10) {
        this.f18588h.setColor(i10);
        invalidate(this.f18581a);
    }

    public void setBufferedColor(@ColorInt int i10) {
        this.f18586f.setColor(i10);
        invalidate(this.f18581a);
    }

    @Override // com.google.android.exoplayer2.ui.y0
    public void setBufferedPosition(long j10) {
        if (this.L == j10) {
            return;
        }
        this.L = j10;
        w();
    }

    @Override // com.google.android.exoplayer2.ui.y0
    public void setDuration(long j10) {
        if (this.J == j10) {
            return;
        }
        this.J = j10;
        if (this.H && j10 == -9223372036854775807L) {
            v(true);
        }
        w();
    }

    @Override // android.view.View, com.google.android.exoplayer2.ui.y0
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        if (this.H && !z10) {
            v(true);
        }
    }

    public void setKeyCountIncrement(int i10) {
        boolean z10;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        this.A = i10;
        this.B = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j10) {
        boolean z10;
        if (j10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.a(z10);
        this.A = -1;
        this.B = j10;
    }

    public void setPlayedAdMarkerColor(@ColorInt int i10) {
        this.f18589i.setColor(i10);
        invalidate(this.f18581a);
    }

    public void setPlayedColor(@ColorInt int i10) {
        this.f18585e.setColor(i10);
        invalidate(this.f18581a);
    }

    @Override // com.google.android.exoplayer2.ui.y0
    public void setPosition(long j10) {
        if (this.K == j10) {
            return;
        }
        this.K = j10;
        setContentDescription(getProgressText());
        w();
    }

    public void setScrubberColor(@ColorInt int i10) {
        this.f18590j.setColor(i10);
        invalidate(this.f18581a);
    }

    public void setUnplayedColor(@ColorInt int i10) {
        this.f18587g.setColor(i10);
        invalidate(this.f18581a);
    }

    public void t(long j10) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = false;
        this.E.setFloatValues(this.F, 1.0f);
        this.E.setDuration(j10);
        this.E.start();
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, attributeSet);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2) {
        this(context, attributeSet, i10, attributeSet2, 0);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2, int i11) {
        super(context, attributeSet, i10);
        this.f18581a = new Rect();
        this.f18582b = new Rect();
        this.f18583c = new Rect();
        this.f18584d = new Rect();
        Paint paint = new Paint();
        this.f18585e = paint;
        Paint paint2 = new Paint();
        this.f18586f = paint2;
        Paint paint3 = new Paint();
        this.f18587g = paint3;
        Paint paint4 = new Paint();
        this.f18588h = paint4;
        Paint paint5 = new Paint();
        this.f18589i = paint5;
        Paint paint6 = new Paint();
        this.f18590j = paint6;
        paint6.setAntiAlias(true);
        this.f18604x = new CopyOnWriteArraySet<>();
        this.f18605y = new Point();
        float f10 = context.getResources().getDisplayMetrics().density;
        this.f18606z = f10;
        this.f18600t = d(f10, -50);
        int d10 = d(f10, 4);
        int d11 = d(f10, 26);
        int d12 = d(f10, 4);
        int d13 = d(f10, 12);
        int d14 = d(f10, 0);
        int d15 = d(f10, 16);
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, u.f18976e, i10, i11);
            try {
                Drawable drawable = obtainStyledAttributes.getDrawable(u.f18998p);
                this.f18591k = drawable;
                if (drawable != null) {
                    p(drawable);
                    d11 = Math.max(drawable.getMinimumHeight(), d11);
                }
                this.f18592l = obtainStyledAttributes.getDimensionPixelSize(u.f18984i, d10);
                this.f18593m = obtainStyledAttributes.getDimensionPixelSize(u.f19002r, d11);
                this.f18594n = obtainStyledAttributes.getInt(u.f18982h, 0);
                this.f18595o = obtainStyledAttributes.getDimensionPixelSize(u.f18980g, d12);
                this.f18596p = obtainStyledAttributes.getDimensionPixelSize(u.f19000q, d13);
                this.f18597q = obtainStyledAttributes.getDimensionPixelSize(u.f18994n, d14);
                this.f18598r = obtainStyledAttributes.getDimensionPixelSize(u.f18996o, d15);
                int i12 = obtainStyledAttributes.getInt(u.f18990l, -1);
                int i13 = obtainStyledAttributes.getInt(u.f18992m, -1);
                int i14 = obtainStyledAttributes.getInt(u.f18986j, -855638017);
                int i15 = obtainStyledAttributes.getInt(u.f19004s, 872415231);
                int i16 = obtainStyledAttributes.getInt(u.f18978f, -1291845888);
                int i17 = obtainStyledAttributes.getInt(u.f18988k, 872414976);
                paint.setColor(i12);
                paint6.setColor(i13);
                paint2.setColor(i14);
                paint3.setColor(i15);
                paint4.setColor(i16);
                paint5.setColor(i17);
                obtainStyledAttributes.recycle();
            } catch (Throwable th2) {
                obtainStyledAttributes.recycle();
                throw th2;
            }
        } else {
            this.f18592l = d10;
            this.f18593m = d11;
            this.f18594n = 0;
            this.f18595o = d12;
            this.f18596p = d13;
            this.f18597q = d14;
            this.f18598r = d15;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.f18591k = null;
        }
        StringBuilder sb2 = new StringBuilder();
        this.f18601u = sb2;
        this.f18602v = new Formatter(sb2, Locale.getDefault());
        this.f18603w = new Runnable() { // from class: com.google.android.exoplayer2.ui.d
            @Override // java.lang.Runnable
            public final void run() {
                DefaultTimeBar.this.j();
            }
        };
        Drawable drawable2 = this.f18591k;
        if (drawable2 != null) {
            this.f18599s = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.f18599s = (Math.max(this.f18597q, Math.max(this.f18596p, this.f18598r)) + 1) / 2;
        }
        this.F = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.E = valueAnimator;
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.e
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DefaultTimeBar.this.k(valueAnimator2);
            }
        });
        this.J = -9223372036854775807L;
        this.B = -9223372036854775807L;
        this.A = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }
}
