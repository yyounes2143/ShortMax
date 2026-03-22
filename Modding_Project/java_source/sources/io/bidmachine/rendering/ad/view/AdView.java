package io.bidmachine.rendering.ad.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import fq.o;
import fq.q;
import io.bidmachine.rendering.ad.view.AdView;
import io.bidmachine.rendering.internal.animation.i;
import io.bidmachine.rendering.internal.state.c;
import io.bidmachine.rendering.internal.view.d;
import io.bidmachine.rendering.internal.view.f;
import io.bidmachine.rendering.model.Orientation;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.view.WatermarkView;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.n;
import rq.t;
import sp.p;
import sq.h;
import sq.j;
import tp.b;
import tp.c0;
import tp.r;
import tp.s;
@Metadata
/* loaded from: classes8.dex */
public final class AdView extends FrameLayout {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final h f58048a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final FrameLayout f58049b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final WatermarkView f58050c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final io.bidmachine.rendering.internal.state.a f58051d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final fq.a f58052e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final d f58053f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final tp.b f58054g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final c0 f58055h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private p f58056i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f58057j;

    @Metadata
    /* loaded from: classes8.dex */
    private static final class a implements o {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<AdView> f58058a;

        public a(@NotNull AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            this.f58058a = new WeakReference<>(adView);
        }

        @Override // fq.o
        public void a() {
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.x0();
            }
        }

        @Override // fq.o
        public void b() {
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.p();
            }
        }

        @Override // fq.o
        public void c() {
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.U();
            }
        }

        @Override // fq.o
        public void d() {
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.r0();
            }
        }

        @Override // fq.o
        public void e() {
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.Z(new t("Ad loading timeout after display"));
                adView.p();
            }
        }

        @Override // fq.o
        public void f(@NotNull f placeholderView) {
            Intrinsics.checkNotNullParameter(placeholderView, "placeholderView");
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.X(placeholderView);
            }
        }

        @Override // fq.o
        public void g(@NotNull fq.a adController, @NotNull t error) {
            Intrinsics.checkNotNullParameter(adController, "adController");
            Intrinsics.checkNotNullParameter(error, "error");
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.c0(error);
            }
        }

        @Override // fq.o
        public void h(@NotNull fq.a adController) {
            Intrinsics.checkNotNullParameter(adController, "adController");
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.j0();
            }
        }

        @Override // fq.o
        public void i(@NotNull fq.a adController) {
            Intrinsics.checkNotNullParameter(adController, "adController");
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.q0();
            }
        }

        @Override // fq.o
        public void j(@NotNull fq.a adController) {
            Intrinsics.checkNotNullParameter(adController, "adController");
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.p0();
            }
        }

        @Override // fq.o
        public void onAdClicked() {
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.d0();
            }
        }

        @Override // fq.o
        public void a(@NotNull n brokenCreativeEvent) {
            Intrinsics.checkNotNullParameter(brokenCreativeEvent, "brokenCreativeEvent");
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.A(brokenCreativeEvent);
            }
        }

        @Override // fq.o
        public void b(@NotNull PrivacySheetParams privacySheetParams) {
            Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.Y(privacySheetParams);
            }
        }

        @Override // fq.o
        public void c(@Nullable q qVar, @NotNull t error) {
            Intrinsics.checkNotNullParameter(error, "error");
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.f0(error);
            }
        }

        @Override // fq.o
        public void d(@NotNull q adPhaseController) {
            Intrinsics.checkNotNullParameter(adPhaseController, "adPhaseController");
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.q(adPhaseController);
            }
        }

        @Override // fq.o
        public void e(@NotNull f placeholderView) {
            Intrinsics.checkNotNullParameter(placeholderView, "placeholderView");
            AdView adView = this.f58058a.get();
            if (adView != null) {
                adView.x(placeholderView);
            }
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    private static final class b implements b.a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<AdView> f58059a;

        public b(@NotNull AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            this.f58059a = new WeakReference<>(adView);
        }

        @Override // tp.b.a
        public void a() {
            AdView adView = this.f58059a.get();
            if (adView != null) {
                adView.s0();
            }
        }

        @Override // tp.b.a
        public void b() {
            AdView adView = this.f58059a.get();
            if (adView != null) {
                adView.u0();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdView(@NotNull Context context, @NotNull rq.b adParams) {
        super(context);
        c0 c0Var;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adParams, "adParams");
        h hVar = new h("AdView");
        this.f58048a = hVar;
        FrameLayout frameLayout = new FrameLayout(context);
        this.f58049b = frameLayout;
        WatermarkView watermarkView = new WatermarkView(context);
        this.f58050c = watermarkView;
        addView(frameLayout, yq.t.b());
        addView(watermarkView, yq.t.b());
        io.bidmachine.rendering.internal.h a10 = io.bidmachine.rendering.internal.h.f58327i.a();
        String hVar2 = hVar.toString();
        Intrinsics.checkNotNullExpressionValue(hVar2, "tag.toString()");
        c cVar = new c(hVar2, a10);
        this.f58051d = cVar;
        nq.a o10 = cVar.o();
        this.f58052e = new fq.n(context, adParams, new a(this), new i(o10, a10));
        d dVar = new d(context);
        this.f58053f = dVar;
        addView(dVar, yq.t.b());
        dVar.d();
        this.f58054g = new tp.c(this, adParams.f(), new b(this));
        rq.f b10 = adParams.b();
        if (b10 != null) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            Context applicationContext2 = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext2, "context.applicationContext");
            c0Var = tp.a.a(b10, applicationContext, new io.bidmachine.rendering.internal.repository.b(applicationContext2, o10, a10));
        } else {
            c0Var = null;
        }
        this.f58055h = c0Var;
        this.f58057j = false;
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(final n nVar) {
        if (this.f58051d.h()) {
            return;
        }
        yq.n.b(new Runnable() { // from class: sp.c
            @Override // java.lang.Runnable
            public final void run() {
                AdView.v(AdView.this, nVar);
            }
        });
    }

    private final void B(final t tVar) {
        if (!this.f58051d.a(false)) {
            return;
        }
        s.b(this.f58048a, "notifyAdFailToLoad - %s", tVar);
        yq.n.b(new Runnable() { // from class: sp.l
            @Override // java.lang.Runnable
            public final void run() {
                AdView.w(AdView.this, tVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U() {
        this.f58053f.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        p pVar = this$0.f58056i;
        if (pVar != null) {
            pVar.d(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(AdView this$0, t error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(error, "$error");
        p pVar = this$0.f58056i;
        if (pVar != null) {
            pVar.g(this$0, error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X(final f fVar) {
        s.g(this.f58048a, "showPlaceholder (%s)", fVar);
        yq.n.b(new r() { // from class: sp.k
            @Override // yq.m
            public final void s() {
                AdView.y(io.bidmachine.rendering.internal.view.f.this, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y(PrivacySheetParams privacySheetParams) {
        s.g(this.f58048a, "onOpenPrivacySheet", new Object[0]);
        z(privacySheetParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z(final t tVar) {
        if (!this.f58051d.f()) {
            return;
        }
        s.b(this.f58048a, "notifyAdFailToShow - %s", tVar);
        yq.n.b(new Runnable() { // from class: sp.d
            @Override // java.lang.Runnable
            public final void run() {
                AdView.W(AdView.this, tVar);
            }
        });
    }

    private final void a0() {
        if (!this.f58051d.b(true)) {
            return;
        }
        s.g(this.f58048a, "notifyAdAppeared", new Object[0]);
        yq.n.b(new Runnable() { // from class: sp.m
            @Override // java.lang.Runnable
            public final void run() {
                AdView.V(AdView.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        p pVar = this$0.f58056i;
        if (pVar != null) {
            pVar.i(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c0(t tVar) {
        B(tVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d0() {
        this.f58051d.e();
        s.g(this.f58048a, "notifyAdClicked", new Object[0]);
        yq.n.b(new Runnable() { // from class: sp.o
            @Override // java.lang.Runnable
            public final void run() {
                AdView.b0(AdView.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        p pVar = this$0.f58056i;
        if (pVar != null) {
            pVar.c(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f0(t tVar) {
        s.b(this.f58048a, "onPreparingForShowFail - %s", tVar);
        Z(new t("No phase loaded"));
    }

    private final void h0() {
        if (!this.f58051d.b(false)) {
            return;
        }
        s.g(this.f58048a, "notifyAdDisappeared", new Object[0]);
        yq.n.b(new Runnable() { // from class: sp.i
            @Override // java.lang.Runnable
            public final void run() {
                AdView.e0(AdView.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        p pVar = this$0.f58056i;
        if (pVar != null) {
            pVar.b(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j0() {
        if (!this.f58051d.k()) {
            return;
        }
        s.g(this.f58048a, "notifyAdExpired", new Object[0]);
        yq.n.b(new Runnable() { // from class: sp.a
            @Override // java.lang.Runnable
            public final void run() {
                AdView.i0(AdView.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        p pVar = this$0.f58056i;
        if (pVar != null) {
            pVar.j(this$0);
        }
    }

    private final void l0() {
        if (!this.f58051d.j()) {
            return;
        }
        s.g(this.f58048a, "notifyAdFinished", new Object[0]);
        yq.n.b(new Runnable() { // from class: sp.f
            @Override // java.lang.Runnable
            public final void run() {
                AdView.k0(AdView.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m0(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        p pVar = this$0.f58056i;
        if (pVar != null) {
            pVar.onAdLoaded(this$0);
        }
    }

    private final void n0() {
        if (!this.f58051d.a(true)) {
            return;
        }
        s.g(this.f58048a, "notifyAdLoaded", new Object[0]);
        yq.n.b(new Runnable() { // from class: sp.b
            @Override // java.lang.Runnable
            public final void run() {
                AdView.m0(AdView.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o0(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        p pVar = this$0.f58056i;
        if (pVar != null) {
            pVar.a(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p() {
        l0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p0() {
        if (!this.f58051d.i()) {
            return;
        }
        s.g(this.f58048a, "notifyAdShown", new Object[0]);
        yq.n.b(new Runnable() { // from class: sp.e
            @Override // java.lang.Runnable
            public final void run() {
                AdView.o0(AdView.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(final q qVar) {
        s.g(this.f58048a, "onPreparingForShowComplete", new Object[0]);
        yq.n.b(new r() { // from class: sp.h
            @Override // yq.m
            public final void s() {
                AdView.r(q.this, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q0() {
        n0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(q adPhaseController, AdView this$0) {
        Intrinsics.checkNotNullParameter(adPhaseController, "$adPhaseController");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (adPhaseController.c(this$0.f58049b)) {
            this$0.U();
            this$0.w0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r0() {
        s.g(this.f58048a, "onPreparingForShowStarted", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(AdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f58049b.removeAllViews();
        this$0.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s0() {
        s.g(this.f58048a, "onViewOnScreen", new Object[0]);
        this.f58052e.d();
        this.f58052e.onShown();
        a0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(AdView this$0, f placeholderView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(placeholderView, "$placeholderView");
        this$0.removeView(placeholderView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(AdView this$0, PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(privacySheetParams, "$privacySheetParams");
        p pVar = this$0.f58056i;
        if (pVar != null) {
            pVar.e(this$0, privacySheetParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u0() {
        s.g(this.f58048a, "onViewOutOfScreen", new Object[0]);
        v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(AdView this$0, n brokenCreativeEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(brokenCreativeEvent, "$brokenCreativeEvent");
        p pVar = this$0.f58056i;
        if (pVar != null) {
            pVar.f(this$0, brokenCreativeEvent);
        }
    }

    private final void v0() {
        this.f58054g.stop();
        this.f58052e.f();
        h0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(AdView this$0, t error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(error, "$error");
        p pVar = this$0.f58056i;
        if (pVar != null) {
            pVar.h(this$0, error);
        }
    }

    private final void w0() {
        if (this.f58057j && yq.t.f(this)) {
            this.f58051d.l();
            this.f58054g.start();
            if (this.f58054g.b()) {
                s0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(final f fVar) {
        s.g(this.f58048a, "hidePlaceholder (%s)", fVar);
        yq.n.b(new r() { // from class: sp.j
            @Override // yq.m
            public final void s() {
                AdView.t(AdView.this, fVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x0() {
        this.f58053f.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(f placeholderView, AdView this$0) {
        Intrinsics.checkNotNullParameter(placeholderView, "$placeholderView");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (placeholderView.getParent() == this$0) {
            return;
        }
        sm.q.J(placeholderView);
        this$0.addView(placeholderView, yq.t.b());
        placeholderView.bringToFront();
        placeholderView.p();
    }

    private final void z(final PrivacySheetParams privacySheetParams) {
        yq.n.b(new Runnable() { // from class: sp.g
            @Override // java.lang.Runnable
            public final void run() {
                AdView.u(AdView.this, privacySheetParams);
            }
        });
    }

    public final void g0() {
        s.g(this.f58048a, "destroy", new Object[0]);
        this.f58056i = null;
        this.f58052e.a();
        this.f58054g.a();
        yq.n.b(new r() { // from class: sp.n
            @Override // yq.m
            public final void s() {
                AdView.s(AdView.this);
            }
        });
        this.f58051d.a();
    }

    @Nullable
    public final p getAdViewListener() {
        return this.f58056i;
    }

    @Nullable
    public final Orientation getRequiredOrientation() {
        return this.f58052e.b();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        s.g(this.f58048a, "onAttachedToWindow", new Object[0]);
        this.f58057j = true;
        w0();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        s.g(this.f58048a, "onDetachedFromWindow", new Object[0]);
        this.f58057j = false;
        v0();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NotNull View changedView, int i10) {
        Intrinsics.checkNotNullParameter(changedView, "changedView");
        super.onVisibilityChanged(changedView, i10);
        s.g(this.f58048a, "onVisibilityChanged - %s", j.o(i10));
        if (j.j(i10)) {
            w0();
        } else {
            v0();
        }
    }

    public final void setAdViewListener(@Nullable p pVar) {
        this.f58056i = pVar;
    }

    public final void setWatermark(@Nullable Drawable drawable) {
        this.f58050c.setWatermark(drawable);
    }

    public final void t0() {
        if (!this.f58051d.c()) {
            return;
        }
        c0 c0Var = this.f58055h;
        if (c0Var != null) {
            c0.h(c0Var, this, null, null, 6, null);
        }
        this.f58052e.c();
    }

    @Override // android.view.View
    @NotNull
    public String toString() {
        String hVar = this.f58048a.toString();
        Intrinsics.checkNotNullExpressionValue(hVar, "tag.toString()");
        return hVar;
    }
}
