package io.bidmachine.iab.mraid;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.measurer.MraidAdMeasurer;
import io.bidmachine.iab.mraid.MraidView;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.rendering.model.PrivacySheetParams;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public class e {
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private static final AtomicInteger f54596k = new AtomicInteger(0);

    /* renamed from: l  reason: collision with root package name */
    static final /* synthetic */ boolean f54597l = true;
    @Nullable
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    MraidView f54601d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private f f54602e;

    /* renamed from: a  reason: collision with root package name */
    public final int f54598a = f54596k.getAndIncrement();

    /* renamed from: f  reason: collision with root package name */
    private boolean f54603f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f54604g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f54605h = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f54606i = true;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54607j = false;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f54599b = new AtomicBoolean(false);
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    final p f54600c = new c();

    /* loaded from: classes7.dex */
    public class a {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final MraidView.a f54608a = new MraidView.a(MraidPlacementType.INTERSTITIAL);

        public a() {
        }

        public e a(@NonNull Context context) {
            this.f54608a.B(e.this.f54600c);
            e.this.f54601d = this.f54608a.c(context);
            return e.this;
        }

        public a b(boolean z10) {
            this.f54608a.h(z10);
            return this;
        }

        public a c(@Nullable MraidAdMeasurer mraidAdMeasurer) {
            this.f54608a.t(mraidAdMeasurer);
            return this;
        }

        public a d(String str) {
            this.f54608a.u(str);
            return this;
        }

        public a e(@NonNull CacheControl cacheControl) {
            this.f54608a.v(cacheControl);
            return this;
        }

        public a f(@Nullable IabElementStyle iabElementStyle) {
            this.f54608a.w(iabElementStyle);
            return this;
        }

        public a g(float f10) {
            this.f54608a.x(f10);
            return this;
        }

        public a h(@Nullable IabElementStyle iabElementStyle) {
            this.f54608a.y(iabElementStyle);
            return this;
        }

        public a i(float f10) {
            this.f54608a.z(f10);
            return this;
        }

        public a j(boolean z10) {
            this.f54608a.A(z10);
            return this;
        }

        public a k(f fVar) {
            e.this.f54602e = fVar;
            return this;
        }

        public a l(@Nullable IabElementStyle iabElementStyle) {
            this.f54608a.C(iabElementStyle);
            return this;
        }

        public a m(float f10) {
            this.f54608a.D(f10);
            return this;
        }

        public a n(String str) {
            this.f54608a.E(str);
            return this;
        }

        public a o(@Nullable IabElementStyle iabElementStyle) {
            this.f54608a.F(iabElementStyle);
            return this;
        }

        public a p(boolean z10) {
            this.f54608a.G(z10);
            return this;
        }

        public a q(boolean z10) {
            this.f54608a.H(z10);
            return this;
        }
    }

    /* loaded from: classes7.dex */
    private class c implements p {
        private c() {
        }

        @Override // io.bidmachine.iab.mraid.p
        public void a(@NonNull MraidView mraidView) {
            h.c("MraidInterstitial", "ViewListener - onShown", new Object[0]);
            e.this.m();
        }

        @Override // io.bidmachine.iab.mraid.p
        public void b(@NonNull MraidView mraidView, @NonNull String str) {
            h.c("MraidInterstitial", "ViewListener - onPlayVideo (%s)", str);
            if (e.this.f54602e != null) {
                e.this.f54602e.k(e.this, str);
            }
        }

        @Override // io.bidmachine.iab.mraid.p
        public void c(@NonNull MraidView mraidView, @NonNull String str, @NonNull sm.d dVar) {
            h.c("MraidInterstitial", "ViewListener - onCalendarEvent (%s)", str);
            if (e.this.f54602e != null) {
                e.this.f54602e.j(e.this, str, dVar);
            }
        }

        @Override // io.bidmachine.iab.mraid.p
        public void d(@NonNull MraidView mraidView, @NonNull String str, @NonNull sm.d dVar) {
            h.c("MraidInterstitial", "ViewListener - onCalendarEvent (%s)", str);
            if (e.this.f54602e != null) {
                e.this.f54602e.c(e.this, str, dVar);
            }
        }

        @Override // io.bidmachine.iab.mraid.p
        public void e(@NonNull MraidView mraidView, @NonNull PrivacySheetParams privacySheetParams) {
            h.c("MraidInterstitial", "ViewListener - onOpenPrivacySheet (%s)", privacySheetParams.toString());
            if (e.this.f54602e != null) {
                e.this.f54602e.a(e.this, privacySheetParams);
            }
        }

        @Override // io.bidmachine.iab.mraid.p
        public void f(@NonNull MraidView mraidView) {
            h.c("MraidInterstitial", "ViewListener - onLoaded", new Object[0]);
            e.this.j();
        }

        @Override // io.bidmachine.iab.mraid.p
        public void g(@NonNull MraidView mraidView, @NonNull qm.a aVar) {
            h.c("MraidInterstitial", "ViewListener - onExpired (%s)", aVar);
            if (e.this.f54602e != null) {
                e.this.f54602e.e(e.this, aVar);
            }
        }

        @Override // io.bidmachine.iab.mraid.p
        public void h(@NonNull MraidView mraidView, @NonNull qm.a aVar) {
            h.c("MraidInterstitial", "ViewListener - onShowFailed (%s)", aVar);
            e.this.c();
            e.this.i(aVar);
        }

        @Override // io.bidmachine.iab.mraid.p
        public void i(@NonNull MraidView mraidView, @NonNull String str, @NonNull sm.d dVar) {
            h.c("MraidInterstitial", "ViewListener - onOpenBrowser (%s)", str);
            if (e.this.f54602e != null) {
                e.this.f54602e.d(e.this, str, dVar);
            }
        }

        @Override // io.bidmachine.iab.mraid.p
        public void j(@NonNull MraidView mraidView) {
            h.c("MraidInterstitial", "ViewListener - onClose", new Object[0]);
            e.this.c();
            e.this.g();
        }

        @Override // io.bidmachine.iab.mraid.p
        public void k(@NonNull MraidView mraidView, @NonNull qm.a aVar) {
            h.c("MraidInterstitial", "ViewListener - onLoadFailed (%s)", aVar);
            e.this.c();
            e.this.f(aVar);
        }
    }

    private e() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        MraidView mraidView;
        Activity n02;
        if (this.f54607j && (mraidView = this.f54601d) != null && (n02 = mraidView.n0()) != null) {
            yq.n.a(n02);
        }
    }

    @NonNull
    public static a u() {
        return new a();
    }

    void d(@Nullable Activity activity, @NonNull ViewGroup viewGroup, boolean z10, boolean z11) {
        if (!q()) {
            if (activity != null && z10) {
                yq.n.a(activity);
            }
            k(qm.a.e("Interstitial is not ready"));
            h.h("MraidInterstitial", "Show failed: interstitial is not ready", new Object[0]);
        } else if (!f54597l && this.f54601d == null) {
            throw new AssertionError();
        } else {
            this.f54606i = z11;
            this.f54607j = z10;
            sm.q.J(this.f54601d);
            viewGroup.addView(this.f54601d, new ViewGroup.LayoutParams(-1, -1));
            this.f54601d.p0(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(@NonNull Activity activity, boolean z10) {
        d(activity, (ViewGroup) activity.findViewById(16908290), true, z10);
    }

    void f(@NonNull qm.a aVar) {
        this.f54603f = false;
        this.f54605h = true;
        f fVar = this.f54602e;
        if (fVar != null) {
            fVar.h(this, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        if (p()) {
            return;
        }
        this.f54604g = true;
        f fVar = this.f54602e;
        if (fVar != null) {
            fVar.g(this);
        }
        if (this.f54606i) {
            n();
        }
    }

    void i(@NonNull qm.a aVar) {
        this.f54603f = false;
        this.f54605h = true;
        k(aVar);
    }

    void j() {
        this.f54603f = true;
        f fVar = this.f54602e;
        if (fVar != null) {
            fVar.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(@NonNull qm.a aVar) {
        f fVar = this.f54602e;
        if (fVar != null) {
            fVar.i(this, aVar);
        }
    }

    public boolean l() {
        MraidView mraidView = this.f54601d;
        if (mraidView != null && !mraidView.k() && !r()) {
            return false;
        }
        return true;
    }

    void m() {
        this.f54599b.set(true);
        f fVar = this.f54602e;
        if (fVar != null) {
            fVar.f(this);
        }
    }

    public void n() {
        h.c("MraidInterstitial", "destroy", new Object[0]);
        this.f54603f = false;
        this.f54602e = null;
        MraidView mraidView = this.f54601d;
        if (mraidView != null) {
            mraidView.T();
            this.f54601d = null;
        }
    }

    public void o() {
        if (this.f54601d != null && l()) {
            this.f54601d.X();
        }
    }

    public boolean p() {
        return this.f54604g;
    }

    public boolean q() {
        if (this.f54603f && this.f54601d != null) {
            return true;
        }
        return false;
    }

    public boolean r() {
        return this.f54605h;
    }

    public boolean s() {
        return this.f54599b.get();
    }

    public void t(@Nullable String str) {
        MraidView mraidView = this.f54601d;
        if (mraidView != null) {
            mraidView.j0(str);
            return;
        }
        throw new IllegalStateException("MraidView not created (mraidView == null)");
    }

    @Nullable
    public Context v() {
        MraidView mraidView = this.f54601d;
        if (mraidView == null) {
            return null;
        }
        return mraidView.o0();
    }

    public void w(@Nullable Context context, @Nullable MraidType mraidType) {
        MraidActivity.i(context, this, mraidType);
    }

    public void x(@NonNull ViewGroup viewGroup, boolean z10) {
        d(null, viewGroup, false, z10);
    }
}
