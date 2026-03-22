package com.bytedance.sdk.openadsdk.core.so;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.jFA.ba;
import com.bytedance.sdk.openadsdk.core.so.tB;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn extends com.bytedance.sdk.component.jFA.ba implements tB.InterfaceC0227tB {
    private int BTZ;
    protected boolean Pfn;
    private List<String> PiB;
    private ZYk WcQ;
    private int awB;

    /* renamed from: ba  reason: collision with root package name */
    AtomicBoolean f13256ba;
    AtomicBoolean cFZ;
    private String dLZ;
    private long eZI;
    protected boolean ex;
    private tB jFA;
    private com.bytedance.sdk.openadsdk.core.model.cY kkU;

    /* renamed from: so  reason: collision with root package name */
    private cY f13257so;

    /* loaded from: classes3.dex */
    public interface ZYk {
        View ZYk();

        void k_();

        View oJ();

        void oJ(int i10, int i11);

        void oJ(View view, int i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class oJ extends ba.oJ {
        public static final Set<String> oJ = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.core.so.Pfn.oJ.1
            {
                add(".jpeg");
                add(".png");
                add(".bmp");
                add(".gif");
                add(".jpg");
                add(".webp");
            }
        };
        tB.InterfaceC0227tB ZYk;

        public oJ(tB.InterfaceC0227tB interfaceC0227tB) {
            this.ZYk = interfaceC0227tB;
        }

        private void oJ(String str) {
            int lastIndexOf;
            tB.InterfaceC0227tB interfaceC0227tB;
            if (!TextUtils.isEmpty(str) && (lastIndexOf = str.lastIndexOf(".")) > 0) {
                if (!oJ.contains(str.substring(lastIndexOf).toLowerCase()) || (interfaceC0227tB = this.ZYk) == null) {
                    return;
                }
                interfaceC0227tB.ZYk(str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            tB.InterfaceC0227tB interfaceC0227tB = this.ZYk;
            if (interfaceC0227tB != null) {
                interfaceC0227tB.oJ();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            super.onReceivedError(webView, i10, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (webResourceRequest != null && webResourceResponse != null && webResourceRequest.getUrl() != null) {
                if (webResourceRequest.isForMainFrame()) {
                    oJ(webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode(), "");
                }
                oJ(webResourceRequest.getUrl().toString());
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            this.ZYk.oJ(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
                return;
            }
            oJ(webResourceRequest.getUrl().toString());
        }

        private void oJ(String str, int i10, String str2) {
            tB.InterfaceC0227tB interfaceC0227tB = this.ZYk;
            if (interfaceC0227tB != null) {
                interfaceC0227tB.oJ(106, i10);
            }
        }
    }

    public Pfn(Context context) {
        super(context);
        this.ex = false;
        this.Pfn = false;
        this.f13256ba = new AtomicBoolean(false);
        this.cFZ = new AtomicBoolean(false);
        this.BTZ = 0;
    }

    private void oq() {
        if (this.PiB == null) {
            com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.kkU, this.dLZ, "dsp_html_success_url", (JSONObject) null);
        } else {
            com.bytedance.sdk.openadsdk.ex.tB.oJ(new com.bytedance.sdk.component.so.so("dsp_html_error_url") { // from class: com.bytedance.sdk.openadsdk.core.so.Pfn.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (Pfn.this.PiB != null && Pfn.this.cFZ.compareAndSet(false, true)) {
                            JSONObject jSONObject = new JSONObject();
                            JSONArray jSONArray = new JSONArray();
                            for (String str : Pfn.this.PiB) {
                                jSONArray.put(str);
                            }
                            jSONObject.put("url", jSONArray);
                            com.bytedance.sdk.openadsdk.ex.tB.ZYk(Pfn.this.kkU, Pfn.this.dLZ, "dsp_html_error_url", jSONObject);
                            Pfn.this.PiB = null;
                        }
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    public void QSm() {
        String str;
        this.f13256ba.set(false);
        String OP = this.kkU.OP();
        if (TextUtils.isEmpty(OP)) {
            return;
        }
        String oJ2 = com.bytedance.sdk.openadsdk.core.dLZ.Pfn.oJ(OP);
        if (TextUtils.isEmpty(oJ2)) {
            str = OP;
        } else {
            str = oJ2;
        }
        this.BTZ = 0;
        oJ(null, str, "text/html", "UTF-8", null);
        this.eZI = SystemClock.elapsedRealtime();
    }

    public void RZ() {
        ZYk zYk = this.WcQ;
        if (zYk != null) {
            zYk.k_();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("render_duration", SystemClock.elapsedRealtime() - this.eZI);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.kkU, this.dLZ, "render_html_success", jSONObject);
    }

    @Override // com.bytedance.sdk.component.jFA.ba
    public void eZI() {
        this.jFA.ZYk();
        super.eZI();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.jFA.ba, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.ex) {
            this.jFA.oJ(getWebView());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.jFA.ba, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.jFA.oJ();
        super.onDetachedFromWindow();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("rate", this.awB / 100.0f);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.kkU, this.dLZ, "load_rate", jSONObject);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        boolean z10;
        super.onVisibilityChanged(view, i10);
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.Pfn = z10;
        this.jFA.oJ(z10);
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.tB.InterfaceC0227tB
    public void ZYk(String str) {
        if (this.PiB == null) {
            this.PiB = new ArrayList();
        }
        this.PiB.add(str);
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, ZYk zYk, String str) {
        this.WcQ = zYk;
        this.kkU = cYVar;
        this.dLZ = str;
        this.jFA = new tB();
        this.f13257so = new cY(getContext());
        setWebViewClient(new oJ(this));
        setWebChromeClient(new WebChromeClient() { // from class: com.bytedance.sdk.openadsdk.core.so.Pfn.1
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i10) {
                Pfn.this.awB = i10;
                super.onProgressChanged(webView, i10);
                if (i10 >= 100) {
                    Pfn.this.oJ();
                }
            }
        });
        com.bytedance.sdk.component.utils.jFA.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.Pfn.2
            @Override // java.lang.Runnable
            @SuppressLint({"ClickableViewAccessibility"})
            public void run() {
                WebView webView = Pfn.this.getWebView();
                if (webView != null) {
                    webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.so.Pfn.2.1
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            Pfn.this.f13257so.onTouchEvent(motionEvent);
                            return false;
                        }
                    });
                }
            }
        });
    }

    /* loaded from: classes3.dex */
    public static class tB {
        protected int oJ = 0;
        private com.bytedance.sdk.openadsdk.core.dLZ.ba ZYk = com.bytedance.sdk.openadsdk.core.dLZ.ba.oJ();

        tB() {
        }

        public void ZYk() {
            oJ();
        }

        public void oJ(WebView webView) {
            if (webView != null && this.oJ == 0) {
                if (this.ZYk == null) {
                    this.ZYk = com.bytedance.sdk.openadsdk.core.dLZ.ba.oJ();
                }
                this.ZYk.oJ(webView);
                this.ZYk.ZYk();
                this.oJ = 1;
            }
        }

        public void oJ(boolean z10) {
            com.bytedance.sdk.openadsdk.core.dLZ.ba baVar;
            if (this.oJ == 1 && z10 && (baVar = this.ZYk) != null) {
                baVar.tB();
                this.oJ = 3;
            }
        }

        public void oJ(@Nullable View view, @Nullable FriendlyObstructionPurpose friendlyObstructionPurpose) {
            com.bytedance.sdk.openadsdk.core.dLZ.ba baVar = this.ZYk;
            if (baVar != null) {
                baVar.oJ(view, friendlyObstructionPurpose);
            }
        }

        public void oJ() {
            com.bytedance.sdk.openadsdk.core.dLZ.ba baVar;
            int i10 = this.oJ;
            if (i10 != 0 && i10 != 4 && (baVar = this.ZYk) != null) {
                baVar.ex();
            }
            this.oJ = 4;
            this.ZYk = null;
        }
    }

    public void oJ(@Nullable View view, @Nullable FriendlyObstructionPurpose friendlyObstructionPurpose) {
        this.jFA.oJ(view, friendlyObstructionPurpose);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    @Override // com.bytedance.sdk.openadsdk.core.so.tB.InterfaceC0227tB
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void oJ(java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.so.Pfn.oJ(java.lang.String):void");
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.tB.InterfaceC0227tB
    public void oJ(int i10, int i11) {
        ZYk zYk = this.WcQ;
        if (zYk != null) {
            zYk.oJ(i10, i11);
        }
        this.BTZ = i11;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, i11);
            jSONObject.put("render_duration", SystemClock.elapsedRealtime() - this.eZI);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.kkU, this.dLZ, "render_html_fail", jSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.tB.InterfaceC0227tB
    public void oJ() {
        if (this.f13256ba.compareAndSet(false, true)) {
            this.ex = true;
            this.jFA.oJ(getWebView());
            this.jFA.oJ(this.Pfn);
            RZ();
            oq();
        }
    }
}
