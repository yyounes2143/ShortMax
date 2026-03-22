package com.google.android.exoplayer2.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StyledPlayerControlViewLayoutManager.java */
/* loaded from: classes4.dex */
public final class t0 {
    private boolean A;
    private boolean B;

    /* renamed from: a  reason: collision with root package name */
    private final StyledPlayerControlView f18930a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final View f18931b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final ViewGroup f18932c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final ViewGroup f18933d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final ViewGroup f18934e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final ViewGroup f18935f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final ViewGroup f18936g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final ViewGroup f18937h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final ViewGroup f18938i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final View f18939j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final View f18940k;

    /* renamed from: l  reason: collision with root package name */
    private final AnimatorSet f18941l;

    /* renamed from: m  reason: collision with root package name */
    private final AnimatorSet f18942m;

    /* renamed from: n  reason: collision with root package name */
    private final AnimatorSet f18943n;

    /* renamed from: o  reason: collision with root package name */
    private final AnimatorSet f18944o;

    /* renamed from: p  reason: collision with root package name */
    private final AnimatorSet f18945p;

    /* renamed from: q  reason: collision with root package name */
    private final ValueAnimator f18946q;

    /* renamed from: r  reason: collision with root package name */
    private final ValueAnimator f18947r;

    /* renamed from: s  reason: collision with root package name */
    private final Runnable f18948s = new Runnable() { // from class: com.google.android.exoplayer2.ui.g0
        @Override // java.lang.Runnable
        public final void run() {
            t0.this.c0();
        }
    };

    /* renamed from: t  reason: collision with root package name */
    private final Runnable f18949t = new Runnable() { // from class: com.google.android.exoplayer2.ui.m0
        @Override // java.lang.Runnable
        public final void run() {
            t0.this.D();
        }
    };

    /* renamed from: u  reason: collision with root package name */
    private final Runnable f18950u = new Runnable() { // from class: com.google.android.exoplayer2.ui.n0
        @Override // java.lang.Runnable
        public final void run() {
            t0.this.H();
        }
    };

    /* renamed from: v  reason: collision with root package name */
    private final Runnable f18951v = new Runnable() { // from class: com.google.android.exoplayer2.ui.o0
        @Override // java.lang.Runnable
        public final void run() {
            t0.this.G();
        }
    };

    /* renamed from: w  reason: collision with root package name */
    private final Runnable f18952w = new Runnable() { // from class: com.google.android.exoplayer2.ui.p0
        @Override // java.lang.Runnable
        public final void run() {
            t0.this.E();
        }
    };

    /* renamed from: x  reason: collision with root package name */
    private final View.OnLayoutChangeListener f18953x = new View.OnLayoutChangeListener() { // from class: com.google.android.exoplayer2.ui.q0
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            t0.this.R(view, i10, i11, i12, i13, i14, i15, i16, i17);
        }
    };
    private boolean C = true;

    /* renamed from: z  reason: collision with root package name */
    private int f18955z = 0;

    /* renamed from: y  reason: collision with root package name */
    private final List<View> f18954y = new ArrayList();

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes4.dex */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (t0.this.f18931b != null) {
                t0.this.f18931b.setVisibility(4);
            }
            if (t0.this.f18932c != null) {
                t0.this.f18932c.setVisibility(4);
            }
            if (t0.this.f18934e != null) {
                t0.this.f18934e.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if ((t0.this.f18939j instanceof DefaultTimeBar) && !t0.this.A) {
                ((DefaultTimeBar) t0.this.f18939j).g(250L);
            }
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes4.dex */
    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            int i10 = 0;
            if (t0.this.f18931b != null) {
                t0.this.f18931b.setVisibility(0);
            }
            if (t0.this.f18932c != null) {
                t0.this.f18932c.setVisibility(0);
            }
            if (t0.this.f18934e != null) {
                ViewGroup viewGroup = t0.this.f18934e;
                if (!t0.this.A) {
                    i10 = 4;
                }
                viewGroup.setVisibility(i10);
            }
            if ((t0.this.f18939j instanceof DefaultTimeBar) && !t0.this.A) {
                ((DefaultTimeBar) t0.this.f18939j).t(250L);
            }
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes4.dex */
    class c extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StyledPlayerControlView f18958a;

        c(StyledPlayerControlView styledPlayerControlView) {
            this.f18958a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            t0.this.Z(1);
            if (t0.this.B) {
                this.f18958a.post(t0.this.f18948s);
                t0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            t0.this.Z(3);
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes4.dex */
    class d extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StyledPlayerControlView f18960a;

        d(StyledPlayerControlView styledPlayerControlView) {
            this.f18960a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            t0.this.Z(2);
            if (t0.this.B) {
                this.f18960a.post(t0.this.f18948s);
                t0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            t0.this.Z(3);
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes4.dex */
    class e extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StyledPlayerControlView f18962a;

        e(StyledPlayerControlView styledPlayerControlView) {
            this.f18962a = styledPlayerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            t0.this.Z(2);
            if (t0.this.B) {
                this.f18962a.post(t0.this.f18948s);
                t0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            t0.this.Z(3);
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes4.dex */
    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            t0.this.Z(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            t0.this.Z(4);
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes4.dex */
    class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            t0.this.Z(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            t0.this.Z(4);
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes4.dex */
    class h extends AnimatorListenerAdapter {
        h() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (t0.this.f18935f != null) {
                t0.this.f18935f.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (t0.this.f18937h != null) {
                t0.this.f18937h.setVisibility(0);
                t0.this.f18937h.setTranslationX(t0.this.f18937h.getWidth());
                t0.this.f18937h.scrollTo(t0.this.f18937h.getWidth(), 0);
            }
        }
    }

    /* compiled from: StyledPlayerControlViewLayoutManager.java */
    /* loaded from: classes4.dex */
    class i extends AnimatorListenerAdapter {
        i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (t0.this.f18937h != null) {
                t0.this.f18937h.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (t0.this.f18935f != null) {
                t0.this.f18935f.setVisibility(0);
            }
        }
    }

    public t0(StyledPlayerControlView styledPlayerControlView) {
        this.f18930a = styledPlayerControlView;
        this.f18931b = styledPlayerControlView.findViewById(o.f18871l);
        this.f18932c = (ViewGroup) styledPlayerControlView.findViewById(o.f18866g);
        this.f18934e = (ViewGroup) styledPlayerControlView.findViewById(o.f18881v);
        ViewGroup viewGroup = (ViewGroup) styledPlayerControlView.findViewById(o.f18864e);
        this.f18933d = viewGroup;
        this.f18938i = (ViewGroup) styledPlayerControlView.findViewById(o.T);
        View findViewById = styledPlayerControlView.findViewById(o.H);
        this.f18939j = findViewById;
        this.f18935f = (ViewGroup) styledPlayerControlView.findViewById(o.f18863d);
        this.f18936g = (ViewGroup) styledPlayerControlView.findViewById(o.f18874o);
        this.f18937h = (ViewGroup) styledPlayerControlView.findViewById(o.f18875p);
        View findViewById2 = styledPlayerControlView.findViewById(o.f18885z);
        this.f18940k = findViewById2;
        View findViewById3 = styledPlayerControlView.findViewById(o.f18884y);
        if (findViewById2 != null && findViewById3 != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.r0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    t0.this.T(view);
                }
            });
            findViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.r0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    t0.this.T(view);
                }
            });
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.s0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                t0.this.J(valueAnimator);
            }
        });
        ofFloat.addListener(new a());
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.h0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                t0.this.K(valueAnimator);
            }
        });
        ofFloat2.addListener(new b());
        Resources resources = styledPlayerControlView.getResources();
        float dimension = resources.getDimension(l.f18834b) - resources.getDimension(l.f18835c);
        float dimension2 = resources.getDimension(l.f18834b);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f18941l = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new c(styledPlayerControlView));
        animatorSet.play(ofFloat).with(N(0.0f, dimension, findViewById)).with(N(0.0f, dimension, viewGroup));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f18942m = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new d(styledPlayerControlView));
        animatorSet2.play(N(dimension, dimension2, findViewById)).with(N(dimension, dimension2, viewGroup));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f18943n = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new e(styledPlayerControlView));
        animatorSet3.play(ofFloat).with(N(0.0f, dimension2, findViewById)).with(N(0.0f, dimension2, viewGroup));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f18944o = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new f());
        animatorSet4.play(ofFloat2).with(N(dimension, 0.0f, findViewById)).with(N(dimension, 0.0f, viewGroup));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.f18945p = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new g());
        animatorSet5.play(ofFloat2).with(N(dimension2, 0.0f, findViewById)).with(N(dimension2, 0.0f, viewGroup));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f18946q = ofFloat3;
        ofFloat3.setDuration(250L);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.k0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                t0.this.L(valueAnimator);
            }
        });
        ofFloat3.addListener(new h());
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f18947r = ofFloat4;
        ofFloat4.setDuration(250L);
        ofFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.l0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                t0.this.M(valueAnimator);
            }
        });
        ofFloat4.addListener(new i());
    }

    private static int B(@Nullable View view) {
        if (view == null) {
            return 0;
        }
        int width = view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return width + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
        }
        return width;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        this.f18943n.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        Z(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        this.f18941l.start();
        U(this.f18950u, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        this.f18942m.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f18931b;
        if (view != null) {
            view.setAlpha(floatValue);
        }
        ViewGroup viewGroup = this.f18932c;
        if (viewGroup != null) {
            viewGroup.setAlpha(floatValue);
        }
        ViewGroup viewGroup2 = this.f18934e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f18931b;
        if (view != null) {
            view.setAlpha(floatValue);
        }
        ViewGroup viewGroup = this.f18932c;
        if (viewGroup != null) {
            viewGroup.setAlpha(floatValue);
        }
        ViewGroup viewGroup2 = this.f18934e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(ValueAnimator valueAnimator) {
        y(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M(ValueAnimator valueAnimator) {
        y(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private static ObjectAnimator N(float f10, float f11, View view) {
        return ObjectAnimator.ofFloat(view, "translationY", f10, f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        boolean z10;
        boolean e02 = e0();
        if (this.A != e02) {
            this.A = e02;
            view.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.i0
                @Override // java.lang.Runnable
                public final void run() {
                    t0.this.d0();
                }
            });
        }
        if (i12 - i10 != i16 - i14) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!this.A && z10) {
            view.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.j0
                @Override // java.lang.Runnable
                public final void run() {
                    t0.this.S();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        int i10;
        if (this.f18935f != null && this.f18936g != null) {
            int width = (this.f18930a.getWidth() - this.f18930a.getPaddingLeft()) - this.f18930a.getPaddingRight();
            while (true) {
                if (this.f18936g.getChildCount() <= 1) {
                    break;
                }
                int childCount = this.f18936g.getChildCount() - 2;
                View childAt = this.f18936g.getChildAt(childCount);
                this.f18936g.removeViewAt(childCount);
                this.f18935f.addView(childAt, 0);
            }
            View view = this.f18940k;
            if (view != null) {
                view.setVisibility(8);
            }
            int B = B(this.f18938i);
            int childCount2 = this.f18935f.getChildCount() - 1;
            for (int i11 = 0; i11 < childCount2; i11++) {
                B += B(this.f18935f.getChildAt(i11));
            }
            if (B > width) {
                View view2 = this.f18940k;
                if (view2 != null) {
                    view2.setVisibility(0);
                    B += B(this.f18940k);
                }
                ArrayList arrayList = new ArrayList();
                for (int i12 = 0; i12 < childCount2; i12++) {
                    View childAt2 = this.f18935f.getChildAt(i12);
                    B -= B(childAt2);
                    arrayList.add(childAt2);
                    if (B <= width) {
                        break;
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.f18935f.removeViews(0, arrayList.size());
                    for (i10 = 0; i10 < arrayList.size(); i10++) {
                        this.f18936g.addView((View) arrayList.get(i10), this.f18936g.getChildCount() - 1);
                    }
                    return;
                }
                return;
            }
            ViewGroup viewGroup = this.f18937h;
            if (viewGroup != null && viewGroup.getVisibility() == 0 && !this.f18947r.isStarted()) {
                this.f18946q.cancel();
                this.f18947r.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(View view) {
        W();
        if (view.getId() == o.f18885z) {
            this.f18946q.start();
        } else if (view.getId() == o.f18884y) {
            this.f18947r.start();
        }
    }

    private void U(Runnable runnable, long j10) {
        if (j10 >= 0) {
            this.f18930a.postDelayed(runnable, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(int i10) {
        int i11 = this.f18955z;
        this.f18955z = i10;
        if (i10 == 2) {
            this.f18930a.setVisibility(8);
        } else if (i11 == 2) {
            this.f18930a.setVisibility(0);
        }
        if (i11 != i10) {
            this.f18930a.i0();
        }
    }

    private boolean a0(View view) {
        int id2 = view.getId();
        if (id2 != o.f18864e && id2 != o.G && id2 != o.f18883x && id2 != o.K && id2 != o.L && id2 != o.f18876q && id2 != o.f18877r) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0() {
        if (!this.C) {
            Z(0);
            W();
            return;
        }
        int i10 = this.f18955z;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return;
                    }
                } else {
                    this.B = true;
                }
            } else {
                this.f18945p.start();
            }
        } else {
            this.f18944o.start();
        }
        W();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0() {
        int i10;
        int i11;
        ViewGroup viewGroup = this.f18934e;
        if (viewGroup != null) {
            if (this.A) {
                i11 = 0;
            } else {
                i11 = 4;
            }
            viewGroup.setVisibility(i11);
        }
        if (this.f18939j != null) {
            int dimensionPixelSize = this.f18930a.getResources().getDimensionPixelSize(l.f18836d);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f18939j.getLayoutParams();
            if (marginLayoutParams != null) {
                if (this.A) {
                    dimensionPixelSize = 0;
                }
                marginLayoutParams.bottomMargin = dimensionPixelSize;
                this.f18939j.setLayoutParams(marginLayoutParams);
            }
            View view = this.f18939j;
            if (view instanceof DefaultTimeBar) {
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view;
                if (this.A) {
                    defaultTimeBar.h(true);
                } else {
                    int i12 = this.f18955z;
                    if (i12 == 1) {
                        defaultTimeBar.h(false);
                    } else if (i12 != 3) {
                        defaultTimeBar.s();
                    }
                }
            }
        }
        for (View view2 : this.f18954y) {
            if (this.A && a0(view2)) {
                i10 = 4;
            } else {
                i10 = 0;
            }
            view2.setVisibility(i10);
        }
    }

    private boolean e0() {
        int i10;
        int i11;
        int width = (this.f18930a.getWidth() - this.f18930a.getPaddingLeft()) - this.f18930a.getPaddingRight();
        int height = (this.f18930a.getHeight() - this.f18930a.getPaddingBottom()) - this.f18930a.getPaddingTop();
        int B = B(this.f18932c);
        ViewGroup viewGroup = this.f18932c;
        if (viewGroup != null) {
            i10 = viewGroup.getPaddingLeft() + this.f18932c.getPaddingRight();
        } else {
            i10 = 0;
        }
        int i12 = B - i10;
        int z10 = z(this.f18932c);
        ViewGroup viewGroup2 = this.f18932c;
        if (viewGroup2 != null) {
            i11 = viewGroup2.getPaddingTop() + this.f18932c.getPaddingBottom();
        } else {
            i11 = 0;
        }
        int max = Math.max(i12, B(this.f18938i) + B(this.f18940k));
        int z11 = (z10 - i11) + (z(this.f18933d) * 2);
        if (width > max && height > z11) {
            return false;
        }
        return true;
    }

    private void y(float f10) {
        ViewGroup viewGroup = this.f18937h;
        if (viewGroup != null) {
            this.f18937h.setTranslationX((int) (viewGroup.getWidth() * (1.0f - f10)));
        }
        ViewGroup viewGroup2 = this.f18938i;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f10);
        }
        ViewGroup viewGroup3 = this.f18935f;
        if (viewGroup3 != null) {
            viewGroup3.setAlpha(1.0f - f10);
        }
    }

    private static int z(@Nullable View view) {
        if (view == null) {
            return 0;
        }
        int height = view.getHeight();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return height + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        return height;
    }

    public boolean A(@Nullable View view) {
        if (view != null && this.f18954y.contains(view)) {
            return true;
        }
        return false;
    }

    public void C() {
        int i10 = this.f18955z;
        if (i10 != 3 && i10 != 2) {
            V();
            if (!this.C) {
                E();
            } else if (this.f18955z == 1) {
                H();
            } else {
                D();
            }
        }
    }

    public void F() {
        int i10 = this.f18955z;
        if (i10 != 3 && i10 != 2) {
            V();
            E();
        }
    }

    public boolean I() {
        if (this.f18955z == 0 && this.f18930a.h0()) {
            return true;
        }
        return false;
    }

    public void O() {
        this.f18930a.addOnLayoutChangeListener(this.f18953x);
    }

    public void P() {
        this.f18930a.removeOnLayoutChangeListener(this.f18953x);
    }

    public void Q(boolean z10, int i10, int i11, int i12, int i13) {
        View view = this.f18931b;
        if (view != null) {
            view.layout(0, 0, i12 - i10, i13 - i11);
        }
    }

    public void V() {
        this.f18930a.removeCallbacks(this.f18952w);
        this.f18930a.removeCallbacks(this.f18949t);
        this.f18930a.removeCallbacks(this.f18951v);
        this.f18930a.removeCallbacks(this.f18950u);
    }

    public void W() {
        if (this.f18955z == 3) {
            return;
        }
        V();
        int showTimeoutMs = this.f18930a.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.C) {
                U(this.f18952w, showTimeoutMs);
            } else if (this.f18955z == 1) {
                U(this.f18950u, 2000L);
            } else {
                U(this.f18951v, showTimeoutMs);
            }
        }
    }

    public void X(boolean z10) {
        this.C = z10;
    }

    public void Y(@Nullable View view, boolean z10) {
        if (view == null) {
            return;
        }
        if (!z10) {
            view.setVisibility(8);
            this.f18954y.remove(view);
            return;
        }
        if (this.A && a0(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        this.f18954y.add(view);
    }

    public void b0() {
        if (!this.f18930a.h0()) {
            this.f18930a.setVisibility(0);
            this.f18930a.s0();
            this.f18930a.n0();
        }
        c0();
    }
}
