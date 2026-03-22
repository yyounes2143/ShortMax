package com.startshorts.androidplayer.ui.view.seekbar;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.animation.LinearInterpolator;
import com.startshorts.androidplayer.R$attr;
import com.startshorts.androidplayer.R$style;
import com.startshorts.androidplayer.R$styleable;
import com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar2;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import jk.h;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import xj.a;
import yj.d;
/* compiled from: DiscreteSeekBar2.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DiscreteSeekBar2 extends View {
    @NotNull
    public static final a B = new a(null);
    @Nullable
    private ValueAnimator A;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final yj.b f47849a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final yj.a f47850b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final d f47851c;

    /* renamed from: d  reason: collision with root package name */
    private int f47852d;

    /* renamed from: e  reason: collision with root package name */
    private int f47853e;

    /* renamed from: f  reason: collision with root package name */
    private int f47854f;

    /* renamed from: g  reason: collision with root package name */
    private int f47855g;

    /* renamed from: h  reason: collision with root package name */
    private int f47856h;

    /* renamed from: i  reason: collision with root package name */
    private int f47857i;

    /* renamed from: j  reason: collision with root package name */
    private int f47858j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f47859k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private b f47860l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f47861m;

    /* renamed from: n  reason: collision with root package name */
    private int f47862n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final Rect f47863o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final Rect f47864p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private xj.a f47865q;

    /* renamed from: r  reason: collision with root package name */
    private float f47866r;

    /* renamed from: s  reason: collision with root package name */
    private int f47867s;

    /* renamed from: t  reason: collision with root package name */
    private final float f47868t;

    /* renamed from: u  reason: collision with root package name */
    private int f47869u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f47870v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f47871w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private MotionEvent f47872x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private MotionEvent f47873y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private r f47874z;

    /* compiled from: DiscreteSeekBar2.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DiscreteSeekBar2.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a(@NotNull DiscreteSeekBar2 discreteSeekBar2);

        void b(@NotNull DiscreteSeekBar2 discreteSeekBar2);

        void c(@NotNull DiscreteSeekBar2 discreteSeekBar2, int i10, boolean z10);

        void d(@NotNull DiscreteSeekBar2 discreteSeekBar2);

        void e(@NotNull DiscreteSeekBar2 discreteSeekBar2);
    }

    /* compiled from: DiscreteSeekBar2.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements a.InterfaceC0968a {
        c() {
        }

        @Override // xj.a.InterfaceC0968a
        public void a(float f10) {
            DiscreteSeekBar2.this.setAnimationPosition(f10);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DiscreteSeekBar2(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void A() {
        int i10 = this.f47855g - this.f47856h;
        int i11 = this.f47858j;
        if (i11 == 0 || i10 / i11 > 20) {
            this.f47858j = e.e(1, h.b(i10 / 20));
        }
    }

    private final void B(float f10) {
        int i10;
        Rect bounds = this.f47849a.getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
        int width = bounds.width() / 2;
        int i11 = this.f47854f;
        int width2 = (getWidth() - ((getPaddingRight() + width) + i11)) - ((getPaddingLeft() + width) + i11);
        int i12 = this.f47855g;
        int c10 = bt.a.c(((i12 - i10) * f10) + this.f47856h);
        if (this.f47857i != c10) {
            this.f47857i = c10;
            p(c10, true);
        }
        float f11 = width2;
        int i13 = this.f47869u;
        int i14 = this.f47856h;
        C((int) ((((i13 - i14) / (this.f47855g - i14)) * f11) + 0.5f), (int) ((f10 * f11) + 0.5f));
    }

    private final void C(int i10, int i11) {
        int intrinsicWidth = this.f47849a.getIntrinsicWidth();
        this.f47849a.copyBounds(this.f47863o);
        yj.b bVar = this.f47849a;
        Rect rect = this.f47863o;
        bVar.setBounds(i11, rect.top, i11 + intrinsicWidth, rect.bottom);
        this.f47851c.getBounds().left = i10;
        this.f47851c.getBounds().right = i11 + (intrinsicWidth / 2);
        Rect rect2 = this.f47864p;
        this.f47849a.copyBounds(rect2);
        Rect rect3 = this.f47863o;
        int i12 = this.f47854f;
        rect3.inset(-i12, -i12);
        int i13 = this.f47854f;
        rect2.inset(-i13, -i13);
        this.f47863o.union(rect2);
        invalidate(this.f47863o);
    }

    private final void D() {
        int intrinsicWidth = this.f47849a.getIntrinsicWidth() / 2;
        int width = (getWidth() - (getPaddingRight() + intrinsicWidth)) - (getPaddingLeft() + intrinsicWidth);
        int i10 = this.f47857i;
        int i11 = this.f47856h;
        int i12 = this.f47855g;
        float f10 = (i10 - i11) / (i12 - i11);
        float f11 = (this.f47869u - i11) / (i12 - i11);
        float f12 = width;
        C((int) ((f11 * f12) + 0.5f), (int) ((f10 * f12) + 0.5f));
    }

    private final void d() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    private final int e(MotionEvent motionEvent, boolean z10) {
        int i10;
        int x10 = (int) motionEvent.getX();
        if (z10) {
            i10 = getLeft();
        } else {
            i10 = 0;
        }
        int i11 = x10 + i10;
        Rect bounds = this.f47849a.getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
        int width = bounds.width() / 2;
        int i12 = (i11 - this.f47862n) + width;
        int paddingLeft = getPaddingLeft();
        int width2 = getWidth() - (getPaddingRight() + width);
        if (i12 < paddingLeft) {
            i12 = paddingLeft;
        } else if (i12 > width2) {
            i12 = width2;
        }
        float f10 = (i12 - paddingLeft) / (width2 - paddingLeft);
        int i13 = this.f47855g;
        int i14 = this.f47856h;
        return bt.a.c((f10 * (i13 - i14)) + i14);
    }

    private final void g() {
        r rVar = this.f47874z;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f47874z = null;
    }

    private final int getAnimatedProgress() {
        if (m()) {
            return this.f47867s;
        }
        return this.f47857i;
    }

    public static /* synthetic */ boolean k(DiscreteSeekBar2 discreteSeekBar2, MotionEvent motionEvent, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return discreteSeekBar2.j(motionEvent, z10);
    }

    private final void l() {
        int intrinsicWidth = this.f47849a.getIntrinsicWidth();
        int intrinsicHeight = this.f47849a.getIntrinsicHeight();
        int i10 = this.f47854f;
        int i11 = intrinsicWidth / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int height = (getHeight() - getPaddingBottom()) - i10;
        this.f47849a.setBounds(paddingLeft, height - intrinsicHeight, intrinsicWidth + paddingLeft, height);
        int e10 = e.e(this.f47852d / 2, 1);
        int i12 = height - i11;
        this.f47850b.setBounds(paddingLeft, i12 - e10, getWidth() - paddingRight, e10 + i12);
        int e11 = e.e(this.f47853e / 2, 2);
        this.f47851c.setBounds(paddingLeft, i12 - e11, paddingRight, i12 + e11);
        D();
    }

    private final boolean o() {
        xj.b bVar = xj.b.f70501a;
        ViewParent parent = getParent();
        Intrinsics.checkNotNullExpressionValue(parent, "getParent(...)");
        return bVar.a(parent);
    }

    private final void p(int i10, boolean z10) {
        b bVar = this.f47860l;
        if (bVar != null) {
            bVar.c(this, i10, z10);
        }
    }

    private final void r(int i10, boolean z10) {
        xj.a aVar;
        if (m() && (aVar = this.f47865q) != null) {
            aVar.a();
        }
        int e10 = e.e(this.f47856h, e.j(this.f47855g, i10));
        this.f47857i = e10;
        p(e10, z10);
        D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(DiscreteSeekBar2 discreteSeekBar2, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        discreteSeekBar2.setProgress(((Integer) animatedValue).intValue());
    }

    private final boolean u(MotionEvent motionEvent, boolean z10, boolean z11) {
        boolean contains;
        Rect rect = this.f47864p;
        this.f47849a.copyBounds(rect);
        int i10 = this.f47854f;
        rect.inset(-i10, -i10);
        if (z11) {
            contains = true;
        } else {
            contains = rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        this.f47861m = contains;
        if (!contains && this.f47859k && !z10) {
            this.f47861m = true;
            this.f47862n = (rect.width() / 2) - this.f47854f;
            y(motionEvent, true, false);
            this.f47849a.copyBounds(rect);
            int i11 = this.f47854f;
            rect.inset(-i11, -i11);
        }
        if (this.f47861m) {
            setPressed(true);
            g();
            d();
            this.f47862n = (int) ((motionEvent.getX() - rect.left) - this.f47854f);
            b bVar = this.f47860l;
            if (bVar != null) {
                bVar.e(this);
            }
        }
        return this.f47861m;
    }

    private final void v(long j10) {
        g();
        this.f47874z = CoroutineUtil.g(CoroutineUtil.f48072a, j10, null, new Function0() { // from class: wj.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit w10;
                w10 = DiscreteSeekBar2.w(DiscreteSeekBar2.this);
                return w10;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w(DiscreteSeekBar2 discreteSeekBar2) {
        if (discreteSeekBar2.f47870v && !discreteSeekBar2.f47861m) {
            MotionEvent motionEvent = discreteSeekBar2.f47872x;
            if (motionEvent != null) {
                discreteSeekBar2.u(motionEvent, discreteSeekBar2.o(), true);
            }
            b bVar = discreteSeekBar2.f47860l;
            if (bVar != null) {
                bVar.d(discreteSeekBar2);
            }
        }
        return Unit.f60915a;
    }

    private final void x() {
        MotionEvent motionEvent;
        if (this.f47861m) {
            b bVar = this.f47860l;
            if (bVar != null) {
                bVar.a(this);
            }
        } else if (!this.f47871w && (motionEvent = this.f47872x) != null) {
            Rect rect = this.f47864p;
            this.f47849a.copyBounds(rect);
            int i10 = this.f47854f;
            rect.inset(-i10, -i10);
            this.f47862n = (rect.width() / 2) - this.f47854f;
            y(motionEvent, false, false);
            b bVar2 = this.f47860l;
            if (bVar2 != null) {
                bVar2.b(this);
            }
        }
        this.f47861m = false;
        setPressed(false);
    }

    private final void y(MotionEvent motionEvent, boolean z10, boolean z11) {
        r(e(motionEvent, z11), z10);
    }

    private final void z() {
        int[] drawableState = getDrawableState();
        this.f47850b.setState(drawableState);
        this.f47851c.setState(drawableState);
    }

    public final void E(int i10) {
        this.f47854f = e.e(0, (((i10 * 3) / 2) - i10) / 2);
        this.f47849a.g(i10, i10);
    }

    public final void c(int i10) {
        float f10;
        if (m()) {
            f10 = getAnimationPosition();
        } else {
            f10 = i10;
        }
        int i11 = this.f47856h;
        if (i10 < i11 || i10 > (i11 = this.f47855g)) {
            i10 = i11;
        }
        xj.a aVar = this.f47865q;
        if (aVar != null) {
            aVar.a();
        }
        this.f47867s = i10;
        xj.a a10 = xj.a.f70498a.a(f10, i10, new c());
        this.f47865q = a10;
        if (a10 != null) {
            a10.c(250);
            a10.d();
        }
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        z();
    }

    public final void f() {
        ValueAnimator valueAnimator = this.A;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.A = null;
    }

    public final float getAnimationPosition() {
        return this.f47866r;
    }

    public final int getMax() {
        return this.f47855g;
    }

    public final int getMin() {
        return this.f47856h;
    }

    public final int getProgress() {
        return this.f47857i;
    }

    public final void h() {
        MotionEvent motionEvent;
        if (!this.f47870v && (motionEvent = this.f47873y) != null) {
            MotionEvent obtain = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState());
            Intrinsics.checkNotNull(obtain);
            j(obtain, true);
            obtain.recycle();
        }
    }

    public final void i() {
        MotionEvent motionEvent;
        if (this.f47870v && (motionEvent = this.f47873y) != null) {
            MotionEvent obtain = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState());
            Intrinsics.checkNotNull(obtain);
            k(this, obtain, false, 2, null);
            obtain.recycle();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001c, code lost:
        if (r0 != 3) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean j(@org.jetbrains.annotations.NotNull android.view.MotionEvent r4, boolean r5) {
        /*
            r3 = this;
            java.lang.String r0 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            boolean r0 = r3.isEnabled()
            r1 = 0
            if (r0 != 0) goto Ld
            return r1
        Ld:
            r3.f47871w = r5
            int r0 = r4.getAction()
            r2 = 1
            if (r0 == 0) goto L48
            if (r0 == r2) goto L31
            r5 = 2
            if (r0 == r5) goto L1f
            r4 = 3
            if (r0 == r4) goto L31
            goto L5e
        L1f:
            boolean r5 = r3.f47870v
            if (r5 != 0) goto L27
            r3.h()
            goto L5e
        L27:
            boolean r5 = r3.f47861m
            if (r5 == 0) goto L5e
            r3.f47873y = r4
            r3.y(r4, r2, r2)
            goto L5e
        L31:
            boolean r4 = r3.f47870v
            if (r4 == 0) goto L5e
            r3.f47870v = r1
            r3.g()
            r3.x()
            android.view.MotionEvent r4 = r3.f47872x
            if (r4 == 0) goto L44
            r4.recycle()
        L44:
            r4 = 0
            r3.f47872x = r4
            goto L5e
        L48:
            boolean r0 = r3.f47870v
            if (r0 != 0) goto L5f
            r3.f47870v = r2
            android.view.MotionEvent r4 = android.view.MotionEvent.obtain(r4)
            r3.f47872x = r4
            if (r5 == 0) goto L59
            r4 = 0
            goto L5b
        L59:
            r4 = 100
        L5b:
            r3.v(r4)
        L5e:
            return r2
        L5f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar2.j(android.view.MotionEvent, boolean):boolean");
    }

    public final boolean m() {
        xj.a aVar = this.f47865q;
        if (aVar != null) {
            return aVar.b();
        }
        return false;
    }

    public final boolean n() {
        return this.f47861m;
    }

    @Override // android.view.View
    protected synchronized void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        this.f47850b.draw(canvas);
        this.f47851c.draw(canvas);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, @NotNull KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (isEnabled()) {
            int animatedProgress = getAnimatedProgress();
            if (i10 != 21) {
                if (i10 == 22) {
                    if (animatedProgress >= this.f47855g) {
                        return true;
                    }
                    c(animatedProgress + this.f47858j);
                    return true;
                }
            } else if (animatedProgress <= this.f47856h) {
                return true;
            } else {
                c(animatedProgress - this.f47858j);
                return true;
            }
        }
        if (super.onKeyDown(i10, event)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            z();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(View.MeasureSpec.getSize(i10), this.f47852d + getPaddingTop() + getPaddingBottom() + (this.f47854f * 2));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        l();
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return k(this, event, false, 2, null);
    }

    public final void q() {
        l();
        requestLayout();
    }

    public final void s(int i10) {
        ValueAnimator ofInt = ValueAnimator.ofInt(getProgress(), i10);
        ofInt.setDuration(200L);
        ofInt.setInterpolator(new LinearInterpolator());
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: wj.d
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DiscreteSeekBar2.t(DiscreteSeekBar2.this, valueAnimator);
            }
        });
        ofInt.start();
        this.A = ofInt;
    }

    public final void setAnimationPosition(float f10) {
        this.f47866r = f10;
        int i10 = this.f47856h;
        B((f10 - i10) / (this.f47855g - i10));
    }

    public final void setMax(int i10) {
        if (this.f47855g == i10) {
            return;
        }
        this.f47855g = i10;
        if (i10 < this.f47856h) {
            setMin(i10 - 1);
        }
        A();
    }

    public final void setMin(int i10) {
        if (this.f47856h == i10) {
            return;
        }
        this.f47856h = i10;
        if (i10 > this.f47855g) {
            setMax(i10 + 1);
        }
        A();
    }

    public final void setOnProgressChangeListener(@Nullable b bVar) {
        this.f47860l = bVar;
    }

    public final void setProgress(int i10) {
        r(i10, false);
    }

    public final void setScrubberHeight(int i10) {
        this.f47853e = i10;
    }

    public final void setTrackHeight(int i10) {
        this.f47852d = i10;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(@NotNull Drawable who) {
        Intrinsics.checkNotNullParameter(who, "who");
        if (who != this.f47849a && who != this.f47850b && who != this.f47851c && !super.verifyDrawable(who)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DiscreteSeekBar2(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ DiscreteSeekBar2(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? R$attr.discreteSeekBarStyle : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscreteSeekBar2(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        int i11;
        int integer;
        int integer2;
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47858j = 1;
        this.f47859k = true;
        this.f47863o = new Rect();
        this.f47864p = new Rect();
        setFocusable(true);
        setWillNotDraw(false);
        this.f47868t = ViewConfiguration.get(context).getScaledTouchSlop();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DiscreteSeekBar, i10, R$style.Widget_DiscreteSeekBar);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.f47859k = obtainStyledAttributes.getBoolean(R$styleable.DiscreteSeekBar_dsb_allowTrackClickToDrag, this.f47859k);
        this.f47852d = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DiscreteSeekBar_dsb_trackHeight, 1);
        this.f47853e = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DiscreteSeekBar_dsb_scrubberHeight, 4);
        Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), obtainStyledAttributes.getResourceId(R$styleable.DiscreteSeekBar_dsb_thumbIcon, 0));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DiscreteSeekBar_dsb_thumbEnableSize, 12);
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DiscreteSeekBar_dsb_thumbDisableSize, 12);
        this.f47854f = e.e(0, (((dimensionPixelSize * 3) / 2) - dimensionPixelSize) / 2);
        int i12 = R$styleable.DiscreteSeekBar_dsb_max;
        int i13 = R$styleable.DiscreteSeekBar_dsb_min;
        int i14 = R$styleable.DiscreteSeekBar_dsb_value;
        TypedValue typedValue = new TypedValue();
        int i15 = 100;
        if (obtainStyledAttributes.getValue(i12, typedValue)) {
            if (typedValue.type == 5) {
                integer2 = obtainStyledAttributes.getDimensionPixelSize(i12, 100);
            } else {
                integer2 = obtainStyledAttributes.getInteger(i12, 100);
            }
            i15 = integer2;
        }
        if (!obtainStyledAttributes.getValue(i13, typedValue)) {
            i11 = 0;
        } else if (typedValue.type == 5) {
            i11 = obtainStyledAttributes.getDimensionPixelSize(i13, 0);
        } else {
            i11 = obtainStyledAttributes.getInteger(i13, 0);
        }
        if (obtainStyledAttributes.getValue(i14, typedValue)) {
            if (typedValue.type == 5) {
                integer = obtainStyledAttributes.getDimensionPixelSize(i14, this.f47869u);
            } else {
                integer = obtainStyledAttributes.getInteger(i14, this.f47869u);
            }
            this.f47869u = integer;
        }
        this.f47856h = i11;
        this.f47855g = e.e(i11 + 1, i15);
        this.f47857i = e.e(i11, e.j(i15, this.f47869u));
        A();
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(R$styleable.DiscreteSeekBar_dsb_trackColor);
        Intrinsics.checkNotNull(colorStateList);
        ColorStateList colorStateList2 = obtainStyledAttributes.getColorStateList(R$styleable.DiscreteSeekBar_dsb_progressColor);
        colorStateList2 = colorStateList2 == null ? new ColorStateList(new int[][]{new int[0]}, new int[]{-16738680}) : colorStateList2;
        boolean z10 = obtainStyledAttributes.getBoolean(R$styleable.DiscreteSeekBar_dsb_showTrackRound, false);
        if (z10) {
            d dVar = new d(colorStateList, true);
            dVar.setCallback(this);
            this.f47850b = dVar;
        } else {
            yj.c cVar = new yj.c(colorStateList);
            cVar.setCallback(this);
            this.f47850b = cVar;
        }
        d dVar2 = new d(colorStateList2, z10);
        this.f47851c = dVar2;
        dVar2.setCallback(this);
        Intrinsics.checkNotNull(decodeResource);
        yj.b bVar = new yj.b(colorStateList2, dimensionPixelSize, dimensionPixelSize2, decodeResource);
        bVar.setCallback(this);
        bVar.setBounds(0, 0, bVar.getIntrinsicWidth(), bVar.getIntrinsicHeight());
        this.f47849a = bVar;
        bVar.f(true);
        obtainStyledAttributes.recycle();
    }
}
