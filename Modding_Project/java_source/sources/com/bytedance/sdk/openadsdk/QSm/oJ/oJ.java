package com.bytedance.sdk.openadsdk.QSm.oJ;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.ConsoleMessage;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.BTZ.ba;
import com.bytedance.sdk.openadsdk.QSm.cFZ;
import com.bytedance.sdk.openadsdk.QSm.so;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.jFA;
import com.bytedance.sdk.openadsdk.core.widget.kkU;
import com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn;
import com.bytedance.sdk.openadsdk.ex.Ry;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.RZ;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private boolean BTZ;
    private final FrameLayout Pfn;
    private volatile boolean PiB;
    private boolean QSm;
    private InterfaceC0186oJ RZ;
    private com.bytedance.sdk.openadsdk.core.ZYk.oJ Ry;
    private volatile boolean WcQ;
    private final Context ZYk;
    private AtomicBoolean awB;
    @Nullable

    /* renamed from: ba  reason: collision with root package name */
    private kkU f12836ba;
    private UN cFZ;
    @Nullable
    private ba dLZ;
    private AtomicBoolean eZI;
    private final int ex;
    private final String jFA;
    private so kkU;
    protected com.bytedance.sdk.component.jFA.ba oJ;

    /* renamed from: si  reason: collision with root package name */
    private jFA f12837si;

    /* renamed from: so  reason: collision with root package name */
    private String f12838so;
    private final cY tB;

    /* renamed from: com.bytedance.sdk.openadsdk.QSm.oJ.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0186oJ {
        void oJ();
    }

    public oJ(Context context, cY cYVar, int i10, boolean z10, FrameLayout frameLayout) {
        this(context, cYVar, i10, z10, frameLayout, false);
    }

    public oJ(Context context, cY cYVar, int i10, boolean z10, FrameLayout frameLayout, boolean z11) {
        this.BTZ = true;
        this.awB = new AtomicBoolean(false);
        this.eZI = new AtomicBoolean(false);
        this.ZYk = context;
        this.tB = cYVar;
        this.ex = i10;
        String tB = HyG.tB(cYVar.BHY().getDurationSlotType());
        this.f12838so = tB;
        int oJ = HyG.oJ(tB);
        this.QSm = z11;
        if (z11) {
            this.f12838so = HyG.ZYk(oJ);
        }
        this.jFA = Ln.PiB(cYVar);
        this.Pfn = frameLayout;
        oJ(frameLayout);
        oJ(oJ);
        tB(z10);
        cFZ();
    }

    private void cFZ() {
        this.oJ.setWebViewClient(new Pfn(si.oJ(), this.cFZ, this.tB.edj(), null, true) { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.oJ.5
            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                if (oJ.this.kkU != null) {
                    oJ.this.kkU.jFA(str);
                }
                if (oJ.this.BTZ) {
                    oJ.this.oJ(0, 0);
                    com.bytedance.sdk.openadsdk.ex.tB.oJ(System.currentTimeMillis(), oJ.this.tB, oJ.this.f12838so, "py_loading_success");
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i10, String str, String str2) {
                super.onReceivedError(webView, i10, str, str2);
                oJ.this.BTZ = false;
                if (oJ.this.kkU != null) {
                    oJ.this.kkU.ba(com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(oJ.this.tB));
                    oJ.this.kkU.oJ(i10, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                if (webResourceRequest.isForMainFrame()) {
                    oJ.this.BTZ = false;
                    if (oJ.this.kkU != null) {
                        oJ.this.kkU.ba(com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(oJ.this.tB));
                        oJ.this.kkU.oJ(webResourceRequest.isForMainFrame(), webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode());
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                try {
                    if (oJ.this.tB.ib() != null && !TextUtils.isEmpty(oJ.this.tB.ib().PiB())) {
                        if (oJ.this.kkU != null) {
                            oJ.this.kkU.kkU(str);
                        }
                        String PiB = Ln.PiB(oJ.this.tB);
                        WebResourceResponse oJ = com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(oJ.this.tB.ib().PiB(), PiB, str);
                        if (oJ != null) {
                            if (oJ.this.kkU != null) {
                                oJ.this.kkU.dLZ(str);
                            }
                            return oJ;
                        }
                        return super.shouldInterceptRequest(webView, str);
                    }
                    return super.shouldInterceptRequest(webView, str);
                } catch (Throwable unused) {
                    return super.shouldInterceptRequest(webView, str);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            @RequiresApi(api = 23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                if (webResourceRequest.isForMainFrame()) {
                    oJ.this.BTZ = false;
                    if (oJ.this.kkU == null || webResourceError == null) {
                        return;
                    }
                    oJ.this.kkU.ba(com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(oJ.this.tB));
                    oJ.this.kkU.oJ(webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), String.valueOf(webResourceRequest.getUrl()));
                }
            }
        });
        this.oJ.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.oJ.ex(this.cFZ) { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.oJ.6
            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.ex, android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return super.onConsoleMessage(consoleMessage);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.ex, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i10) {
                super.onProgressChanged(webView, i10);
                if (oJ.this.f12836ba != null && oJ.this.f12836ba.getVisibility() == 0) {
                    oJ.this.f12836ba.setProgress(i10);
                }
            }
        });
        com.bytedance.sdk.openadsdk.core.widget.oJ.tB.oJ(this.ZYk).oJ(false).ZYk(false).oJ(this.oJ.getWebView());
        com.bytedance.sdk.component.jFA.ba baVar = this.oJ;
        baVar.setUserAgentString(RZ.oJ(baVar.getWebView(), 7504));
        this.oJ.setMixedContentMode(0);
    }

    private void tB(boolean z10) {
        com.bytedance.sdk.component.oJ.si ZYk;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(BidResponsedEx.KEY_CID, this.tB.edj());
            jSONObject.put("log_extra", this.tB.pe());
        } catch (Throwable unused) {
        }
        if (com.bytedance.sdk.openadsdk.core.jFA.ZYk().si()) {
            cFZ.oJ(new cFZ.oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.oJ.1
            });
        }
        so oJ = so.oJ(si.oJ(), this.oJ.getWebView(), new com.bytedance.sdk.openadsdk.QSm.tB() { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.oJ.2
            @Override // com.bytedance.sdk.openadsdk.QSm.tB
            public void oJ(String str, JSONObject jSONObject2) {
                if (oJ.this.cFZ != null) {
                    oJ.this.cFZ.oJ(str, jSONObject2);
                }
            }
        }, new com.bytedance.sdk.openadsdk.QSm.oJ() { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.oJ.3
            @Override // com.bytedance.sdk.openadsdk.QSm.oJ
            public void ZYk() {
                oJ.this.cFZ.tB(true);
                if (oJ.this.dLZ != null) {
                    oJ.this.dLZ.oJ();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.QSm.oJ
            public com.bytedance.sdk.openadsdk.QSm.ex oJ() {
                String ba2 = com.bytedance.sdk.openadsdk.common.ZYk.ba();
                ba2.hashCode();
                char c10 = 65535;
                switch (ba2.hashCode()) {
                    case 1653:
                        if (ba2.equals("2g")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 1684:
                        if (ba2.equals("3g")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 1715:
                        if (ba2.equals("4g")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 1746:
                        if (ba2.equals("5g")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 3649301:
                        if (ba2.equals("wifi")) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        return com.bytedance.sdk.openadsdk.QSm.ex.TYPE_2G;
                    case 1:
                        return com.bytedance.sdk.openadsdk.QSm.ex.TYPE_3G;
                    case 2:
                        return com.bytedance.sdk.openadsdk.QSm.ex.TYPE_4G;
                    case 3:
                        return com.bytedance.sdk.openadsdk.QSm.ex.TYPE_5G;
                    case 4:
                        return com.bytedance.sdk.openadsdk.QSm.ex.TYPE_WIFI;
                    default:
                        return com.bytedance.sdk.openadsdk.QSm.ex.TYPE_UNKNOWN;
                }
            }

            @Override // com.bytedance.sdk.openadsdk.QSm.oJ
            public void tB() {
                if (oJ.this.cFZ.WcQ() != null) {
                    oJ.this.cFZ.WcQ().oJ(true);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.QSm.oJ
            public void oJ(JSONObject jSONObject2) {
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject();
                }
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("is_new_playable", 1);
                    if (oJ.this.tB.dTl()) {
                        jSONObject3.put("is_pre_render", 1);
                    }
                    jSONObject2.put("pag_json_data", jSONObject3.toString());
                } catch (JSONException e10) {
                    QSm.tB("PlayableManager", e10.getMessage());
                }
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(oJ.this.tB, oJ.this.f12838so, "playable_track", jSONObject2);
            }

            @Override // com.bytedance.sdk.openadsdk.QSm.oJ
            public void oJ(int i10, String str) {
                oJ.this.BTZ = false;
                if (i10 == 2 || i10 == 3 || i10 == 4) {
                    oJ.this.oJ(2, i10);
                } else if (i10 == 5) {
                    oJ.this.oJ(3, i10);
                } else {
                    oJ.this.oJ(1, 0);
                }
            }
        });
        this.kkU = oJ;
        oJ.cFZ(this.jFA).Pfn(com.bytedance.sdk.openadsdk.common.ZYk.oJ(si.oJ())).ZYk(com.bytedance.sdk.openadsdk.common.ZYk.Pfn()).oJ(com.bytedance.sdk.openadsdk.common.ZYk.oJ()).ex(com.bytedance.sdk.openadsdk.common.ZYk.ex()).tB(jSONObject).tB(Ln.dLZ(this.tB)).ex(true).oJ(z10).tB(false).oJ(Ln.RZ(this.tB)).ZYk(Ln.RZ(this.tB)).oJ("sdkEdition", com.bytedance.sdk.openadsdk.common.ZYk.tB()).Pfn(Ln.ba(this.tB)).ba(this.f12838so);
        this.kkU.oJ(com.bytedance.sdk.openadsdk.QSm.Pfn.ZYk(this.ZYk));
        Set<String> dLZ = this.kkU.dLZ();
        final WeakReference weakReference = new WeakReference(this.kkU);
        for (String str : dLZ) {
            if (!"subscribe_app_ad".equals(str) && !"adInfo".equals(str) && !"webview_time_track".equals(str) && !"download_app_ad".equals(str) && (ZYk = this.cFZ.ZYk()) != null) {
                ZYk.oJ(str, new com.bytedance.sdk.component.oJ.Pfn<JSONObject, JSONObject>() { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.oJ.4
                    @Override // com.bytedance.sdk.component.oJ.Pfn
                    public JSONObject oJ(@NonNull JSONObject jSONObject2, @NonNull com.bytedance.sdk.component.oJ.ba baVar) {
                        try {
                            so soVar = (so) weakReference.get();
                            if (soVar == null) {
                                return null;
                            }
                            return soVar.ex(oJ(), jSONObject2);
                        } catch (Throwable unused2) {
                            return null;
                        }
                    }
                });
            }
        }
    }

    public boolean Pfn() {
        return this.PiB;
    }

    public void ZYk() {
        if (!this.awB.get() || this.kkU == null) {
            return;
        }
        QSm.oJ("PlayableManager", "onResume() called");
        this.kkU.tB(true);
    }

    public boolean ba() {
        UN un2 = this.cFZ;
        if (un2 != null) {
            return un2.ba();
        }
        return false;
    }

    public void ex() {
        so soVar = this.kkU;
        if (soVar != null) {
            soVar.XAo();
        }
        com.bytedance.sdk.component.jFA.ba baVar = this.oJ;
        if (baVar != null) {
            baVar.eZI();
        }
        UN un2 = this.cFZ;
        if (un2 != null) {
            un2.BTZ();
        }
        this.oJ = null;
    }

    private void oJ(FrameLayout frameLayout) {
        com.bytedance.sdk.component.jFA.ba baVar = new com.bytedance.sdk.component.jFA.ba(this.ZYk);
        this.oJ = baVar;
        baVar.Pfn();
        this.oJ.setLayerType(2, null);
        this.oJ.setVisibility(4);
        this.oJ.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.oJ.setEnabled(true);
        this.oJ.setTag(this.f12838so);
        this.oJ.setMaterialMeta(this.tB.hW());
        this.oJ.setLandingPage(true);
        frameLayout.addView(this.oJ, new FrameLayout.LayoutParams(-1, -1));
        jFA jfa = new jFA(this.ZYk);
        this.f12837si = jfa;
        jfa.oJ(this.tB, this.f12838so, this.Ry, this.QSm);
        frameLayout.addView(this.f12837si, new FrameLayout.LayoutParams(-1, -1));
        if (this.tB.bbM()) {
            kkU kku = new kkU(this.ZYk);
            this.f12836ba = kku;
            kku.ZYk();
            frameLayout.addView(this.f12836ba, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    public void ZYk(boolean z10) {
        so soVar = this.kkU;
        if (soVar != null) {
            soVar.Pfn(z10);
        }
    }

    private void oJ(int i10) {
        HashMap hashMap = new HashMap();
        hashMap.put("click_scence", 3);
        this.cFZ = new UN(this.ZYk);
        this.cFZ.ZYk(this.oJ).oJ(this.tB).oJ(com.bytedance.sdk.openadsdk.core.so.oJ.ZYk.oJ(this.tB)).tB(this.tB.edj()).ex(this.tB.pe()).ZYk(i10).Pfn(this.tB.ZiK()).oJ(this.oJ).ZYk(this.f12838so).oJ(hashMap).oJ(new Ry(3, this.f12838so, this.tB));
    }

    public void tB() {
        if (!this.awB.get() || this.kkU == null) {
            return;
        }
        QSm.oJ("PlayableManager", "onPause() called");
        this.kkU.tB(false);
    }

    public void oJ(boolean z10, ba baVar) {
        this.dLZ = baVar;
        this.kkU.ZYk(z10);
        com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().ZYk(this.tB);
        this.oJ.a_(this.jFA);
        so soVar = this.kkU;
        if (soVar != null) {
            soVar.ba(com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(this.tB));
            this.kkU.so(this.jFA);
        }
    }

    public void oJ() {
        boolean z10;
        kkU kku;
        if (this.awB.getAndSet(true)) {
            return;
        }
        FrameLayout frameLayout = this.Pfn;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        QSm.oJ("PlayableManager", "showPlayable() called with: hasLoading = [false], loadingViewIsHide = [" + this.WcQ + "]");
        if (!this.WcQ && (kku = this.f12836ba) != null) {
            kku.ZYk(this.tB, this.ex);
            so soVar = this.kkU;
            if (soVar != null) {
                soVar.LpP();
            }
            z10 = true;
        } else {
            this.kkU.tB(true);
            UN un2 = this.cFZ;
            if (un2 != null && un2.WcQ() != null) {
                this.cFZ.WcQ().cFZ();
            }
            z10 = false;
        }
        if (this.kkU != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("webview_state", this.kkU.HyG());
                jSONObject2.put("has_loading", z10);
                jSONObject2.put("is_new_playable", 1);
                jSONObject.put("pag_json_data", jSONObject2.toString());
                jSONObject.put("playable_event", "start_show_plb");
            } catch (Throwable unused) {
            }
            com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.tB, this.f12838so, "playable_track", jSONObject);
            this.kkU.ba(com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(this.tB));
        }
        this.oJ.setVisibility(0);
    }

    public void oJ(final int i10, final int i11) {
        so soVar;
        InterfaceC0186oJ interfaceC0186oJ;
        if (this.WcQ) {
            return;
        }
        this.WcQ = true;
        QSm.oJ("PlayableManager", "onHidePlayableLoading() called with: hideReason = [" + i10 + "], errorDetail = [" + i11 + "]");
        if (i10 == 2) {
            this.PiB = true;
            this.kkU.oJ(3);
        } else if (i10 == 1) {
            this.PiB = true;
            this.kkU.oJ(2);
        } else if (i10 == 3) {
            this.PiB = true;
            this.kkU.oJ(4);
        } else if (i10 == 0) {
            this.kkU.oJ(1);
        }
        if (this.PiB && (interfaceC0186oJ = this.RZ) != null) {
            interfaceC0186oJ.oJ();
        }
        if (this.awB.get() && (soVar = this.kkU) != null) {
            soVar.tB(true);
        }
        UN un2 = this.cFZ;
        if (un2 != null && un2.WcQ() != null) {
            this.cFZ.WcQ().cFZ();
        }
        kkU kku = this.f12836ba;
        if (kku != null) {
            kku.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.oJ.7
                @Override // java.lang.Runnable
                public void run() {
                    if (oJ.this.PiB) {
                        oJ.this.f12837si.setVisibility(0);
                        oJ.this.oJ(true);
                    }
                    oJ.this.f12836ba.tB();
                    if (oJ.this.awB.get()) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("remove_loading_page_type", i10);
                            jSONObject2.put("remove_loading_page_reason", i11);
                            jSONObject2.put("playable_url", oJ.this.jFA);
                            jSONObject2.put("duration", oJ.this.f12836ba.getDisplayDuration());
                            jSONObject2.put("is_new_playable", 1);
                            jSONObject.put("pag_json_data", jSONObject2.toString());
                            jSONObject.put("playable_event", "remove_loading_page");
                        } catch (Throwable unused) {
                        }
                        com.bytedance.sdk.openadsdk.ex.tB.ZYk(oJ.this.tB, oJ.this.f12838so, "playable_track", jSONObject);
                    }
                }
            });
        }
    }

    public void oJ(boolean z10) {
        so soVar = this.kkU;
        if (soVar != null) {
            soVar.oJ(z10);
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar) {
        this.Ry = oJVar;
        kkU kku = this.f12836ba;
        if (kku != null && kku.getDownloadButton() != null) {
            com.bytedance.sdk.openadsdk.core.Pfn.so downloadButton = this.f12836ba.getDownloadButton();
            downloadButton.setOnClickListener(oJVar);
            downloadButton.setOnTouchListener(oJVar);
        }
        jFA jfa = this.f12837si;
        if (jfa != null) {
            jfa.setClickListener(oJVar);
        }
    }

    public void oJ(InterfaceC0186oJ interfaceC0186oJ) {
        this.RZ = interfaceC0186oJ;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk) {
        UN un2 = this.cFZ;
        if (un2 != null) {
            un2.oJ(zYk);
        }
    }
}
