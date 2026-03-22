package io.bidmachine.iab.mraid;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.applog.util.WebViewJsUtil;
import sm.r;
/* loaded from: classes7.dex */
public class MraidWebView extends WebView {
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private static final c f54577g = new c(null);
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final u f54578a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final sm.r f54579b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private a f54580c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f54581d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54582e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f54583f;

    /* loaded from: classes7.dex */
    public interface a {
        void a(boolean z10);
    }

    /* loaded from: classes7.dex */
    class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            MraidWebView.this.f54578a.onTouchEvent(motionEvent);
            int action = motionEvent.getAction();
            if ((action == 0 || action == 1) && !view.hasFocus()) {
                view.requestFocus();
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes7.dex */
    private static final class c extends WebChromeClient {
        private c() {
        }

        private boolean a(JsResult jsResult) {
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        @SuppressLint({"DefaultLocale"})
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            String str;
            if (consoleMessage == null || consoleMessage.message() == null) {
                return false;
            }
            if (h.a() && !consoleMessage.message().contains("Uncaught ReferenceError")) {
                String message = consoleMessage.message();
                if (consoleMessage.sourceId() == null) {
                    str = "";
                } else {
                    str = " at " + consoleMessage.sourceId();
                }
                h.c("JS console", String.format("%s%s:%d", message, str, Integer.valueOf(consoleMessage.lineNumber())), new Object[0]);
            }
            if (h.b() && consoleMessage.message().contains("AppodealAlert")) {
                h.d("Appodeal", consoleMessage.message().replace("AppodealAlert:", ""), new Object[0]);
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            h.c("JS alert", str2, new Object[0]);
            return a(jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            h.c("JS confirm", str2, new Object[0]);
            return a(jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            h.c("JS prompt", str2, new Object[0]);
            return a(jsPromptResult);
        }

        /* synthetic */ c(b bVar) {
            this();
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public MraidWebView(@NonNull Context context) {
        super(context);
        this.f54581d = false;
        this.f54582e = false;
        this.f54583f = false;
        setScrollContainer(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setScrollBarStyle(33554432);
        setFocusableInTouchMode(false);
        this.f54578a = new u(context);
        setOnTouchListener(new b());
        setWebChromeClient(f54577g);
        WebSettings settings = getSettings();
        settings.setSupportZoom(false);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        setBackgroundColor(0);
        this.f54579b = new sm.r(context, this, new r.a() { // from class: io.bidmachine.iab.mraid.q
            @Override // sm.r.a
            public final void a(boolean z10) {
                MraidWebView.this.f(z10);
            }
        });
    }

    private void d() {
        h.c("MraidWebView", "onPause", new Object[0]);
        try {
            onPause();
        } catch (Throwable th2) {
            h.e("MraidWebView", th2);
        }
        this.f54582e = true;
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(String str) {
        h.c("MraidWebView", "evaluate js complete: %s", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(boolean z10) {
        h();
    }

    private void g() {
        h.c("MraidWebView", "onResume", new Object[0]);
        try {
            onResume();
        } catch (Throwable th2) {
            h.e("MraidWebView", th2);
        }
        this.f54582e = false;
        h();
    }

    private void h() {
        boolean z10;
        if (!this.f54582e && this.f54579b.i()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 != this.f54581d) {
            this.f54581d = z10;
            a aVar = this.f54580c;
            if (aVar != null) {
                aVar.a(z10);
            }
        }
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f54583f = true;
        try {
            m();
            removeAllViews();
            this.f54579b.j();
            super.destroy();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void i(String str) {
        if (j()) {
            h.c("MraidWebView", "can't evaluating js: WebView is destroyed", new Object[0]);
        } else if (TextUtils.isEmpty(str)) {
            h.c("MraidWebView", "can't evaluating js: js is empty", new Object[0]);
        } else {
            try {
                h.c("MraidWebView", "evaluating js: %s", str);
                evaluateJavascript(str, new ValueCallback() { // from class: io.bidmachine.iab.mraid.r
                    @Override // android.webkit.ValueCallback
                    public final void onReceiveValue(Object obj) {
                        MraidWebView.e((String) obj);
                    }
                });
            } catch (Throwable th2) {
                h.d("MraidWebView", th2.getMessage(), new Object[0]);
                h.c("MraidWebView", "loading url: %s", str);
                loadUrl(WebViewJsUtil.JS_URL_PREFIX + str);
            }
        }
    }

    public boolean j() {
        return this.f54583f;
    }

    public boolean k() {
        return this.f54581d;
    }

    public void l() {
        this.f54579b.k();
    }

    public void m() {
        stopLoading();
        loadUrl("");
        d();
    }

    public void n() {
        this.f54578a.b();
    }

    public boolean o() {
        return this.f54578a.a();
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        if (i10 == 0) {
            g();
        } else {
            d();
        }
    }

    @Override // android.view.View
    protected boolean overScrollBy(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10) {
        return false;
    }

    public void setListener(@Nullable a aVar) {
        this.f54580c = aVar;
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }
}
