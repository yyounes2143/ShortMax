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
import android.view.ViewParent;
import android.view.animation.LinearInterpolator;
import com.startshorts.androidplayer.R$attr;
import com.startshorts.androidplayer.R$style;
import com.startshorts.androidplayer.R$styleable;
import com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import jk.g;
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
/* compiled from: DiscreteSeekBar.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DiscreteSeekBar extends View {
    @NotNull
    public static final a A = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final yj.b f47822a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final yj.c f47823b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final d f47824c;

    /* renamed from: d  reason: collision with root package name */
    private int f47825d;

    /* renamed from: e  reason: collision with root package name */
    private int f47826e;

    /* renamed from: f  reason: collision with root package name */
    private final int f47827f;

    /* renamed from: g  reason: collision with root package name */
    private int f47828g;

    /* renamed from: h  reason: collision with root package name */
    private int f47829h;

    /* renamed from: i  reason: collision with root package name */
    private int f47830i;

    /* renamed from: j  reason: collision with root package name */
    private int f47831j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f47832k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private b f47833l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f47834m;

    /* renamed from: n  reason: collision with root package name */
    private int f47835n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final Rect f47836o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final Rect f47837p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private xj.a f47838q;

    /* renamed from: r  reason: collision with root package name */
    private float f47839r;

    /* renamed from: s  reason: collision with root package name */
    private int f47840s;

    /* renamed from: t  reason: collision with root package name */
    private int f47841t;

    /* renamed from: u  reason: collision with root package name */
    private int f47842u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f47843v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private MotionEvent f47844w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private MotionEvent f47845x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private r f47846y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private ValueAnimator f47847z;

    /* compiled from: DiscreteSeekBar.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DiscreteSeekBar.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a(int i10, @NotNull DiscreteSeekBar discreteSeekBar, @Nullable MotionEvent motionEvent);

        void b(@NotNull DiscreteSeekBar discreteSeekBar, int i10, boolean z10);

        void c(@NotNull DiscreteSeekBar discreteSeekBar);

        void d(@NotNull DiscreteSeekBar discreteSeekBar);

        void e(@NotNull DiscreteSeekBar discreteSeekBar);
    }

    /* compiled from: DiscreteSeekBar.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements a.InterfaceC0968a {
        c() {
        }

        @Override // xj.a.InterfaceC0968a
        public void a(float f10) {
            DiscreteSeekBar.this.setAnimationPosition(f10);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DiscreteSeekBar(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void A(int i10, int i11) {
        int intrinsicWidth = this.f47822a.getIntrinsicWidth();
        this.f47822a.copyBounds(this.f47836o);
        yj.b bVar = this.f47822a;
        Rect rect = this.f47836o;
        bVar.setBounds(i11, rect.top, i11 + intrinsicWidth, rect.bottom);
        this.f47824c.getBounds().left = i10;
        this.f47824c.getBounds().right = i11 + (intrinsicWidth / 2);
        Rect rect2 = this.f47837p;
        this.f47822a.copyBounds(rect2);
        Rect rect3 = this.f47836o;
        int i12 = this.f47827f;
        rect3.inset(-i12, -i12);
        int i13 = this.f47827f;
        rect2.inset(-i13, -i13);
        this.f47836o.union(rect2);
        invalidate(this.f47836o);
    }

    private final void B() {
        int intrinsicWidth = this.f47822a.getIntrinsicWidth() / 2;
        int width = (getWidth() - (getPaddingRight() + intrinsicWidth)) - (getPaddingLeft() + intrinsicWidth);
        int i10 = this.f47830i;
        int i11 = this.f47829h;
        int i12 = this.f47828g;
        float f10 = (i10 - i11) / (i12 - i11);
        float f11 = (this.f47841t - i11) / (i12 - i11);
        float f12 = width;
        A((int) ((f11 * f12) + 0.5f), (int) ((f10 * f12) + 0.5f));
    }

    private final void d() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    private final void f() {
        r rVar = this.f47846y;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f47846y = null;
    }

    private final int getAnimatedProgress() {
        if (k()) {
            return this.f47840s;
        }
        return this.f47830i;
    }

    public static /* synthetic */ boolean i(DiscreteSeekBar discreteSeekBar, int i10, MotionEvent motionEvent, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return discreteSeekBar.h(i10, motionEvent, z10);
    }

    private final void j() {
        int intrinsicWidth = this.f47822a.getIntrinsicWidth();
        int intrinsicHeight = this.f47822a.getIntrinsicHeight();
        int i10 = this.f47827f;
        int i11 = intrinsicWidth / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int height = (getHeight() - getPaddingBottom()) - i10;
        this.f47822a.setBounds(paddingLeft, height - intrinsicHeight, intrinsicWidth + paddingLeft, height);
        int e10 = e.e(this.f47825d / 2, 1);
        int i12 = height - i11;
        this.f47823b.setBounds(paddingLeft, i12 - e10, getWidth() - paddingRight, e10 + i12);
        int e11 = e.e(this.f47826e / 2, 2);
        this.f47824c.setBounds(paddingLeft, i12 - e11, paddingRight, i12 + e11);
        B();
    }

    private final boolean m() {
        xj.b bVar = xj.b.f70501a;
        ViewParent parent = getParent();
        Intrinsics.checkNotNullExpressionValue(parent, "getParent(...)");
        return bVar.a(parent);
    }

    private final void n(int i10, boolean z10) {
        b bVar = this.f47833l;
        if (bVar != null) {
            bVar.b(this, i10, z10);
        }
    }

    private final void p(int i10, boolean z10) {
        xj.a aVar;
        if (k() && (aVar = this.f47838q) != null) {
            aVar.a();
        }
        int e10 = e.e(this.f47829h, e.j(this.f47828g, i10));
        this.f47830i = e10;
        n(e10, z10);
        B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(DiscreteSeekBar discreteSeekBar, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        discreteSeekBar.setProgress(((Integer) animatedValue).intValue());
    }

    private final boolean s(MotionEvent motionEvent, boolean z10, boolean z11) {
        boolean contains;
        Rect rect = this.f47837p;
        this.f47822a.copyBounds(rect);
        int i10 = this.f47827f;
        rect.inset(-i10, -i10);
        if (z11) {
            contains = true;
        } else {
            contains = rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        this.f47834m = contains;
        if (!contains && this.f47832k && !z10) {
            this.f47834m = true;
            this.f47835n = (rect.width() / 2) - this.f47827f;
            w(motionEvent);
            this.f47822a.copyBounds(rect);
            int i11 = this.f47827f;
            rect.inset(-i11, -i11);
        }
        if (this.f47834m) {
            setPressed(true);
            f();
            d();
            this.f47835n = (int) ((motionEvent.getX() - rect.left) - this.f47827f);
            b bVar = this.f47833l;
            if (bVar != null) {
                bVar.d(this);
            }
        }
        return this.f47834m;
    }

    private final void t(long j10) {
        f();
        this.f47846y = CoroutineUtil.g(CoroutineUtil.f48072a, j10, null, new Function0() { // from class: wj.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit u10;
                u10 = DiscreteSeekBar.u(DiscreteSeekBar.this);
                return u10;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u(DiscreteSeekBar discreteSeekBar) {
        if (discreteSeekBar.f47843v && !discreteSeekBar.f47834m) {
            MotionEvent motionEvent = discreteSeekBar.f47844w;
            if (motionEvent != null) {
                discreteSeekBar.s(motionEvent, discreteSeekBar.m(), true);
            }
            b bVar = discreteSeekBar.f47833l;
            if (bVar != null) {
                bVar.c(discreteSeekBar);
            }
        }
        return Unit.f60915a;
    }

    private final void v() {
        if (this.f47834m) {
            b bVar = this.f47833l;
            if (bVar != null) {
                bVar.e(this);
            }
        } else {
            b bVar2 = this.f47833l;
            if (bVar2 != null) {
                bVar2.a(this.f47842u, this, this.f47844w);
            }
        }
        this.f47834m = false;
        setPressed(false);
    }

    private final void w(MotionEvent motionEvent) {
        Rect bounds = this.f47822a.getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
        int width = bounds.width() / 2;
        int x10 = (((int) motionEvent.getX()) - this.f47835n) + width;
        int paddingLeft = getPaddingLeft();
        int width2 = getWidth() - (getPaddingRight() + width);
        if (x10 < paddingLeft) {
            x10 = paddingLeft;
        } else if (x10 > width2) {
            x10 = width2;
        }
        float f10 = (x10 - paddingLeft) / (width2 - paddingLeft);
        int i10 = this.f47828g;
        int i11 = this.f47829h;
        p(bt.a.c((f10 * (i10 - i11)) + i11), true);
    }

    private final void x() {
        int[] drawableState = getDrawableState();
        this.f47823b.setState(drawableState);
        this.f47824c.setState(drawableState);
    }

    private final void y() {
        int i10 = this.f47828g - this.f47829h;
        int i11 = this.f47831j;
        if (i11 == 0 || i10 / i11 > 20) {
            this.f47831j = e.e(1, h.b(i10 / 20));
        }
    }

    private final void z(float f10) {
        int i10;
        Rect bounds = this.f47822a.getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
        int width = bounds.width() / 2;
        int i11 = this.f47827f;
        int width2 = (getWidth() - ((getPaddingRight() + width) + i11)) - ((getPaddingLeft() + width) + i11);
        int i12 = this.f47828g;
        int c10 = bt.a.c(((i12 - i10) * f10) + this.f47829h);
        if (this.f47830i != c10) {
            this.f47830i = c10;
            n(c10, true);
        }
        float f11 = width2;
        int i13 = this.f47841t;
        int i14 = this.f47829h;
        A((int) ((((i13 - i14) / (this.f47828g - i14)) * f11) + 0.5f), (int) ((f10 * f11) + 0.5f));
    }

    public final void C(int i10) {
        this.f47822a.g(i10, i10);
    }

    public final void c(int i10) {
        float f10;
        if (k()) {
            f10 = getAnimationPosition();
        } else {
            f10 = i10;
        }
        int i11 = this.f47829h;
        if (i10 < i11 || i10 > (i11 = this.f47828g)) {
            i10 = i11;
        }
        xj.a aVar = this.f47838q;
        if (aVar != null) {
            aVar.a();
        }
        this.f47840s = i10;
        xj.a a10 = xj.a.f70498a.a(f10, i10, new c());
        this.f47838q = a10;
        if (a10 != null) {
            a10.c(250);
            a10.d();
        }
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        x();
    }

    public final void e() {
        ValueAnimator valueAnimator = this.f47847z;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f47847z = null;
    }

    public final void g(int i10) {
        MotionEvent motionEvent;
        if (this.f47843v && (motionEvent = this.f47845x) != null) {
            MotionEvent obtain = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState());
            Intrinsics.checkNotNull(obtain);
            i(this, i10, obtain, false, 4, null);
            obtain.recycle();
        }
    }

    public final float getAnimationPosition() {
        return this.f47839r;
    }

    public final int getMax() {
        return this.f47828g;
    }

    public final int getMin() {
        return this.f47829h;
    }

    public final int getProgress() {
        return this.f47830i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001c, code lost:
        if (r3 != 3) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean h(int r3, @org.jetbrains.annotations.NotNull android.view.MotionEvent r4, boolean r5) {
        /*
            r2 = this;
            java.lang.String r0 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            boolean r0 = r2.isEnabled()
            r1 = 0
            if (r0 != 0) goto Ld
            return r1
        Ld:
            r2.f47842u = r3
            int r3 = r4.getAction()
            r0 = 1
            if (r3 == 0) goto L40
            if (r3 == r0) goto L29
            r5 = 2
            if (r3 == r5) goto L1f
            r4 = 3
            if (r3 == r4) goto L29
            goto L56
        L1f:
            boolean r3 = r2.f47834m
            if (r3 == 0) goto L56
            r2.f47845x = r4
            r2.w(r4)
            goto L56
        L29:
            boolean r3 = r2.f47843v
            if (r3 == 0) goto L56
            r2.f47843v = r1
            r2.f()
            r2.v()
            android.view.MotionEvent r3 = r2.f47844w
            if (r3 == 0) goto L3c
            r3.recycle()
        L3c:
            r3 = 0
            r2.f47844w = r3
            goto L56
        L40:
            boolean r3 = r2.f47843v
            if (r3 != 0) goto L57
            r2.f47843v = r0
            android.view.MotionEvent r3 = android.view.MotionEvent.obtain(r4)
            r2.f47844w = r3
            if (r5 == 0) goto L51
            r3 = 0
            goto L53
        L51:
            r3 = 200(0xc8, double:9.9E-322)
        L53:
            r2.t(r3)
        L56:
            return r0
        L57:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar.h(int, android.view.MotionEvent, boolean):boolean");
    }

    public final boolean k() {
        xj.a aVar = this.f47838q;
        if (aVar != null) {
            return aVar.b();
        }
        return false;
    }

    public final boolean l() {
        return this.f47834m;
    }

    public final void o() {
        j();
        invalidate();
    }

    @Override // android.view.View
    protected synchronized void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        this.f47823b.draw(canvas);
        this.f47824c.draw(canvas);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, @NotNull KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (isEnabled()) {
            int animatedProgress = getAnimatedProgress();
            if (i10 != 21) {
                if (i10 == 22) {
                    if (animatedProgress >= this.f47828g) {
                        return true;
                    }
                    c(animatedProgress + this.f47831j);
                    return true;
                }
            } else if (animatedProgress <= this.f47829h) {
                return true;
            } else {
                c(animatedProgress - this.f47831j);
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
            x();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(View.MeasureSpec.getSize(i10), g.a(6.0f) + getPaddingTop() + getPaddingBottom() + (this.f47827f * 2));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        j();
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return i(this, 1, event, false, 4, null);
    }

    public final void q(int i10) {
        ValueAnimator ofInt = ValueAnimator.ofInt(getProgress(), i10);
        ofInt.setDuration(200L);
        ofInt.setInterpolator(new LinearInterpolator());
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: wj.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DiscreteSeekBar.r(DiscreteSeekBar.this, valueAnimator);
            }
        });
        ofInt.start();
        this.f47847z = ofInt;
    }

    public final void setAnimationPosition(float f10) {
        this.f47839r = f10;
        int i10 = this.f47829h;
        z((f10 - i10) / (this.f47828g - i10));
    }

    public final void setMax(int i10) {
        if (this.f47828g == i10) {
            return;
        }
        this.f47828g = i10;
        if (i10 < this.f47829h) {
            setMin(i10 - 1);
        }
        y();
    }

    public final void setMin(int i10) {
        if (this.f47829h == i10) {
            return;
        }
        this.f47829h = i10;
        if (i10 > this.f47828g) {
            setMax(i10 + 1);
        }
        y();
    }

    public final void setOnProgressChangeListener(@Nullable b bVar) {
        this.f47833l = bVar;
    }

    public final void setProgress(int i10) {
        p(i10, false);
    }

    public final void setScrubberHeight(int i10) {
        this.f47826e = i10;
    }

    public final void setTrackHeight(int i10) {
        this.f47825d = i10;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(@NotNull Drawable who) {
        Intrinsics.checkNotNullParameter(who, "who");
        if (who != this.f47822a && who != this.f47823b && who != this.f47824c && !super.verifyDrawable(who)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DiscreteSeekBar(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ DiscreteSeekBar(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? R$attr.discreteSeekBarStyle : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscreteSeekBar(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        int i11;
        int integer;
        int integer2;
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47831j = 1;
        this.f47836o = new Rect();
        this.f47837p = new Rect();
        this.f47842u = 1;
        setFocusable(true);
        setWillNotDraw(false);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DiscreteSeekBar, i10, R$style.Widget_DiscreteSeekBar);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.f47832k = obtainStyledAttributes.getBoolean(R$styleable.DiscreteSeekBar_dsb_allowTrackClickToDrag, this.f47832k);
        this.f47825d = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DiscreteSeekBar_dsb_trackHeight, 1);
        this.f47826e = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DiscreteSeekBar_dsb_scrubberHeight, 4);
        Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), obtainStyledAttributes.getResourceId(R$styleable.DiscreteSeekBar_dsb_thumbIcon, 0));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DiscreteSeekBar_dsb_thumbEnableSize, 12);
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DiscreteSeekBar_dsb_thumbDisableSize, 12);
        this.f47827f = e.e(0, (((dimensionPixelSize * 3) / 2) - dimensionPixelSize) / 2);
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
                integer = obtainStyledAttributes.getDimensionPixelSize(i14, this.f47841t);
            } else {
                integer = obtainStyledAttributes.getInteger(i14, this.f47841t);
            }
            this.f47841t = integer;
        }
        this.f47829h = i11;
        this.f47828g = e.e(i11 + 1, i15);
        this.f47830i = e.e(i11, e.j(i15, this.f47841t));
        y();
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(R$styleable.DiscreteSeekBar_dsb_trackColor);
        Intrinsics.checkNotNull(colorStateList);
        ColorStateList colorStateList2 = obtainStyledAttributes.getColorStateList(R$styleable.DiscreteSeekBar_dsb_progressColor);
        colorStateList2 = colorStateList2 == null ? new ColorStateList(new int[][]{new int[0]}, new int[]{-16738680}) : colorStateList2;
        yj.c cVar = new yj.c(colorStateList);
        cVar.setCallback(this);
        this.f47823b = cVar;
        d dVar = new d(colorStateList2, false, 2, null);
        this.f47824c = dVar;
        dVar.setCallback(this);
        Intrinsics.checkNotNull(decodeResource);
        yj.b bVar = new yj.b(colorStateList2, dimensionPixelSize, dimensionPixelSize2, decodeResource);
        bVar.setCallback(this);
        bVar.setBounds(0, 0, bVar.getIntrinsicWidth(), bVar.getIntrinsicHeight());
        this.f47822a = bVar;
        bVar.f(true);
        obtainStyledAttributes.recycle();
    }
}
