package io.bidmachine.iab.mraid;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import io.bidmachine.iab.mraid.MraidWebView;
import io.bidmachine.iab.utils.Logger;
import java.io.ByteArrayInputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes7.dex */
public class s {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final a f54638a;
    @NonNull
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final MraidWebView f54639b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f54640c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f54641d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54642e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private m f54643f;

    /* loaded from: classes7.dex */
    public interface a {
        void a(boolean z10);

        void b();

        void c(@NonNull qm.a aVar);

        void d(boolean z10);

        void e(@Nullable String str);

        void f(@NonNull String str);

        void g(@Nullable String str);

        void h(@NonNull String str);

        void i(@Nullable String str);

        void j(@NonNull String str);

        void k(@NonNull m mVar);

        void onClose();
    }

    /* loaded from: classes7.dex */
    class b implements MraidWebView.a {
        b() {
        }

        @Override // io.bidmachine.iab.mraid.MraidWebView.a
        public void a(boolean z10) {
            if (s.this.f54640c) {
                s.this.m(z10);
            }
            s.this.f54638a.a(z10);
        }
    }

    /* loaded from: classes7.dex */
    private class c extends WebViewClient {
        private c() {
        }

        @NonNull
        private WebResourceResponse a() {
            String h10 = o.h();
            Charset charset = StandardCharsets.UTF_8;
            return new WebResourceResponse("text/javascript", charset.name(), new ByteArrayInputStream(h10.getBytes(charset)));
        }

        @SuppressLint({"DefaultLocale"})
        private void b(String str, String str2, int i10) {
            h.c("MraidWebViewController", "onError: %s / %s / %d", str, str2, Integer.valueOf(i10));
            if (str2 != null && str2.contains("ERR_INTERNET_DISCONNECTED")) {
                s.this.f54642e = true;
            }
        }

        @VisibleForTesting
        boolean c(@NonNull Uri uri) {
            return Constants.AD_MRAID_JS_FILE_NAME.equals(uri.getLastPathSegment());
        }

        @VisibleForTesting
        boolean d(@NonNull String str) {
            return c(Uri.parse(str.toLowerCase(Locale.US)));
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            h.c("MraidWebViewController", "onPageFinished", new Object[0]);
            if (!s.this.f54640c) {
                s.this.f54640c = true;
                s.this.f54638a.j(str);
                s.this.u().l();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            h.c("MraidWebViewController", "onPageStarted", new Object[0]);
        }

        @Override // android.webkit.WebViewClient
        @RequiresApi(api = 23)
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            Uri url = webResourceRequest.getUrl();
            b(url != null ? url.toString() : null, webResourceError.getDescription().toString(), webResourceError.getErrorCode());
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            h.c("MraidWebViewController", "onRenderProcessGone", new Object[0]);
            s.this.s();
            s.this.f54638a.c(qm.a.f("WebViewClient - onRenderProcessGone"));
            return true;
        }

        @Override // android.webkit.WebViewClient
        @Nullable
        public WebResourceResponse shouldInterceptRequest(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest) {
            if (c(webResourceRequest.getUrl())) {
                return a();
            }
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith("mraid://")) {
                s.this.c(str);
                return true;
            } else if (!rm.b.d(str)) {
                s.this.r(str);
                return true;
            } else {
                rm.b.c(s.this.f54639b, str);
                return true;
            }
        }

        /* synthetic */ c(s sVar, b bVar) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(@NonNull WebView webView, @NonNull String str) {
            if (d(str)) {
                return a();
            }
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            b(str2, str, i10);
            super.onReceivedError(webView, i10, str, str2);
        }
    }

    public s(@NonNull Context context, @NonNull a aVar) {
        this.f54638a = aVar;
        MraidWebView mraidWebView = new MraidWebView(context);
        this.f54639b = mraidWebView;
        mraidWebView.setWebViewClient(new c(this, null));
        mraidWebView.setListener(new b());
        this.f54641d = false;
        this.f54642e = false;
    }

    private void a() {
        p("mraid.nativeCallComplete();");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(@NonNull String str) {
        Map<String, String> p10;
        h.c("MraidWebViewController", "handleJsCommand - %s", str);
        try {
            p10 = o.p(str);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        if (p10 == null) {
            return;
        }
        String str2 = p10.get("command");
        if (str2 == null) {
            h.h("MraidWebViewController", "handleJsCommand not found", new Object[0]);
            return;
        }
        d(str2, p10);
        a();
    }

    private void d(@NonNull String str, @NonNull Map<String, String> map) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1886160473:
                if (str.equals("playVideo")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1700226527:
                if (str.equals("openPrivacySheet")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1289167206:
                if (str.equals("expand")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1097519099:
                if (str.equals("loaded")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1041060124:
                if (str.equals("noFill")) {
                    c10 = 4;
                    break;
                }
                break;
            case -934437708:
                if (str.equals("resize")) {
                    c10 = 5;
                    break;
                }
                break;
            case -733616544:
                if (str.equals("createCalendarEvent")) {
                    c10 = 6;
                    break;
                }
                break;
            case 3417674:
                if (str.equals(MRAIDPresenter.OPEN)) {
                    c10 = 7;
                    break;
                }
                break;
            case 94756344:
                if (str.equals("close")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 133423073:
                if (str.equals(MRAIDPresenter.SET_ORIENTATION_PROPERTIES)) {
                    c10 = '\t';
                    break;
                }
                break;
            case 459238621:
                if (str.equals("storePicture")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1614272768:
                if (str.equals("useCustomClose")) {
                    c10 = 11;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.f54638a.e(map.get("url"));
                return;
            case 1:
                String str2 = map.get("data");
                if (TextUtils.isEmpty(str2)) {
                    h.d("MraidWebViewController", "data is null or empty", new Object[0]);
                    return;
                }
                try {
                    this.f54638a.h(new String(Base64.decode(str2, 2)));
                    return;
                } catch (Throwable unused) {
                    h.d("MraidWebViewController", "data must be base64 encoded json", new Object[0]);
                    return;
                }
            case 2:
                h.c("MraidWebViewController", "mraid.expand is not supported", new Object[0]);
                return;
            case 3:
                this.f54638a.b();
                return;
            case 4:
                this.f54638a.c(qm.a.g("Fired noFill event from mraid.js"));
                return;
            case 5:
                h.c("MraidWebViewController", "mraid.resize is not supported", new Object[0]);
                return;
            case 6:
                this.f54638a.i(map.get("eventJSON"));
                return;
            case 7:
                String str3 = map.get("url");
                if (TextUtils.isEmpty(str3)) {
                    h.d("MraidWebViewController", "url is null or empty", new Object[0]);
                    return;
                } else {
                    r(str3);
                    return;
                }
            case '\b':
                this.f54638a.onClose();
                return;
            case '\t':
                m mVar = new m(Boolean.parseBoolean(map.get("allowOrientationChange")), m.a(map.get("forceOrientation")));
                this.f54643f = mVar;
                this.f54638a.k(mVar);
                return;
            case '\n':
                this.f54638a.g(map.get("url"));
                return;
            case 11:
                boolean parseBoolean = Boolean.parseBoolean(map.get("useCustomClose"));
                if (this.f54641d != parseBoolean) {
                    this.f54641d = parseBoolean;
                    this.f54638a.d(parseBoolean);
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(@NonNull String str) {
        if (this.f54639b.o()) {
            this.f54638a.f(str);
            this.f54639b.n();
            return;
        }
        h.c("MraidWebViewController", "Can't open url because webView wasn't clicked", new Object[0]);
    }

    public void g(int i10, int i11) {
        p(String.format("(function click(x, y) {var ev = new MouseEvent('click', {    'view': window,    'bubbles': true,    'cancelable': true,    'screenX': x,    'screenY': y});var el = document.elementFromPoint(x, y);if (el !== null) {      el.dispatchEvent(ev); }})(%s, %s)", Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    public void h(@Nullable Logger.LogLevel logLevel) {
        if (logLevel == Logger.LogLevel.debug) {
            p("mraid.logLevel = mraid.LogLevelEnum.DEBUG;");
        } else if (logLevel == Logger.LogLevel.info) {
            p("mraid.logLevel = mraid.LogLevelEnum.INFO;");
        } else if (logLevel == Logger.LogLevel.warning) {
            p("mraid.logLevel = mraid.LogLevelEnum.WARNING;");
        } else if (logLevel == Logger.LogLevel.error) {
            p("mraid.logLevel = mraid.LogLevelEnum.ERROR;");
        } else if (logLevel == Logger.LogLevel.none) {
            p("mraid.logLevel = mraid.LogLevelEnum.NONE;");
        }
    }

    public void i(@NonNull MraidPlacementType mraidPlacementType) {
        p("mraid.setPlacementType('" + mraidPlacementType.b() + "');");
    }

    public void j(@NonNull n nVar) {
        Rect j10 = nVar.j();
        Rect i10 = nVar.i();
        p("mraid.setScreenSize(" + j10.width() + "," + j10.height() + ");mraid.setMaxSize(" + i10.width() + "," + i10.height() + ");mraid.setCurrentPosition(" + sm.q.M(nVar.a()) + ");mraid.setDefaultPosition(" + sm.q.M(nVar.g()) + ");mraid.fireSizeChangeEvent(" + sm.q.N(nVar.a()) + ");");
    }

    public void k(@NonNull MraidViewState mraidViewState) {
        p("mraid.fireStateChangeEvent('" + mraidViewState.toJsString() + "');");
    }

    public void l(@NonNull j jVar) {
        p("mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, " + jVar.b() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, " + jVar.c() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, " + jVar.d() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, " + jVar.e() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, " + jVar.f() + ");");
    }

    public void m(boolean z10) {
        p("mraid.fireViewableChangeEvent(" + z10 + ");");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(@Nullable String str) {
        this.f54639b.i(str);
    }

    public void s() {
        MraidWebView u10 = u();
        sm.q.J(u10);
        u10.destroy();
    }

    @Nullable
    public m t() {
        return this.f54643f;
    }

    @NonNull
    public MraidWebView u() {
        return this.f54639b;
    }

    public boolean v() {
        return this.f54642e;
    }

    public boolean w() {
        return this.f54641d;
    }

    public boolean x() {
        return this.f54639b.k();
    }

    public void y(@Nullable String str, @NonNull String str2, @Nullable String str3, @Nullable String str4) {
        this.f54640c = false;
        u().loadDataWithBaseURL(str, str2, str3, str4, null);
    }

    public void z() {
        p("mraid.fireReadyEvent();");
    }
}
