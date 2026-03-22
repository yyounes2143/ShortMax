package com.bytedance.sdk.openadsdk.core.so;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.XAo;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class jr extends com.bytedance.sdk.component.adexpress.Pfn.oJ {
    private com.bytedance.sdk.openadsdk.ex.ex.Pfn BTZ;
    private final Runnable Id;
    private String PiB;
    private kkU QSm;
    private volatile int RZ;
    private cY.oJ Ry;
    private com.bytedance.sdk.openadsdk.ex.BTZ WcQ;
    private final Map<String, com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba> awB;
    com.bytedance.sdk.openadsdk.utils.oJ cFZ;
    private JSONObject dLZ;
    private UN eZI;
    private String jFA;
    private com.bytedance.sdk.openadsdk.core.model.cY kkU;

    /* renamed from: oq  reason: collision with root package name */
    private final com.bytedance.sdk.component.so.so f13272oq;

    /* renamed from: si  reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.ZYk.cFZ f13273si;

    /* renamed from: so  reason: collision with root package name */
    private Context f13274so;

    public jr(Context context, com.bytedance.sdk.component.adexpress.ZYk.PiB piB, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        super(context, piB, themeStatusBroadcastReceiver);
        this.awB = Collections.synchronizedMap(new HashMap());
        this.RZ = 0;
        this.f13272oq = new com.bytedance.sdk.component.so.so("webviewrender_template") { // from class: com.bytedance.sdk.openadsdk.core.so.jr.1
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.sdk.component.adexpress.Pfn.oJ) jr.this).f12621ba.get()) {
                    return;
                }
                jr jrVar = jr.this;
                jrVar.dLZ = jrVar.dLZ().tB();
                jr jrVar2 = jr.this;
                jrVar2.oJ(jrVar2.dLZ);
                if (jr.this.RZ == 0) {
                    jr.this.si();
                }
                com.bytedance.sdk.openadsdk.core.WcQ.tB().post(jr.this.Id);
            }
        };
        this.Id = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.jr.2
            @Override // java.lang.Runnable
            public void run() {
                if (!((com.bytedance.sdk.component.adexpress.Pfn.oJ) jr.this).f12621ba.get() && jr.this.f13273si != null) {
                    jr.this.BTZ();
                    jr jrVar = jr.this;
                    jr.super.oJ(jrVar.f13273si);
                }
            }
        };
        if (this.ex == null) {
            return;
        }
        this.f13274so = context;
        this.jFA = piB.ex();
        this.kkU = cYVar;
        this.BTZ = pfn;
        themeStatusBroadcastReceiver.oJ(this);
        si();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Ry() {
        com.bytedance.sdk.component.jFA.ba baVar = this.ex;
        if (baVar == null || baVar.getWebView() == null || this.RZ == 2) {
            return;
        }
        this.PiB = oJ(this.kkU);
        this.ex.setDisplayZoomControls(false);
        oJ(XAo.oJ(this.PiB));
        PiB();
        UN un2 = new UN(this.f13274so);
        this.eZI = un2;
        un2.ex(true);
        WcQ();
        this.RZ = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void si() {
        if (this.ex.getWebView() != null && ofl.ba()) {
            Ry();
        } else {
            this.RZ = 1;
            ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.jr.3
                @Override // java.lang.Runnable
                public void run() {
                    jr.this.Ry();
                }
            });
        }
        if (WcQ.ZYk(this.kkU) && !this.ZYk) {
            WcQ.oJ(this.kkU);
        }
    }

    public void BTZ() {
        UN un2;
        com.bytedance.sdk.component.jFA.ba baVar = this.ex;
        if (baVar != null && baVar.getWebView() != null && (un2 = this.eZI) != null) {
            un2.ZYk(this.ex).oJ(this.kkU).tB(this.kkU.edj()).ex(this.kkU.pe()).ZYk(HyG.oJ(this.jFA)).Pfn(this.kkU.ZiK()).oJ(this).oJ(this.dLZ).oJ(this.ex).oJ(this.BTZ);
        }
    }

    public void PiB() {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.kkU;
        if (cYVar != null && cYVar.PdF() != null) {
            this.Ry = this.kkU.PdF();
        }
    }

    public void WcQ() {
        com.bytedance.sdk.component.jFA.ba baVar = this.ex;
        if (baVar != null && baVar.getWebView() != null) {
            this.ex.setBackgroundColor(0);
            this.ex.setBackgroundResource(17170445);
            oJ(this.ex);
            if (oJ() != null) {
                this.WcQ = new com.bytedance.sdk.openadsdk.ex.BTZ(this.kkU, oJ().getWebView()).ZYk(false);
            }
            this.WcQ.oJ(this.BTZ);
            kkU kku = new kkU(this.f13274so, this.eZI, this.kkU, this.WcQ, dLZ());
            this.QSm = kku;
            this.ex.setWebViewClient(kku);
            this.ex.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.oJ.ex(this.eZI, this.WcQ));
            com.bytedance.sdk.component.adexpress.Pfn.Pfn.oJ().oJ(this.ex, this.eZI);
        }
    }

    public kkU awB() {
        return this.QSm;
    }

    public UN eZI() {
        return this.eZI;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.Pfn.oJ
    public void kkU() {
        super.kkU();
        com.bytedance.sdk.openadsdk.utils.oJ oJVar = this.cFZ;
        if (oJVar != null) {
            oJVar.ZYk(this);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.theme.oJ
    public void onThemeChanged(int i10) {
        if (this.eZI == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", i10);
        } catch (JSONException unused) {
        }
        this.eZI.oJ("themeChange", jSONObject);
    }

    public void ZYk(int i10) {
        if (this.eZI == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("zoom_type", i10);
            this.eZI.oJ("expressAdViewWillZoom", jSONObject);
        } catch (JSONException e10) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.WebViewRender", e10.getMessage());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.oJ
    public void ba() {
        if (oJ() == null) {
            return;
        }
        try {
            oJ().getWebView().resumeTimers();
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.oJ
    public void cFZ() {
        UN un2 = this.eZI;
        if (un2 == null) {
            return;
        }
        un2.oJ("expressWebviewRecycle", (JSONObject) null);
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.oJ
    public void ex() {
        if (this.f12621ba.get()) {
            return;
        }
        super.ex();
        UN un2 = this.eZI;
        if (un2 != null) {
            un2.tB();
            this.eZI.BTZ();
            this.eZI = null;
        }
        com.bytedance.sdk.openadsdk.ex.BTZ btz = this.WcQ;
        if (btz != null) {
            btz.ex(false);
        }
        com.bytedance.sdk.openadsdk.core.WcQ.tB().removeCallbacks(this.Id);
        this.awB.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.Pfn.oJ
    public void jFA() {
        super.jFA();
        com.bytedance.sdk.openadsdk.utils.oJ Pfn = com.bytedance.sdk.openadsdk.core.awB.oJ().Pfn();
        this.cFZ = Pfn;
        Pfn.oJ(this);
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.oJ
    public void so() {
        super.so();
        if (this.eZI == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("expressShow", true);
            this.eZI.oJ("expressShow", jSONObject);
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.oJ, com.bytedance.sdk.component.adexpress.ZYk.ex
    public int tB() {
        return this.kkU.uvK();
    }

    public static String oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        return com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.ex((cYVar == null || !cYVar.XQY()) ? null : "v3");
    }

    private void ZYk(boolean z10) {
        if (this.eZI != null && this.ex != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("adVisible", z10);
                this.eZI.oJ("expressAdShow", jSONObject);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.oJ, com.bytedance.sdk.component.adexpress.ZYk.ex
    public void oJ(com.bytedance.sdk.component.adexpress.ZYk.cFZ cfz) {
        this.f13273si = cfz;
        ofl.ZYk(this.f13272oq);
    }

    private void oJ(com.bytedance.sdk.component.jFA.ba baVar) {
        if (baVar == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.core.widget.oJ.tB.oJ(this.f13274so).oJ(false).oJ(baVar.getWebView());
            baVar.setVerticalScrollBarEnabled(false);
            baVar.setHorizontalScrollBarEnabled(false);
            com.bytedance.sdk.openadsdk.core.widget.oJ.tB.oJ(baVar);
            baVar.WcQ();
            baVar.setUserAgentString(com.bytedance.sdk.openadsdk.utils.RZ.oJ(baVar.getWebView(), 7504));
            baVar.setMixedContentMode(0);
            baVar.setJavaScriptEnabled(true);
            baVar.setJavaScriptCanOpenWindowsAutomatically(true);
            baVar.setDomStorageEnabled(true);
            baVar.setDatabaseEnabled(true);
            baVar.setAllowFileAccess(false);
            baVar.setSupportZoom(true);
            baVar.setBuiltInZoomControls(true);
            baVar.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
            baVar.setUseWideViewPort(true);
            baVar.setCacheMode(-1);
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.WebViewRender", e10.toString());
        }
    }

    public static boolean ZYk(String str) {
        return "banner_call".equals(str) || "banner_ad".equals(str) || "slide_banner_ad".equals(str) || "banner_ad_landingpage".equals(str);
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.oJ
    public com.bytedance.sdk.component.jFA.ba oJ() {
        return this.ex;
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.oJ
    public void oJ(int i10) {
        if (i10 == this.Pfn) {
            return;
        }
        this.Pfn = i10;
        ZYk(i10 == 0);
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.oJ, com.bytedance.sdk.component.adexpress.ZYk.dLZ
    public void oJ(com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ) {
        super.oJ(wcQ);
        if (this.tB) {
            com.bytedance.sdk.component.utils.jFA.ZYk().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.jr.4
                @Override // java.lang.Runnable
                public void run() {
                    WebView webView = ((com.bytedance.sdk.component.adexpress.Pfn.oJ) jr.this).ex.getWebView();
                    if (webView != null) {
                        webView.resumeTimers();
                    }
                }
            }, 2000L);
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk) {
        UN un2 = this.eZI;
        if (un2 != null) {
            un2.oJ(zYk);
        }
    }
}
