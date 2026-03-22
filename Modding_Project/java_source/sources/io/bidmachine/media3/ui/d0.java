package io.bidmachine.media3.ui;

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
/* compiled from: PlayerControlViewLayoutManager.java */
/* loaded from: classes8.dex */
public final class d0 {
    private boolean A;
    private boolean B;

    /* renamed from: a  reason: collision with root package name */
    private final PlayerControlView f57752a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final View f57753b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final ViewGroup f57754c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final ViewGroup f57755d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final ViewGroup f57756e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final ViewGroup f57757f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final ViewGroup f57758g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final ViewGroup f57759h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final ViewGroup f57760i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final View f57761j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final View f57762k;

    /* renamed from: l  reason: collision with root package name */
    private final AnimatorSet f57763l;

    /* renamed from: m  reason: collision with root package name */
    private final AnimatorSet f57764m;

    /* renamed from: n  reason: collision with root package name */
    private final AnimatorSet f57765n;

    /* renamed from: o  reason: collision with root package name */
    private final AnimatorSet f57766o;

    /* renamed from: p  reason: collision with root package name */
    private final AnimatorSet f57767p;

    /* renamed from: q  reason: collision with root package name */
    private final ValueAnimator f57768q;

    /* renamed from: r  reason: collision with root package name */
    private final ValueAnimator f57769r;

    /* renamed from: s  reason: collision with root package name */
    private final Runnable f57770s = new Runnable() { // from class: io.bidmachine.media3.ui.q
        @Override // java.lang.Runnable
        public final void run() {
            d0.this.c0();
        }
    };

    /* renamed from: t  reason: collision with root package name */
    private final Runnable f57771t = new Runnable() { // from class: io.bidmachine.media3.ui.w
        @Override // java.lang.Runnable
        public final void run() {
            d0.this.D();
        }
    };

    /* renamed from: u  reason: collision with root package name */
    private final Runnable f57772u = new Runnable() { // from class: io.bidmachine.media3.ui.x
        @Override // java.lang.Runnable
        public final void run() {
            d0.this.H();
        }
    };

    /* renamed from: v  reason: collision with root package name */
    private final Runnable f57773v = new Runnable() { // from class: io.bidmachine.media3.ui.y
        @Override // java.lang.Runnable
        public final void run() {
            d0.this.G();
        }
    };

    /* renamed from: w  reason: collision with root package name */
    private final Runnable f57774w = new Runnable() { // from class: io.bidmachine.media3.ui.z
        @Override // java.lang.Runnable
        public final void run() {
            d0.this.E();
        }
    };

    /* renamed from: x  reason: collision with root package name */
    private final View.OnLayoutChangeListener f57775x = new View.OnLayoutChangeListener() { // from class: io.bidmachine.media3.ui.a0
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            d0.this.R(view, i10, i11, i12, i13, i14, i15, i16, i17);
        }
    };
    private boolean C = true;

    /* renamed from: z  reason: collision with root package name */
    private int f57777z = 0;

    /* renamed from: y  reason: collision with root package name */
    private final List<View> f57776y = new ArrayList();

    /* compiled from: PlayerControlViewLayoutManager.java */
    /* loaded from: classes8.dex */
    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (d0.this.f57753b != null) {
                d0.this.f57753b.setVisibility(4);
            }
            if (d0.this.f57754c != null) {
                d0.this.f57754c.setVisibility(4);
            }
            if (d0.this.f57756e != null) {
                d0.this.f57756e.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if ((d0.this.f57761j instanceof DefaultTimeBar) && !d0.this.A) {
                ((DefaultTimeBar) d0.this.f57761j).g(250L);
            }
        }
    }

    /* compiled from: PlayerControlViewLayoutManager.java */
    /* loaded from: classes8.dex */
    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            int i10 = 0;
            if (d0.this.f57753b != null) {
                d0.this.f57753b.setVisibility(0);
            }
            if (d0.this.f57754c != null) {
                d0.this.f57754c.setVisibility(0);
            }
            if (d0.this.f57756e != null) {
                ViewGroup viewGroup = d0.this.f57756e;
                if (!d0.this.A) {
                    i10 = 4;
                }
                viewGroup.setVisibility(i10);
            }
            if ((d0.this.f57761j instanceof DefaultTimeBar) && !d0.this.A) {
                ((DefaultTimeBar) d0.this.f57761j).t(250L);
            }
        }
    }

    /* compiled from: PlayerControlViewLayoutManager.java */
    /* loaded from: classes8.dex */
    class c extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PlayerControlView f57780a;

        c(PlayerControlView playerControlView) {
            this.f57780a = playerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d0.this.Z(1);
            if (d0.this.B) {
                this.f57780a.post(d0.this.f57770s);
                d0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d0.this.Z(3);
        }
    }

    /* compiled from: PlayerControlViewLayoutManager.java */
    /* loaded from: classes8.dex */
    class d extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PlayerControlView f57782a;

        d(PlayerControlView playerControlView) {
            this.f57782a = playerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d0.this.Z(2);
            if (d0.this.B) {
                this.f57782a.post(d0.this.f57770s);
                d0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d0.this.Z(3);
        }
    }

    /* compiled from: PlayerControlViewLayoutManager.java */
    /* loaded from: classes8.dex */
    class e extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PlayerControlView f57784a;

        e(PlayerControlView playerControlView) {
            this.f57784a = playerControlView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d0.this.Z(2);
            if (d0.this.B) {
                this.f57784a.post(d0.this.f57770s);
                d0.this.B = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d0.this.Z(3);
        }
    }

    /* compiled from: PlayerControlViewLayoutManager.java */
    /* loaded from: classes8.dex */
    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d0.this.Z(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d0.this.Z(4);
        }
    }

    /* compiled from: PlayerControlViewLayoutManager.java */
    /* loaded from: classes8.dex */
    class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d0.this.Z(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d0.this.Z(4);
        }
    }

    /* compiled from: PlayerControlViewLayoutManager.java */
    /* loaded from: classes8.dex */
    class h extends AnimatorListenerAdapter {
        h() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (d0.this.f57757f != null) {
                d0.this.f57757f.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (d0.this.f57759h != null) {
                d0.this.f57759h.setVisibility(0);
                d0.this.f57759h.setTranslationX(d0.this.f57759h.getWidth());
                d0.this.f57759h.scrollTo(d0.this.f57759h.getWidth(), 0);
            }
        }
    }

    /* compiled from: PlayerControlViewLayoutManager.java */
    /* loaded from: classes8.dex */
    class i extends AnimatorListenerAdapter {
        i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (d0.this.f57759h != null) {
                d0.this.f57759h.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (d0.this.f57757f != null) {
                d0.this.f57757f.setVisibility(0);
            }
        }
    }

    public d0(PlayerControlView playerControlView) {
        this.f57752a = playerControlView;
        this.f57753b = playerControlView.findViewById(v0.f57886l);
        this.f57754c = (ViewGroup) playerControlView.findViewById(v0.f57881g);
        this.f57756e = (ViewGroup) playerControlView.findViewById(v0.f57897w);
        ViewGroup viewGroup = (ViewGroup) playerControlView.findViewById(v0.f57879e);
        this.f57755d = viewGroup;
        this.f57760i = (ViewGroup) playerControlView.findViewById(v0.U);
        View findViewById = playerControlView.findViewById(v0.I);
        this.f57761j = findViewById;
        this.f57757f = (ViewGroup) playerControlView.findViewById(v0.f57878d);
        this.f57758g = (ViewGroup) playerControlView.findViewById(v0.f57889o);
        this.f57759h = (ViewGroup) playerControlView.findViewById(v0.f57890p);
        View findViewById2 = playerControlView.findViewById(v0.A);
        this.f57762k = findViewById2;
        View findViewById3 = playerControlView.findViewById(v0.f57900z);
        if (findViewById2 != null && findViewById3 != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.media3.ui.b0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d0.this.T(view);
                }
            });
            findViewById3.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.media3.ui.b0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d0.this.T(view);
                }
            });
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: io.bidmachine.media3.ui.c0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                d0.this.J(valueAnimator);
            }
        });
        ofFloat.addListener(new a());
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: io.bidmachine.media3.ui.r
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                d0.this.K(valueAnimator);
            }
        });
        ofFloat2.addListener(new b());
        Resources resources = playerControlView.getResources();
        float dimension = resources.getDimension(s0.f57844b) - resources.getDimension(s0.f57845c);
        float dimension2 = resources.getDimension(s0.f57844b);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f57763l = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new c(playerControlView));
        animatorSet.play(ofFloat).with(N(0.0f, dimension, findViewById)).with(N(0.0f, dimension, viewGroup));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f57764m = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new d(playerControlView));
        animatorSet2.play(N(dimension, dimension2, findViewById)).with(N(dimension, dimension2, viewGroup));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f57765n = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new e(playerControlView));
        animatorSet3.play(ofFloat).with(N(0.0f, dimension2, findViewById)).with(N(0.0f, dimension2, viewGroup));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f57766o = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new f());
        animatorSet4.play(ofFloat2).with(N(dimension, 0.0f, findViewById)).with(N(dimension, 0.0f, viewGroup));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.f57767p = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new g());
        animatorSet5.play(ofFloat2).with(N(dimension2, 0.0f, findViewById)).with(N(dimension2, 0.0f, viewGroup));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f57768q = ofFloat3;
        ofFloat3.setDuration(250L);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: io.bidmachine.media3.ui.u
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                d0.this.L(valueAnimator);
            }
        });
        ofFloat3.addListener(new h());
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f57769r = ofFloat4;
        ofFloat4.setDuration(250L);
        ofFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: io.bidmachine.media3.ui.v
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                d0.this.M(valueAnimator);
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
        this.f57765n.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        Z(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        this.f57763l.start();
        U(this.f57772u, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        this.f57764m.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f57753b;
        if (view != null) {
            view.setAlpha(floatValue);
        }
        ViewGroup viewGroup = this.f57754c;
        if (viewGroup != null) {
            viewGroup.setAlpha(floatValue);
        }
        ViewGroup viewGroup2 = this.f57756e;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.f57753b;
        if (view != null) {
            view.setAlpha(floatValue);
        }
        ViewGroup viewGroup = this.f57754c;
        if (viewGroup != null) {
            viewGroup.setAlpha(floatValue);
        }
        ViewGroup viewGroup2 = this.f57756e;
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
            view.post(new Runnable() { // from class: io.bidmachine.media3.ui.s
                @Override // java.lang.Runnable
                public final void run() {
                    d0.this.d0();
                }
            });
        }
        if (i12 - i10 != i16 - i14) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!this.A && z10) {
            view.post(new Runnable() { // from class: io.bidmachine.media3.ui.t
                @Override // java.lang.Runnable
                public final void run() {
                    d0.this.S();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        int i10;
        if (this.f57757f != null && this.f57758g != null) {
            int width = (this.f57752a.getWidth() - this.f57752a.getPaddingLeft()) - this.f57752a.getPaddingRight();
            while (true) {
                if (this.f57758g.getChildCount() <= 1) {
                    break;
                }
                int childCount = this.f57758g.getChildCount() - 2;
                View childAt = this.f57758g.getChildAt(childCount);
                this.f57758g.removeViewAt(childCount);
                this.f57757f.addView(childAt, 0);
            }
            View view = this.f57762k;
            if (view != null) {
                view.setVisibility(8);
            }
            int B = B(this.f57760i);
            int childCount2 = this.f57757f.getChildCount() - 1;
            for (int i11 = 0; i11 < childCount2; i11++) {
                B += B(this.f57757f.getChildAt(i11));
            }
            if (B > width) {
                View view2 = this.f57762k;
                if (view2 != null) {
                    view2.setVisibility(0);
                    B += B(this.f57762k);
                }
                ArrayList arrayList = new ArrayList();
                for (int i12 = 0; i12 < childCount2; i12++) {
                    View childAt2 = this.f57757f.getChildAt(i12);
                    B -= B(childAt2);
                    arrayList.add(childAt2);
                    if (B <= width) {
                        break;
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.f57757f.removeViews(0, arrayList.size());
                    for (i10 = 0; i10 < arrayList.size(); i10++) {
                        this.f57758g.addView((View) arrayList.get(i10), this.f57758g.getChildCount() - 1);
                    }
                    return;
                }
                return;
            }
            ViewGroup viewGroup = this.f57759h;
            if (viewGroup != null && viewGroup.getVisibility() == 0 && !this.f57769r.isStarted()) {
                this.f57768q.cancel();
                this.f57769r.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(View view) {
        W();
        if (view.getId() == v0.A) {
            this.f57768q.start();
        } else if (view.getId() == v0.f57900z) {
            this.f57769r.start();
        }
    }

    private void U(Runnable runnable, long j10) {
        if (j10 >= 0) {
            this.f57752a.postDelayed(runnable, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(int i10) {
        int i11 = this.f57777z;
        this.f57777z = i10;
        if (i10 == 2) {
            this.f57752a.setVisibility(8);
        } else if (i11 == 2) {
            this.f57752a.setVisibility(0);
        }
        if (i11 != i10) {
            this.f57752a.f0();
        }
    }

    private boolean a0(View view) {
        int id2 = view.getId();
        if (id2 != v0.f57879e && id2 != v0.H && id2 != v0.f57899y && id2 != v0.L && id2 != v0.M && id2 != v0.f57891q && id2 != v0.f57892r) {
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
        int i10 = this.f57777z;
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
                this.f57767p.start();
            }
        } else {
            this.f57766o.start();
        }
        W();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0() {
        int i10;
        int i11;
        ViewGroup viewGroup = this.f57756e;
        if (viewGroup != null) {
            if (this.A) {
                i11 = 0;
            } else {
                i11 = 4;
            }
            viewGroup.setVisibility(i11);
        }
        if (this.f57761j != null) {
            int dimensionPixelSize = this.f57752a.getResources().getDimensionPixelSize(s0.f57846d);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f57761j.getLayoutParams();
            if (marginLayoutParams != null) {
                if (this.A) {
                    dimensionPixelSize = 0;
                }
                marginLayoutParams.bottomMargin = dimensionPixelSize;
                this.f57761j.setLayoutParams(marginLayoutParams);
            }
            View view = this.f57761j;
            if (view instanceof DefaultTimeBar) {
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) view;
                if (this.A) {
                    defaultTimeBar.h(true);
                } else {
                    int i12 = this.f57777z;
                    if (i12 == 1) {
                        defaultTimeBar.h(false);
                    } else if (i12 != 3) {
                        defaultTimeBar.s();
                    }
                }
            }
        }
        for (View view2 : this.f57776y) {
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
        int width = (this.f57752a.getWidth() - this.f57752a.getPaddingLeft()) - this.f57752a.getPaddingRight();
        int height = (this.f57752a.getHeight() - this.f57752a.getPaddingBottom()) - this.f57752a.getPaddingTop();
        int B = B(this.f57754c);
        ViewGroup viewGroup = this.f57754c;
        if (viewGroup != null) {
            i10 = viewGroup.getPaddingLeft() + this.f57754c.getPaddingRight();
        } else {
            i10 = 0;
        }
        int i12 = B - i10;
        int z10 = z(this.f57754c);
        ViewGroup viewGroup2 = this.f57754c;
        if (viewGroup2 != null) {
            i11 = viewGroup2.getPaddingTop() + this.f57754c.getPaddingBottom();
        } else {
            i11 = 0;
        }
        int max = Math.max(i12, B(this.f57760i) + B(this.f57762k));
        int z11 = (z10 - i11) + (z(this.f57755d) * 2);
        if (width > max && height > z11) {
            return false;
        }
        return true;
    }

    private void y(float f10) {
        ViewGroup viewGroup = this.f57759h;
        if (viewGroup != null) {
            this.f57759h.setTranslationX((int) (viewGroup.getWidth() * (1.0f - f10)));
        }
        ViewGroup viewGroup2 = this.f57760i;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f10);
        }
        ViewGroup viewGroup3 = this.f57757f;
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
        if (view != null && this.f57776y.contains(view)) {
            return true;
        }
        return false;
    }

    public void C() {
        int i10 = this.f57777z;
        if (i10 != 3 && i10 != 2) {
            V();
            if (!this.C) {
                E();
            } else if (this.f57777z == 1) {
                H();
            } else {
                D();
            }
        }
    }

    public void F() {
        int i10 = this.f57777z;
        if (i10 != 3 && i10 != 2) {
            V();
            E();
        }
    }

    public boolean I() {
        if (this.f57777z == 0 && this.f57752a.e0()) {
            return true;
        }
        return false;
    }

    public void O() {
        this.f57752a.addOnLayoutChangeListener(this.f57775x);
    }

    public void P() {
        this.f57752a.removeOnLayoutChangeListener(this.f57775x);
    }

    public void Q(boolean z10, int i10, int i11, int i12, int i13) {
        View view = this.f57753b;
        if (view != null) {
            view.layout(0, 0, i12 - i10, i13 - i11);
        }
    }

    public void V() {
        this.f57752a.removeCallbacks(this.f57774w);
        this.f57752a.removeCallbacks(this.f57771t);
        this.f57752a.removeCallbacks(this.f57773v);
        this.f57752a.removeCallbacks(this.f57772u);
    }

    public void W() {
        if (this.f57777z == 3) {
            return;
        }
        V();
        int showTimeoutMs = this.f57752a.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.C) {
                U(this.f57774w, showTimeoutMs);
            } else if (this.f57777z == 1) {
                U(this.f57772u, 2000L);
            } else {
                U(this.f57773v, showTimeoutMs);
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
            this.f57776y.remove(view);
            return;
        }
        if (this.A && a0(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        this.f57776y.add(view);
    }

    public void b0() {
        if (!this.f57752a.e0()) {
            this.f57752a.setVisibility(0);
            this.f57752a.n0();
            this.f57752a.k0();
        }
        c0();
    }
}
