package wp;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.Constants;
import io.bidmachine.iab.mraid.MraidAdView;
import io.bidmachine.iab.mraid.MraidPlacementType;
import io.bidmachine.rendering.measurer.HtmlMeasurer;
import io.bidmachine.rendering.model.MediaSource;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import lq.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.k0;
import rq.l0;
import rq.p0;
import rq.t;
import rq.y;
import sq.j;
import tp.r;
import tp.s;
@Metadata
/* loaded from: classes8.dex */
public final class f extends up.a {
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final b f70110t = new b(null);
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final HtmlMeasurer f70111r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private MraidAdView f70112s;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata
    /* loaded from: classes8.dex */
    public final class a implements a.InterfaceC0869a<String> {
        public a() {
        }

        @Override // lq.a.InterfaceC0869a
        public void a(@NotNull t error) {
            Intrinsics.checkNotNullParameter(error, "error");
            f.this.R(error);
        }

        @Override // lq.a.InterfaceC0869a
        /* renamed from: b */
        public void onSuccess(@NotNull String result) {
            Intrinsics.checkNotNullParameter(result, "result");
            f.this.Y(result);
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(@NotNull Context context, @NotNull lq.a repository, @NotNull rq.a adElementParams, @NotNull up.c adFormListener, @NotNull jq.b eventCallback, @Nullable io.bidmachine.rendering.internal.detector.brokencreative.a aVar, @Nullable HtmlMeasurer htmlMeasurer) {
        super(context, repository, adElementParams, adFormListener, eventCallback, aVar);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.f70111r = htmlMeasurer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(f this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MraidAdView mraidAdView = this$0.f70112s;
        if (mraidAdView != null) {
            mraidAdView.C();
        }
        this$0.f70112s = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(f this$0, ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(viewGroup, "$viewGroup");
        MraidAdView mraidAdView = this$0.f70112s;
        HtmlMeasurer htmlMeasurer = this$0.f70111r;
        if (htmlMeasurer != null && mraidAdView != null) {
            htmlMeasurer.w(mraidAdView.getWebView(), viewGroup);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(f this$0, MraidPlacementType mraidPlacementType, String str, String preparedSource) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(preparedSource, "$preparedSource");
        try {
            Context B = this$0.B();
            List<String> O = this$0.O();
            up.c z10 = this$0.z();
            jq.b eventCallback = this$0.r();
            Intrinsics.checkNotNullExpressionValue(eventCallback, "eventCallback");
            MraidAdView mraidAdView = new MraidAdView(B, mraidPlacementType, str, null, O, null, new g(this$0, z10, eventCallback, this$0.f70111r));
            mraidAdView.W(preparedSource);
            HtmlMeasurer htmlMeasurer = this$0.f70111r;
            if (htmlMeasurer != null) {
                htmlMeasurer.A0(mraidAdView.getWebView());
            }
            this$0.f70112s = mraidAdView;
        } catch (Throwable th2) {
            s.h(th2);
            this$0.R(t.f66124b.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(f this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.N();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y(final String str) {
        String p10;
        if (str != null && str.length() != 0) {
            HtmlMeasurer htmlMeasurer = this.f70111r;
            if (htmlMeasurer != null && (p10 = htmlMeasurer.p(str)) != null) {
                str = p10;
            }
            Intrinsics.checkNotNullExpressionValue(str, "htmlMeasurer?.prepareCre…iveForMeasure(adm) ?: adm");
            final MraidPlacementType Q = Q();
            final String P = P();
            j.k(new Runnable() { // from class: wp.a
                @Override // java.lang.Runnable
                public final void run() {
                    f.U(f.this, Q, P, str);
                }
            });
            return;
        }
        R(new t("Adm is null or empty"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(f this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MraidAdView mraidAdView = this$0.f70112s;
        if (mraidAdView != null) {
            mraidAdView.X();
            this$0.H();
        }
    }

    private final void a0(String str) {
        MediaSource d10 = MediaSource.f58545b.d(str);
        if (d10 == null) {
            R(new t("Invalid adm url (" + str + ')'));
            return;
        }
        C().a(d10, new a());
    }

    @Override // up.a
    @Nullable
    public View D() {
        return this.f70112s;
    }

    @Override // up.a
    protected void F() {
        Unit unit;
        HtmlMeasurer htmlMeasurer = this.f70111r;
        if (htmlMeasurer != null) {
            htmlMeasurer.R(new r() { // from class: wp.c
                @Override // yq.m
                public final void s() {
                    f.X(f.this);
                }
            });
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit == null) {
            N();
        }
    }

    @Override // up.a
    public void H() {
        super.H();
        HtmlMeasurer htmlMeasurer = this.f70111r;
        if (htmlMeasurer != null) {
            htmlMeasurer.onShown();
        }
    }

    @VisibleForTesting
    public final void N() {
        j.k(new r() { // from class: wp.e
            @Override // yq.m
            public final void s() {
                f.S(f.this);
            }
        });
    }

    @VisibleForTesting
    @NotNull
    public final List<String> O() {
        int i10;
        boolean z10;
        try {
            String e10 = h().e("features");
            if (e10 != null && e10.length() > 0) {
                List<String> g12 = CollectionsKt.g1(StringsKt.split$default(e10, new String[]{","}, false, 0, 6, null));
                int size = g12.size();
                for (int i11 = 0; i11 < size; i11++) {
                    String str = g12.get(i11);
                    int length = str.length() - 1;
                    int i12 = 0;
                    boolean z11 = false;
                    while (i12 <= length) {
                        if (!z11) {
                            i10 = i12;
                        } else {
                            i10 = length;
                        }
                        if (Intrinsics.compare((int) str.charAt(i10), 32) <= 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (!z11) {
                            if (!z10) {
                                z11 = true;
                            } else {
                                i12++;
                            }
                        } else if (!z10) {
                            break;
                        } else {
                            length--;
                        }
                    }
                    g12.set(i11, str.subSequence(i12, length + 1).toString());
                }
                return g12;
            }
        } catch (Exception unused) {
        }
        return CollectionsKt.n();
    }

    @VisibleForTesting
    @Nullable
    public final String P() {
        if (h().f().containsKey("base_url")) {
            String e10 = h().e("base_url");
            if (!yq.r.q(e10)) {
                return null;
            }
            return e10;
        }
        return "https://localhost";
    }

    @VisibleForTesting
    @Nullable
    public final MraidPlacementType Q() {
        String e10 = h().e("placement_type");
        if (Intrinsics.areEqual(e10, Constants.TEMPLATE_TYPE_FULLSCREEN)) {
            return MraidPlacementType.INTERSTITIAL;
        }
        if (Intrinsics.areEqual(e10, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW)) {
            return MraidPlacementType.INLINE;
        }
        return null;
    }

    public final void R(@NotNull t error) {
        Intrinsics.checkNotNullParameter(error, "error");
        HtmlMeasurer htmlMeasurer = this.f70111r;
        if (htmlMeasurer != null) {
            htmlMeasurer.a(error);
        }
        z().d(this, error);
    }

    public final void W(@NotNull t error) {
        Intrinsics.checkNotNullParameter(error, "error");
        HtmlMeasurer htmlMeasurer = this.f70111r;
        if (htmlMeasurer != null) {
            htmlMeasurer.a(error);
        }
        z().b(this, error);
    }

    @Override // tp.f
    public void c() {
        k0 l10 = h().l();
        l0 a10 = l10 != null ? l10.a() : null;
        if (a10 != null) {
            if (a10 instanceof y) {
                Y(((y) a10).a());
                return;
            } else if (a10 instanceof p0) {
                a0(((p0) a10).a());
                return;
            } else {
                R(new t("Invalid resource type (" + a10.getClass().getSimpleName() + "), it should be HtmlResourceSource or UrlResourceSource"));
                return;
            }
        }
        Y(h().m());
    }

    @Override // up.a, tp.f
    public void d() {
        j.k(new r() { // from class: wp.b
            @Override // yq.m
            public final void s() {
                f.Z(f.this);
            }
        });
    }

    @Override // up.a, tp.f
    public void m() {
        Unit unit;
        MraidAdView mraidAdView = this.f70112s;
        if (mraidAdView != null) {
            mraidAdView.N();
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit == null) {
            super.m();
        }
    }

    @Override // tp.f
    public void c(@NotNull final ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(viewGroup, "viewGroup");
        j.k(new r() { // from class: wp.d
            @Override // yq.m
            public final void s() {
                f.T(f.this, viewGroup);
            }
        });
    }
}
