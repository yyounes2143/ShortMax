package com.bytedance.sdk.openadsdk.core.widget.oJ;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;
import com.bytedance.sdk.component.jFA.ba;
import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.component.utils.ZYk;
import com.bytedance.sdk.openadsdk.activity.TTCeilingLandingPageActivity;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.ex.BTZ;
import com.bytedance.sdk.openadsdk.ex.ZYk;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.Id;
import com.bytedance.sdk.openadsdk.utils.RZ;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Stack;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn extends ba.oJ {

    /* renamed from: oq  reason: collision with root package name */
    private static final HashSet<String> f13309oq;
    private boolean BTZ;
    protected final Context Pfn;
    private com.bytedance.sdk.openadsdk.common.ex PiB;
    private cY QSm;
    private JSONObject RZ;
    private com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk Ry;
    private String WcQ;
    private String ZYk;
    private final Stack<String> awB;

    /* renamed from: ba  reason: collision with root package name */
    protected final String f13310ba;
    protected BTZ cFZ;
    private Map<String, Object> dLZ;
    private boolean eZI;
    protected final UN ex;
    protected boolean jFA;
    protected boolean kkU;
    private final boolean oJ;

    /* renamed from: si  reason: collision with root package name */
    private TTCeilingLandingPageActivity.oJ f13311si;

    /* renamed from: so  reason: collision with root package name */
    protected boolean f13312so;
    private com.bytedance.sdk.openadsdk.core.model.BTZ tB;

    static {
        HashSet<String> hashSet = new HashSet<>();
        f13309oq = hashSet;
        hashSet.add("png");
        hashSet.add("ico");
        hashSet.add("jpg");
        hashSet.add("gif");
        hashSet.add("svg");
        hashSet.add("jpeg");
    }

    public Pfn(Context context, UN un2, String str, com.bytedance.sdk.openadsdk.common.ex exVar, BTZ btz, boolean z10, boolean z11, TTCeilingLandingPageActivity.oJ oJVar) {
        this(context, un2, str, exVar, btz, z10);
        this.eZI = z11;
        this.f13311si = oJVar;
    }

    private boolean Pfn(String str) {
        if (!QSm.so(this.QSm)) {
            return false;
        }
        return TextUtils.equals(this.QSm.Mrg(), str);
    }

    public static String ex(String str) {
        int lastIndexOf;
        String substring;
        if (str == null || (lastIndexOf = str.lastIndexOf(46)) < 0 || lastIndexOf == str.length() - 1 || (substring = str.substring(lastIndexOf)) == null || !f13309oq.contains(substring.toLowerCase(Locale.getDefault()))) {
            return null;
        }
        return "image/".concat(substring);
    }

    public BTZ ZYk() {
        return this.cFZ;
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        BTZ btz = this.cFZ;
        if (btz != null) {
            btz.oJ(webView, str, this.oJ);
        }
        com.bytedance.sdk.openadsdk.common.ex exVar = this.PiB;
        if (exVar != null) {
            exVar.ZYk(webView, str, this.oJ);
        }
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        int i10;
        cY cYVar;
        super.onPageStarted(webView, str, bitmap);
        cY cYVar2 = this.QSm;
        if (cYVar2 != null && cYVar2.rg() && com.bytedance.sdk.openadsdk.oq.oJ.oJ("opt_web_index", false)) {
            i10 = HyG.oJ(webView);
        } else {
            i10 = -1;
        }
        int i11 = i10;
        BTZ btz = this.cFZ;
        if (btz != null) {
            btz.oJ(webView, str, bitmap, this.oJ, i11);
        }
        com.bytedance.sdk.openadsdk.common.ex exVar = this.PiB;
        if (exVar != null) {
            exVar.tB(webView, str, this.oJ);
        }
        if (this.oJ && (cYVar = this.QSm) != null && cYVar.rg() && this.QSm.QSm().oJ() >= 2) {
            if (!TextUtils.isEmpty(str) && !str.equals(this.WcQ)) {
                if (this.awB.contains(str)) {
                    while (!str.equals(this.awB.peek())) {
                        this.awB.pop();
                    }
                } else {
                    this.awB.push(str);
                }
            }
            this.WcQ = str;
        }
        if (this.jFA && !this.kkU) {
            this.kkU = true;
            tB.oJ(this.Pfn).oJ(true).ZYk(webView.getSettings().getBuiltInZoomControls()).oJ(webView);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i10, String str, String str2) {
        super.onReceivedError(webView, i10, str, str2);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(21)
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        String str;
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (this.cFZ != null && webResourceResponse != null) {
            Uri url = webResourceRequest.getUrl();
            String str2 = "";
            if (url == null) {
                str = "";
            } else {
                str = url.toString();
            }
            Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
            if (requestHeaders.containsKey("accept")) {
                str2 = requestHeaders.get("accept");
            }
            boolean isForMainFrame = webResourceRequest.isForMainFrame();
            this.cFZ.oJ(webView, webResourceResponse.getStatusCode(), String.valueOf(webResourceResponse.getReasonPhrase()), str, str2, isForMainFrame);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslErrorHandler != null) {
            try {
                sslErrorHandler.cancel();
            } catch (Throwable unused) {
            }
        }
        if (this.cFZ != null) {
            int i10 = 0;
            String str = "SslError: unknown";
            String str2 = null;
            if (sslError != null) {
                try {
                    i10 = sslError.getPrimaryError();
                    str = "SslError: ".concat(String.valueOf(sslError));
                    str2 = sslError.getUrl();
                } catch (Throwable unused2) {
                }
            }
            String str3 = str2;
            this.cFZ.oJ(webView, i10, str, str3, ex(str3), true);
        }
    }

    @Override // com.bytedance.sdk.component.jFA.ba.oJ, android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        try {
            com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().ZYk();
        } catch (Exception unused) {
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(api = 21)
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, final String str) {
        Uri parse;
        final String lowerCase;
        Intent intent;
        BTZ btz = this.cFZ;
        if (btz != null) {
            btz.oJ(str, this.oJ);
        }
        com.bytedance.sdk.openadsdk.common.ex exVar = this.PiB;
        if (exVar != null) {
            exVar.oJ(webView, str, this.oJ);
        }
        if (oJ(webView, str)) {
            return true;
        }
        cY cYVar = this.QSm;
        if (cYVar != null && cYVar.PiB() == 1 && ((com.bytedance.sdk.openadsdk.RZ.oJ.oJ.Pfn.oJ(str, this.QSm) || com.bytedance.sdk.openadsdk.RZ.oJ.oJ.Pfn.oJ(this.QSm, str)) && com.bytedance.sdk.openadsdk.RZ.oJ.oJ.Pfn.ZYk(this.QSm, this.Pfn, true))) {
            return true;
        }
        try {
            parse = Uri.parse(str);
            lowerCase = parse.getScheme().toLowerCase();
        } catch (Throwable unused) {
            UN un2 = this.ex;
            if (un2 != null && un2.Pfn()) {
                return true;
            }
        }
        if ("bytedance".equals(lowerCase)) {
            RZ.oJ(parse, this.ex);
            return true;
        } else if (tB(str)) {
            return true;
        } else {
            if (!Ry.oJ(str)) {
                if (QSm.so(this.QSm)) {
                    oJ(lowerCase, str);
                    return true;
                }
                if (str.startsWith("intent:")) {
                    intent = Intent.parseUri(str, 1);
                } else if (str.startsWith("android-app:")) {
                    intent = Intent.parseUri(str, 2);
                } else {
                    Intent intent2 = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
                    intent2.setData(parse);
                    intent = intent2;
                }
                intent.addFlags(268435456);
                com.bytedance.sdk.component.utils.ZYk.oJ(this.Pfn, intent, new ZYk.InterfaceC0180ZYk() { // from class: com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn.1
                    @Override // com.bytedance.sdk.component.utils.ZYk.InterfaceC0180ZYk
                    public void oJ() {
                        Pfn.this.oJ(lowerCase, true, 0, "", str);
                    }

                    @Override // com.bytedance.sdk.component.utils.ZYk.InterfaceC0180ZYk
                    public void oJ(Throwable th2) {
                        Pfn.this.oJ(lowerCase, false, 2, th2.getMessage(), str);
                    }
                });
                com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk = this.Ry;
                if (zYk != null) {
                    zYk.eZI();
                }
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }

    public void tB() {
        if (TextUtils.isEmpty(this.ZYk) || !QSm.cFZ(this.QSm) || this.BTZ) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.model.BTZ btz = this.tB;
        if (btz != null) {
            com.bytedance.sdk.openadsdk.ex.tB.oJ("click", this.QSm, btz, this.ZYk, true, this.dLZ, 1);
            this.BTZ = true;
            return;
        }
        JSONObject jSONObject = this.RZ;
        if (jSONObject != null) {
            com.bytedance.sdk.openadsdk.ex.tB.oJ(this.QSm, this.ZYk, "click", jSONObject);
            this.BTZ = true;
        }
    }

    public boolean ZYk(String str) {
        String str2;
        String str3;
        if (this.Pfn == null) {
            return false;
        }
        cY cYVar = this.QSm;
        if (cYVar != null && cYVar.Wd() != null) {
            str2 = this.QSm.Wd().tB();
            str3 = this.QSm.Wd().oJ();
        } else {
            str2 = "";
            str3 = "";
        }
        if (!com.bytedance.sdk.openadsdk.RZ.oJ.oJ.tB.oJ()) {
            return com.bytedance.sdk.openadsdk.RZ.oJ.oJ.oJ.oJ(str, this.Pfn, this.ZYk, this.QSm, (Map<String, Object>) null) || com.bytedance.sdk.openadsdk.RZ.oJ.oJ.oJ.oJ(this.QSm, str2, this.Pfn, this.ZYk, (Map<String, Object>) null) || com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ex.oJ(this.Pfn, str3, str2, this.ZYk, this.QSm);
        }
        Context context = this.Pfn;
        cY cYVar2 = this.QSm;
        return com.bytedance.sdk.openadsdk.RZ.oJ.oJ.tB.oJ(context, str, cYVar2, HyG.ZYk(cYVar2), null, true) || com.bytedance.sdk.openadsdk.RZ.oJ.oJ.Pfn.oJ(this.QSm, str2, this.Pfn, this.ZYk, (Map<String, Object>) null) || com.bytedance.sdk.openadsdk.RZ.oJ.oJ.Pfn.oJ(this.Pfn, str3, str2, this.ZYk, this.QSm);
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.model.BTZ btz) {
        this.tB = btz;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(23)
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (this.cFZ == null || webResourceError == null) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        String str = "";
        String uri = url != null ? url.toString() : "";
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        if (requestHeaders.containsKey("accept")) {
            str = requestHeaders.get("accept");
        }
        this.cFZ.oJ(webView, webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), uri, str, webResourceRequest.isForMainFrame());
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        BTZ btz = this.cFZ;
        if (btz != null) {
            btz.ZYk(webView, str, this.oJ);
        }
        com.bytedance.sdk.openadsdk.common.ex exVar = this.PiB;
        if (exVar != null) {
            exVar.oJ(webView, str);
        }
        return super.shouldInterceptRequest(webView, str);
    }

    public void oJ(Map<String, Object> map) {
        this.dLZ = map;
    }

    public Pfn(Context context, UN un2, String str, com.bytedance.sdk.openadsdk.common.ex exVar, BTZ btz, boolean z10) {
        this(context, un2, str, btz, z10);
        this.PiB = exVar;
    }

    public void oJ(JSONObject jSONObject) {
        this.RZ = jSONObject;
    }

    public void oJ(String str) {
        this.ZYk = str;
    }

    public Pfn(Context context, UN un2, String str, BTZ btz, boolean z10) {
        this.f13312so = true;
        this.jFA = true;
        this.kkU = false;
        this.Pfn = context;
        this.ex = un2;
        this.f13310ba = str;
        this.cFZ = btz;
        this.oJ = z10;
        this.awB = new Stack<>();
    }

    public void oJ(cY cYVar) {
        this.QSm = cYVar;
    }

    private void oJ(String str, String str2) {
        if ((Pfn(str) || "market".equals(str)) && ((this.tB != null || this.RZ != null) && ZYk(str2))) {
            tB();
        }
        this.tB = null;
        this.RZ = null;
    }

    public boolean tB(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Uri parse = Uri.parse(str);
            if ("play.google.com".equals(parse.getHost())) {
                if (QSm.so(this.QSm) && this.RZ == null && this.tB == null) {
                    return true;
                }
                Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
                if (!(this.Pfn instanceof Activity)) {
                    intent.addFlags(268435456);
                }
                intent.setData(parse);
                intent.setPackage("com.android.vending");
                this.Pfn.startActivity(intent);
                tB();
                this.RZ = null;
                this.tB = null;
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private boolean oJ(WebView webView, String str) {
        if (!HyG.ex(this.QSm) || this.QSm.QSm() == null || webView == null) {
            return false;
        }
        int oJ = this.QSm.QSm().oJ();
        int size = this.awB.size();
        if (this.eZI) {
            size++;
        }
        if (size + 1 == oJ) {
            Id.oJ(this.Pfn, str, this.QSm, ZYk.oJ.ex);
            TTCeilingLandingPageActivity.oJ oJVar = this.f13311si;
            if (oJVar != null) {
                oJVar.oJ();
            }
            return true;
        }
        return false;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk) {
        this.Ry = zYk;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(final String str, final boolean z10, final int i10, final String str2, final String str3) {
        com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), this.QSm, this.ZYk, "lp_not_http_open", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn.2
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("schema", str);
                    jSONObject3.put("jump_url", str3);
                    jSONObject3.put("success", z10);
                    jSONObject3.put("error_type", i10);
                    jSONObject3.put("error_reason", str2);
                    jSONObject2.put("pag_json_data", jSONObject3.toString());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.QSm.oJ("WebChromeClient", "onLpNotHttpLpOpen", th2);
                }
                return jSONObject;
            }
        });
    }
}
