package io.bidmachine.iab.mraid;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.content.res.Configuration;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.measurer.MraidAdMeasurer;
import io.bidmachine.iab.mraid.MraidAdView;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.iab.view.CloseableLayout;
import io.bidmachine.rendering.model.PrivacySheetParams;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import sm.n;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes7.dex */
public class MraidView extends CloseableLayout implements CloseableLayout.a, sm.d {
    @Nullable
    private final IabElementStyle A;
    @Nullable
    private final IabElementStyle B;
    @Nullable
    private final IabElementStyle C;
    @Nullable
    private final IabElementStyle D;
    private boolean E;
    @Nullable
    private sm.n F;
    @Nullable
    private sm.l G;
    @Nullable
    private Integer H;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final MutableContextWrapper f54532h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final MraidAdView f54533i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private CloseableLayout f54534j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private CloseableLayout f54535k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private sm.j f54536l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private WeakReference<Activity> f54537m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private String f54538n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private p f54539o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final MraidAdMeasurer f54540p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    private final CacheControl f54541q;

    /* renamed from: r  reason: collision with root package name */
    private final float f54542r;

    /* renamed from: s  reason: collision with root package name */
    private final float f54543s;

    /* renamed from: t  reason: collision with root package name */
    private final float f54544t;

    /* renamed from: u  reason: collision with root package name */
    private final boolean f54545u;

    /* renamed from: v  reason: collision with root package name */
    private final boolean f54546v;

    /* renamed from: w  reason: collision with root package name */
    private final boolean f54547w;

    /* renamed from: x  reason: collision with root package name */
    private final boolean f54548x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    private final AtomicBoolean f54549y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    private final CloseableLayout.a f54550z;

    /* loaded from: classes7.dex */
    public static class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final MraidPlacementType f54551a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private CacheControl f54552b;

        /* renamed from: c  reason: collision with root package name */
        private String f54553c;

        /* renamed from: d  reason: collision with root package name */
        private String f54554d;

        /* renamed from: e  reason: collision with root package name */
        private String f54555e;

        /* renamed from: f  reason: collision with root package name */
        private String[] f54556f;
        @VisibleForTesting

        /* renamed from: g  reason: collision with root package name */
        public p f54557g;

        /* renamed from: h  reason: collision with root package name */
        public MraidAdMeasurer f54558h;

        /* renamed from: i  reason: collision with root package name */
        private IabElementStyle f54559i;

        /* renamed from: j  reason: collision with root package name */
        private IabElementStyle f54560j;

        /* renamed from: k  reason: collision with root package name */
        private IabElementStyle f54561k;

        /* renamed from: l  reason: collision with root package name */
        private IabElementStyle f54562l;

        /* renamed from: m  reason: collision with root package name */
        private float f54563m;

        /* renamed from: n  reason: collision with root package name */
        private float f54564n;

        /* renamed from: o  reason: collision with root package name */
        private float f54565o;

        /* renamed from: p  reason: collision with root package name */
        private boolean f54566p;

        /* renamed from: q  reason: collision with root package name */
        private boolean f54567q;

        /* renamed from: r  reason: collision with root package name */
        private boolean f54568r;

        /* renamed from: s  reason: collision with root package name */
        private boolean f54569s;

        public a() {
            this(MraidPlacementType.INLINE);
        }

        public a A(boolean z10) {
            this.f54566p = z10;
            return this;
        }

        public a B(p pVar) {
            this.f54557g = pVar;
            return this;
        }

        public a C(IabElementStyle iabElementStyle) {
            this.f54561k = iabElementStyle;
            return this;
        }

        public a D(float f10) {
            this.f54563m = f10;
            return this;
        }

        public a E(String str) {
            this.f54554d = str;
            return this;
        }

        public a F(IabElementStyle iabElementStyle) {
            this.f54562l = iabElementStyle;
            return this;
        }

        public a G(boolean z10) {
            this.f54568r = z10;
            return this;
        }

        public a H(boolean z10) {
            this.f54569s = z10;
            return this;
        }

        public MraidView c(@NonNull Context context) {
            return new MraidView(context, this, null);
        }

        public a h(boolean z10) {
            this.f54567q = z10;
            return this;
        }

        public a t(@Nullable MraidAdMeasurer mraidAdMeasurer) {
            this.f54558h = mraidAdMeasurer;
            return this;
        }

        public a u(String str) {
            this.f54553c = str;
            return this;
        }

        public a v(@NonNull CacheControl cacheControl) {
            this.f54552b = cacheControl;
            return this;
        }

        public a w(IabElementStyle iabElementStyle) {
            this.f54559i = iabElementStyle;
            return this;
        }

        public a x(float f10) {
            this.f54564n = f10;
            return this;
        }

        public a y(IabElementStyle iabElementStyle) {
            this.f54560j = iabElementStyle;
            return this;
        }

        public a z(float f10) {
            this.f54565o = f10;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(@Nullable MraidPlacementType mraidPlacementType) {
            this.f54556f = null;
            this.f54563m = 3.0f;
            this.f54564n = 0.0f;
            this.f54565o = 0.0f;
            this.f54551a = mraidPlacementType;
            this.f54552b = CacheControl.FullLoad;
            this.f54553c = "https://localhost";
        }
    }

    /* loaded from: classes7.dex */
    class b implements n.a {
        b() {
        }

        @Override // sm.n.a
        public void a(float f10, long j10, long j11) {
            int i10 = (int) (j11 / 1000);
            int i11 = (int) (j10 / 1000);
            if (MraidView.this.G != null) {
                MraidView.this.G.r(f10, i11, i10);
            }
        }

        @Override // sm.n.a
        public void b() {
            if (MraidView.this.G != null) {
                MraidView.this.G.l();
            }
            if (!MraidView.this.f54533i.R() && MraidView.this.f54548x && MraidView.this.f54544t > 0.0f) {
                MraidView.this.Z();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MraidViewState mraidViewState = MraidView.this.f54533i.getMraidViewState();
            if (mraidViewState == MraidViewState.RESIZED) {
                MraidView.this.U();
            } else if (mraidViewState == MraidViewState.EXPANDED) {
                MraidView.this.Q();
            } else if (MraidView.this.c0()) {
                MraidView.this.f54533i.w();
                MraidView.this.f0();
            }
        }
    }

    /* loaded from: classes7.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MraidView.this.f54533i.Y(null);
        }
    }

    /* loaded from: classes7.dex */
    static /* synthetic */ class f {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f54574a;

        static {
            int[] iArr = new int[CacheControl.values().length];
            f54574a = iArr;
            try {
                iArr[CacheControl.FullLoad.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f54574a[CacheControl.Stream.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f54574a[CacheControl.PartialLoad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes7.dex */
    private class g implements MraidAdView.e {
        private g() {
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.e
        public void a(@NonNull MraidAdView mraidAdView, @NonNull m mVar) {
            MraidView.this.q(mVar);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.e
        public void b(@NonNull MraidAdView mraidAdView) {
            MraidView.this.k0();
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.e
        public void c(@NonNull MraidAdView mraidAdView) {
            MraidView.this.X();
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.e
        public void d(@NonNull MraidAdView mraidAdView, @NonNull qm.a aVar) {
            MraidView.this.J(aVar);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.e
        public void e(@NonNull MraidAdView mraidAdView, @NonNull String str) {
            MraidView.this.M(str);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.e
        public void f(@NonNull MraidAdView mraidAdView, @NonNull String str) {
            MraidView.this.S(str);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.e
        public void g(@NonNull MraidAdView mraidAdView, @NonNull PrivacySheetParams privacySheetParams) {
            MraidView.this.x(privacySheetParams);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.e
        public void h(@NonNull MraidAdView mraidAdView, boolean z10) {
            if (MraidView.this.f54546v) {
                return;
            }
            if (z10 && !MraidView.this.E) {
                MraidView.this.E = true;
            }
            MraidView.this.B(z10);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.e
        public void i(@NonNull MraidAdView mraidAdView) {
            MraidView.this.h0();
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.e
        public void j(@NonNull MraidAdView mraidAdView, @NonNull String str) {
            MraidView.this.y(str);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.e
        public void k(@NonNull MraidAdView mraidAdView, @NonNull qm.a aVar) {
            MraidView.this.N(aVar);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.e
        public void l(@NonNull MraidAdView mraidAdView, @NonNull qm.a aVar) {
            MraidView.this.A(aVar);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.e
        public void m(@NonNull MraidAdView mraidAdView, @NonNull String str, @NonNull WebView webView, boolean z10) {
            MraidView.this.z(str, webView, z10);
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.e
        public void n(@NonNull MraidAdView mraidAdView, @NonNull String str) {
            MraidView.this.I(str);
        }

        /* synthetic */ g(MraidView mraidView, b bVar) {
            this();
        }
    }

    /* synthetic */ MraidView(Context context, a aVar, b bVar) {
        this(context, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(@NonNull qm.a aVar) {
        MraidAdMeasurer mraidAdMeasurer = this.f54540p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.c(aVar);
        }
        p pVar = this.f54539o;
        if (pVar != null) {
            pVar.g(this, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(boolean z10) {
        boolean z11;
        float f10;
        if (z10 && !this.f54546v) {
            z11 = false;
        } else {
            z11 = true;
        }
        CloseableLayout closeableLayout = this.f54534j;
        if (closeableLayout != null) {
            closeableLayout.setCloseVisibility(z11, this.f54543s);
            return;
        }
        CloseableLayout closeableLayout2 = this.f54535k;
        if (closeableLayout2 != null) {
            closeableLayout2.setCloseVisibility(z11, this.f54543s);
        } else if (c0()) {
            if (this.E) {
                f10 = 0.0f;
            } else {
                f10 = this.f54543s;
            }
            setCloseVisibility(z11, f10);
        }
    }

    private void E(@NonNull Activity activity) {
        this.H = Integer.valueOf(activity.getRequestedOrientation());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I(@NonNull String str) {
        if (this.f54539o == null) {
            return;
        }
        setLoadingVisible(true);
        MraidAdMeasurer mraidAdMeasurer = this.f54540p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.onAdClicked();
        }
        this.f54539o.c(this, str, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(@NonNull qm.a aVar) {
        MraidAdMeasurer mraidAdMeasurer = this.f54540p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.c(aVar);
        }
        p pVar = this.f54539o;
        if (pVar != null) {
            pVar.k(this, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(@NonNull String str) {
        if (this.f54539o == null) {
            return;
        }
        setLoadingVisible(true);
        MraidAdMeasurer mraidAdMeasurer = this.f54540p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.onAdClicked();
        }
        this.f54539o.i(this, str, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(@NonNull qm.a aVar) {
        MraidAdMeasurer mraidAdMeasurer = this.f54540p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.c(aVar);
        }
        p pVar = this.f54539o;
        if (pVar != null) {
            pVar.h(this, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q() {
        p(this.f54535k);
        this.f54535k = null;
        Activity n02 = n0();
        if (n02 != null) {
            o(n02);
        }
        this.f54533i.x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(@NonNull String str) {
        if (this.f54539o == null) {
            return;
        }
        setLoadingVisible(true);
        MraidAdMeasurer mraidAdMeasurer = this.f54540p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.onAdClicked();
        }
        this.f54539o.d(this, str, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        p(this.f54534j);
        this.f54534j = null;
        this.f54533i.y();
    }

    private void W(@Nullable String str) {
        this.f54533i.W(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z() {
        IabElementStyle b10 = sm.a.b(getContext(), this.A);
        this.f54533i.M(b10.r().intValue(), b10.G().intValue());
    }

    private boolean e0() {
        return this.f54533i.Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0() {
        p pVar = this.f54539o;
        if (pVar != null) {
            pVar.j(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h0() {
        p pVar;
        if (!this.f54549y.getAndSet(true) && (pVar = this.f54539o) != null) {
            pVar.f(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0() {
        MraidAdMeasurer mraidAdMeasurer = this.f54540p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.onAdShown();
        }
        p pVar = this.f54539o;
        if (pVar != null) {
            pVar.a(this);
        }
    }

    private void m0() {
        setCloseClickListener(this.f54550z);
        setCloseVisibility(true, this.f54542r);
    }

    private void o(@NonNull Activity activity) {
        Integer num = this.H;
        if (num != null) {
            activity.setRequestedOrientation(num.intValue());
            this.H = null;
        }
    }

    private void p(@Nullable View view) {
        if (view == null) {
            return;
        }
        if (view instanceof ViewGroup) {
            ((ViewGroup) view).removeAllViews();
        }
        sm.q.J(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(@Nullable m mVar) {
        if (mVar == null) {
            return;
        }
        Activity n02 = n0();
        h.c("MraidView", "applyOrientation: %s", mVar);
        if (n02 == null) {
            h.c("MraidView", "no any interacted activities", new Object[0]);
            return;
        }
        E(n02);
        n02.setRequestedOrientation(mVar.c(n02));
    }

    private void w(@NonNull CloseableLayout closeableLayout, boolean z10) {
        setCloseClickListener(this);
        closeableLayout.setCloseStyle(this.A);
        closeableLayout.setCountDownStyle(this.B);
        B(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(@NonNull PrivacySheetParams privacySheetParams) {
        p pVar = this.f54539o;
        if (pVar == null) {
            return;
        }
        pVar.e(this, privacySheetParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(@NonNull String str) {
        p pVar = this.f54539o;
        if (pVar != null) {
            pVar.b(this, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(@NonNull String str, @NonNull WebView webView, boolean z10) {
        setLoadingVisible(false);
        if (c0()) {
            w(this, z10);
        }
        MraidAdMeasurer mraidAdMeasurer = this.f54540p;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.m(webView);
        }
        if (this.f54541q == CacheControl.FullLoad && !this.f54545u && !str.equals("data:text/html,<html></html>")) {
            h0();
        }
    }

    public void T() {
        this.f54539o = null;
        this.f54537m = null;
        Activity n02 = n0();
        if (n02 != null) {
            o(n02);
        }
        p(this.f54534j);
        p(this.f54535k);
        this.f54533i.C();
        sm.n nVar = this.F;
        if (nVar != null) {
            nVar.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void X() {
        if (!this.f54533i.R() && this.f54547w) {
            Z();
        } else {
            sm.q.D(new d());
        }
    }

    @Override // io.bidmachine.iab.view.CloseableLayout.a
    public void a() {
        X();
    }

    @Override // io.bidmachine.iab.view.CloseableLayout.a
    public void b() {
        if (!this.f54533i.R() && this.f54548x && this.f54544t == 0.0f) {
            Z();
        }
    }

    @Override // sm.d
    public void c() {
        setLoadingVisible(false);
    }

    @VisibleForTesting
    boolean c0() {
        return this.f54533i.P();
    }

    @Override // sm.d
    public void d() {
        setLoadingVisible(false);
    }

    public void j0(@Nullable String str) {
        MraidAdMeasurer mraidAdMeasurer = this.f54540p;
        if (mraidAdMeasurer != null && str != null) {
            str = mraidAdMeasurer.p(str);
        }
        int i10 = f.f54574a[this.f54541q.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    h0();
                    W(str);
                    return;
                }
                return;
            }
            this.f54538n = str;
            h0();
            return;
        }
        W(str);
    }

    @Override // io.bidmachine.iab.view.CloseableLayout
    public boolean k() {
        if (getOnScreenTimeMs() > o.f54631a || this.f54533i.S()) {
            return true;
        }
        if (!this.f54546v && this.f54533i.U()) {
            return false;
        }
        return super.k();
    }

    @Nullable
    public Activity n0() {
        WeakReference<Activity> weakReference = this.f54537m;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @NonNull
    public Context o0() {
        Activity n02 = n0();
        if (n02 == null) {
            return getContext();
        }
        return n02;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        h.c("MraidView", "onConfigurationChanged: %s", sm.q.G(configuration.orientation));
        sm.q.D(new e());
    }

    public void p0(@Nullable Activity activity) {
        int i10 = f.f54574a[this.f54541q.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    if (e0()) {
                        if (c0()) {
                            w(this, this.f54533i.U());
                        }
                    } else if (c0()) {
                        m0();
                    }
                }
            } else {
                if (c0()) {
                    m0();
                }
                W(this.f54538n);
                this.f54538n = null;
            }
        } else if (c0()) {
            w(this, this.f54533i.U());
        }
        this.f54533i.X();
        setLastInteractedActivity(activity);
        q(this.f54533i.getLastOrientationProperties());
    }

    public void setLastInteractedActivity(@Nullable Activity activity) {
        if (activity != null) {
            this.f54537m = new WeakReference<>(activity);
            this.f54532h.setBaseContext(activity);
        }
    }

    public void setLoadingVisible(boolean z10) {
        if (z10) {
            if (this.f54536l == null) {
                sm.j jVar = new sm.j(null);
                this.f54536l = jVar;
                jVar.g(getContext(), this, this.C);
            }
            this.f54536l.o(0);
            this.f54536l.i();
            return;
        }
        sm.j jVar2 = this.f54536l;
        if (jVar2 != null) {
            jVar2.o(8);
        }
    }

    private MraidView(@NonNull Context context, @NonNull a aVar) {
        super(context);
        this.f54549y = new AtomicBoolean(false);
        this.E = false;
        this.f54532h = new MutableContextWrapper(context);
        this.f54539o = aVar.f54557g;
        this.f54541q = aVar.f54552b;
        this.f54542r = aVar.f54563m;
        this.f54543s = aVar.f54564n;
        float f10 = aVar.f54565o;
        this.f54544t = f10;
        this.f54545u = aVar.f54566p;
        this.f54546v = aVar.f54567q;
        this.f54547w = aVar.f54568r;
        this.f54548x = aVar.f54569s;
        MraidAdMeasurer mraidAdMeasurer = aVar.f54558h;
        this.f54540p = mraidAdMeasurer;
        this.A = aVar.f54559i;
        this.B = aVar.f54560j;
        this.C = aVar.f54561k;
        IabElementStyle iabElementStyle = aVar.f54562l;
        this.D = iabElementStyle;
        MraidAdView a10 = new MraidAdView.c(context.getApplicationContext(), aVar.f54551a, new g(this, null)).c(aVar.f54553c).e(aVar.f54554d).b(aVar.f54556f).d(aVar.f54555e).a();
        this.f54533i = a10;
        addView(a10, new FrameLayout.LayoutParams(-1, -1, 17));
        if (f10 > 0.0f) {
            sm.l lVar = new sm.l(null);
            this.G = lVar;
            lVar.g(context, this, iabElementStyle);
            sm.n nVar = new sm.n(this, new b());
            this.F = nVar;
            nVar.k(f10);
        }
        this.f54550z = new c();
        setCloseClickListener(this);
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.l(this);
            mraidAdMeasurer.t0(a10.getWebView());
        }
    }

    /* loaded from: classes7.dex */
    class c implements CloseableLayout.a {
        c() {
        }

        @Override // io.bidmachine.iab.view.CloseableLayout.a
        public void a() {
            MraidView.this.N(qm.a.i("Close button clicked"));
            MraidView.this.f0();
        }

        @Override // io.bidmachine.iab.view.CloseableLayout.a
        public void b() {
        }
    }
}
