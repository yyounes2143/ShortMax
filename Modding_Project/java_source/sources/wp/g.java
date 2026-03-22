package wp;

import android.webkit.WebView;
import io.bidmachine.iab.mraid.MraidAdView;
import io.bidmachine.iab.mraid.m;
import io.bidmachine.rendering.measurer.HtmlMeasurer;
import io.bidmachine.rendering.model.PrivacySheetParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.t;
@Metadata
/* loaded from: classes8.dex */
public final class g implements MraidAdView.e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final f f70114a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final up.c f70115b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final jq.b f70116c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final HtmlMeasurer f70117d;

    public g(@NotNull f htmlAdForm, @NotNull up.c adFormListener, @NotNull jq.b eventCallback, @Nullable HtmlMeasurer htmlMeasurer) {
        Intrinsics.checkNotNullParameter(htmlAdForm, "htmlAdForm");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.f70114a = htmlAdForm;
        this.f70115b = adFormListener;
        this.f70116c = eventCallback;
        this.f70117d = htmlMeasurer;
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.e
    public void a(@NotNull MraidAdView mraidAdView, @NotNull m mraidOrientationProperties) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(mraidOrientationProperties, "mraidOrientationProperties");
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.e
    public void b(@NotNull MraidAdView mraidAdView) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.e
    public void c(@NotNull MraidAdView mraidAdView) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        this.f70116c.onClose();
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.e
    public void d(@NotNull MraidAdView mraidAdView, @NotNull qm.a iabError) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(iabError, "iabError");
        f fVar = this.f70114a;
        String d10 = iabError.d();
        Intrinsics.checkNotNullExpressionValue(d10, "iabError.message");
        fVar.R(new t(d10));
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.e
    public void e(@NotNull MraidAdView mraidAdView, @NotNull String url) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(url, "url");
        HtmlMeasurer htmlMeasurer = this.f70117d;
        if (htmlMeasurer != null) {
            htmlMeasurer.onClicked();
        }
        this.f70116c.a(url);
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.e
    public void f(@NotNull MraidAdView mraidAdView, @NotNull String url) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(url, "url");
        e(mraidAdView, url);
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.e
    public void g(@NotNull MraidAdView mraidAdView, @NotNull PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.e
    public void h(@NotNull MraidAdView mraidAdView, boolean z10) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        this.f70116c.d(z10);
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.e
    public void i(@NotNull MraidAdView mraidAdView) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.e
    public void j(@NotNull MraidAdView mraidAdView, @NotNull String url) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(url, "url");
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.e
    public void k(@NotNull MraidAdView mraidAdView, @NotNull qm.a iabError) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(iabError, "iabError");
        f fVar = this.f70114a;
        String d10 = iabError.d();
        Intrinsics.checkNotNullExpressionValue(d10, "iabError.message");
        fVar.W(new t(d10));
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.e
    public void l(@NotNull MraidAdView mraidAdView, @NotNull qm.a iabError) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(iabError, "iabError");
        up.c cVar = this.f70115b;
        f fVar = this.f70114a;
        String d10 = iabError.d();
        Intrinsics.checkNotNullExpressionValue(d10, "iabError.message");
        cVar.e(fVar, new t(d10));
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.e
    public void m(@NotNull MraidAdView mraidAdView, @NotNull String url, @NotNull WebView webView, boolean z10) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(webView, "webView");
        HtmlMeasurer htmlMeasurer = this.f70117d;
        if (htmlMeasurer != null) {
            htmlMeasurer.T(webView);
        }
        this.f70115b.a(this.f70114a);
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.e
    public void n(@NotNull MraidAdView mraidAdView, @NotNull String url) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(url, "url");
        e(mraidAdView, url);
    }
}
