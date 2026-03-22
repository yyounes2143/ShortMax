package ec;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.animation.DecelerateInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* compiled from: AnimProcessor.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private TwinklingRefreshLayout.d f51283a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f51285c = false;

    /* renamed from: d  reason: collision with root package name */
    private boolean f51286d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f51287e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f51288f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f51289g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f51290h = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f51291i = false;

    /* renamed from: j  reason: collision with root package name */
    private boolean f51292j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f51293k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f51294l = false;

    /* renamed from: m  reason: collision with root package name */
    private boolean f51295m = false;

    /* renamed from: n  reason: collision with root package name */
    private boolean f51296n = false;

    /* renamed from: o  reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f51297o = new C0736a();

    /* renamed from: p  reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f51298p = new b();

    /* renamed from: q  reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f51299q = new c();

    /* renamed from: r  reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f51300r = new d();

    /* renamed from: b  reason: collision with root package name */
    private DecelerateInterpolator f51284b = new DecelerateInterpolator(8.0f);

    /* compiled from: AnimProcessor.java */
    /* renamed from: ec.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class C0736a implements ValueAnimator.AnimatorUpdateListener {
        C0736a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (a.this.f51285c && a.this.f51283a.y()) {
                a.this.N(intValue);
            } else {
                a.this.f51283a.r().getLayoutParams().height = intValue;
                a.this.f51283a.r().requestLayout();
                a.this.f51283a.r().setTranslationY(0.0f);
                a.this.f51283a.Q(intValue);
            }
            if (!a.this.f51283a.C()) {
                a.this.f51283a.v().setTranslationY(intValue);
                a.this.O(intValue);
            }
        }
    }

    /* compiled from: AnimProcessor.java */
    /* loaded from: classes5.dex */
    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (a.this.f51286d && a.this.f51283a.y()) {
                a.this.M(intValue);
            } else {
                a.this.f51283a.p().getLayoutParams().height = intValue;
                a.this.f51283a.p().requestLayout();
                a.this.f51283a.p().setTranslationY(0.0f);
                a.this.f51283a.R(intValue);
            }
            a.this.f51283a.v().setTranslationY(-intValue);
        }
    }

    /* compiled from: AnimProcessor.java */
    /* loaded from: classes5.dex */
    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (a.this.f51283a.E()) {
                if (a.this.f51283a.r().getVisibility() != 0) {
                    a.this.f51283a.r().setVisibility(0);
                }
            } else if (a.this.f51283a.r().getVisibility() != 8) {
                a.this.f51283a.r().setVisibility(8);
            }
            if (a.this.f51285c && a.this.f51283a.y()) {
                a.this.N(intValue);
            } else {
                a.this.f51283a.r().setTranslationY(0.0f);
                a.this.f51283a.r().getLayoutParams().height = intValue;
                a.this.f51283a.r().requestLayout();
                a.this.f51283a.Q(intValue);
            }
            a.this.f51283a.v().setTranslationY(intValue);
            a.this.O(intValue);
        }
    }

    /* compiled from: AnimProcessor.java */
    /* loaded from: classes5.dex */
    class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (a.this.f51283a.D()) {
                if (a.this.f51283a.p().getVisibility() != 0) {
                    a.this.f51283a.p().setVisibility(0);
                }
            } else if (a.this.f51283a.p().getVisibility() != 8) {
                a.this.f51283a.p().setVisibility(8);
            }
            if (a.this.f51286d && a.this.f51283a.y()) {
                a.this.M(intValue);
            } else {
                a.this.f51283a.p().getLayoutParams().height = intValue;
                a.this.f51283a.p().requestLayout();
                a.this.f51283a.p().setTranslationY(0.0f);
                a.this.f51283a.R(intValue);
            }
            a.this.f51283a.v().setTranslationY(-intValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimProcessor.java */
    /* loaded from: classes5.dex */
    public class e extends AnimatorListenerAdapter {
        e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f51287e = false;
            if (a.this.f51283a.r().getVisibility() != 0) {
                a.this.f51283a.r().setVisibility(0);
            }
            a.this.f51283a.c0(true);
            if (a.this.f51283a.y()) {
                if (!a.this.f51285c) {
                    a.this.f51283a.d0(true);
                    a.this.f51283a.U();
                    a.this.f51285c = true;
                    return;
                }
                return;
            }
            a.this.f51283a.d0(true);
            a.this.f51283a.U();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimProcessor.java */
    /* loaded from: classes5.dex */
    public class f extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f51306a;

        f(boolean z10) {
            this.f51306a = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f51288f = false;
            a.this.f51283a.c0(false);
            if (this.f51306a && a.this.f51285c && a.this.f51283a.y()) {
                a.this.f51283a.r().getLayoutParams().height = 0;
                a.this.f51283a.r().requestLayout();
                a.this.f51283a.r().setTranslationY(0.0f);
                a.this.f51285c = false;
                a.this.f51283a.d0(false);
                a.this.f51283a.X();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimProcessor.java */
    /* loaded from: classes5.dex */
    public class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f51289g = false;
            if (a.this.f51283a.p().getVisibility() != 0) {
                a.this.f51283a.p().setVisibility(0);
            }
            a.this.f51283a.Y(true);
            if (a.this.f51283a.y()) {
                if (!a.this.f51286d) {
                    a.this.f51283a.Z(true);
                    a.this.f51283a.O();
                    a.this.f51286d = true;
                    return;
                }
                return;
            }
            a.this.f51283a.Z(true);
            a.this.f51283a.O();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimProcessor.java */
    /* loaded from: classes5.dex */
    public class h implements ValueAnimator.AnimatorUpdateListener {
        h() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int I;
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (!fc.c.g(a.this.f51283a.v(), a.this.f51283a.w()) && (I = a.this.I() - intValue) > 0) {
                if (a.this.f51283a.v() instanceof RecyclerView) {
                    fc.c.j(a.this.f51283a.v(), I);
                } else {
                    fc.c.j(a.this.f51283a.v(), I / 2);
                }
            }
            a.this.f51298p.onAnimationUpdate(valueAnimator);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimProcessor.java */
    /* loaded from: classes5.dex */
    public class i extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f51310a;

        i(boolean z10) {
            this.f51310a = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f51290h = false;
            a.this.f51283a.Y(false);
            if (this.f51310a && a.this.f51286d && a.this.f51283a.y()) {
                a.this.f51283a.p().getLayoutParams().height = 0;
                a.this.f51283a.p().requestLayout();
                a.this.f51283a.p().setTranslationY(0.0f);
                a.this.f51286d = false;
                a.this.f51283a.W();
                a.this.f51283a.Z(false);
            }
        }
    }

    /* compiled from: AnimProcessor.java */
    /* loaded from: classes5.dex */
    class j extends AnimatorListenerAdapter {
        j() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f51291i = false;
            a.this.f51283a.c0(false);
            if (!a.this.f51283a.y()) {
                a.this.f51283a.d0(false);
                a.this.f51283a.V();
                a.this.f51283a.X();
            }
        }
    }

    /* compiled from: AnimProcessor.java */
    /* loaded from: classes5.dex */
    class k extends AnimatorListenerAdapter {
        k() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f51292j = false;
            a.this.f51283a.Y(false);
            if (!a.this.f51283a.y()) {
                a.this.f51283a.Z(false);
                a.this.f51283a.P();
                a.this.f51283a.W();
            }
        }
    }

    /* compiled from: AnimProcessor.java */
    /* loaded from: classes5.dex */
    class l extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f51314a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f51315b;

        /* compiled from: AnimProcessor.java */
        /* renamed from: ec.a$l$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0737a extends AnimatorListenerAdapter {
            C0737a() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                a.this.f51293k = false;
                a.this.f51294l = false;
            }
        }

        l(int i10, int i11) {
            this.f51314a = i10;
            this.f51315b = i11;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (a.this.f51285c && a.this.f51283a.y() && a.this.f51283a.h0()) {
                a.this.B();
                a.this.f51293k = false;
                a.this.f51294l = false;
                return;
            }
            a aVar = a.this;
            aVar.C(this.f51314a, 0, this.f51315b * 2, aVar.f51299q, new C0737a());
        }
    }

    /* compiled from: AnimProcessor.java */
    /* loaded from: classes5.dex */
    class m extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f51318a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f51319b;

        /* compiled from: AnimProcessor.java */
        /* renamed from: ec.a$m$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0738a extends AnimatorListenerAdapter {
            C0738a() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                a.this.f51295m = false;
                a.this.f51296n = false;
            }
        }

        m(int i10, int i11) {
            this.f51318a = i10;
            this.f51319b = i11;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (a.this.f51286d && a.this.f51283a.y() && a.this.f51283a.g0()) {
                a.this.y();
                a.this.f51295m = false;
                a.this.f51296n = false;
                return;
            }
            a aVar = a.this;
            aVar.C(this.f51318a, 0, this.f51319b * 2, aVar.f51300r, new C0738a());
        }
    }

    public a(TwinklingRefreshLayout.d dVar) {
        this.f51283a = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int I() {
        fc.b.a("footer translationY:" + this.f51283a.p().getTranslationY() + "");
        return (int) (this.f51283a.p().getLayoutParams().height - this.f51283a.p().getTranslationY());
    }

    private int J() {
        fc.b.a("header translationY:" + this.f51283a.r().getTranslationY() + ",Visible head height:" + (this.f51283a.r().getLayoutParams().height + this.f51283a.r().getTranslationY()));
        return (int) (this.f51283a.r().getLayoutParams().height + this.f51283a.r().getTranslationY());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(float f10) {
        this.f51283a.p().setTranslationY(this.f51283a.p().getLayoutParams().height - f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(float f10) {
        this.f51283a.r().setTranslationY(f10 - this.f51283a.r().getLayoutParams().height);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(int i10) {
        if (!this.f51283a.z()) {
            this.f51283a.o().setTranslationY(i10);
        }
    }

    public void A(int i10) {
        if (this.f51291i) {
            return;
        }
        this.f51291i = true;
        fc.b.a("animHeadHideByVy：vy->" + i10);
        int abs = Math.abs(i10);
        if (abs < 5000) {
            abs = 8000;
        }
        C(J(), 0, Math.abs((J() * 1000) / abs) * 5, this.f51297o, new j());
    }

    public void B() {
        fc.b.a("animHeadToRefresh:");
        this.f51287e = true;
        D(J(), this.f51283a.q(), this.f51297o, new e());
    }

    public void C(int i10, int i11, long j10, ValueAnimator.AnimatorUpdateListener animatorUpdateListener, Animator.AnimatorListener animatorListener) {
        ValueAnimator ofInt = ValueAnimator.ofInt(i10, i11);
        ofInt.setInterpolator(new DecelerateInterpolator());
        ofInt.addUpdateListener(animatorUpdateListener);
        ofInt.addListener(animatorListener);
        ofInt.setDuration(j10);
        ofInt.start();
    }

    public void D(int i10, int i11, ValueAnimator.AnimatorUpdateListener animatorUpdateListener, Animator.AnimatorListener animatorListener) {
        ValueAnimator ofInt = ValueAnimator.ofInt(i10, i11);
        ofInt.setInterpolator(new DecelerateInterpolator());
        ofInt.addUpdateListener(animatorUpdateListener);
        ofInt.addListener(animatorListener);
        ofInt.setDuration((int) (Math.abs(i10 - i11) * 1.0f));
        ofInt.start();
    }

    public void E(float f10, int i10) {
        int i11;
        fc.b.a("animOverScrollBottom：vy->" + f10 + ",computeTimes->" + i10);
        if (this.f51296n) {
            return;
        }
        this.f51283a.e0();
        int abs = (int) Math.abs((f10 / i10) / 2.0f);
        if (abs > this.f51283a.u()) {
            abs = this.f51283a.u();
        }
        int i12 = abs;
        if (i12 <= 50) {
            i11 = 115;
        } else {
            i11 = (int) ((i12 * 0.3d) + 100.0d);
        }
        if (!this.f51286d && this.f51283a.e()) {
            this.f51283a.i0();
            return;
        }
        this.f51296n = true;
        this.f51295m = true;
        C(0, i12, i11, this.f51300r, new m(i12, i11));
    }

    public void F(float f10, int i10) {
        int i11;
        fc.b.a("animOverScrollTop：vy->" + f10 + ",computeTimes->" + i10);
        if (this.f51294l) {
            return;
        }
        this.f51294l = true;
        this.f51293k = true;
        this.f51283a.f0();
        int abs = (int) Math.abs((f10 / i10) / 2.0f);
        if (abs > this.f51283a.u()) {
            abs = this.f51283a.u();
        }
        int i12 = abs;
        if (i12 <= 50) {
            i11 = 115;
        } else {
            i11 = (int) ((i12 * 0.3d) + 100.0d);
        }
        C(J(), i12, i11, this.f51299q, new l(i12, i11));
    }

    public void G() {
        if (!this.f51283a.H() && this.f51283a.i() && J() >= this.f51283a.q() - this.f51283a.w()) {
            B();
        } else {
            z(false);
        }
    }

    public void H() {
        if (!this.f51283a.H() && this.f51283a.g() && I() >= this.f51283a.n() - this.f51283a.w()) {
            y();
        } else {
            w(false);
        }
    }

    public void K(float f10) {
        float interpolation = (this.f51284b.getInterpolation((f10 / this.f51283a.s()) / 2.0f) * f10) / 2.0f;
        if (!this.f51283a.H() && (this.f51283a.g() || this.f51283a.D())) {
            if (this.f51283a.p().getVisibility() != 0) {
                this.f51283a.p().setVisibility(0);
            }
        } else if (this.f51283a.p().getVisibility() != 8) {
            this.f51283a.p().setVisibility(8);
        }
        if (this.f51286d && this.f51283a.y()) {
            this.f51283a.p().setTranslationY(this.f51283a.p().getLayoutParams().height - interpolation);
        } else {
            this.f51283a.p().setTranslationY(0.0f);
            this.f51283a.p().getLayoutParams().height = (int) Math.abs(interpolation);
            this.f51283a.p().requestLayout();
            this.f51283a.T(-interpolation);
        }
        this.f51283a.v().setTranslationY(-interpolation);
    }

    public void L(float f10) {
        float interpolation = (this.f51284b.getInterpolation((f10 / this.f51283a.t()) / 2.0f) * f10) / 2.0f;
        if (!this.f51283a.H() && (this.f51283a.i() || this.f51283a.E())) {
            if (this.f51283a.r().getVisibility() != 0) {
                this.f51283a.r().setVisibility(0);
            }
        } else if (this.f51283a.r().getVisibility() != 8) {
            this.f51283a.r().setVisibility(8);
        }
        if (this.f51285c && this.f51283a.y()) {
            this.f51283a.r().setTranslationY(interpolation - this.f51283a.r().getLayoutParams().height);
        } else {
            this.f51283a.r().setTranslationY(0.0f);
            this.f51283a.r().getLayoutParams().height = (int) Math.abs(interpolation);
            this.f51283a.r().requestLayout();
            this.f51283a.S(interpolation);
        }
        if (!this.f51283a.C()) {
            this.f51283a.v().setTranslationY(interpolation);
            O((int) interpolation);
        }
    }

    public void w(boolean z10) {
        fc.b.a("animBottomBack：finishLoading?->" + z10);
        this.f51290h = true;
        if (z10 && this.f51286d && this.f51283a.y()) {
            this.f51283a.a0(true);
        }
        D(I(), 0, new h(), new i(z10));
    }

    public void x(int i10) {
        fc.b.a("animBottomHideByVy：vy->" + i10);
        if (this.f51292j) {
            return;
        }
        this.f51292j = true;
        int abs = Math.abs(i10);
        if (abs < 5000) {
            abs = 8000;
        }
        C(I(), 0, (I() * 5000) / abs, this.f51298p, new k());
    }

    public void y() {
        fc.b.a("animBottomToLoad");
        this.f51289g = true;
        D(I(), this.f51283a.n(), this.f51298p, new g());
    }

    public void z(boolean z10) {
        fc.b.a("animHeadBack：finishRefresh?->" + z10);
        this.f51288f = true;
        if (z10 && this.f51285c && this.f51283a.y()) {
            this.f51283a.b0(true);
        }
        D(J(), 0, this.f51297o, new f(z10));
    }
}
