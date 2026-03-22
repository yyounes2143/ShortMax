package com.bytedance.sdk.openadsdk.core.so;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.webkit.ProxyConfig;
import com.bytedance.sdk.component.adexpress.ex.jFA;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.model.Jc;
import com.bytedance.sdk.openadsdk.core.model.cY;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
/* loaded from: classes3.dex */
public class kkU extends com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn {
    private final com.bytedance.sdk.openadsdk.core.model.cY ZYk;
    private boolean dLZ;
    public ArrayList<Integer> oJ;
    private com.bytedance.sdk.component.adexpress.ZYk.PiB tB;

    public kkU(Context context, UN un2, com.bytedance.sdk.openadsdk.core.model.cY cYVar, com.bytedance.sdk.openadsdk.ex.BTZ btz, com.bytedance.sdk.component.adexpress.ZYk.PiB piB) {
        super(context, un2, cYVar.edj(), btz, false);
        this.dLZ = false;
        this.oJ = new ArrayList<>();
        this.ZYk = cYVar;
        this.tB = piB;
        this.dLZ = com.bytedance.sdk.openadsdk.oq.oJ.oJ("inject_data_normal_open", 0) == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.webkit.WebResourceResponse Pfn() {
        /*
            r4 = this;
            com.bytedance.sdk.openadsdk.core.jFA r0 = com.bytedance.sdk.openadsdk.core.jFA.ZYk()
            int r0 = r0.jFA()
            r1 = 0
            if (r0 != 0) goto Lc
            return r1
        Lc:
            android.content.Context r2 = com.bytedance.sdk.openadsdk.core.si.oJ()
            android.content.res.Resources r2 = r2.getResources()
            if (r2 == 0) goto L25
            java.io.InputStream r0 = r2.openRawResource(r0)     // Catch: android.content.res.Resources.NotFoundException -> L1b
            goto L26
        L1b:
            r0 = move-exception
            java.lang.String r2 = "ExpressClient"
            java.lang.String r0 = r0.toString()
            com.bytedance.sdk.component.utils.QSm.tB(r2, r0)
        L25:
            r0 = r1
        L26:
            if (r0 == 0) goto L35
            android.webkit.WebResourceResponse r1 = new android.webkit.WebResourceResponse
            com.bytedance.sdk.component.adexpress.ex.jFA$oJ r2 = com.bytedance.sdk.component.adexpress.ex.jFA.oJ.IMAGE
            java.lang.String r2 = r2.oJ()
            java.lang.String r3 = "UTF-8"
            r1.<init>(r2, r3, r0)
        L35:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.so.kkU.Pfn():android.webkit.WebResourceResponse");
    }

    private com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ ZYk(String str, jFA.oJ oJVar) {
        Jc.oJ ba2;
        JSONArray ZYk;
        Jc BWx = this.ZYk.BWx();
        if (BWx == null || (ba2 = BWx.ba()) == null || (ZYk = ba2.ZYk()) == null || ZYk.length() <= 0) {
            return null;
        }
        return oJ(ZYk, str, oJVar);
    }

    private WebResourceResponse ex(String str, jFA.oJ oJVar) {
        InputStream ZYk;
        if (TextUtils.isEmpty(str) || (ZYk = WcQ.ZYk(str)) == null) {
            return null;
        }
        WebResourceResponse webResourceResponse = new WebResourceResponse(oJVar.oJ(), "UTF-8", ZYk);
        oJ(webResourceResponse);
        return webResourceResponse;
    }

    private com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ tB(String str, jFA.oJ oJVar) {
        Jc.oJ ba2;
        JSONArray tB;
        Jc BWx = this.ZYk.BWx();
        if (BWx == null || (ba2 = BWx.ba()) == null || (tB = ba2.tB()) == null || tB.length() <= 0) {
            return null;
        }
        return oJ(tB, str, oJVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int oJ() {
        /*
            r5 = this;
            java.util.ArrayList<java.lang.Integer> r0 = r5.oJ
            java.util.Iterator r0 = r0.iterator()
        L6:
            boolean r1 = r0.hasNext()
            r2 = -1
            if (r1 == 0) goto L2c
            java.lang.Object r1 = r0.next()
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r3 = r1.intValue()
            r4 = 3
            if (r3 == r4) goto L27
            int r3 = r1.intValue()
            r4 = 2
            if (r3 == r4) goto L27
            int r3 = r1.intValue()
            if (r3 != r2) goto L6
        L27:
            int r0 = r1.intValue()
            return r0
        L2c:
            java.lang.String r0 = r5.ex()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L37
            return r2
        L37:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.so.kkU.oJ():int");
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        this.f13312so = false;
        super.onPageFinished(webView, str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.jFA = false;
        super.onPageStarted(webView, str, bitmap);
        com.bytedance.sdk.component.adexpress.ZYk.PiB piB = this.tB;
        if (piB != null && piB.cY() && this.dLZ) {
            this.tB.tB();
            com.bytedance.sdk.component.utils.WcQ.oJ(webView, "javascript:window.SDK_INJECT_DATA=" + this.tB.tB());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
    @TargetApi(21)
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        try {
            return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.oJ("ExpressClient", "shouldInterceptRequest error1", th2);
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ oJ = oJ(webView, str);
            oJ(currentTimeMillis, System.currentTimeMillis(), str, (oJ == null || oJ.oJ() == null) ? 2 : 1);
            if (oJ != null && oJ.ZYk() != 5) {
                oJ.ZYk();
                this.oJ.add(Integer.valueOf(oJ.ZYk()));
            }
            if (oJ != null && oJ.oJ() != null) {
                return oJ.oJ();
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.oJ("ExpressClient", "shouldInterceptRequest error2", th2);
        }
        return super.shouldInterceptRequest(webView, str);
    }

    private String ex() {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.ZYk;
        if (cYVar != null) {
            if (cYVar.PdF() != null) {
                return this.ZYk.PdF().dLZ();
            }
            if (this.ZYk.BWx() != null) {
                return "v3";
            }
            return null;
        }
        return null;
    }

    private WebResourceResponse Pfn(String str) {
        InputStream oJ;
        if (TextUtils.isEmpty(str) || (oJ = com.bytedance.sdk.openadsdk.core.ex.oJ.oJ().oJ(str)) == null) {
            return null;
        }
        WebResourceResponse webResourceResponse = new WebResourceResponse("audio/*", "UTF-8", oJ);
        oJ(webResourceResponse);
        return webResourceResponse;
    }

    private com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ oJ(WebView webView, String str) {
        com.bytedance.sdk.openadsdk.core.model.Ry ry = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.equals("local://pag_open_icon_id") && !str.equals(com.bytedance.sdk.openadsdk.core.so.oJ.ZYk.oJ)) {
            cY.oJ PdF = this.ZYk.PdF();
            if (PdF != null && !TextUtils.isEmpty(str) && str.equals(PdF.ZYk())) {
                com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ oJVar = new com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ();
                oJVar.oJ(5);
                WebResourceResponse Pfn = Pfn(str);
                oJVar.oJ(Pfn);
                com.bytedance.sdk.openadsdk.core.ex.oJ.oJ().oJ(Pfn != null);
                return oJVar;
            }
            jFA.oJ oJ = com.bytedance.sdk.component.adexpress.ex.jFA.oJ(str);
            if (WcQ.ZYk(this.ZYk)) {
                com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ oJ2 = oJ(str, oJ);
                if (oJ2 != null) {
                    return oJ2;
                }
                com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ ZYk = ZYk(str, oJ);
                if (ZYk != null) {
                    Log.d("ExpressClient", "interceptTemplate: Hit fetch file cache url=".concat(str));
                    return ZYk;
                }
                com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ tB = tB(str, oJ);
                if (tB != null) {
                    return tB;
                }
            }
            if (oJ != jFA.oJ.IMAGE) {
                Iterator<com.bytedance.sdk.openadsdk.core.model.Ry> it = this.ZYk.yB().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    com.bytedance.sdk.openadsdk.core.model.Ry next = it.next();
                    if (!TextUtils.isEmpty(next.oJ()) && !TextUtils.isEmpty(str)) {
                        String oJ3 = next.oJ();
                        if (oJ3.startsWith("https")) {
                            oJ3 = oJ3.replaceFirst("https", ProxyConfig.MATCH_HTTP);
                        }
                        if ((str.startsWith("https") ? str.replaceFirst("https", ProxyConfig.MATCH_HTTP) : str).equals(oJ3)) {
                            ry = next;
                            break;
                        }
                    }
                }
            }
            if (oJ != jFA.oJ.IMAGE && ry == null) {
                return com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.oJ(str, oJ, "", ex());
            }
            com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ oJVar2 = new com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ();
            oJVar2.oJ(5);
            oJVar2.oJ(oJ(str, com.bytedance.sdk.openadsdk.core.so.oJ.ZYk.oJ(this.ZYk, str)));
            return oJVar2;
        }
        com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ oJVar3 = new com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ();
        oJVar3.oJ(5);
        oJVar3.oJ(Pfn());
        return oJVar3;
    }

    private com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ oJ(String str, jFA.oJ oJVar) {
        Jc.oJ ba2;
        JSONArray oJ;
        Jc BWx = this.ZYk.BWx();
        if (BWx != null && (ba2 = BWx.ba()) != null && (oJ = ba2.oJ()) != null && oJ.length() > 0) {
            for (int i10 = 0; i10 < oJ.length(); i10++) {
                if (TextUtils.equals(com.bytedance.sdk.openadsdk.core.kkU.tB.oJ(oJ.optString(i10), com.bytedance.sdk.openadsdk.core.settings.PiB.ib().jXJ()), str) && oJVar == jFA.oJ.IMAGE) {
                    com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ oJVar2 = new com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ();
                    oJVar2.oJ(5);
                    oJVar2.oJ(oJ(str, com.bytedance.sdk.component.utils.Pfn.oJ(str)));
                    return oJVar2;
                }
            }
        }
        return null;
    }

    private com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ oJ(JSONArray jSONArray, String str, jFA.oJ oJVar) {
        if (jSONArray != null && jSONArray.length() > 0) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                if (TextUtils.equals(com.bytedance.sdk.openadsdk.core.kkU.tB.oJ(jSONArray.optString(i10), com.bytedance.sdk.openadsdk.core.settings.PiB.ib().jXJ()), str)) {
                    com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ oJVar2 = new com.bytedance.sdk.component.adexpress.oJ.ZYk.oJ();
                    oJVar2.oJ(5);
                    oJVar2.oJ(ex(str, oJVar));
                    return oJVar2;
                }
            }
        }
        return null;
    }

    private WebResourceResponse oJ(String str, String str2) {
        WebResourceResponse webResourceResponse = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            InputStream oJ = com.bytedance.sdk.openadsdk.jFA.ex.oJ(str, str2);
            if (oJ != null) {
                WebResourceResponse webResourceResponse2 = new WebResourceResponse(jFA.oJ.IMAGE.oJ(), "utf-8", oJ);
                try {
                    oJ(webResourceResponse2);
                    return webResourceResponse2;
                } catch (Throwable th2) {
                    th = th2;
                    webResourceResponse = webResourceResponse2;
                    com.bytedance.sdk.component.utils.QSm.oJ("ExpressClient", "get image WebResourceResponse error", th);
                    return webResourceResponse;
                }
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void oJ(long j10, long j11, String str, int i10) {
        com.bytedance.sdk.openadsdk.ex.BTZ btz = this.cFZ;
        if (btz == null || btz.ZYk() == null) {
            return;
        }
        jFA.oJ oJ = com.bytedance.sdk.component.adexpress.ex.jFA.oJ(str);
        if (oJ == jFA.oJ.HTML) {
            this.cFZ.ZYk().oJ(str, j10, j11, i10);
        } else if (oJ == jFA.oJ.JS) {
            this.cFZ.ZYk().ZYk(str, j10, j11, i10);
        }
    }

    private void oJ(WebResourceResponse webResourceResponse) {
        if (webResourceResponse == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("Access-Control-Allow-Origin", ProxyConfig.MATCH_ALL_SCHEMES);
        webResourceResponse.setResponseHeaders(hashMap);
    }
}
