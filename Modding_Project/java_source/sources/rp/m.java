package rp;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import io.bidmachine.rendering.ad.view.AdView;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.util.ViewUtilsKt;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.t;
import sp.p;
import tp.r;
@Metadata
/* loaded from: classes8.dex */
public final class m {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final io.bidmachine.rendering.internal.state.a f65966a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final AdView f65967b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private n f65968c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private WeakReference<Activity> f65969d;

    @Metadata
    /* loaded from: classes8.dex */
    private final class a implements p {
        public a() {
        }

        @Override // qp.a
        /* renamed from: k */
        public void d(@NotNull AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            m.this.D();
        }

        @Override // qp.a
        /* renamed from: l */
        public void i(@NotNull AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            m.this.G();
        }

        @Override // qp.a
        /* renamed from: m */
        public void c(@NotNull AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            m.this.I();
        }

        @Override // qp.a
        /* renamed from: n */
        public void b(@NotNull AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            m.this.M();
        }

        @Override // qp.a
        /* renamed from: o */
        public void h(@NotNull AdView adView, @NotNull t error) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            Intrinsics.checkNotNullParameter(error, "error");
            m.this.s(error);
        }

        @Override // qp.a
        /* renamed from: p */
        public void g(@NotNull AdView adView, @NotNull t error) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            Intrinsics.checkNotNullParameter(error, "error");
            m.this.X(error);
        }

        @Override // qp.a
        /* renamed from: q */
        public void j(@NotNull AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            m.this.Y();
        }

        @Override // qp.a
        /* renamed from: r */
        public void onAdLoaded(@NotNull AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            m.this.Q();
        }

        @Override // qp.a
        /* renamed from: s */
        public void a(@NotNull AdView adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            m.this.T();
        }

        @Override // qp.a
        /* renamed from: t */
        public void f(@NotNull AdView adView, @NotNull rq.n brokenCreativeEvent) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            Intrinsics.checkNotNullParameter(brokenCreativeEvent, "brokenCreativeEvent");
            m.this.r(brokenCreativeEvent);
        }

        @Override // qp.a
        /* renamed from: u */
        public void e(@NotNull AdView adView, @NotNull PrivacySheetParams privacySheetParams) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
            m.this.m(privacySheetParams);
        }
    }

    public m(@NotNull Context context, @NotNull rq.b adParams) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adParams, "adParams");
        this.f65966a = new nq.b("FullScreenAd");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.f65967b = new AdView(applicationContext, adParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D() {
        if (!this.f65966a.b(true)) {
            return;
        }
        yq.n.b(new r() { // from class: rp.i
            @Override // yq.m
            public final void s() {
                m.n(m.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(m this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        n nVar = this$0.f65968c;
        if (nVar != null) {
            nVar.i(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(m this$0, t error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(error, "$error");
        n nVar = this$0.f65968c;
        if (nVar != null) {
            nVar.g(this$0, error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G() {
        this.f65966a.e();
        yq.n.b(new r() { // from class: rp.f
            @Override // yq.m
            public final void s() {
                m.E(m.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(m this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        n nVar = this$0.f65968c;
        if (nVar != null) {
            nVar.c(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I() {
        if (!this.f65966a.b(false)) {
            return;
        }
        yq.n.b(new r() { // from class: rp.d
            @Override // yq.m
            public final void s() {
                m.H(m.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(m this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        n nVar = this$0.f65968c;
        if (nVar != null) {
            nVar.b(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M() {
        if (!this.f65966a.k()) {
            return;
        }
        yq.n.b(new r() { // from class: rp.j
            @Override // yq.m
            public final void s() {
                m.J(m.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(m this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        n nVar = this$0.f65968c;
        if (nVar != null) {
            nVar.j(this$0);
        }
    }

    private final void O() {
        if (!this.f65966a.j()) {
            return;
        }
        yq.n.b(new r() { // from class: rp.b
            @Override // yq.m
            public final void s() {
                m.N(m.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(m this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        n nVar = this$0.f65968c;
        if (nVar != null) {
            nVar.onAdLoaded(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q() {
        if (!this.f65966a.a(true)) {
            return;
        }
        yq.n.b(new r() { // from class: rp.h
            @Override // yq.m
            public final void s() {
                m.P(m.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(m this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        n nVar = this$0.f65968c;
        if (nVar != null) {
            nVar.a(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T() {
        if (!this.f65966a.i()) {
            return;
        }
        yq.n.b(new r() { // from class: rp.c
            @Override // yq.m
            public final void s() {
                m.R(m.this);
            }
        });
    }

    private final void l() {
        yq.p.e(S());
        L();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(final PrivacySheetParams privacySheetParams) {
        yq.n.b(new r() { // from class: rp.l
            @Override // yq.m
            public final void s() {
                m.o(m.this, privacySheetParams);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(m this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        n nVar = this$0.f65968c;
        if (nVar != null) {
            nVar.d(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(m this$0, PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(privacySheetParams, "$privacySheetParams");
        n nVar = this$0.f65968c;
        if (nVar != null) {
            nVar.e(this$0, privacySheetParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(m this$0, rq.n brokenCreativeEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(brokenCreativeEvent, "$brokenCreativeEvent");
        n nVar = this$0.f65968c;
        if (nVar != null) {
            nVar.f(this$0, brokenCreativeEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(m this$0, t error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(error, "$error");
        n nVar = this$0.f65968c;
        if (nVar != null) {
            nVar.h(this$0, error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(final rq.n nVar) {
        if (this.f65966a.h()) {
            return;
        }
        yq.n.b(new r() { // from class: rp.k
            @Override // yq.m
            public final void s() {
                m.p(m.this, nVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(final t tVar) {
        if (!this.f65966a.a(false)) {
            return;
        }
        yq.n.b(new r() { // from class: rp.g
            @Override // yq.m
            public final void s() {
                m.q(m.this, tVar);
            }
        });
    }

    public final void C(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f65969d = new WeakReference<>(activity);
    }

    public final void K() {
        this.f65966a.a();
        this.f65967b.g0();
        l();
    }

    public final void L() {
        WeakReference<Activity> weakReference = this.f65969d;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f65969d = null;
    }

    @Nullable
    public final Activity S() {
        WeakReference<Activity> weakReference = this.f65969d;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public final boolean U() {
        return this.f65966a.g();
    }

    public final boolean V() {
        return this.f65966a.b();
    }

    public final void W() {
        if (!this.f65966a.c()) {
            return;
        }
        this.f65967b.setAdViewListener(new a());
        this.f65967b.t0();
    }

    public final void X(@NotNull final t error) {
        Intrinsics.checkNotNullParameter(error, "error");
        yq.n.b(new r() { // from class: rp.e
            @Override // yq.m
            public final void s() {
                m.F(m.this, error);
            }
        });
    }

    public final void Y() {
        l();
        I();
        O();
    }

    public final void Z(@Nullable n nVar) {
        this.f65968c = nVar;
    }

    public final void a0(@Nullable Drawable drawable) {
        this.f65967b.setWatermark(drawable);
    }

    public final void b0(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!V()) {
            X(new t("FullScreenAd not loaded"));
        } else {
            rp.a.c(this, context);
        }
    }

    public final void c0(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        C(activity);
        sq.j.n(activity, this.f65967b.getRequiredOrientation());
        yq.p.b(activity, false, 1, null);
        ViewUtilsKt.k(this.f65967b);
        sq.j.c(activity, this.f65967b, false);
        activity.setContentView(this.f65967b, yq.t.b());
    }
}
