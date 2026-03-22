package com.scwang.smart.refresh.layout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import com.scwang.smart.refresh.layout.constant.RefreshState;
@SuppressLint({"RestrictedApi"})
/* loaded from: classes6.dex */
public class SmartRefreshLayout extends ViewGroup implements sc.f, NestedScrollingParent {
    protected static ViewGroup.MarginLayoutParams Q0 = new ViewGroup.MarginLayoutParams(-1, -1);
    protected int[] A;
    protected RefreshState A0;
    protected boolean B;
    protected RefreshState B0;
    protected boolean C;
    protected long C0;
    protected boolean D;
    protected int D0;
    protected boolean E;
    protected int E0;
    protected boolean F;
    protected boolean F0;
    protected boolean G;
    protected boolean G0;
    protected boolean H;
    protected boolean H0;
    protected boolean I;
    protected boolean I0;
    protected boolean J;
    protected long J0;
    protected boolean K;
    protected float K0;
    protected boolean L;
    protected float L0;
    protected boolean M;
    protected boolean M0;
    protected boolean N;
    protected MotionEvent N0;
    protected boolean O;
    protected Runnable O0;
    protected boolean P;
    protected ValueAnimator P0;
    protected boolean Q;
    protected boolean R;
    protected boolean S;
    protected boolean T;
    protected boolean U;
    protected boolean V;
    protected boolean W;

    /* renamed from: a  reason: collision with root package name */
    protected int f36898a;

    /* renamed from: a0  reason: collision with root package name */
    protected boolean f36899a0;

    /* renamed from: b  reason: collision with root package name */
    protected int f36900b;

    /* renamed from: b0  reason: collision with root package name */
    protected vc.f f36901b0;

    /* renamed from: c  reason: collision with root package name */
    protected int f36902c;

    /* renamed from: c0  reason: collision with root package name */
    protected vc.e f36903c0;

    /* renamed from: d  reason: collision with root package name */
    protected int f36904d;

    /* renamed from: d0  reason: collision with root package name */
    protected vc.i f36905d0;

    /* renamed from: e  reason: collision with root package name */
    protected int f36906e;

    /* renamed from: e0  reason: collision with root package name */
    protected int f36907e0;

    /* renamed from: f  reason: collision with root package name */
    protected int f36908f;

    /* renamed from: f0  reason: collision with root package name */
    protected boolean f36909f0;

    /* renamed from: g  reason: collision with root package name */
    protected int f36910g;

    /* renamed from: g0  reason: collision with root package name */
    protected int[] f36911g0;

    /* renamed from: h  reason: collision with root package name */
    protected float f36912h;

    /* renamed from: h0  reason: collision with root package name */
    protected NestedScrollingChildHelper f36913h0;

    /* renamed from: i  reason: collision with root package name */
    protected float f36914i;

    /* renamed from: i0  reason: collision with root package name */
    protected NestedScrollingParentHelper f36915i0;

    /* renamed from: j  reason: collision with root package name */
    protected float f36916j;

    /* renamed from: j0  reason: collision with root package name */
    protected int f36917j0;

    /* renamed from: k  reason: collision with root package name */
    protected float f36918k;

    /* renamed from: k0  reason: collision with root package name */
    protected tc.a f36919k0;

    /* renamed from: l  reason: collision with root package name */
    protected float f36920l;

    /* renamed from: l0  reason: collision with root package name */
    protected int f36921l0;

    /* renamed from: m  reason: collision with root package name */
    protected char f36922m;

    /* renamed from: m0  reason: collision with root package name */
    protected tc.a f36923m0;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f36924n;

    /* renamed from: n0  reason: collision with root package name */
    protected int f36925n0;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f36926o;

    /* renamed from: o0  reason: collision with root package name */
    protected int f36927o0;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f36928p;

    /* renamed from: p0  reason: collision with root package name */
    protected float f36929p0;

    /* renamed from: q  reason: collision with root package name */
    protected int f36930q;

    /* renamed from: q0  reason: collision with root package name */
    protected float f36931q0;

    /* renamed from: r  reason: collision with root package name */
    protected int f36932r;

    /* renamed from: r0  reason: collision with root package name */
    protected float f36933r0;

    /* renamed from: s  reason: collision with root package name */
    protected int f36934s;

    /* renamed from: s0  reason: collision with root package name */
    protected float f36935s0;

    /* renamed from: t  reason: collision with root package name */
    protected int f36936t;

    /* renamed from: t0  reason: collision with root package name */
    protected float f36937t0;

    /* renamed from: u  reason: collision with root package name */
    protected int f36938u;

    /* renamed from: u0  reason: collision with root package name */
    protected sc.a f36939u0;

    /* renamed from: v  reason: collision with root package name */
    protected int f36940v;

    /* renamed from: v0  reason: collision with root package name */
    protected sc.a f36941v0;

    /* renamed from: w  reason: collision with root package name */
    protected int f36942w;

    /* renamed from: w0  reason: collision with root package name */
    protected sc.b f36943w0;

    /* renamed from: x  reason: collision with root package name */
    protected Scroller f36944x;

    /* renamed from: x0  reason: collision with root package name */
    protected Paint f36945x0;

    /* renamed from: y  reason: collision with root package name */
    protected VelocityTracker f36946y;

    /* renamed from: y0  reason: collision with root package name */
    protected Handler f36947y0;

    /* renamed from: z  reason: collision with root package name */
    protected Interpolator f36948z;

    /* renamed from: z0  reason: collision with root package name */
    protected sc.e f36949z0;

    /* loaded from: classes6.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f36952a;

        static {
            int[] iArr = new int[RefreshState.values().length];
            f36952a = iArr;
            try {
                iArr[RefreshState.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36952a[RefreshState.PullDownToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f36952a[RefreshState.PullUpToLoad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f36952a[RefreshState.PullDownCanceled.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f36952a[RefreshState.PullUpCanceled.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f36952a[RefreshState.ReleaseToRefresh.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f36952a[RefreshState.ReleaseToLoad.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f36952a[RefreshState.ReleaseToTwoLevel.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f36952a[RefreshState.RefreshReleased.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f36952a[RefreshState.LoadReleased.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f36952a[RefreshState.Refreshing.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f36952a[RefreshState.Loading.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f36953a;

        b(boolean z10) {
            this.f36953a = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (animator != null && animator.getDuration() == 0) {
                return;
            }
            SmartRefreshLayout.this.setStateDirectLoading(this.f36953a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f36955a;

        c(boolean z10) {
            this.f36955a = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (animator != null && animator.getDuration() == 0) {
                return;
            }
            SmartRefreshLayout.this.C0 = System.currentTimeMillis();
            SmartRefreshLayout.this.x(RefreshState.Refreshing);
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            vc.f fVar = smartRefreshLayout.f36901b0;
            if (fVar != null) {
                if (this.f36955a) {
                    fVar.b(smartRefreshLayout);
                }
            } else {
                smartRefreshLayout.getClass();
                SmartRefreshLayout.this.o(3000);
            }
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            sc.a aVar = smartRefreshLayout2.f36939u0;
            if (aVar != null) {
                float f10 = smartRefreshLayout2.f36929p0;
                if (f10 < 10.0f) {
                    f10 *= smartRefreshLayout2.f36917j0;
                }
                aVar.a(smartRefreshLayout2, smartRefreshLayout2.f36917j0, (int) f10);
            }
            SmartRefreshLayout.this.getClass();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            RefreshState refreshState;
            RefreshState refreshState2;
            if (animator != null && animator.getDuration() == 0) {
                return;
            }
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            smartRefreshLayout.P0 = null;
            if (smartRefreshLayout.f36900b == 0 && (refreshState = smartRefreshLayout.A0) != (refreshState2 = RefreshState.None) && !refreshState.isOpening && !refreshState.isDragging) {
                smartRefreshLayout.x(refreshState2);
                return;
            }
            RefreshState refreshState3 = smartRefreshLayout.A0;
            if (refreshState3 != smartRefreshLayout.B0) {
                smartRefreshLayout.setViceState(refreshState3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class e implements ValueAnimator.AnimatorUpdateListener {
        e() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            SmartRefreshLayout.this.f36949z0.f(((Integer) valueAnimator.getAnimatedValue()).intValue(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            vc.e eVar = smartRefreshLayout.f36903c0;
            if (eVar != null) {
                eVar.c(smartRefreshLayout);
            } else {
                smartRefreshLayout.getClass();
                SmartRefreshLayout.this.l(2000);
            }
            SmartRefreshLayout.this.getClass();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        int f36960a = 0;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f36961b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Boolean f36962c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f36963d;

        g(int i10, Boolean bool, boolean z10) {
            this.f36961b = i10;
            this.f36962c = bool;
            this.f36963d = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10;
            int i11 = this.f36960a;
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
            if (i11 == 0) {
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                RefreshState refreshState = smartRefreshLayout.A0;
                RefreshState refreshState2 = RefreshState.None;
                if (refreshState == refreshState2 && smartRefreshLayout.B0 == RefreshState.Refreshing) {
                    smartRefreshLayout.B0 = refreshState2;
                } else {
                    ValueAnimator valueAnimator = smartRefreshLayout.P0;
                    if (valueAnimator != null && refreshState.isHeader && (refreshState.isDragging || refreshState == RefreshState.RefreshReleased)) {
                        valueAnimator.setDuration(0L);
                        SmartRefreshLayout.this.P0.cancel();
                        SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                        smartRefreshLayout2.P0 = null;
                        if (smartRefreshLayout2.f36949z0.a(0) == null) {
                            SmartRefreshLayout.this.x(refreshState2);
                        } else {
                            SmartRefreshLayout.this.x(RefreshState.PullDownCanceled);
                        }
                    } else if (refreshState == RefreshState.Refreshing) {
                        this.f36960a = i11 + 1;
                        smartRefreshLayout.f36947y0.postDelayed(this, this.f36961b);
                        SmartRefreshLayout.this.x(RefreshState.RefreshFinish);
                        if (this.f36962c == Boolean.FALSE) {
                            SmartRefreshLayout.this.E(false);
                        }
                    }
                }
                if (this.f36962c == Boolean.TRUE) {
                    SmartRefreshLayout.this.E(true);
                    return;
                }
                return;
            }
            SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
            sc.a aVar = smartRefreshLayout3.f36939u0;
            if (aVar != null) {
                i10 = aVar.c(smartRefreshLayout3, this.f36963d);
                SmartRefreshLayout.this.getClass();
            } else {
                i10 = 0;
            }
            if (i10 < Integer.MAX_VALUE) {
                SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
                if (smartRefreshLayout4.f36924n || smartRefreshLayout4.f36909f0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    SmartRefreshLayout smartRefreshLayout5 = SmartRefreshLayout.this;
                    if (smartRefreshLayout5.f36924n) {
                        float f10 = smartRefreshLayout5.f36918k;
                        smartRefreshLayout5.f36914i = f10;
                        smartRefreshLayout5.f36904d = 0;
                        smartRefreshLayout5.f36924n = false;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(currentTimeMillis, currentTimeMillis, 0, smartRefreshLayout5.f36916j, (f10 + smartRefreshLayout5.f36900b) - (smartRefreshLayout5.f36898a * 2), 0));
                        SmartRefreshLayout smartRefreshLayout6 = SmartRefreshLayout.this;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(currentTimeMillis, currentTimeMillis, 2, smartRefreshLayout6.f36916j, smartRefreshLayout6.f36918k + smartRefreshLayout6.f36900b, 0));
                    }
                    SmartRefreshLayout smartRefreshLayout7 = SmartRefreshLayout.this;
                    if (smartRefreshLayout7.f36909f0) {
                        smartRefreshLayout7.f36907e0 = 0;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(currentTimeMillis, currentTimeMillis, 1, smartRefreshLayout7.f36916j, smartRefreshLayout7.f36918k, 0));
                        SmartRefreshLayout smartRefreshLayout8 = SmartRefreshLayout.this;
                        smartRefreshLayout8.f36909f0 = false;
                        smartRefreshLayout8.f36904d = 0;
                    }
                }
                SmartRefreshLayout smartRefreshLayout9 = SmartRefreshLayout.this;
                int i12 = smartRefreshLayout9.f36900b;
                if (i12 > 0) {
                    ValueAnimator j10 = smartRefreshLayout9.j(0, i10, smartRefreshLayout9.f36948z, smartRefreshLayout9.f36908f);
                    SmartRefreshLayout smartRefreshLayout10 = SmartRefreshLayout.this;
                    if (smartRefreshLayout10.O) {
                        animatorUpdateListener = smartRefreshLayout10.f36943w0.c(smartRefreshLayout10.f36900b);
                    }
                    if (j10 != null && animatorUpdateListener != null) {
                        j10.addUpdateListener(animatorUpdateListener);
                    }
                } else if (i12 < 0) {
                    smartRefreshLayout9.j(0, i10, smartRefreshLayout9.f36948z, smartRefreshLayout9.f36908f);
                } else {
                    smartRefreshLayout9.f36949z0.f(0, false);
                    SmartRefreshLayout.this.f36949z0.g(RefreshState.None);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        int f36965a = 0;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f36966b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f36967c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f36968d;

        /* loaded from: classes6.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f36970a;

            /* renamed from: com.scwang.smart.refresh.layout.SmartRefreshLayout$h$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            class C0603a extends AnimatorListenerAdapter {
                C0603a() {
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (animator != null && animator.getDuration() == 0) {
                        return;
                    }
                    h hVar = h.this;
                    SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                    smartRefreshLayout.I0 = false;
                    if (hVar.f36967c) {
                        smartRefreshLayout.E(true);
                    }
                    SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                    if (smartRefreshLayout2.A0 == RefreshState.LoadFinish) {
                        smartRefreshLayout2.x(RefreshState.None);
                    }
                }
            }

            a(int i10) {
                this.f36970a = i10;
            }

            @Override // java.lang.Runnable
            public void run() {
                ValueAnimator.AnimatorUpdateListener animatorUpdateListener;
                ValueAnimator valueAnimator;
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                if (smartRefreshLayout.N && this.f36970a < 0) {
                    animatorUpdateListener = smartRefreshLayout.f36943w0.c(smartRefreshLayout.f36900b);
                    if (animatorUpdateListener != null) {
                        animatorUpdateListener.onAnimationUpdate(ValueAnimator.ofInt(0, 0));
                    }
                } else {
                    animatorUpdateListener = null;
                }
                C0603a c0603a = new C0603a();
                h hVar = h.this;
                SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                int i10 = smartRefreshLayout2.f36900b;
                if (i10 > 0) {
                    valueAnimator = smartRefreshLayout2.f36949z0.a(0);
                } else {
                    if (animatorUpdateListener == null && i10 != 0) {
                        if (hVar.f36967c && smartRefreshLayout2.H) {
                            int i11 = smartRefreshLayout2.f36921l0;
                            if (i10 >= (-i11)) {
                                smartRefreshLayout2.x(RefreshState.None);
                            } else {
                                valueAnimator = smartRefreshLayout2.f36949z0.a(-i11);
                            }
                        } else {
                            valueAnimator = smartRefreshLayout2.f36949z0.a(0);
                        }
                    } else {
                        ValueAnimator valueAnimator2 = smartRefreshLayout2.P0;
                        if (valueAnimator2 != null) {
                            valueAnimator2.setDuration(0L);
                            SmartRefreshLayout.this.P0.cancel();
                            SmartRefreshLayout.this.P0 = null;
                        }
                        SmartRefreshLayout.this.f36949z0.f(0, false);
                        SmartRefreshLayout.this.f36949z0.g(RefreshState.None);
                    }
                    valueAnimator = null;
                }
                if (valueAnimator != null) {
                    valueAnimator.addListener(c0603a);
                } else {
                    c0603a.onAnimationEnd(null);
                }
            }
        }

        h(int i10, boolean z10, boolean z11) {
            this.f36966b = i10;
            this.f36967c = z10;
            this.f36968d = z11;
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x00a2, code lost:
            if (r6.f36943w0.e() != false) goto L44;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 315
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.scwang.smart.refresh.layout.SmartRefreshLayout.h.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes6.dex */
    public class i implements Runnable {

        /* renamed from: c  reason: collision with root package name */
        int f36975c;

        /* renamed from: f  reason: collision with root package name */
        float f36978f;

        /* renamed from: a  reason: collision with root package name */
        int f36973a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f36974b = 10;

        /* renamed from: e  reason: collision with root package name */
        float f36977e = 0.0f;

        /* renamed from: d  reason: collision with root package name */
        long f36976d = AnimationUtils.currentAnimationTimeMillis();

        i(float f10, int i10) {
            this.f36978f = f10;
            this.f36975c = i10;
            SmartRefreshLayout.this.f36947y0.postDelayed(this, this.f36974b);
            if (f10 > 0.0f) {
                SmartRefreshLayout.this.f36949z0.g(RefreshState.PullDownToRefresh);
            } else {
                SmartRefreshLayout.this.f36949z0.g(RefreshState.PullUpToLoad);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.O0 == this && !smartRefreshLayout.A0.isFinishing) {
                if (Math.abs(smartRefreshLayout.f36900b) >= Math.abs(this.f36975c)) {
                    if (this.f36975c != 0) {
                        int i10 = this.f36973a + 1;
                        this.f36973a = i10;
                        this.f36978f = (float) (this.f36978f * Math.pow(0.44999998807907104d, i10 * 2));
                    } else {
                        int i11 = this.f36973a + 1;
                        this.f36973a = i11;
                        this.f36978f = (float) (this.f36978f * Math.pow(0.8500000238418579d, i11 * 2));
                    }
                } else {
                    int i12 = this.f36973a + 1;
                    this.f36973a = i12;
                    this.f36978f = (float) (this.f36978f * Math.pow(0.949999988079071d, i12 * 2));
                }
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float f10 = this.f36978f * ((((float) (currentAnimationTimeMillis - this.f36976d)) * 1.0f) / 1000.0f);
                if (Math.abs(f10) >= 1.0f) {
                    this.f36976d = currentAnimationTimeMillis;
                    float f11 = this.f36977e + f10;
                    this.f36977e = f11;
                    SmartRefreshLayout.this.w(f11);
                    SmartRefreshLayout.this.f36947y0.postDelayed(this, this.f36974b);
                    return;
                }
                SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                RefreshState refreshState = smartRefreshLayout2.B0;
                boolean z10 = refreshState.isDragging;
                if (z10 && refreshState.isHeader) {
                    smartRefreshLayout2.f36949z0.g(RefreshState.PullDownCanceled);
                } else if (z10 && refreshState.isFooter) {
                    smartRefreshLayout2.f36949z0.g(RefreshState.PullUpCanceled);
                }
                SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
                smartRefreshLayout3.O0 = null;
                if (Math.abs(smartRefreshLayout3.f36900b) >= Math.abs(this.f36975c)) {
                    SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
                    smartRefreshLayout4.j(this.f36975c, 0, smartRefreshLayout4.f36948z, Math.min(Math.max((int) xc.b.i(Math.abs(SmartRefreshLayout.this.f36900b - this.f36975c)), 30), 100) * 10);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes6.dex */
    public class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        int f36980a;

        /* renamed from: d  reason: collision with root package name */
        float f36983d;

        /* renamed from: b  reason: collision with root package name */
        int f36981b = 0;

        /* renamed from: c  reason: collision with root package name */
        int f36982c = 10;

        /* renamed from: e  reason: collision with root package name */
        float f36984e = 0.98f;

        /* renamed from: f  reason: collision with root package name */
        long f36985f = 0;

        /* renamed from: g  reason: collision with root package name */
        long f36986g = AnimationUtils.currentAnimationTimeMillis();

        j(float f10) {
            this.f36983d = f10;
            this.f36980a = SmartRefreshLayout.this.f36900b;
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x0049, code lost:
            if (r0.f36900b >= (-r0.f36921l0)) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0057, code lost:
            if (r0.f36900b > r0.f36917j0) goto L17;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Runnable a() {
            /*
                r11 = this;
                com.scwang.smart.refresh.layout.SmartRefreshLayout r0 = com.scwang.smart.refresh.layout.SmartRefreshLayout.this
                com.scwang.smart.refresh.layout.constant.RefreshState r1 = r0.A0
                boolean r2 = r1.isFinishing
                r3 = 0
                if (r2 == 0) goto La
                return r3
            La:
                int r2 = r0.f36900b
                if (r2 == 0) goto La7
                boolean r1 = r1.isOpening
                if (r1 != 0) goto L26
                boolean r1 = r0.T
                if (r1 == 0) goto L59
                boolean r1 = r0.H
                if (r1 == 0) goto L59
                boolean r1 = r0.U
                if (r1 == 0) goto L59
                boolean r1 = r0.C
                boolean r0 = r0.s(r1)
                if (r0 == 0) goto L59
            L26:
                com.scwang.smart.refresh.layout.SmartRefreshLayout r0 = com.scwang.smart.refresh.layout.SmartRefreshLayout.this
                com.scwang.smart.refresh.layout.constant.RefreshState r1 = r0.A0
                com.scwang.smart.refresh.layout.constant.RefreshState r2 = com.scwang.smart.refresh.layout.constant.RefreshState.Loading
                if (r1 == r2) goto L42
                boolean r1 = r0.T
                if (r1 == 0) goto L4b
                boolean r1 = r0.H
                if (r1 == 0) goto L4b
                boolean r1 = r0.U
                if (r1 == 0) goto L4b
                boolean r1 = r0.C
                boolean r0 = r0.s(r1)
                if (r0 == 0) goto L4b
            L42:
                com.scwang.smart.refresh.layout.SmartRefreshLayout r0 = com.scwang.smart.refresh.layout.SmartRefreshLayout.this
                int r1 = r0.f36900b
                int r0 = r0.f36921l0
                int r0 = -r0
                if (r1 < r0) goto L59
            L4b:
                com.scwang.smart.refresh.layout.SmartRefreshLayout r0 = com.scwang.smart.refresh.layout.SmartRefreshLayout.this
                com.scwang.smart.refresh.layout.constant.RefreshState r1 = r0.A0
                com.scwang.smart.refresh.layout.constant.RefreshState r2 = com.scwang.smart.refresh.layout.constant.RefreshState.Refreshing
                if (r1 != r2) goto La7
                int r1 = r0.f36900b
                int r0 = r0.f36917j0
                if (r1 <= r0) goto La7
            L59:
                com.scwang.smart.refresh.layout.SmartRefreshLayout r0 = com.scwang.smart.refresh.layout.SmartRefreshLayout.this
                int r0 = r0.f36900b
                float r1 = r11.f36983d
                r2 = 0
                r4 = r0
            L61:
                int r5 = r0 * r4
                if (r5 <= 0) goto La7
                double r5 = (double) r1
                float r1 = r11.f36984e
                double r7 = (double) r1
                int r2 = r2 + 1
                int r1 = r11.f36982c
                int r1 = r1 * r2
                float r1 = (float) r1
                r9 = 1092616192(0x41200000, float:10.0)
                float r1 = r1 / r9
                double r9 = (double) r1
                double r7 = java.lang.Math.pow(r7, r9)
                double r5 = r5 * r7
                float r1 = (float) r5
                int r5 = r11.f36982c
                float r5 = (float) r5
                r6 = 1065353216(0x3f800000, float:1.0)
                float r5 = r5 * r6
                r7 = 1148846080(0x447a0000, float:1000.0)
                float r5 = r5 / r7
                float r5 = r5 * r1
                float r7 = java.lang.Math.abs(r5)
                int r6 = (r7 > r6 ? 1 : (r7 == r6 ? 0 : -1))
                if (r6 >= 0) goto La3
                com.scwang.smart.refresh.layout.SmartRefreshLayout r0 = com.scwang.smart.refresh.layout.SmartRefreshLayout.this
                com.scwang.smart.refresh.layout.constant.RefreshState r1 = r0.A0
                boolean r2 = r1.isOpening
                if (r2 == 0) goto La2
                com.scwang.smart.refresh.layout.constant.RefreshState r2 = com.scwang.smart.refresh.layout.constant.RefreshState.Refreshing
                if (r1 != r2) goto L9b
                int r5 = r0.f36917j0
                if (r4 > r5) goto La2
            L9b:
                if (r1 == r2) goto La7
                int r0 = r0.f36921l0
                int r0 = -r0
                if (r4 >= r0) goto La7
            La2:
                return r3
            La3:
                float r4 = (float) r4
                float r4 = r4 + r5
                int r4 = (int) r4
                goto L61
            La7:
                long r0 = android.view.animation.AnimationUtils.currentAnimationTimeMillis()
                r11.f36985f = r0
                com.scwang.smart.refresh.layout.SmartRefreshLayout r0 = com.scwang.smart.refresh.layout.SmartRefreshLayout.this
                android.os.Handler r0 = r0.f36947y0
                int r1 = r11.f36982c
                long r1 = (long) r1
                r0.postDelayed(r11, r1)
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.scwang.smart.refresh.layout.SmartRefreshLayout.j.a():java.lang.Runnable");
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.O0 == this && !smartRefreshLayout.A0.isFinishing) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float pow = (float) (this.f36983d * Math.pow(this.f36984e, ((float) (currentAnimationTimeMillis - this.f36985f)) / (1000.0f / this.f36982c)));
                this.f36983d = pow;
                float f10 = pow * ((((float) (currentAnimationTimeMillis - this.f36986g)) * 1.0f) / 1000.0f);
                if (Math.abs(f10) > 1.0f) {
                    this.f36986g = currentAnimationTimeMillis;
                    int i10 = (int) (this.f36980a + f10);
                    this.f36980a = i10;
                    SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                    if (smartRefreshLayout2.f36900b * i10 > 0) {
                        smartRefreshLayout2.f36949z0.f(i10, true);
                        SmartRefreshLayout.this.f36947y0.postDelayed(this, this.f36982c);
                        return;
                    }
                    smartRefreshLayout2.O0 = null;
                    smartRefreshLayout2.f36949z0.f(0, true);
                    xc.b.d(SmartRefreshLayout.this.f36943w0.h(), (int) (-this.f36983d));
                    SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
                    if (smartRefreshLayout3.I0 && f10 > 0.0f) {
                        smartRefreshLayout3.I0 = false;
                        return;
                    }
                    return;
                }
                SmartRefreshLayout.this.O0 = null;
            }
        }
    }

    /* loaded from: classes6.dex */
    public class k implements sc.e {
        public k() {
        }

        @Override // sc.e
        public ValueAnimator a(int i10) {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            return smartRefreshLayout.j(i10, 0, smartRefreshLayout.f36948z, smartRefreshLayout.f36908f);
        }

        @Override // sc.e
        public sc.e b(@NonNull sc.a aVar, boolean z10) {
            if (aVar.equals(SmartRefreshLayout.this.f36939u0)) {
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                if (!smartRefreshLayout.W) {
                    smartRefreshLayout.W = true;
                    smartRefreshLayout.F = z10;
                }
            } else if (aVar.equals(SmartRefreshLayout.this.f36941v0)) {
                SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                if (!smartRefreshLayout2.f36899a0) {
                    smartRefreshLayout2.f36899a0 = true;
                    smartRefreshLayout2.G = z10;
                }
            }
            return this;
        }

        @Override // sc.e
        public sc.e c(@NonNull sc.a aVar, int i10) {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.f36945x0 == null && i10 != 0) {
                smartRefreshLayout.f36945x0 = new Paint();
            }
            if (aVar.equals(SmartRefreshLayout.this.f36939u0)) {
                SmartRefreshLayout.this.D0 = i10;
            } else if (aVar.equals(SmartRefreshLayout.this.f36941v0)) {
                SmartRefreshLayout.this.E0 = i10;
            }
            return this;
        }

        @Override // sc.e
        @NonNull
        public sc.f d() {
            return SmartRefreshLayout.this;
        }

        @Override // sc.e
        public sc.e e() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.A0 == RefreshState.TwoLevel) {
                smartRefreshLayout.f36949z0.g(RefreshState.TwoLevelFinish);
                if (SmartRefreshLayout.this.f36900b == 0) {
                    f(0, false);
                    SmartRefreshLayout.this.x(RefreshState.None);
                } else {
                    a(0).setDuration(SmartRefreshLayout.this.f36906e);
                }
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:52:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00b8  */
        @Override // sc.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public sc.e f(int r17, boolean r18) {
            /*
                Method dump skipped, instructions count: 839
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.scwang.smart.refresh.layout.SmartRefreshLayout.k.f(int, boolean):sc.e");
        }

        @Override // sc.e
        public sc.e g(@NonNull RefreshState refreshState) {
            switch (a.f36952a[refreshState.ordinal()]) {
                case 1:
                    SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                    RefreshState refreshState2 = smartRefreshLayout.A0;
                    RefreshState refreshState3 = RefreshState.None;
                    if (refreshState2 != refreshState3 && smartRefreshLayout.f36900b == 0) {
                        smartRefreshLayout.x(refreshState3);
                        return null;
                    } else if (smartRefreshLayout.f36900b != 0) {
                        a(0);
                        return null;
                    } else {
                        return null;
                    }
                case 2:
                    SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout2.A0.isOpening && smartRefreshLayout2.s(smartRefreshLayout2.B)) {
                        SmartRefreshLayout.this.x(RefreshState.PullDownToRefresh);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.PullDownToRefresh);
                    return null;
                case 3:
                    SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
                    if (smartRefreshLayout3.s(smartRefreshLayout3.C)) {
                        SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
                        RefreshState refreshState4 = smartRefreshLayout4.A0;
                        if (!refreshState4.isOpening && !refreshState4.isFinishing && (!smartRefreshLayout4.T || !smartRefreshLayout4.H || !smartRefreshLayout4.U)) {
                            smartRefreshLayout4.x(RefreshState.PullUpToLoad);
                            return null;
                        }
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.PullUpToLoad);
                    return null;
                case 4:
                    SmartRefreshLayout smartRefreshLayout5 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout5.A0.isOpening && smartRefreshLayout5.s(smartRefreshLayout5.B)) {
                        SmartRefreshLayout.this.x(RefreshState.PullDownCanceled);
                        g(RefreshState.None);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.PullDownCanceled);
                    return null;
                case 5:
                    SmartRefreshLayout smartRefreshLayout6 = SmartRefreshLayout.this;
                    if (smartRefreshLayout6.s(smartRefreshLayout6.C)) {
                        SmartRefreshLayout smartRefreshLayout7 = SmartRefreshLayout.this;
                        if (!smartRefreshLayout7.A0.isOpening && (!smartRefreshLayout7.T || !smartRefreshLayout7.H || !smartRefreshLayout7.U)) {
                            smartRefreshLayout7.x(RefreshState.PullUpCanceled);
                            g(RefreshState.None);
                            return null;
                        }
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.PullUpCanceled);
                    return null;
                case 6:
                    SmartRefreshLayout smartRefreshLayout8 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout8.A0.isOpening && smartRefreshLayout8.s(smartRefreshLayout8.B)) {
                        SmartRefreshLayout.this.x(RefreshState.ReleaseToRefresh);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.ReleaseToRefresh);
                    return null;
                case 7:
                    SmartRefreshLayout smartRefreshLayout9 = SmartRefreshLayout.this;
                    if (smartRefreshLayout9.s(smartRefreshLayout9.C)) {
                        SmartRefreshLayout smartRefreshLayout10 = SmartRefreshLayout.this;
                        RefreshState refreshState5 = smartRefreshLayout10.A0;
                        if (!refreshState5.isOpening && !refreshState5.isFinishing && (!smartRefreshLayout10.T || !smartRefreshLayout10.H || !smartRefreshLayout10.U)) {
                            smartRefreshLayout10.x(RefreshState.ReleaseToLoad);
                            return null;
                        }
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.ReleaseToLoad);
                    return null;
                case 8:
                    SmartRefreshLayout smartRefreshLayout11 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout11.A0.isOpening && smartRefreshLayout11.s(smartRefreshLayout11.B)) {
                        SmartRefreshLayout.this.x(RefreshState.ReleaseToTwoLevel);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.ReleaseToTwoLevel);
                    return null;
                case 9:
                    SmartRefreshLayout smartRefreshLayout12 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout12.A0.isOpening && smartRefreshLayout12.s(smartRefreshLayout12.B)) {
                        SmartRefreshLayout.this.x(RefreshState.RefreshReleased);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.RefreshReleased);
                    return null;
                case 10:
                    SmartRefreshLayout smartRefreshLayout13 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout13.A0.isOpening && smartRefreshLayout13.s(smartRefreshLayout13.C)) {
                        SmartRefreshLayout.this.x(RefreshState.LoadReleased);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(RefreshState.LoadReleased);
                    return null;
                case 11:
                    SmartRefreshLayout.this.setStateRefreshing(true);
                    return null;
                case 12:
                    SmartRefreshLayout.this.setStateLoading(true);
                    return null;
                default:
                    SmartRefreshLayout.this.x(refreshState);
                    return null;
            }
        }
    }

    public SmartRefreshLayout(Context context) {
        this(context, null);
    }

    public sc.f A(boolean z10) {
        this.V = true;
        this.C = z10;
        return this;
    }

    public sc.f B(boolean z10) {
        this.P = z10;
        sc.b bVar = this.f36943w0;
        if (bVar != null) {
            bVar.b(z10);
        }
        return this;
    }

    public sc.f C(boolean z10) {
        this.B = z10;
        return this;
    }

    public sc.f D(boolean z10) {
        this.N = z10;
        return this;
    }

    public sc.f E(boolean z10) {
        RefreshState refreshState = this.A0;
        if (refreshState == RefreshState.Refreshing && z10) {
            q();
        } else if (refreshState == RefreshState.Loading && z10) {
            n();
        } else if (this.T != z10) {
            this.T = z10;
            sc.a aVar = this.f36941v0;
            if (aVar instanceof sc.c) {
                if (((sc.c) aVar).b(z10)) {
                    this.U = true;
                    if (this.T && this.H && this.f36900b > 0 && this.f36941v0.getSpinnerStyle() == tc.b.f67283d && s(this.C) && t(this.B, this.f36939u0)) {
                        this.f36941v0.getView().setTranslationY(this.f36900b);
                    }
                } else {
                    this.U = false;
                    new RuntimeException("Footer:" + this.f36941v0 + " NoMoreData is not supported.(不支持NoMoreData，请使用[ClassicsFooter]或者[自定义Footer并实现setNoMoreData方法且返回true])").printStackTrace();
                }
            }
        }
        return this;
    }

    public sc.f F(vc.g gVar) {
        boolean z10;
        this.f36901b0 = gVar;
        this.f36903c0 = gVar;
        if (!this.C && (this.V || gVar == null)) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.C = z10;
        return this;
    }

    public sc.f G(@NonNull View view) {
        return H(view, 0, 0);
    }

    public sc.f H(@NonNull View view, int i10, int i11) {
        sc.b bVar = this.f36943w0;
        if (bVar != null) {
            super.removeView(bVar.getView());
        }
        if (i10 == 0) {
            i10 = -1;
        }
        if (i11 == 0) {
            i11 = -1;
        }
        LayoutParams layoutParams = new LayoutParams(i10, i11);
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        if (layoutParams2 instanceof LayoutParams) {
            layoutParams = (LayoutParams) layoutParams2;
        }
        super.addView(view, getChildCount(), layoutParams);
        this.f36943w0 = new yc.a(view);
        if (this.H0) {
            View findViewById = findViewById(this.f36930q);
            View findViewById2 = findViewById(this.f36932r);
            this.f36943w0.g(this.f36905d0);
            this.f36943w0.b(this.P);
            this.f36943w0.f(this.f36949z0, findViewById, findViewById2);
        }
        sc.a aVar = this.f36939u0;
        if (aVar != null && aVar.getSpinnerStyle().f67290b) {
            super.bringChildToFront(this.f36939u0.getView());
        }
        sc.a aVar2 = this.f36941v0;
        if (aVar2 != null && aVar2.getSpinnerStyle().f67290b) {
            super.bringChildToFront(this.f36941v0.getView());
        }
        return this;
    }

    public sc.f I(vc.i iVar) {
        this.f36905d0 = iVar;
        sc.b bVar = this.f36943w0;
        if (bVar != null) {
            bVar.g(iVar);
        }
        return this;
    }

    protected boolean J(float f10) {
        if (f10 == 0.0f) {
            f10 = this.f36942w;
        }
        if (Math.abs(f10) > this.f36938u) {
            int i10 = this.f36900b;
            if (i10 * f10 < 0.0f) {
                RefreshState refreshState = this.A0;
                if (refreshState != RefreshState.Refreshing && refreshState != RefreshState.Loading && (i10 >= 0 || !this.T)) {
                    if (refreshState.isReleaseToOpening) {
                        return true;
                    }
                } else {
                    this.O0 = new j(f10).a();
                    return true;
                }
            }
            if ((f10 < 0.0f && ((this.J && (this.C || this.K)) || ((this.A0 == RefreshState.Loading && i10 >= 0) || (this.L && s(this.C))))) || (f10 > 0.0f && ((this.J && this.B) || this.K || (this.A0 == RefreshState.Refreshing && this.f36900b <= 0)))) {
                this.M0 = false;
                this.f36944x.fling(0, 0, 0, (int) (-f10), 0, 0, -2147483647, Integer.MAX_VALUE);
                this.f36944x.computeScrollOffset();
                invalidate();
            }
        }
        return false;
    }

    @Override // sc.f
    public sc.f a(boolean z10) {
        setNestedScrollingEnabled(z10);
        return this;
    }

    @Override // android.view.View
    public void computeScroll() {
        float currVelocity;
        this.f36944x.getCurrY();
        if (this.f36944x.computeScrollOffset()) {
            int finalY = this.f36944x.getFinalY();
            if ((finalY < 0 && ((this.B || this.K) && this.f36943w0.i())) || (finalY > 0 && ((this.C || this.K) && this.f36943w0.e()))) {
                if (this.M0) {
                    if (finalY > 0) {
                        currVelocity = -this.f36944x.getCurrVelocity();
                    } else {
                        currVelocity = this.f36944x.getCurrVelocity();
                    }
                    k(currVelocity);
                }
                this.f36944x.forceFinished(true);
                return;
            }
            this.M0 = true;
            invalidate();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x0150, code lost:
        if (r6 != 3) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00d2, code lost:
        if (r2.isFinishing == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00d6, code lost:
        if (r2.isHeader == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00e4, code lost:
        if (r2.isFinishing == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00e8, code lost:
        if (r2.isFooter == false) goto L76;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r24) {
        /*
            Method dump skipped, instructions count: 939
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.scwang.smart.refresh.layout.SmartRefreshLayout.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j10) {
        View view2;
        Paint paint;
        Paint paint2;
        sc.b bVar = this.f36943w0;
        if (bVar != null) {
            view2 = bVar.getView();
        } else {
            view2 = null;
        }
        sc.a aVar = this.f36939u0;
        if (aVar != null && aVar.getView() == view) {
            if (!s(this.B) || (!this.I && isInEditMode())) {
                return true;
            }
            if (view2 != null) {
                int max = Math.max(view2.getTop() + view2.getPaddingTop() + this.f36900b, view.getTop());
                int i10 = this.D0;
                if (i10 != 0 && (paint2 = this.f36945x0) != null) {
                    paint2.setColor(i10);
                    if (this.f36939u0.getSpinnerStyle().f67291c) {
                        max = view.getBottom();
                    } else if (this.f36939u0.getSpinnerStyle() == tc.b.f67283d) {
                        max = view.getBottom() + this.f36900b;
                    }
                    canvas.drawRect(0.0f, view.getTop(), getWidth(), max, this.f36945x0);
                }
                if ((this.D && this.f36939u0.getSpinnerStyle() == tc.b.f67285f) || this.f36939u0.getSpinnerStyle().f67291c) {
                    canvas.save();
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), max);
                    boolean drawChild = super.drawChild(canvas, view, j10);
                    canvas.restore();
                    return drawChild;
                }
            }
        }
        sc.a aVar2 = this.f36941v0;
        if (aVar2 != null && aVar2.getView() == view) {
            if (!s(this.C) || (!this.I && isInEditMode())) {
                return true;
            }
            if (view2 != null) {
                int min = Math.min((view2.getBottom() - view2.getPaddingBottom()) + this.f36900b, view.getBottom());
                int i11 = this.E0;
                if (i11 != 0 && (paint = this.f36945x0) != null) {
                    paint.setColor(i11);
                    if (this.f36941v0.getSpinnerStyle().f67291c) {
                        min = view.getTop();
                    } else if (this.f36941v0.getSpinnerStyle() == tc.b.f67283d) {
                        min = view.getTop() + this.f36900b;
                    }
                    canvas.drawRect(0.0f, min, getWidth(), view.getBottom(), this.f36945x0);
                }
                if ((this.E && this.f36941v0.getSpinnerStyle() == tc.b.f67285f) || this.f36941v0.getSpinnerStyle().f67291c) {
                    canvas.save();
                    canvas.clipRect(view.getLeft(), min, view.getRight(), view.getBottom());
                    boolean drawChild2 = super.drawChild(canvas, view, j10);
                    canvas.restore();
                    return drawChild2;
                }
            }
        }
        return super.drawChild(canvas, view, j10);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f36915i0.getNestedScrollAxes();
    }

    @Nullable
    public sc.c getRefreshFooter() {
        sc.a aVar = this.f36941v0;
        if (aVar instanceof sc.c) {
            return (sc.c) aVar;
        }
        return null;
    }

    @Nullable
    public sc.d getRefreshHeader() {
        sc.a aVar = this.f36939u0;
        if (aVar instanceof sc.d) {
            return (sc.d) aVar;
        }
        return null;
    }

    @NonNull
    public RefreshState getState() {
        return this.A0;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        if (this.Q && (this.K || this.B || this.C)) {
            return true;
        }
        return false;
    }

    protected ValueAnimator j(int i10, int i11, Interpolator interpolator, int i12) {
        if (this.f36900b == i10) {
            return null;
        }
        ValueAnimator valueAnimator = this.P0;
        if (valueAnimator != null) {
            valueAnimator.setDuration(0L);
            this.P0.cancel();
            this.P0 = null;
        }
        this.O0 = null;
        ValueAnimator ofInt = ValueAnimator.ofInt(this.f36900b, i10);
        this.P0 = ofInt;
        ofInt.setDuration(i12);
        this.P0.setInterpolator(interpolator);
        this.P0.addListener(new d());
        this.P0.addUpdateListener(new e());
        this.P0.setStartDelay(i11);
        this.P0.start();
        return this.P0;
    }

    protected void k(float f10) {
        RefreshState refreshState;
        if (this.P0 == null) {
            if (f10 > 0.0f && ((refreshState = this.A0) == RefreshState.Refreshing || refreshState == RefreshState.TwoLevel)) {
                this.O0 = new i(f10, this.f36917j0);
            } else if (f10 < 0.0f && (this.A0 == RefreshState.Loading || ((this.H && this.T && this.U && s(this.C)) || (this.L && !this.T && s(this.C) && this.A0 != RefreshState.Refreshing)))) {
                this.O0 = new i(f10, -this.f36921l0);
            } else if (this.f36900b == 0 && this.J) {
                this.O0 = new i(f10, 0);
            }
        }
    }

    public sc.f l(int i10) {
        return m(i10, true, false);
    }

    public sc.f m(int i10, boolean z10, boolean z11) {
        int i11 = i10 >> 16;
        int i12 = (i10 << 16) >> 16;
        h hVar = new h(i11, z11, z10);
        if (i12 > 0) {
            this.f36947y0.postDelayed(hVar, i12);
        } else {
            hVar.run();
        }
        return this;
    }

    public sc.f n() {
        return m(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.C0))), 300) << 16, true, true);
    }

    public sc.f o(int i10) {
        return p(i10, true, Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        sc.a aVar;
        super.onAttachedToWindow();
        boolean z10 = true;
        this.H0 = true;
        if (!isInEditMode()) {
            if (this.f36941v0 != null) {
                if (!this.C && this.V) {
                    z10 = false;
                }
                this.C = z10;
            }
            if (this.f36943w0 == null) {
                int childCount = getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = getChildAt(i10);
                    sc.a aVar2 = this.f36939u0;
                    if ((aVar2 == null || childAt != aVar2.getView()) && ((aVar = this.f36941v0) == null || childAt != aVar.getView())) {
                        this.f36943w0 = new yc.a(childAt);
                    }
                }
            }
            if (this.f36943w0 == null) {
                int c10 = xc.b.c(20.0f);
                TextView textView = new TextView(getContext());
                textView.setTextColor(-39424);
                textView.setGravity(17);
                textView.setTextSize(20.0f);
                textView.setText(uc.b.f68350a);
                super.addView(textView, 0, new LayoutParams(-1, -1));
                yc.a aVar3 = new yc.a(textView);
                this.f36943w0 = aVar3;
                aVar3.getView().setPadding(c10, c10, c10, c10);
            }
            View findViewById = findViewById(this.f36930q);
            View findViewById2 = findViewById(this.f36932r);
            this.f36943w0.g(this.f36905d0);
            this.f36943w0.b(this.P);
            this.f36943w0.f(this.f36949z0, findViewById, findViewById2);
            if (this.f36900b != 0) {
                x(RefreshState.None);
                sc.b bVar = this.f36943w0;
                this.f36900b = 0;
                bVar.d(0, this.f36934s, this.f36936t);
            }
        }
        int[] iArr = this.A;
        if (iArr != null) {
            sc.a aVar4 = this.f36939u0;
            if (aVar4 != null) {
                aVar4.setPrimaryColors(iArr);
            }
            sc.a aVar5 = this.f36941v0;
            if (aVar5 != null) {
                aVar5.setPrimaryColors(this.A);
            }
        }
        sc.b bVar2 = this.f36943w0;
        if (bVar2 != null) {
            super.bringChildToFront(bVar2.getView());
        }
        sc.a aVar6 = this.f36939u0;
        if (aVar6 != null && aVar6.getSpinnerStyle().f67290b) {
            super.bringChildToFront(this.f36939u0.getView());
        }
        sc.a aVar7 = this.f36941v0;
        if (aVar7 != null && aVar7.getSpinnerStyle().f67290b) {
            super.bringChildToFront(this.f36941v0.getView());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.H0 = false;
        this.V = true;
        this.O0 = null;
        ValueAnimator valueAnimator = this.P0;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.P0.removeAllUpdateListeners();
            this.P0.setDuration(0L);
            this.P0.cancel();
            this.P0 = null;
        }
        sc.a aVar = this.f36939u0;
        if (aVar != null && this.A0 == RefreshState.Refreshing) {
            aVar.c(this, false);
        }
        sc.a aVar2 = this.f36941v0;
        if (aVar2 != null && this.A0 == RefreshState.Loading) {
            aVar2.c(this, false);
        }
        if (this.f36900b != 0) {
            this.f36949z0.f(0, true);
        }
        RefreshState refreshState = this.A0;
        RefreshState refreshState2 = RefreshState.None;
        if (refreshState != refreshState2) {
            x(refreshState2);
        }
        Handler handler = this.f36947y0;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.I0 = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0052  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onFinishInflate() {
        /*
            r11 = this;
            super.onFinishInflate()
            int r0 = super.getChildCount()
            r1 = 3
            if (r0 > r1) goto L9e
            r2 = -1
            r3 = 0
            r5 = r2
            r4 = r3
            r6 = r4
        Lf:
            r7 = 2
            r8 = 1
            if (r4 >= r0) goto L33
            android.view.View r9 = super.getChildAt(r4)
            boolean r10 = xc.b.e(r9)
            if (r10 == 0) goto L24
            if (r6 < r7) goto L21
            if (r4 != r8) goto L24
        L21:
            r5 = r4
            r6 = r7
            goto L30
        L24:
            boolean r7 = r9 instanceof sc.a
            if (r7 != 0) goto L30
            if (r6 >= r8) goto L30
            if (r4 <= 0) goto L2e
            r6 = r8
            goto L2f
        L2e:
            r6 = r3
        L2f:
            r5 = r4
        L30:
            int r4 = r4 + 1
            goto Lf
        L33:
            if (r5 < 0) goto L4d
            yc.a r4 = new yc.a
            android.view.View r6 = super.getChildAt(r5)
            r4.<init>(r6)
            r11.f36943w0 = r4
            if (r5 != r8) goto L48
            if (r0 != r1) goto L46
        L44:
            r1 = r3
            goto L4f
        L46:
            r7 = r2
            goto L44
        L48:
            if (r0 != r7) goto L4d
            r1 = r2
            r7 = r8
            goto L4f
        L4d:
            r1 = r2
            r7 = r1
        L4f:
            r4 = r3
        L50:
            if (r4 >= r0) goto L9d
            android.view.View r5 = super.getChildAt(r4)
            if (r4 == r1) goto L8b
            if (r4 == r7) goto L65
            if (r1 != r2) goto L65
            sc.a r6 = r11.f36939u0
            if (r6 != 0) goto L65
            boolean r6 = r5 instanceof sc.d
            if (r6 == 0) goto L65
            goto L8b
        L65:
            if (r4 == r7) goto L6d
            if (r7 != r2) goto L9a
            boolean r6 = r5 instanceof sc.c
            if (r6 == 0) goto L9a
        L6d:
            boolean r6 = r11.C
            if (r6 != 0) goto L78
            boolean r6 = r11.V
            if (r6 != 0) goto L76
            goto L78
        L76:
            r6 = r3
            goto L79
        L78:
            r6 = r8
        L79:
            r11.C = r6
            boolean r6 = r5 instanceof sc.c
            if (r6 == 0) goto L82
            sc.c r5 = (sc.c) r5
            goto L88
        L82:
            com.scwang.smart.refresh.layout.wrapper.RefreshFooterWrapper r6 = new com.scwang.smart.refresh.layout.wrapper.RefreshFooterWrapper
            r6.<init>(r5)
            r5 = r6
        L88:
            r11.f36941v0 = r5
            goto L9a
        L8b:
            boolean r6 = r5 instanceof sc.d
            if (r6 == 0) goto L92
            sc.d r5 = (sc.d) r5
            goto L98
        L92:
            com.scwang.smart.refresh.layout.wrapper.RefreshHeaderWrapper r6 = new com.scwang.smart.refresh.layout.wrapper.RefreshHeaderWrapper
            r6.<init>(r5)
            r5 = r6
        L98:
            r11.f36939u0 = r5
        L9a:
            int r4 = r4 + 1
            goto L50
        L9d:
            return
        L9e:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.String r1 = "最多只支持3个子View，Most only support three sub view"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.scwang.smart.refresh.layout.SmartRefreshLayout.onFinishInflate():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        int childCount = super.getChildCount();
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = super.getChildAt(i15);
            if (childAt.getVisibility() != 8 && !"GONE".equals(childAt.getTag(uc.a.f68349a))) {
                sc.b bVar = this.f36943w0;
                boolean z11 = true;
                if (bVar != null && bVar.getView() == childAt) {
                    boolean z12 = isInEditMode() && this.I && s(this.B) && this.f36939u0 != null;
                    View view = this.f36943w0.getView();
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : Q0;
                    int i16 = marginLayoutParams.leftMargin + paddingLeft;
                    int i17 = marginLayoutParams.topMargin + paddingTop;
                    int measuredWidth = view.getMeasuredWidth() + i16;
                    int measuredHeight = view.getMeasuredHeight() + i17;
                    if (z12 && t(this.F, this.f36939u0)) {
                        int i18 = this.f36917j0;
                        i17 += i18;
                        measuredHeight += i18;
                    }
                    view.layout(i16, i17, measuredWidth, measuredHeight);
                }
                sc.a aVar = this.f36939u0;
                if (aVar != null && aVar.getView() == childAt) {
                    boolean z13 = isInEditMode() && this.I && s(this.B);
                    View view2 = this.f36939u0.getView();
                    ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : Q0;
                    int i19 = marginLayoutParams2.leftMargin;
                    int i20 = marginLayoutParams2.topMargin + this.f36925n0;
                    int measuredWidth2 = view2.getMeasuredWidth() + i19;
                    int measuredHeight2 = view2.getMeasuredHeight() + i20;
                    if (!z13 && this.f36939u0.getSpinnerStyle() == tc.b.f67283d) {
                        int i21 = this.f36917j0;
                        i20 -= i21;
                        measuredHeight2 -= i21;
                    }
                    view2.layout(i19, i20, measuredWidth2, measuredHeight2);
                }
                sc.a aVar2 = this.f36941v0;
                if (aVar2 != null && aVar2.getView() == childAt) {
                    z11 = (isInEditMode() && this.I && s(this.C)) ? false : false;
                    View view3 = this.f36941v0.getView();
                    ViewGroup.LayoutParams layoutParams3 = view3.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : Q0;
                    tc.b spinnerStyle = this.f36941v0.getSpinnerStyle();
                    int i22 = marginLayoutParams3.leftMargin;
                    int measuredHeight3 = (marginLayoutParams3.topMargin + getMeasuredHeight()) - this.f36927o0;
                    if (this.T && this.U && this.H && this.f36943w0 != null && this.f36941v0.getSpinnerStyle() == tc.b.f67283d && s(this.C)) {
                        View view4 = this.f36943w0.getView();
                        ViewGroup.LayoutParams layoutParams4 = view4.getLayoutParams();
                        measuredHeight3 = view4.getMeasuredHeight() + paddingTop + paddingTop + (layoutParams4 instanceof ViewGroup.MarginLayoutParams ? ((ViewGroup.MarginLayoutParams) layoutParams4).topMargin : 0);
                    }
                    if (spinnerStyle == tc.b.f67287h) {
                        measuredHeight3 = marginLayoutParams3.topMargin - this.f36927o0;
                    } else {
                        if (!z11 && spinnerStyle != tc.b.f67286g && spinnerStyle != tc.b.f67285f) {
                            if (spinnerStyle.f67291c && this.f36900b < 0) {
                                i14 = Math.max(s(this.C) ? -this.f36900b : 0, 0);
                            }
                        } else {
                            i14 = this.f36921l0;
                        }
                        measuredHeight3 -= i14;
                    }
                    view3.layout(i22, measuredHeight3, view3.getMeasuredWidth() + i22, view3.getMeasuredHeight() + measuredHeight3);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0262  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r18, int r19) {
        /*
            Method dump skipped, instructions count: 859
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.scwang.smart.refresh.layout.SmartRefreshLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View view, float f10, float f11, boolean z10) {
        return this.f36913h0.dispatchNestedFling(f10, f11, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View view, float f10, float f11) {
        if ((!this.I0 || f11 <= 0.0f) && !J(-f11) && !this.f36913h0.dispatchNestedPreFling(f10, f11)) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(@NonNull View view, int i10, int i11, @NonNull int[] iArr) {
        int i12 = this.f36907e0;
        int i13 = 0;
        if (i11 * i12 > 0) {
            if (Math.abs(i11) > Math.abs(this.f36907e0)) {
                int i14 = this.f36907e0;
                this.f36907e0 = 0;
                i13 = i14;
            } else {
                this.f36907e0 -= i11;
                i13 = i11;
            }
            w(this.f36907e0);
        } else if (i11 > 0 && this.I0) {
            int i15 = i12 - i11;
            this.f36907e0 = i15;
            w(i15);
            i13 = i11;
        }
        this.f36913h0.dispatchNestedPreScroll(i10, i11 - i13, iArr, null);
        iArr[1] = iArr[1] + i13;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(@NonNull View view, int i10, int i11, int i12, int i13) {
        vc.i iVar;
        RefreshState refreshState;
        ViewParent parent;
        vc.i iVar2;
        boolean dispatchNestedScroll = this.f36913h0.dispatchNestedScroll(i10, i11, i12, i13, this.f36911g0);
        int i14 = i13 + this.f36911g0[1];
        if ((i14 < 0 && ((this.B || this.K) && (this.f36907e0 != 0 || (iVar2 = this.f36905d0) == null || iVar2.b(this.f36943w0.getView())))) || (i14 > 0 && ((this.C || this.K) && (this.f36907e0 != 0 || (iVar = this.f36905d0) == null || iVar.a(this.f36943w0.getView()))))) {
            RefreshState refreshState2 = this.B0;
            if (refreshState2 == RefreshState.None || refreshState2.isOpening) {
                sc.e eVar = this.f36949z0;
                if (i14 > 0) {
                    refreshState = RefreshState.PullUpToLoad;
                } else {
                    refreshState = RefreshState.PullDownToRefresh;
                }
                eVar.g(refreshState);
                if (!dispatchNestedScroll && (parent = getParent()) != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
            }
            int i15 = this.f36907e0 - i14;
            this.f36907e0 = i15;
            w(i15);
        }
        if (this.I0 && i11 < 0) {
            this.I0 = false;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i10) {
        this.f36915i0.onNestedScrollAccepted(view, view2, i10);
        this.f36913h0.startNestedScroll(i10 & 2);
        this.f36907e0 = this.f36900b;
        this.f36909f0 = true;
        r(0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i10) {
        if (isEnabled() && isNestedScrollingEnabled() && (i10 & 2) != 0 && (this.K || this.B || this.C)) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(@NonNull View view) {
        this.f36915i0.onStopNestedScroll(view);
        this.f36909f0 = false;
        this.f36907e0 = 0;
        y();
        this.f36913h0.stopNestedScroll();
    }

    public sc.f p(int i10, boolean z10, Boolean bool) {
        int i11 = i10 >> 16;
        int i12 = (i10 << 16) >> 16;
        g gVar = new g(i11, bool, z10);
        if (i12 > 0) {
            this.f36947y0.postDelayed(gVar, i12);
        } else {
            gVar.run();
        }
        return this;
    }

    public sc.f q() {
        return p(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.C0))), 300) << 16, true, Boolean.TRUE);
    }

    protected boolean r(int i10) {
        if (i10 == 0) {
            if (this.P0 != null) {
                RefreshState refreshState = this.A0;
                if (refreshState.isFinishing || refreshState == RefreshState.TwoLevelReleased || refreshState == RefreshState.RefreshReleased || refreshState == RefreshState.LoadReleased) {
                    return true;
                }
                if (refreshState == RefreshState.PullDownCanceled) {
                    this.f36949z0.g(RefreshState.PullDownToRefresh);
                } else if (refreshState == RefreshState.PullUpCanceled) {
                    this.f36949z0.g(RefreshState.PullUpToLoad);
                }
                this.P0.setDuration(0L);
                this.P0.cancel();
                this.P0 = null;
            }
            this.O0 = null;
        }
        if (this.P0 != null) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        if (ViewCompat.isNestedScrollingEnabled(this.f36943w0.h())) {
            this.f36928p = z10;
            super.requestDisallowInterceptTouchEvent(z10);
        }
    }

    protected boolean s(boolean z10) {
        if (z10 && !this.M) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z10) {
        this.Q = z10;
        this.f36913h0.setNestedScrollingEnabled(z10);
    }

    protected void setStateDirectLoading(boolean z10) {
        RefreshState refreshState = this.A0;
        RefreshState refreshState2 = RefreshState.Loading;
        if (refreshState != refreshState2) {
            this.C0 = System.currentTimeMillis();
            this.I0 = true;
            x(refreshState2);
            vc.e eVar = this.f36903c0;
            if (eVar != null) {
                if (z10) {
                    eVar.c(this);
                }
            } else {
                l(2000);
            }
            sc.a aVar = this.f36941v0;
            if (aVar != null) {
                float f10 = this.f36931q0;
                if (f10 < 10.0f) {
                    f10 *= this.f36921l0;
                }
                aVar.a(this, this.f36921l0, (int) f10);
            }
        }
    }

    protected void setStateLoading(boolean z10) {
        b bVar = new b(z10);
        x(RefreshState.LoadReleased);
        ValueAnimator a10 = this.f36949z0.a(-this.f36921l0);
        if (a10 != null) {
            a10.addListener(bVar);
        }
        sc.a aVar = this.f36941v0;
        if (aVar != null) {
            float f10 = this.f36931q0;
            if (f10 < 10.0f) {
                f10 *= this.f36921l0;
            }
            aVar.g(this, this.f36921l0, (int) f10);
        }
        if (a10 == null) {
            bVar.onAnimationEnd(null);
        }
    }

    protected void setStateRefreshing(boolean z10) {
        c cVar = new c(z10);
        x(RefreshState.RefreshReleased);
        ValueAnimator a10 = this.f36949z0.a(this.f36917j0);
        if (a10 != null) {
            a10.addListener(cVar);
        }
        sc.a aVar = this.f36939u0;
        if (aVar != null) {
            float f10 = this.f36929p0;
            if (f10 < 10.0f) {
                f10 *= this.f36917j0;
            }
            aVar.g(this, this.f36917j0, (int) f10);
        }
        if (a10 == null) {
            cVar.onAnimationEnd(null);
        }
    }

    protected void setViceState(RefreshState refreshState) {
        RefreshState refreshState2 = this.A0;
        if (refreshState2.isDragging && refreshState2.isHeader != refreshState.isHeader) {
            x(RefreshState.None);
        }
        if (this.B0 != refreshState) {
            this.B0 = refreshState;
        }
    }

    protected boolean t(boolean z10, @Nullable sc.a aVar) {
        if (!z10 && !this.M && aVar != null && aVar.getSpinnerStyle() != tc.b.f67285f) {
            return false;
        }
        return true;
    }

    public boolean u() {
        if (this.A0 == RefreshState.Loading) {
            return true;
        }
        return false;
    }

    public boolean v() {
        if (this.A0 == RefreshState.Refreshing) {
            return true;
        }
        return false;
    }

    protected void w(float f10) {
        float f11;
        double d10;
        double d11;
        double d12;
        RefreshState refreshState;
        if (this.f36909f0 && !this.P && f10 < 0.0f && !this.f36943w0.e()) {
            f11 = 0.0f;
        } else {
            f11 = f10;
        }
        if (f11 > this.f36910g * 5 && getTag() == null && getTag(uc.a.f68349a) == null) {
            float f12 = this.f36918k;
            int i10 = this.f36910g;
            if (f12 < i10 / 6.0f && this.f36916j < i10 / 16.0f) {
                Toast.makeText(getContext(), "不要再拉了，臣妾做不到啊！", 0).show();
                setTag(uc.a.f68349a, "不要再拉了，臣妾做不到啊！");
            }
        }
        RefreshState refreshState2 = this.A0;
        if (refreshState2 == RefreshState.TwoLevel && f11 > 0.0f) {
            this.f36949z0.f(Math.min((int) f11, getMeasuredHeight()), true);
        } else if (refreshState2 == RefreshState.Refreshing && f11 >= 0.0f) {
            int i11 = this.f36917j0;
            if (f11 < i11) {
                this.f36949z0.f((int) f11, true);
            } else {
                float f13 = this.f36929p0;
                if (f13 < 10.0f) {
                    f13 *= i11;
                }
                double d13 = f13 - i11;
                int max = Math.max((this.f36910g * 4) / 3, getHeight());
                int i12 = this.f36917j0;
                double d14 = max - i12;
                double max2 = Math.max(0.0f, (f11 - i12) * this.f36920l);
                double d15 = -max2;
                if (d14 == 0.0d) {
                    d14 = 1.0d;
                }
                this.f36949z0.f(((int) Math.min(d13 * (1.0d - Math.pow(100.0d, d15 / d14)), max2)) + this.f36917j0, true);
            }
        } else if (f11 < 0.0f && (refreshState2 == RefreshState.Loading || ((this.H && this.T && this.U && s(this.C)) || (this.L && !this.T && s(this.C))))) {
            int i13 = this.f36921l0;
            if (f11 > (-i13)) {
                this.f36949z0.f((int) f11, true);
            } else {
                float f14 = this.f36931q0;
                if (f14 < 10.0f) {
                    f14 *= i13;
                }
                double d16 = f14 - i13;
                int max3 = Math.max((this.f36910g * 4) / 3, getHeight());
                int i14 = this.f36921l0;
                double d17 = max3 - i14;
                double d18 = -Math.min(0.0f, (i14 + f11) * this.f36920l);
                double d19 = -d18;
                if (d17 == 0.0d) {
                    d17 = 1.0d;
                }
                this.f36949z0.f(((int) (-Math.min(d16 * (1.0d - Math.pow(100.0d, d19 / d17)), d18))) - this.f36921l0, true);
            }
        } else if (f11 >= 0.0f) {
            float f15 = this.f36929p0;
            if (f15 < 10.0f) {
                d12 = this.f36917j0 * f15;
            } else {
                d12 = f15;
            }
            double max4 = Math.max(this.f36910g / 2, getHeight());
            double max5 = Math.max(0.0f, this.f36920l * f11);
            double d20 = -max5;
            if (max4 == 0.0d) {
                max4 = 1.0d;
            }
            this.f36949z0.f((int) Math.min(d12 * (1.0d - Math.pow(100.0d, d20 / max4)), max5), true);
        } else {
            float f16 = this.f36931q0;
            if (f16 < 10.0f) {
                d10 = this.f36921l0 * f16;
            } else {
                d10 = f16;
            }
            double max6 = Math.max(this.f36910g / 2, getHeight());
            double d21 = -Math.min(0.0f, this.f36920l * f11);
            double d22 = -d21;
            if (max6 == 0.0d) {
                d11 = 1.0d;
            } else {
                d11 = max6;
            }
            this.f36949z0.f((int) (-Math.min(d10 * (1.0d - Math.pow(100.0d, d22 / d11)), d21)), true);
        }
        if (this.L && !this.T && s(this.C) && f11 < 0.0f && (refreshState = this.A0) != RefreshState.Refreshing && refreshState != RefreshState.Loading && refreshState != RefreshState.LoadFinish) {
            if (this.S) {
                this.O0 = null;
                this.f36949z0.a(-this.f36921l0);
            }
            setStateDirectLoading(false);
            this.f36947y0.postDelayed(new f(), this.f36908f);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void x(RefreshState refreshState) {
        RefreshState refreshState2 = this.A0;
        if (refreshState2 != refreshState) {
            this.A0 = refreshState;
            this.B0 = refreshState;
            sc.a aVar = this.f36939u0;
            sc.a aVar2 = this.f36941v0;
            if (aVar != null) {
                aVar.d(this, refreshState2, refreshState);
            }
            if (aVar2 != null) {
                aVar2.d(this, refreshState2, refreshState);
            }
            if (refreshState == RefreshState.LoadFinish) {
                this.I0 = false;
            }
        } else if (this.B0 != refreshState2) {
            this.B0 = refreshState2;
        }
    }

    protected void y() {
        RefreshState refreshState = this.A0;
        if (refreshState == RefreshState.TwoLevel) {
            if (this.f36942w > -1000 && this.f36900b > getHeight() / 2) {
                ValueAnimator a10 = this.f36949z0.a(getHeight());
                if (a10 != null) {
                    a10.setDuration(this.f36906e);
                    return;
                }
                return;
            } else if (this.f36924n) {
                this.f36949z0.e();
                return;
            } else {
                return;
            }
        }
        RefreshState refreshState2 = RefreshState.Loading;
        if (refreshState != refreshState2 && (!this.H || !this.T || !this.U || this.f36900b >= 0 || !s(this.C))) {
            RefreshState refreshState3 = this.A0;
            RefreshState refreshState4 = RefreshState.Refreshing;
            if (refreshState3 == refreshState4) {
                int i10 = this.f36900b;
                int i11 = this.f36917j0;
                if (i10 > i11) {
                    this.f36949z0.a(i11);
                    return;
                } else if (i10 < 0) {
                    this.f36949z0.a(0);
                    return;
                } else {
                    return;
                }
            } else if (refreshState3 == RefreshState.PullDownToRefresh) {
                this.f36949z0.g(RefreshState.PullDownCanceled);
                return;
            } else if (refreshState3 == RefreshState.PullUpToLoad) {
                this.f36949z0.g(RefreshState.PullUpCanceled);
                return;
            } else if (refreshState3 == RefreshState.ReleaseToRefresh) {
                this.f36949z0.g(refreshState4);
                return;
            } else if (refreshState3 == RefreshState.ReleaseToLoad) {
                this.f36949z0.g(refreshState2);
                return;
            } else if (refreshState3 == RefreshState.ReleaseToTwoLevel) {
                this.f36949z0.g(RefreshState.TwoLevelReleased);
                return;
            } else if (refreshState3 == RefreshState.RefreshReleased) {
                if (this.P0 == null) {
                    this.f36949z0.a(this.f36917j0);
                    return;
                }
                return;
            } else if (refreshState3 == RefreshState.LoadReleased) {
                if (this.P0 == null) {
                    this.f36949z0.a(-this.f36921l0);
                    return;
                }
                return;
            } else if (refreshState3 != RefreshState.LoadFinish && this.f36900b != 0) {
                this.f36949z0.a(0);
                return;
            } else {
                return;
            }
        }
        int i12 = this.f36900b;
        int i13 = this.f36921l0;
        if (i12 < (-i13)) {
            this.f36949z0.a(-i13);
        } else if (i12 > 0) {
            this.f36949z0.a(0);
        }
    }

    public sc.f z(boolean z10) {
        this.L = z10;
        return this;
    }

    public SmartRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f36906e = 300;
        this.f36908f = 300;
        this.f36920l = 0.5f;
        this.f36922m = 'n';
        this.f36930q = -1;
        this.f36932r = -1;
        this.f36934s = -1;
        this.f36936t = -1;
        this.B = true;
        this.C = false;
        this.D = true;
        this.E = true;
        this.F = true;
        this.G = true;
        this.H = false;
        this.I = true;
        this.J = true;
        this.K = false;
        this.L = true;
        this.M = false;
        this.N = true;
        this.O = true;
        this.P = true;
        this.Q = true;
        this.R = false;
        this.S = false;
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.f36899a0 = false;
        this.f36911g0 = new int[2];
        this.f36913h0 = new NestedScrollingChildHelper(this);
        this.f36915i0 = new NestedScrollingParentHelper(this);
        tc.a aVar = tc.a.f67268c;
        this.f36919k0 = aVar;
        this.f36923m0 = aVar;
        this.f36929p0 = 2.5f;
        this.f36931q0 = 2.5f;
        this.f36933r0 = 1.0f;
        this.f36935s0 = 1.0f;
        this.f36937t0 = 0.16666667f;
        this.f36949z0 = new k();
        RefreshState refreshState = RefreshState.None;
        this.A0 = refreshState;
        this.B0 = refreshState;
        this.C0 = 0L;
        this.D0 = 0;
        this.E0 = 0;
        this.I0 = false;
        this.J0 = 0L;
        this.K0 = 0.0f;
        this.L0 = 0.0f;
        this.M0 = false;
        this.N0 = null;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f36947y0 = new Handler(Looper.getMainLooper());
        this.f36944x = new Scroller(context);
        this.f36946y = VelocityTracker.obtain();
        this.f36910g = context.getResources().getDisplayMetrics().heightPixels;
        this.f36948z = new xc.b(xc.b.f70437b);
        this.f36898a = viewConfiguration.getScaledTouchSlop();
        this.f36938u = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f36940v = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f36921l0 = xc.b.c(60.0f);
        this.f36917j0 = xc.b.c(100.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, uc.c.f68364e0);
        if (!obtainStyledAttributes.hasValue(uc.c.f68370g0)) {
            super.setClipToPadding(false);
        }
        if (!obtainStyledAttributes.hasValue(uc.c.f68367f0)) {
            super.setClipChildren(false);
        }
        this.f36920l = obtainStyledAttributes.getFloat(uc.c.f68380k0, this.f36920l);
        this.f36929p0 = obtainStyledAttributes.getFloat(uc.c.L0, this.f36929p0);
        this.f36931q0 = obtainStyledAttributes.getFloat(uc.c.G0, this.f36931q0);
        this.f36933r0 = obtainStyledAttributes.getFloat(uc.c.N0, this.f36933r0);
        this.f36935s0 = obtainStyledAttributes.getFloat(uc.c.I0, this.f36935s0);
        this.B = obtainStyledAttributes.getBoolean(uc.c.f68410z0, this.B);
        this.f36908f = obtainStyledAttributes.getInt(uc.c.P0, this.f36908f);
        this.C = obtainStyledAttributes.getBoolean(uc.c.f68396s0, this.C);
        this.f36917j0 = obtainStyledAttributes.getDimensionPixelOffset(uc.c.J0, this.f36917j0);
        this.f36921l0 = obtainStyledAttributes.getDimensionPixelOffset(uc.c.E0, this.f36921l0);
        this.f36925n0 = obtainStyledAttributes.getDimensionPixelOffset(uc.c.K0, this.f36925n0);
        this.f36927o0 = obtainStyledAttributes.getDimensionPixelOffset(uc.c.F0, this.f36927o0);
        this.R = obtainStyledAttributes.getBoolean(uc.c.f68378j0, this.R);
        this.S = obtainStyledAttributes.getBoolean(uc.c.f68376i0, this.S);
        this.F = obtainStyledAttributes.getBoolean(uc.c.f68394r0, this.F);
        this.G = obtainStyledAttributes.getBoolean(uc.c.f68392q0, this.G);
        this.I = obtainStyledAttributes.getBoolean(uc.c.f68406x0, this.I);
        this.L = obtainStyledAttributes.getBoolean(uc.c.f68382l0, this.L);
        this.J = obtainStyledAttributes.getBoolean(uc.c.f68402v0, this.J);
        this.M = obtainStyledAttributes.getBoolean(uc.c.f68408y0, this.M);
        this.N = obtainStyledAttributes.getBoolean(uc.c.A0, this.N);
        this.O = obtainStyledAttributes.getBoolean(uc.c.B0, this.O);
        this.P = obtainStyledAttributes.getBoolean(uc.c.f68398t0, this.P);
        boolean z10 = obtainStyledAttributes.getBoolean(uc.c.f68388o0, this.H);
        this.H = z10;
        this.H = obtainStyledAttributes.getBoolean(uc.c.f68390p0, z10);
        this.D = obtainStyledAttributes.getBoolean(uc.c.f68386n0, this.D);
        this.E = obtainStyledAttributes.getBoolean(uc.c.f68384m0, this.E);
        this.K = obtainStyledAttributes.getBoolean(uc.c.f68404w0, this.K);
        this.f36930q = obtainStyledAttributes.getResourceId(uc.c.D0, this.f36930q);
        this.f36932r = obtainStyledAttributes.getResourceId(uc.c.C0, this.f36932r);
        this.f36934s = obtainStyledAttributes.getResourceId(uc.c.M0, this.f36934s);
        this.f36936t = obtainStyledAttributes.getResourceId(uc.c.H0, this.f36936t);
        boolean z11 = obtainStyledAttributes.getBoolean(uc.c.f68400u0, this.Q);
        this.Q = z11;
        this.f36913h0.setNestedScrollingEnabled(z11);
        this.V = this.V || obtainStyledAttributes.hasValue(uc.c.f68396s0);
        this.W = this.W || obtainStyledAttributes.hasValue(uc.c.f68394r0);
        this.f36899a0 = this.f36899a0 || obtainStyledAttributes.hasValue(uc.c.f68392q0);
        this.f36919k0 = obtainStyledAttributes.hasValue(uc.c.J0) ? tc.a.f67274i : this.f36919k0;
        this.f36923m0 = obtainStyledAttributes.hasValue(uc.c.E0) ? tc.a.f67274i : this.f36923m0;
        int color = obtainStyledAttributes.getColor(uc.c.f68373h0, 0);
        int color2 = obtainStyledAttributes.getColor(uc.c.O0, 0);
        if (color2 != 0) {
            if (color != 0) {
                this.A = new int[]{color2, color};
            } else {
                this.A = new int[]{color2};
            }
        } else if (color != 0) {
            this.A = new int[]{0, color};
        }
        if (this.M && !this.V && !this.C) {
            this.C = true;
        }
        obtainStyledAttributes.recycle();
    }

    /* loaded from: classes6.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f36950a;

        /* renamed from: b  reason: collision with root package name */
        public tc.b f36951b;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f36950a = 0;
            this.f36951b = null;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, uc.c.Q0);
            this.f36950a = obtainStyledAttributes.getColor(uc.c.R0, this.f36950a);
            if (obtainStyledAttributes.hasValue(uc.c.S0)) {
                this.f36951b = tc.b.f67288i[obtainStyledAttributes.getInt(uc.c.S0, tc.b.f67283d.f67289a)];
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
            this.f36950a = 0;
            this.f36951b = null;
        }
    }

    @Override // sc.f
    @NonNull
    public ViewGroup getLayout() {
        return this;
    }

    public static void setDefaultRefreshFooterCreator(@NonNull vc.b bVar) {
    }

    public static void setDefaultRefreshHeaderCreator(@NonNull vc.c cVar) {
    }

    public static void setDefaultRefreshInitializer(@NonNull vc.d dVar) {
    }
}
