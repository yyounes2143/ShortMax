package com.bytedance.sdk.component.jFA;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Paint;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.DownloadListener;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import com.bytedance.sdk.component.jFA.oJ;
import com.bytedance.sdk.component.utils.jr;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.vungle.ads.internal.model.AdPayload;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba extends FrameLayout {
    private static tB HyG;
    private long BTZ;
    private float HL;
    private float IUZ;
    private boolean Id;
    private AttributeSet Jc;
    private int Ln;
    private ZYk LpP;
    private String Pfn;
    private boolean PiB;
    private boolean QSm;
    private com.bytedance.sdk.component.jFA.ex RZ;
    private long Rl;
    private List<String> Ry;
    private Context UN;
    private volatile WebView WcQ;
    private AtomicBoolean XAo;
    private WebViewClient Xe;
    public int ZYk;
    private View awB;

    /* renamed from: ba  reason: collision with root package name */
    private JSONObject f12778ba;
    private boolean cFZ;
    private boolean cY;
    private long cdg;
    private long dLZ;
    private oJ.InterfaceC0176oJ eZI;
    private com.bytedance.sdk.component.jFA.ZYk.oJ ex;
    private float jFA;

    /* renamed from: jr  reason: collision with root package name */
    private boolean f12779jr;
    private long kkU;

    /* renamed from: mu  reason: collision with root package name */
    private AtomicBoolean f12780mu;
    private jr nke;
    public int oJ;
    private AtomicBoolean ofl;

    /* renamed from: oq  reason: collision with root package name */
    private boolean f12781oq;

    /* renamed from: si  reason: collision with root package name */
    private com.bytedance.sdk.component.jFA.oJ f12782si;

    /* renamed from: so  reason: collision with root package name */
    private float f12783so;
    public int tB;

    /* renamed from: tb  reason: collision with root package name */
    private float f12784tb;

    /* renamed from: wd  reason: collision with root package name */
    private ex f12785wd;

    /* loaded from: classes3.dex */
    public interface ZYk {
    }

    /* loaded from: classes3.dex */
    public interface ex {
    }

    /* loaded from: classes3.dex */
    public static class oJ extends WebViewClient {
        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(final WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (Build.VERSION.SDK_INT < 26) {
                return super.onRenderProcessGone(webView, renderProcessGoneDetail);
            }
            if (webView != null) {
                webView.post(new Runnable() { // from class: com.bytedance.sdk.component.jFA.ba.oJ.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            ViewGroup viewGroup = (ViewGroup) webView.getParent();
                            if (viewGroup != null) {
                                viewGroup.removeView(webView);
                            }
                            webView.destroy();
                        } catch (Exception unused) {
                        }
                    }
                });
                return true;
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public interface tB {
        WebView createWebView(Context context, AttributeSet attributeSet, int i10);
    }

    public ba(Context context) {
        this(oJ(context), false);
    }

    private void QSm() {
        try {
            WebSettings settings = this.WcQ.getSettings();
            if (settings != null) {
                settings.setSavePassword(false);
            }
        } catch (Throwable unused) {
        }
    }

    private void RZ() {
        if (this.WcQ == null) {
            return;
        }
        try {
            this.WcQ.removeJavascriptInterface("searchBoxJavaBridge_");
            this.WcQ.removeJavascriptInterface("accessibility");
            this.WcQ.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable unused) {
        }
    }

    private static Context oJ(Context context) {
        return context;
    }

    private void oq() {
        if (this.nke == null) {
            this.ofl.set(false);
            this.nke = new jr(getContext());
        }
        new Object() { // from class: com.bytedance.sdk.component.jFA.ba.1
        };
        this.ofl.set(true);
    }

    public static void setDataDirectorySuffix(String str) {
        if (Build.VERSION.SDK_INT >= 28) {
            WebView.setDataDirectorySuffix(str);
        }
    }

    public static void setWebViewProvider(tB tBVar) {
        HyG = tBVar;
    }

    private static void tB(Context context) {
    }

    public void BTZ() {
        try {
            this.WcQ.goForward();
        } catch (Throwable unused) {
        }
    }

    public void Pfn() {
        try {
            this.WcQ = oJ(this.Jc, 0);
            ba();
            ZYk(oJ(this.UN));
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    public void PiB() {
        if (this.WcQ != null) {
            this.WcQ.onResume();
        }
    }

    public void Ry() {
        try {
            this.WcQ.pauseTimers();
        } catch (Throwable unused) {
        }
    }

    public void WcQ() {
        try {
            this.WcQ.clearHistory();
        } catch (Throwable unused) {
        }
    }

    public boolean ZYk() {
        return this.f12781oq;
    }

    public void a_(String str) {
        try {
            setJavaScriptEnabled(str);
            this.WcQ.loadUrl(str);
        } catch (Throwable unused) {
        }
    }

    public void awB() {
        if (this.WcQ == null) {
            return;
        }
        try {
            this.WcQ.onPause();
        } catch (Throwable unused) {
        }
    }

    public void b_(String str) {
        try {
            this.WcQ.removeJavascriptInterface(str);
        } catch (Throwable unused) {
        }
    }

    public void ba() {
        if (this.WcQ != null) {
            removeAllViews();
            setBackground(null);
            try {
                this.WcQ.setId(520093704);
            } catch (Throwable unused) {
            }
            addView(this.WcQ, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    public void cFZ() {
        try {
            this.WcQ.stopLoading();
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.WcQ == null) {
            return;
        }
        try {
            this.WcQ.computeScroll();
        } catch (Throwable unused) {
        }
    }

    public boolean dLZ() {
        if (this.WcQ == null) {
            return false;
        }
        try {
            return this.WcQ.canGoForward();
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    public void eZI() {
        if (this.WcQ == null) {
            return;
        }
        try {
            this.WcQ.destroy();
        } catch (Throwable unused) {
        }
    }

    public boolean ex() {
        return this.cY;
    }

    public View getArbitrageLoadingView() {
        return this.awB;
    }

    public int getContentHeight() {
        if (this.WcQ == null) {
            return 0;
        }
        try {
            return this.WcQ.getContentHeight();
        } catch (Throwable unused) {
            return 1;
        }
    }

    public long getLandingPageClickBegin() {
        return this.cdg;
    }

    public long getLandingPageClickEnd() {
        return this.Rl;
    }

    public com.bytedance.sdk.component.jFA.ZYk.oJ getMaterialMeta() {
        return this.ex;
    }

    public String getOriginalUrl() {
        String url;
        if (this.WcQ == null) {
            return null;
        }
        try {
            String originalUrl = this.WcQ.getOriginalUrl();
            if (originalUrl != null && originalUrl.startsWith("data:text/html") && (url = this.WcQ.getUrl()) != null) {
                if (url.startsWith(AdPayload.FILE_SCHEME)) {
                    return url;
                }
                return originalUrl;
            }
            return originalUrl;
        } catch (Throwable unused) {
            return null;
        }
    }

    public int getProgress() {
        if (this.WcQ == null) {
            return 0;
        }
        try {
            return this.WcQ.getProgress();
        } catch (Throwable unused) {
            return 100;
        }
    }

    public String getUrl() {
        if (this.WcQ == null) {
            return null;
        }
        try {
            return this.WcQ.getUrl();
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getUserAgentString() {
        if (this.WcQ == null) {
            return "";
        }
        try {
            return this.WcQ.getSettings().getUserAgentString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public WebView getWebView() {
        return this.WcQ;
    }

    public WebViewClient getWebViewClient() {
        return this.Xe;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public boolean jFA() {
        if (this.WcQ == null) {
            return false;
        }
        try {
            return this.WcQ.canGoBack();
        } catch (Throwable unused) {
            return false;
        }
    }

    public void kkU() {
        try {
            this.WcQ.goBack();
        } catch (Throwable unused) {
        }
    }

    public boolean l_() {
        return this.QSm;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f12780mu.set(true);
        if (this.XAo.get() && !this.ofl.get()) {
            oq();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f12780mu.set(false);
    }

    @Override // android.view.ViewGroup
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ViewParent oJ2;
        try {
            oJ(motionEvent);
            boolean onInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
            if ((motionEvent.getActionMasked() == 2 || motionEvent.getActionMasked() == 0) && this.PiB && (oJ2 = oJ(this)) != null) {
                oJ2.requestDisallowInterceptTouchEvent(true);
            }
            return onInterceptTouchEvent;
        } catch (Throwable unused) {
            return super.onInterceptTouchEvent(motionEvent);
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        try {
            this.WcQ.removeAllViews();
        } catch (Throwable unused) {
        }
    }

    public void setAllowFileAccess(boolean z10) {
        try {
            this.WcQ.getSettings().setAllowFileAccess(z10);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public void setAlpha(float f10) {
        try {
            super.setAlpha(f10);
            this.WcQ.setAlpha(f10);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        try {
            this.WcQ.setBackgroundColor(i10);
        } catch (Throwable unused) {
        }
    }

    public void setBuiltInZoomControls(boolean z10) {
        try {
            this.WcQ.getSettings().setBuiltInZoomControls(z10);
        } catch (Throwable unused) {
        }
    }

    public void setCacheMode(int i10) {
        try {
            this.WcQ.getSettings().setCacheMode(i10);
        } catch (Throwable unused) {
        }
    }

    public void setCalculationMethod(int i10) {
        this.Ln = i10;
    }

    public void setDatabaseEnabled(boolean z10) {
        try {
            this.WcQ.getSettings().setDatabaseEnabled(z10);
        } catch (Throwable unused) {
        }
    }

    public void setDeepShakeValue(float f10) {
        this.HL = f10;
    }

    public void setDefaultFontSize(int i10) {
        try {
            this.WcQ.getSettings().setDefaultFontSize(i10);
        } catch (Throwable unused) {
        }
    }

    public void setDefaultTextEncodingName(String str) {
        try {
            this.WcQ.getSettings().setDefaultTextEncodingName(str);
        } catch (Throwable unused) {
        }
    }

    public void setDisplayZoomControls(boolean z10) {
        try {
            this.WcQ.getSettings().setDisplayZoomControls(z10);
        } catch (Throwable unused) {
        }
    }

    public void setDomStorageEnabled(boolean z10) {
        try {
            this.WcQ.getSettings().setDomStorageEnabled(z10);
        } catch (Throwable unused) {
        }
    }

    public void setDownloadListener(DownloadListener downloadListener) {
        try {
            this.WcQ.setDownloadListener(downloadListener);
        } catch (Throwable unused) {
        }
    }

    public void setIsPreventTouchEvent(boolean z10) {
        this.PiB = z10;
    }

    public void setJavaScriptCanOpenWindowsAutomatically(boolean z10) {
        try {
            this.WcQ.getSettings().setJavaScriptCanOpenWindowsAutomatically(z10);
        } catch (Throwable unused) {
        }
    }

    public void setJavaScriptEnabled(boolean z10) {
        try {
            this.WcQ.getSettings().setJavaScriptEnabled(z10);
        } catch (Throwable unused) {
        }
    }

    public void setLandingPage(boolean z10) {
        this.cFZ = z10;
    }

    public void setLandingPageClickBegin(long j10) {
        this.cdg = j10;
    }

    public void setLandingPageClickEnd(long j10) {
        this.Rl = j10;
    }

    @Override // android.view.View
    public void setLayerType(int i10, Paint paint) {
        try {
            this.WcQ.setLayerType(i10, paint);
        } catch (Throwable unused) {
        }
    }

    public void setLayoutAlgorithm(WebSettings.LayoutAlgorithm layoutAlgorithm) {
        try {
            this.WcQ.getSettings().setLayoutAlgorithm(layoutAlgorithm);
        } catch (Throwable unused) {
        }
    }

    public void setLoadWithOverviewMode(boolean z10) {
        try {
            this.WcQ.getSettings().setLoadWithOverviewMode(z10);
        } catch (Throwable unused) {
        }
    }

    public void setLpPreRender(boolean z10) {
        this.QSm = z10;
    }

    public void setMaterialMeta(com.bytedance.sdk.component.jFA.ZYk.oJ oJVar) {
        this.ex = oJVar;
    }

    public void setMixedContentMode(int i10) {
        try {
            this.WcQ.getSettings().setMixedContentMode(i10);
        } catch (Throwable unused) {
        }
    }

    public void setNetworkAvailable(boolean z10) {
        try {
            this.WcQ.setNetworkAvailable(z10);
        } catch (Throwable unused) {
        }
    }

    public void setOnShakeListener(ZYk zYk) {
        this.LpP = zYk;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i10) {
        try {
            this.WcQ.setOverScrollMode(i10);
            super.setOverScrollMode(i10);
        } catch (Throwable unused) {
        }
    }

    public void setPreError(boolean z10) {
        this.f12779jr = z10;
    }

    public void setPreFinish(boolean z10) {
        this.Id = z10;
    }

    public void setPreProgressHundred(boolean z10) {
        this.cY = z10;
    }

    public void setPreStart(boolean z10) {
        this.f12781oq = z10;
    }

    public void setRecycler(boolean z10) {
        if (this.WcQ != null && (this.WcQ instanceof Pfn)) {
            ((Pfn) this.WcQ).setRecycler(z10);
        }
    }

    public void setShakeValue(float f10) {
        this.f12784tb = f10;
    }

    public void setSupportZoom(boolean z10) {
        try {
            this.WcQ.getSettings().setSupportZoom(z10);
        } catch (Throwable unused) {
        }
    }

    public void setTag(String str) {
        this.Pfn = str;
        com.bytedance.sdk.component.jFA.oJ oJVar = this.f12782si;
        if (oJVar != null) {
            oJVar.oJ(str);
        }
        com.bytedance.sdk.component.jFA.ex exVar = this.RZ;
        if (exVar != null) {
            exVar.oJ(str);
        }
    }

    public void setTouchStateListener(ex exVar) {
        this.f12785wd = exVar;
    }

    public void setUseWideViewPort(boolean z10) {
        try {
            this.WcQ.getSettings().setUseWideViewPort(z10);
        } catch (Throwable unused) {
        }
    }

    public void setUserAgentString(String str) {
        try {
            this.WcQ.getSettings().setUserAgentString(str);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        try {
            super.setVisibility(i10);
            this.WcQ.setVisibility(i10);
        } catch (Throwable unused) {
        }
    }

    public void setWebChromeClient(WebChromeClient webChromeClient) {
        try {
            this.WcQ.setWebChromeClient(webChromeClient);
        } catch (Throwable unused) {
        }
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        try {
            if (webViewClient instanceof ex) {
                setTouchStateListener((ex) webViewClient);
            } else {
                setTouchStateListener(null);
            }
            if (webViewClient == null) {
                webViewClient = new oJ();
            }
            this.Xe = webViewClient;
            this.WcQ.setWebViewClient(new cFZ(this.eZI, webViewClient, this.Ry));
        } catch (Throwable unused) {
        }
    }

    public void setWriggleValue(float f10) {
        this.IUZ = f10;
    }

    public void si() {
        try {
            this.WcQ.clearView();
        } catch (Throwable unused) {
        }
    }

    public void so() {
        try {
            this.WcQ.reload();
        } catch (Throwable unused) {
        }
    }

    public ba(Context context, boolean z10) {
        super(oJ(context));
        this.f12783so = 0.0f;
        this.jFA = 0.0f;
        this.kkU = 0L;
        this.dLZ = 0L;
        this.BTZ = 0L;
        this.PiB = false;
        this.f12784tb = 20.0f;
        this.IUZ = 50.0f;
        this.f12780mu = new AtomicBoolean();
        this.XAo = new AtomicBoolean();
        this.ofl = new AtomicBoolean();
        this.UN = context;
        if (z10) {
            return;
        }
        try {
            this.WcQ = oJ((AttributeSet) null, 0);
            ba();
        } catch (Throwable unused) {
        }
        ZYk(oJ(context));
    }

    private void ZYk(Context context) {
        tB(context);
        QSm();
        RZ();
    }

    private void setJavaScriptEnabled(String str) {
        WebSettings settings;
        try {
            if (TextUtils.isEmpty(str) || (settings = this.WcQ.getSettings()) == null) {
                return;
            }
            if (Uri.parse(str).getScheme().equalsIgnoreCase("file")) {
                settings.setJavaScriptEnabled(false);
            } else {
                settings.setJavaScriptEnabled(true);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public String getTag() {
        return this.Pfn;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void oJ(boolean z10, int i10, int i11, List<Integer> list, int i12, List<String> list2) {
        if (z10 && this.WcQ != null && (this.WcQ instanceof Pfn)) {
            this.f12782si = new com.bytedance.sdk.component.jFA.oJ(this.UN, i10, i11, list, i12);
            this.Ry = list2;
            if (!TextUtils.isEmpty(this.Pfn)) {
                this.f12782si.oJ(this.Pfn);
            }
            ((Pfn) this.WcQ).setTouchListenerProxy(this.f12782si);
            this.eZI = this.f12782si.oJ();
        }
    }

    public boolean tB() {
        return this.Id;
    }

    private static boolean tB(View view) {
        try {
            Class<?> loadClass = view.getClass().getClassLoader().loadClass("android.support.v4.view.ScrollingView");
            if (loadClass != null) {
                if (loadClass.isInstance(view)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        try {
            Class<?> loadClass2 = view.getClass().getClassLoader().loadClass("androidx.core.view.ScrollingView");
            if (loadClass2 != null) {
                return loadClass2.isInstance(view);
            }
            return false;
        } catch (Throwable unused2) {
            return false;
        }
    }

    private static boolean ZYk(View view) {
        try {
            Class<?> loadClass = view.getClass().getClassLoader().loadClass("android.support.v4.view.ViewPager");
            if (loadClass != null) {
                if (loadClass.isInstance(view)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        try {
            Class<?> loadClass2 = view.getClass().getClassLoader().loadClass("androidx.viewpager.widget.ViewPager");
            if (loadClass2 != null) {
                return loadClass2.isInstance(view);
            }
            return false;
        } catch (Throwable unused2) {
            return false;
        }
    }

    public void oJ(int i10, long j10) {
        if (this.WcQ == null || !(this.WcQ instanceof Pfn)) {
            return;
        }
        this.RZ = new com.bytedance.sdk.component.jFA.ex(this.UN, this.f12782si, i10, j10, this);
        if (!TextUtils.isEmpty(this.Pfn)) {
            this.RZ.oJ(this.Pfn);
        }
        ((Pfn) this.WcQ).setTouchListenerProxy(this.RZ);
    }

    public void oJ(boolean z10, View view) {
        if (z10) {
            this.awB = view;
            view.setVisibility(8);
            View view2 = this.awB;
            if (view2 == null || view2.getParent() != null) {
                return;
            }
            addView(this.awB, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    private WebView oJ(AttributeSet attributeSet, int i10) {
        tB tBVar = HyG;
        if (tBVar != null) {
            return tBVar.createWebView(getContext(), attributeSet, i10);
        }
        if (attributeSet == null) {
            return new WebView(oJ(this.UN));
        }
        return new WebView(oJ(this.UN), attributeSet);
    }

    @TargetApi(19)
    public void oJ(String str, Map<String, String> map) {
        try {
            setJavaScriptEnabled(str);
            this.WcQ.loadUrl(str, map);
        } catch (Throwable unused) {
        }
    }

    public void oJ(String str, String str2, String str3, String str4, String str5) {
        try {
            setJavaScriptEnabled(str);
            this.WcQ.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } catch (Throwable unused) {
        }
    }

    public void oJ(boolean z10) {
        try {
            this.WcQ.clearCache(z10);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
    }

    protected ViewParent oJ(View view) {
        ViewParent parent = view.getParent();
        if ((parent instanceof AbsListView) || (parent instanceof ScrollView) || (parent instanceof HorizontalScrollView) || !(parent instanceof View)) {
            return parent;
        }
        View view2 = (View) parent;
        return (ZYk(view2) || tB(view2)) ? parent : oJ(view2);
    }

    @SuppressLint({"JavascriptInterface"})
    public void oJ(Object obj, String str) {
        try {
            this.WcQ.addJavascriptInterface(obj, str);
        } catch (Throwable unused) {
        }
    }

    private void oJ(MotionEvent motionEvent) {
        if (!this.cFZ || this.ex == null) {
            return;
        }
        if ((this.Pfn != null || this.f12778ba != null) && motionEvent != null) {
            try {
                int action = motionEvent.getAction();
                if (action != 0) {
                    if (action == 1 || action == 3) {
                        this.f12778ba.put("start_x", String.valueOf(this.f12783so));
                        this.f12778ba.put("start_y", String.valueOf(this.jFA));
                        this.f12778ba.put("offset_x", String.valueOf(motionEvent.getRawX() - this.f12783so));
                        this.f12778ba.put("offset_y", String.valueOf(motionEvent.getRawY() - this.jFA));
                        this.f12778ba.put("url", String.valueOf(getUrl()));
                        this.f12778ba.put(ITTVideoEngineEventSource.KEY_TAG, "");
                        this.dLZ = System.currentTimeMillis();
                        if (this.WcQ != null) {
                            this.Rl = this.dLZ;
                        }
                        this.f12778ba.put("down_time", this.kkU);
                        this.f12778ba.put("up_time", this.dLZ);
                        if (com.bytedance.sdk.component.jFA.oJ.oJ.oJ().ZYk() != null) {
                            long j10 = this.BTZ;
                            long j11 = this.kkU;
                            if (j10 != j11) {
                                this.BTZ = j11;
                                com.bytedance.sdk.component.jFA.oJ.oJ.oJ().ZYk().oJ(this.ex, this.Pfn, "in_web_click", this.f12778ba, this.dLZ - this.kkU);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                this.f12783so = motionEvent.getRawX();
                this.jFA = motionEvent.getRawY();
                this.kkU = System.currentTimeMillis();
                this.f12778ba = new JSONObject();
                if (this.WcQ == null) {
                    return;
                }
                this.cdg = this.kkU;
            } catch (Throwable unused) {
            }
        }
    }
}
