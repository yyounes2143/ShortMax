package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.DownloadListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.adexpress.ex.jFA;
import com.bytedance.sdk.component.jFA.ba;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.ZYk.ZYk;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.ofl;
import com.bytedance.sdk.openadsdk.core.widget.oJ.ba;
import com.bytedance.sdk.openadsdk.ex.tB;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.RZ;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.oq;
import com.bytedance.vodsetting.Module;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class si implements com.bytedance.sdk.openadsdk.BTZ.so {
    private int BTZ;
    private boolean Dex;
    private long HL;
    private boolean HyG;
    private boolean Id;
    private com.bytedance.sdk.openadsdk.common.PiB Jc;
    private boolean MoK;
    com.bytedance.sdk.openadsdk.ex.BTZ Pfn;
    private final boolean PiB;
    private boolean QSm;
    private long Qu;
    private boolean Rl;
    private boolean UN;
    private int WcQ;
    private float Xe;
    UN ZYk;
    private int awB;
    private int bgF;
    private View cY;
    private boolean cdg;
    private final String dLZ;
    private com.bytedance.sdk.component.jFA.ba eZI;
    protected String ex;
    private boolean jB;

    /* renamed from: jr  reason: collision with root package name */
    private View f13029jr;
    private String lY;

    /* renamed from: mu  reason: collision with root package name */
    private final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ f13030mu;
    private ILoader mwH;
    private String oIC;
    UN oJ;
    private com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn ofl;

    /* renamed from: oq  reason: collision with root package name */
    private boolean f13031oq;
    private com.bytedance.sdk.openadsdk.common.ex sH;

    /* renamed from: si  reason: collision with root package name */
    private com.bytedance.sdk.component.jFA.ba f13032si;

    /* renamed from: so  reason: collision with root package name */
    protected com.bytedance.sdk.openadsdk.ex.ex.Pfn f13033so;

    /* renamed from: tb  reason: collision with root package name */
    private float f13034tb;

    /* renamed from: wd  reason: collision with root package name */
    private boolean f13035wd;
    private ba.oJ yz;
    protected boolean tB = true;
    private boolean Ry = false;
    private final AtomicBoolean RZ = new AtomicBoolean(true);

    /* renamed from: ba  reason: collision with root package name */
    int f13028ba = 0;
    String cFZ = "";
    boolean jFA = false;
    private SparseArray<tB.oJ> IUZ = new SparseArray<>();
    private boolean Ln = true;
    private float LpP = -1.0f;
    private float nke = -1.0f;
    private boolean XAo = false;
    private long Jm = -1;
    private volatile int nQI = 0;
    private int Yg = -1;
    private volatile int oTd = 0;
    private volatile int LS = 0;
    private long NO = 0;
    public boolean kkU = false;
    private int TA = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ZYk implements com.bytedance.sdk.openadsdk.BTZ.oJ {
        private final View oJ;

        public ZYk(View view) {
            this.oJ = view;
        }

        @Override // com.bytedance.sdk.openadsdk.BTZ.oJ
        public int ZYk() {
            int i10;
            View view = this.oJ;
            if (view != null) {
                i10 = view.getMeasuredWidth();
            } else {
                i10 = -1;
            }
            if (i10 <= 0) {
                return cdg.tB(com.bytedance.sdk.openadsdk.core.si.oJ());
            }
            return i10;
        }

        @Override // com.bytedance.sdk.openadsdk.BTZ.oJ
        public int oJ() {
            int i10;
            View view = this.oJ;
            if (view != null) {
                i10 = view.getMeasuredHeight();
            } else {
                i10 = -1;
            }
            if (i10 <= 0) {
                return cdg.Pfn(com.bytedance.sdk.openadsdk.core.si.oJ());
            }
            return i10;
        }
    }

    /* loaded from: classes3.dex */
    public interface ex {
        void oJ(WebView webView, int i10);

        void oJ(WebView webView, String str);

        void oJ(WebView webView, String str, Bitmap bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class tB implements com.bytedance.sdk.openadsdk.BTZ.kkU {
        private final com.bytedance.sdk.component.jFA.ba oJ;

        @Override // com.bytedance.sdk.openadsdk.BTZ.kkU
        public void ZYk() {
            com.bytedance.sdk.component.jFA.ba baVar = this.oJ;
            if (baVar == null) {
                return;
            }
            baVar.Ry();
        }

        @Override // com.bytedance.sdk.openadsdk.BTZ.kkU
        public void oJ() {
            com.bytedance.sdk.component.jFA.ba baVar = this.oJ;
            if (baVar == null) {
                return;
            }
            baVar.awB();
        }

        private tB(com.bytedance.sdk.component.jFA.ba baVar) {
            this.oJ = baVar;
        }
    }

    public si(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        this.f13030mu = oJVar;
        this.dLZ = oJVar.Pfn;
        this.PiB = oJVar.ex;
    }

    static /* synthetic */ int PiB(si siVar) {
        int i10 = siVar.oTd;
        siVar.oTd = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qu() {
        this.f13035wd = true;
        this.MoK = false;
        this.f13030mu.Jm.removeMessages(600);
        this.f13030mu.Jm.removeMessages(700);
        this.f13030mu.Jm.removeMessages(900);
        this.f13030mu.f13022mu.ex(false);
        this.f13030mu.RZ.set(true);
        this.f13030mu.UK.awB();
        cY cYVar = this.f13030mu.ZYk;
        cYVar.Tjr();
        if (!cYVar.Tjr() && HyG.so(Ln.oJ(cYVar))) {
            View kkU = this.f13030mu.ofl.kkU();
            View.OnClickListener onClickListener = (View.OnClickListener) kkU.getTag(kkU.getId());
            if (onClickListener != null) {
                oJ oJVar = new oJ(this.f13030mu, kkU, onClickListener);
                kkU.setOnClickListener(oJVar);
                kkU.setOnTouchListener(oJVar);
            }
        }
    }

    static /* synthetic */ int awB(si siVar) {
        int i10 = siVar.LS;
        siVar.LS = i10 + 1;
        return i10;
    }

    private com.bytedance.sdk.openadsdk.ex.ex.Pfn bgF() {
        int i10;
        String str;
        cY cYVar = this.f13030mu.ZYk;
        if (Ln.cFZ(cYVar)) {
            i10 = 3;
        } else {
            i10 = 2;
        }
        if (this.PiB) {
            str = "rewarded_video";
        } else {
            str = "fullscreen_interstitial_ad";
        }
        return new com.bytedance.sdk.openadsdk.ex.Ry(i10, str, cYVar);
    }

    static /* synthetic */ int eZI(si siVar) {
        int i10 = siVar.nQI;
        siVar.nQI = i10 + 1;
        return i10;
    }

    private void nQI() {
        this.ZYk.oJ("showPlayableEndCardOverlay", (JSONObject) null);
        this.f13030mu.Jm.sendEmptyMessageDelayed(600, 1000L);
        this.f13030mu.Jm.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.5
            @Override // java.lang.Runnable
            public void run() {
                si.this.Qu();
            }
        }, 1000L);
        com.bytedance.sdk.openadsdk.utils.WcQ wcQ = this.f13030mu.jXJ;
        if (wcQ != null) {
            wcQ.oJ(0L);
        }
    }

    public boolean HyG() {
        com.bytedance.sdk.component.jFA.ba baVar = this.eZI;
        if (baVar != null && baVar.getWebView() != null) {
            return false;
        }
        return true;
    }

    public void Jc() {
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = this.f13033so;
        if (pfn != null) {
            pfn.kkU();
        }
    }

    public boolean Jm() {
        return this.kkU;
    }

    public boolean Rl() {
        return this.f13035wd;
    }

    public boolean UN() {
        UN un2 = this.oJ;
        if (un2 == null) {
            return false;
        }
        return un2.jFA();
    }

    public void XAo() {
        cdg.oJ((View) this.f13032si, 8);
    }

    public void cdg() {
        com.bytedance.sdk.openadsdk.ex.BTZ btz = this.Pfn;
        if (btz != null) {
            btz.Pfn();
        }
    }

    public void mu() {
        cdg.oJ((View) this.eZI, 0);
        cdg.oJ((View) this.f13032si, 8);
    }

    public boolean ofl() {
        if (this.QSm && this.RZ.get()) {
            return true;
        }
        return false;
    }

    public boolean wd() {
        return this.MoK;
    }

    public UN BTZ() {
        return this.oJ;
    }

    public void HL() {
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = this.f13033so;
        if (pfn != null) {
            pfn.so();
        }
    }

    public void IUZ() {
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = this.f13033so;
        if (pfn != null) {
            pfn.cFZ();
        }
    }

    public void Id() {
        com.bytedance.sdk.component.jFA.ba baVar = this.eZI;
        if (baVar != null) {
            baVar.PiB();
        }
        com.bytedance.sdk.component.jFA.ba baVar2 = this.f13032si;
        if (baVar2 != null) {
            baVar2.PiB();
        }
        if (this.Jm == 0) {
            this.Jm = SystemClock.elapsedRealtime();
        }
        cY cYVar = this.f13030mu.ZYk;
        UN un2 = this.oJ;
        if (un2 != null) {
            un2.dLZ();
            com.bytedance.sdk.component.jFA.ba baVar3 = this.eZI;
            if (baVar3 != null) {
                if (baVar3.getVisibility() == 0) {
                    this.oJ.ZYk(true);
                    ZYk(this.oJ, true);
                    oJ(this.oJ, false, true);
                    if (Ln.kkU(cYVar) && !this.f13035wd && this.f13030mu.ZYk.Tjr()) {
                        jFA();
                    }
                } else {
                    this.oJ.ZYk(false);
                    ZYk(this.oJ, false);
                    oJ(this.oJ, true, false);
                }
            }
        }
        if (this.ZYk != null && Ln.so(cYVar)) {
            this.ZYk.dLZ();
            com.bytedance.sdk.component.jFA.ba baVar4 = this.f13032si;
            if (baVar4 != null) {
                if (baVar4.getVisibility() == 0) {
                    this.ZYk.ZYk(true);
                    ZYk(this.ZYk, true);
                    oJ(this.ZYk, false, true);
                    if (!this.f13035wd && this.f13030mu.ZYk.Tjr()) {
                        nQI();
                    }
                } else {
                    this.ZYk.ZYk(false);
                    ZYk(this.ZYk, false);
                    oJ(this.ZYk, true, false);
                }
            }
        }
        com.bytedance.sdk.openadsdk.ex.BTZ btz = this.Pfn;
        if (btz != null) {
            btz.cFZ();
        }
    }

    public void Ln() {
        com.bytedance.sdk.openadsdk.ex.BTZ btz = this.Pfn;
        if (btz != null) {
            btz.oJ(System.currentTimeMillis());
        }
    }

    public boolean LpP() {
        return this.jFA;
    }

    public UN PiB() {
        return this.ZYk;
    }

    public void QSm() {
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = this.f13033so;
        if (pfn != null) {
            pfn.jFA();
        }
        com.bytedance.sdk.openadsdk.ex.BTZ btz = this.Pfn;
        if (btz != null) {
            btz.so();
        }
    }

    public boolean RZ() {
        return this.QSm;
    }

    public boolean Ry() {
        return this.RZ.get();
    }

    public com.bytedance.sdk.openadsdk.ex.BTZ WcQ() {
        return this.Pfn;
    }

    public String Xe() {
        return this.ex;
    }

    public void awB() {
        com.bytedance.sdk.openadsdk.activity.so soVar;
        cY cYVar = this.f13030mu.ZYk;
        String ba2 = cYVar.ba();
        if (!TextUtils.isEmpty(ba2) && (soVar = this.f13030mu.oCU) != null && (soVar.ofl() || this.f13030mu.oCU.wd().oq())) {
            this.ex = ba2;
        } else if (Ln.Pfn(cYVar)) {
            com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib2 = cYVar.ib();
            if (ib2 != null) {
                this.ex = ib2.BTZ();
            }
        } else {
            this.ex = Ln.PiB(cYVar);
        }
        String oJ2 = oJ(this.ex, cYVar, this.BTZ, this.awB, this.WcQ);
        this.ex = oJ2;
        if (TextUtils.isEmpty(oJ2)) {
            return;
        }
        this.HyG = this.ex.contains("use_second_endcard=1");
    }

    public int cY() {
        return this.f13028ba;
    }

    public com.bytedance.sdk.component.jFA.ba dLZ() {
        return this.f13032si;
    }

    public void eZI() {
        com.bytedance.sdk.component.jFA.ba baVar = this.eZI;
        if (baVar != null) {
            ofl.oJ(baVar.getWebView());
        }
        com.bytedance.sdk.component.jFA.ba baVar2 = this.f13032si;
        if (baVar2 != null) {
            ofl.oJ(baVar2.getWebView());
        }
        cY cYVar = this.f13030mu.ZYk;
        long j10 = this.Qu;
        boolean z10 = false;
        if (j10 > 0) {
            if (this.Jm > 0) {
                this.Qu = j10 + (SystemClock.elapsedRealtime() - this.Jm);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("endcard_overlay_render_type", cY.tB(cYVar) ? 7 : 0);
            } catch (Throwable unused) {
            }
            com.bytedance.sdk.openadsdk.ex.tB.oJ(this.f13030mu.ZYk, this.dLZ, "second_endcard_duration", jSONObject, this.Qu);
        }
        this.eZI = null;
        if (this.f13033so != null && !QSm.ex(cYVar) && !QSm.Pfn(cYVar) && !cY.tB(cYVar)) {
            this.f13033so.oJ(true);
            this.f13033so.BTZ();
        }
        UN un2 = this.oJ;
        if (un2 != null) {
            un2.BTZ();
        }
        UN un3 = this.ZYk;
        if (un3 != null) {
            un3.BTZ();
        }
        com.bytedance.sdk.openadsdk.ex.BTZ btz = this.Pfn;
        if (btz != null) {
            if (cYVar.eXp() || Ln.cFZ(cYVar)) {
                z10 = true;
            }
            btz.ex(z10);
        }
        DeviceUtils.AudioInfoReceiver.ZYk(this);
    }

    public void jFA() {
        this.oJ.oJ("showPlayableEndCardOverlay", (JSONObject) null);
        this.f13030mu.Jm.sendEmptyMessageDelayed(600, 1000L);
        this.f13030mu.Jm.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.6
            @Override // java.lang.Runnable
            public void run() {
                si.this.Qu();
            }
        }, 1000L);
        com.bytedance.sdk.openadsdk.utils.WcQ wcQ = this.f13030mu.jXJ;
        if (wcQ != null) {
            wcQ.oJ(0L);
        }
    }

    public String jr() {
        return this.cFZ;
    }

    public com.bytedance.sdk.component.jFA.ba kkU() {
        return this.eZI;
    }

    public void nke() {
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = this.f13033so;
        if (pfn != null) {
            pfn.tB();
            this.f13033so.ex();
        }
    }

    public void oq() {
        com.bytedance.sdk.component.jFA.ba baVar = this.eZI;
        if (baVar != null) {
            baVar.awB();
        }
        com.bytedance.sdk.component.jFA.ba baVar2 = this.f13032si;
        if (baVar2 != null) {
            baVar2.awB();
        }
        if (this.Jm > 0) {
            this.Qu += SystemClock.elapsedRealtime() - this.Jm;
            this.Jm = 0L;
        }
        UN un2 = this.oJ;
        if (un2 != null) {
            un2.ZYk(false);
            ZYk(this.oJ, false);
            oJ(this.oJ, true, false);
        }
        if (this.ZYk == null || !Ln.so(this.f13030mu.ZYk)) {
            return;
        }
        this.ZYk.ZYk(false);
        ZYk(this.ZYk, false);
        oJ(this.ZYk, true, false);
    }

    public boolean si() {
        String str = this.ex;
        if (str == null) {
            return false;
        }
        try {
            return Uri.parse(str).getQueryParameterNames().contains("show_landingpage");
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean tb() {
        return cY.tB(this.f13030mu.ZYk) ? this.HyG && !this.cdg && this.f13030mu.UN.BTZ() : this.HyG && !this.cdg && this.RZ.get() && this.QSm;
    }

    public void Pfn() {
        if (Ln.Pfn(this.f13030mu.ZYk) && this.f13030mu.YQ) {
            return;
        }
        ba();
    }

    public void ba() {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.f13030mu;
        cY cYVar = oJVar.ZYk;
        if (TextUtils.isEmpty(cY.oJ(oJVar.Rl, cYVar))) {
            if (cYVar != null && !cYVar.HL() && this.mwH == null && si()) {
                this.lY = cYVar.PQw();
                this.mwH = com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().ZYk();
                int oJ2 = com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().oJ(this.mwH, this.lY);
                this.bgF = oJ2;
                this.Yg = oJ2 > 0 ? 2 : 0;
                if (!TextUtils.isEmpty(this.lY)) {
                    com.bytedance.sdk.openadsdk.ex.BTZ btz = this.Pfn;
                    if (btz != null) {
                        btz.oJ(this.Yg);
                    }
                    tB.oJ.oJ(this.NO, cYVar, "landingpage_endcard", this.mwH, this.lY);
                }
            }
            if ((TextUtils.isEmpty(this.ex) || !this.ex.contains("play.google.com/store")) && !QSm.ba(cYVar) && !QSm.Pfn(cYVar)) {
                Log.d("TTAD.RFWVM", "preLoadEndCardForce: return mShouldPreloadEndCard " + this.tB + ",webViewIsLoading " + this.Dex);
                if (this.tB) {
                    boolean z10 = this.f13030mu.VJm;
                    if (this.eZI != null && ((z10 || !TextUtils.isEmpty(this.ex)) && cY.ZYk(cYVar))) {
                        if (this.Dex) {
                            return;
                        }
                        String str = this.ex + "&is_pre_render=1";
                        com.bytedance.sdk.openadsdk.ex.BTZ btz2 = this.Pfn;
                        if (btz2 != null) {
                            btz2.ex();
                        }
                        if (Ln.cFZ(cYVar)) {
                            com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().ZYk(cYVar);
                        }
                        oq.oJ(this.eZI, str);
                        this.f13030mu.Xe.oJ(str);
                        this.Dex = true;
                        return;
                    } else if (cY.tB(cYVar)) {
                        this.f13030mu.UN.tB();
                        return;
                    } else {
                        return;
                    }
                }
                return;
            }
            this.jFA = true;
        }
    }

    public void cFZ() {
        cY cYVar = this.f13030mu.ZYk;
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib2 = cYVar.ib();
        if (ib2 == null) {
            return;
        }
        String BTZ = ib2.BTZ();
        this.oIC = BTZ;
        if (TextUtils.isEmpty(BTZ)) {
            return;
        }
        this.oIC = oJ(this.oIC, cYVar, this.BTZ, this.awB, this.WcQ);
        this.f13032si.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn(com.bytedance.sdk.openadsdk.core.si.oJ(), this.ZYk, cYVar.edj(), this.Pfn, cYVar.eXp() || Ln.cFZ(cYVar)) { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.3
            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = si.this.f13033so;
                if (pfn != null) {
                    pfn.ba();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = si.this.f13033so;
                if (pfn != null) {
                    pfn.Pfn();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i10, String str, String str2) {
                if (si.this.oJ(str2)) {
                    return;
                }
                si.this.f13031oq = false;
                si siVar = si.this;
                siVar.f13028ba = i10;
                siVar.cFZ = str;
                if (siVar.f13033so != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(Module.ResponseKey.Code, i10);
                        jSONObject.put("msg", str);
                        si.this.f13033so.oJ(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                super.onReceivedError(webView, i10, str, str2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            @TargetApi(21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (webResourceRequest != null && webResourceRequest.isForMainFrame()) {
                    si.this.f13031oq = false;
                    if (webResourceResponse != null) {
                        si.this.f13028ba = webResourceResponse.getStatusCode();
                        si.this.cFZ = "onReceivedHttpError";
                    }
                }
                if (si.this.f13033so != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (webResourceResponse != null) {
                            jSONObject.put(Module.ResponseKey.Code, webResourceResponse.getStatusCode());
                            jSONObject.put("msg", webResourceResponse.getReasonPhrase());
                        }
                        si.this.f13033so.oJ(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                if (webResourceRequest != null) {
                    super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (webResourceRequest == null || webResourceRequest.getUrl() == null || !si.this.oJ(webResourceRequest.getUrl().toString())) {
                    si.this.f13031oq = false;
                    if (si.this.f13033so != null) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            if (webResourceError != null) {
                                jSONObject.put(Module.ResponseKey.Code, webResourceError.getErrorCode());
                                jSONObject.put("msg", webResourceError.getDescription());
                            }
                            si.this.f13033so.oJ(jSONObject);
                        } catch (JSONException unused) {
                        }
                    }
                    if (webResourceError != null) {
                        si.this.f13028ba = webResourceError.getErrorCode();
                        si.this.cFZ = String.valueOf(webResourceError.getDescription());
                    }
                    if (webResourceRequest == null) {
                        return;
                    }
                    super.onReceivedError(webView, webResourceRequest, webResourceError);
                }
            }
        });
        this.f13032si.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.oJ.ex(this.ZYk, this.Pfn) { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.4
            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.ex, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i10) {
                super.onProgressChanged(webView, i10);
                if (si.this.f13030mu.cFZ && si.this.f13030mu.MoK != null) {
                    si.this.f13030mu.MoK.oJ(webView, i10, si.this.yz);
                }
            }
        });
        oq.oJ(this.f13032si, this.oIC);
        this.f13031oq = true;
    }

    public void so() {
        if (this.eZI == null) {
            return;
        }
        this.RZ.set(this.f13031oq);
        if (this.f13032si.getVisibility() == 0 && this.f13031oq) {
            nQI();
            return;
        }
        this.f13030mu.f13022mu.tB(false);
        this.f13030mu.Xe.cFZ(so.tB);
        oJ(this.oJ, true, false);
        ZYk(this.oJ, false);
        oJ(this.oJ, false);
        this.eZI.eZI();
        if (this.f13031oq) {
            this.f13032si.setVisibility(0);
            oJ(this.ZYk, this.f13030mu.bgF, true);
            ZYk(this.ZYk, true);
            oJ(this.ZYk, true);
            this.f13030mu.Jm.removeMessages(600);
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.f13030mu;
            if (!oJVar.XAo.tB(oJVar.UK)) {
                this.f13030mu.UK.jr();
            }
        } else {
            if (this.f13030mu.Xe.oJ()) {
                this.f13030mu.Xe.oJ(5);
            }
            this.f13030mu.XAo.ex();
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.f13030mu;
            oJVar2.jXJ.oJ(oJVar2.f13025so);
        }
        this.MoK = true;
    }

    void ZYk() {
        com.bytedance.sdk.openadsdk.common.PiB piB;
        this.cY = this.f13030mu.HyG.findViewById(16908290);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.f13030mu;
        boolean z10 = oJVar.cFZ;
        this.UN = z10;
        if (z10 && (piB = this.Jc) != null) {
            this.eZI = piB.ex();
        } else {
            com.bytedance.sdk.component.jFA.ba baVar = (com.bytedance.sdk.component.jFA.ba) oJVar.f13027wd.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.WcQ);
            this.eZI = baVar;
            if (baVar != null && cY.ZYk(this.f13030mu.ZYk)) {
                this.eZI.Pfn();
            } else {
                cdg.oJ((View) this.eZI, 8);
            }
        }
        com.bytedance.sdk.component.jFA.ba baVar2 = (com.bytedance.sdk.component.jFA.ba) this.f13030mu.f13027wd.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.eZI);
        this.f13032si = baVar2;
        if (baVar2 != null && Ln.cFZ(this.f13030mu.ZYk) && Ln.so(this.f13030mu.ZYk)) {
            this.f13032si.Pfn();
            this.f13032si.setDisplayZoomControls(false);
        } else {
            cdg.oJ((View) this.f13032si, 8);
        }
        com.bytedance.sdk.component.jFA.ba baVar3 = this.eZI;
        if (baVar3 != null) {
            baVar3.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (si.this.eZI != null && si.this.eZI.getViewTreeObserver() != null) {
                        si.this.eZI.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                        int measuredWidth = si.this.eZI.getMeasuredWidth();
                        int measuredHeight = si.this.eZI.getMeasuredHeight();
                        if (si.this.eZI.getVisibility() == 0) {
                            si.this.oJ(measuredWidth, measuredHeight);
                        }
                    }
                }
            });
        }
        com.bytedance.sdk.component.jFA.ba baVar4 = this.f13032si;
        if (baVar4 != null) {
            baVar4.setLandingPage(true);
            this.f13032si.setTag(Ln.cFZ(this.f13030mu.ZYk) ? this.dLZ : "landingpage_endcard");
            this.f13032si.setWebViewClient(new ba.oJ());
            this.f13032si.setMaterialMeta(this.f13030mu.ZYk.hW());
        }
    }

    public boolean ex() {
        return this.cdg;
    }

    public boolean tB() {
        return this.Rl;
    }

    public void Pfn(boolean z10) {
        if (this.oJ == null || this.f13030mu.HyG.isFinishing()) {
            return;
        }
        this.f13030mu.Xe.Pfn(z10);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z10);
            this.oJ.oJ("volumeChange", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void ex(boolean z10) {
        if (Ln.ZYk(this.f13030mu.ZYk)) {
            return;
        }
        Pfn(z10);
    }

    public void tB(boolean z10) {
        ZYk(this.oJ, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ extends com.bytedance.sdk.openadsdk.core.ZYk.oJ implements ZYk.oJ {
        private final View ZYk;
        private final com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJ;
        private final View.OnClickListener tB;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public oJ(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r5, android.view.View r6, android.view.View.OnClickListener r7) {
            /*
                r4 = this;
                android.app.Activity r0 = r5.HyG
                com.bytedance.sdk.openadsdk.core.model.cY r1 = r5.ZYk
                java.lang.String r2 = r5.Pfn
                boolean r3 = r5.ex
                if (r3 == 0) goto Lc
                r3 = 7
                goto Ld
            Lc:
                r3 = 5
            Ld:
                r4.<init>(r0, r1, r2, r3)
                r4.oJ = r5
                r4.ZYk = r6
                r4.tB = r7
                java.util.HashMap r6 = new java.util.HashMap
                r6.<init>()
                java.lang.Boolean r7 = java.lang.Boolean.TRUE
                java.lang.String r0 = "close_auto_click"
                r6.put(r0, r7)
                r7 = 2
                java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
                java.lang.String r0 = "click_scence"
                r6.put(r0, r7)
                r4.oJ(r6)
                com.bytedance.sdk.openadsdk.component.reward.oJ.ex r5 = r5.f13021jr
                com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba r5 = r5.tB()
                r4.oJ(r5)
                r4.oJ(r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.oJ.si.oJ.<init>(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ, android.view.View, android.view.View$OnClickListener):void");
        }

        @Override // com.bytedance.sdk.openadsdk.core.ZYk.oJ, com.bytedance.sdk.openadsdk.core.ZYk.ZYk, com.bytedance.sdk.openadsdk.core.ZYk.tB
        public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
            if (this.oJ.ZYk.Tjr()) {
                this.tB.onClick(view);
                this.ZYk.setOnTouchListener(null);
                this.ZYk.setOnClickListener(this.tB);
                return;
            }
            super.oJ(view, f10, f11, f12, f13, sparseArray, z10);
            this.oJ.cdg.e_();
        }

        @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk.oJ
        public void oJ(View view, int i10) {
            this.ZYk.setOnTouchListener(null);
            this.ZYk.setOnClickListener(this.tB);
        }
    }

    public void oJ() {
        if (this.Id) {
            return;
        }
        this.Id = true;
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.f13030mu;
        this.BTZ = oJVar.oTd;
        this.WcQ = oJVar.NO;
        this.awB = oJVar.jB;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        ZYk();
        this.NO = SystemClock.elapsedRealtime() - elapsedRealtime;
    }

    public void cFZ(boolean z10) {
        this.MoK = z10;
    }

    public void oJ(String str, final com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk) {
        oJ(str, new ex() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.12
            @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.si.ex
            public void oJ(WebView webView, String str2) {
                if (si.this.f13030mu.HyG.isFinishing()) {
                    return;
                }
                si.this.f13030mu.Xe.ZYk(si.this.Ry());
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.si.ex
            public void oJ(WebView webView, String str2, Bitmap bitmap) {
                if (si.this.XAo || !Ln.si(si.this.f13030mu.ZYk)) {
                    return;
                }
                si.this.XAo = true;
                si.this.f13030mu.Xe.oJ(si.this.f13030mu.f13020ba, si.this.f13030mu.ZYk, si.this.f13030mu.ZYk.kO());
                if (!Ln.so(si.this.f13030mu.ZYk)) {
                    si.this.f13030mu.Jm.sendEmptyMessageDelayed(600, si.this.f13030mu.Xe.jFA() * 1000);
                }
                si.this.f13030mu.Xe.kkU();
                si.this.f13030mu.cdg.eZI();
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.oJ.si.ex
            public void oJ(WebView webView, int i10) {
                try {
                    if (!Ln.si(si.this.f13030mu.ZYk) || !si.this.f13030mu.ZYk.bbM() || si.this.f13030mu.HyG.isFinishing()) {
                        if (!si.this.f13030mu.cFZ || si.this.f13030mu.MoK == null) {
                            return;
                        }
                        si.this.f13030mu.MoK.oJ(webView, i10, si.this.yz);
                        return;
                    }
                    si.this.f13030mu.Xe.tB(i10);
                } catch (Exception unused) {
                }
            }
        });
        if (Ln.si(this.f13030mu.ZYk)) {
            oJ(this.f13032si);
            this.f13030mu.Xe.oJ(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.13
                @Override // android.webkit.DownloadListener
                public void onDownloadStart(String str2, String str3, String str4, String str5, long j10) {
                    si.this.f13030mu.f13021jr.ZYk();
                    com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk2 = zYk;
                    if (zYk2 != null) {
                        zYk2.ba();
                    }
                }
            });
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.f13030mu;
        oJVar.Xe.tB(oJVar.Dex);
        oJ(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.14
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str2, String str3, String str4, String str5, long j10) {
                si.this.f13030mu.f13021jr.ZYk();
                com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk2 = zYk;
                if (zYk2 != null) {
                    zYk2.ba();
                }
            }
        });
    }

    public void oJ(com.bytedance.sdk.openadsdk.BTZ.ba baVar, String str, final com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk) {
        if (this.eZI == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        final cY cYVar = this.f13030mu.ZYk;
        if (Ln.cFZ(cYVar)) {
            hashMap.put("click_scence", 3);
        } else {
            hashMap.put("click_scence", 2);
        }
        this.f13033so = bgF();
        UN un2 = new UN(this.f13030mu.HyG);
        this.oJ = un2;
        un2.oJ(this.f13030mu.cdg);
        String ZiK = cYVar.ZiK();
        this.oJ.ZYk(this.eZI).oJ(cYVar).oJ(com.bytedance.sdk.openadsdk.core.so.oJ.ZYk.oJ(cYVar)).tB(cYVar.edj()).ex(cYVar.pe()).ZYk(cYVar.kO() ? 7 : 5).oJ(new ZYk(this.eZI)).Pfn(ZiK).oJ(this.eZI).ZYk(si() ? "landingpage_endcard" : str).oJ(hashMap).oJ(this.f13033so).oJ(new com.bytedance.sdk.openadsdk.core.widget.Pfn() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.16
            @Override // com.bytedance.sdk.openadsdk.core.widget.Pfn
            public void oJ() {
                if (si.this.ofl != null) {
                    si.this.ofl.tB();
                }
                com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk2 = zYk;
                if (zYk2 != null) {
                    zYk2.ba();
                }
            }
        }).oJ(new UN.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.15
            @Override // com.bytedance.sdk.openadsdk.core.UN.oJ
            public void oJ() {
                si.this.Qu();
            }
        });
        HashMap hashMap2 = new HashMap();
        if (Ln.so(cYVar)) {
            hashMap2.put("click_scence", 2);
        }
        UN un3 = new UN(this.f13030mu.HyG);
        this.ZYk = un3;
        un3.oJ(this.f13030mu.cdg);
        UN Pfn = this.ZYk.ZYk(this.f13032si).oJ(cYVar).oJ(com.bytedance.sdk.openadsdk.core.so.oJ.ZYk.oJ(cYVar)).tB(cYVar.edj()).ex(cYVar.pe()).ZYk(cYVar.kO() ? 7 : 5).oJ(new ZYk(this.f13032si)).oJ(this.f13032si).Pfn(ZiK);
        if (si()) {
            str = "landingpage_endcard";
        }
        Pfn.ZYk(str).oJ(hashMap2).oJ(this.f13033so).oJ(new com.bytedance.sdk.openadsdk.core.widget.Pfn() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.18
            @Override // com.bytedance.sdk.openadsdk.core.widget.Pfn
            public void oJ() {
                if (si.this.ofl != null) {
                    si.this.ofl.tB();
                }
            }
        }).oJ(new UN.oJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.17
            @Override // com.bytedance.sdk.openadsdk.core.UN.oJ
            public void oJ() {
                si.this.Qu();
            }
        });
        this.oJ.oJ(new tB(this.eZI));
        this.ZYk.oJ(new tB(this.f13032si));
        this.oJ.oJ(this.f13030mu.ofl.kkU()).oJ(this.f13030mu.Dex).oJ(baVar).oJ(this.f13030mu.Xe.dLZ()).oJ(new com.bytedance.sdk.openadsdk.BTZ.tB() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.19
            @Override // com.bytedance.sdk.openadsdk.BTZ.tB
            public void oJ(boolean z10, int i10, String str2) {
                if (z10) {
                    si siVar = si.this;
                    siVar.kkU = true;
                    if (siVar.jB) {
                        si.this.jB = false;
                        si siVar2 = si.this;
                        siVar2.oJ(siVar2.f13030mu.bgF, true);
                    }
                }
                if (!cY.ex(cYVar) || Ln.cFZ(cYVar)) {
                    return;
                }
                si.this.oJ(z10, i10, str2);
            }

            @Override // com.bytedance.sdk.openadsdk.BTZ.tB
            public void oJ() {
                si.this.Rl = true;
                si.this.f13030mu.ofl.kkU().performClick();
            }
        });
        this.oJ.Pfn(this.HyG);
        this.ZYk.oJ(this.f13030mu.ofl.kkU()).oJ(new com.bytedance.sdk.openadsdk.BTZ.tB() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.2
            @Override // com.bytedance.sdk.openadsdk.BTZ.tB
            public void oJ(boolean z10, int i10, String str2) {
            }

            @Override // com.bytedance.sdk.openadsdk.BTZ.tB
            public void oJ() {
                si.this.Rl = true;
                si.this.f13030mu.ofl.kkU().performClick();
            }
        });
    }

    public void ZYk(boolean z10) {
        oJ(this.oJ, z10);
    }

    public void ZYk(UN un2, boolean z10) {
        try {
            this.f13030mu.Xe.ex(z10);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("viewStatus", z10 ? 1 : 0);
            un2.oJ("viewableChange", jSONObject);
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.BTZ.so
    public void ZYk(int i10) {
        int i11 = this.TA;
        if (i11 <= 0 && i10 > 0) {
            ex(false);
        } else if (i11 > 0 && i10 == 0) {
            ex(true);
        }
        this.TA = i10;
    }

    public void ba(boolean z10) {
        this.cdg = true;
        JSONObject jSONObject = new JSONObject();
        cY cYVar = this.f13030mu.ZYk;
        try {
            jSONObject.put("endcard_overlay_render_type", cY.tB(cYVar) ? 7 : 0);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, this.dLZ, "use_second_endcard", jSONObject);
        this.Jm = SystemClock.elapsedRealtime();
        try {
            if (!cY.tB(cYVar)) {
                this.oJ.oJ("click_endcard_close", (JSONObject) null);
            } else if (z10) {
                this.f13030mu.UN.so();
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, this.dLZ, "endcard_close_skip", jSONObject);
            }
        } catch (Exception unused2) {
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.f13030mu;
        oJVar.jXJ.oJ(oJVar.f13025so);
    }

    public void oJ(int i10, int i11) {
        if (this.oJ == null || this.f13030mu.HyG.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", i10);
            jSONObject.put("height", i11);
            this.oJ.oJ("resize", jSONObject);
        } catch (Exception e10) {
            Log.e("TTAD.RFWVM", "", e10);
        }
    }

    public void oJ(boolean z10) {
        this.tB = z10;
    }

    private static String oJ(String str, cY cYVar, int i10, int i11, int i12) {
        String str2;
        String str3;
        float dzr = cYVar.dzr();
        if (!TextUtils.isEmpty(str)) {
            if (i10 == 1) {
                if (str.contains("?")) {
                    str3 = str + ContainerUtils.FIELD_DELIMITER;
                } else {
                    str3 = str + "?";
                }
                str = str3 + "orientation=portrait";
            }
            if (str.contains("?")) {
                str2 = str + ContainerUtils.FIELD_DELIMITER;
            } else {
                str2 = str + "?";
            }
            str = str2 + "height=" + i11 + "&width=" + i12 + "&aspect_ratio=" + dzr;
        }
        return !Ln.cFZ(cYVar) ? com.bytedance.sdk.openadsdk.utils.ba.oJ(str) : str;
    }

    public void oJ(int i10) {
        cdg.oJ((View) this.eZI, i10);
        com.bytedance.sdk.component.jFA.ba baVar = this.eZI;
        if (baVar != null) {
            cdg.oJ((View) baVar.getWebView(), i10);
        }
        cY cYVar = this.f13030mu.ZYk;
        if (this.eZI != null && (cYVar.eXp() || Ln.cFZ(cYVar))) {
            this.eZI.setLandingPage(true);
            this.eZI.setTag(Ln.cFZ(cYVar) ? this.dLZ : "landingpage_endcard");
            this.eZI.setMaterialMeta(cYVar.hW());
        }
        if (i10 == 0 && Ln.so(cYVar)) {
            cFZ();
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.common.PiB piB) {
        this.Jc = piB;
    }

    public void oJ(float f10) {
        cdg.oJ(this.eZI, f10);
    }

    public void oJ(UN un2, boolean z10) {
        if (this.oJ == null || this.f13030mu.HyG.isFinishing()) {
            return;
        }
        un2.ZYk(z10);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void oJ(String str, final ex exVar) {
        com.bytedance.sdk.component.jFA.ba baVar;
        final cY cYVar = this.f13030mu.ZYk;
        com.bytedance.sdk.component.jFA.ba baVar2 = this.eZI;
        if (baVar2 == null || baVar2.getWebView() == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.BTZ ZYk2 = new com.bytedance.sdk.openadsdk.ex.BTZ(cYVar, this.eZI.getWebView(), new com.bytedance.sdk.openadsdk.ex.dLZ() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.7
            @Override // com.bytedance.sdk.openadsdk.ex.dLZ
            public void oJ(int i10) {
                if (!TextUtils.isEmpty(si.this.lY)) {
                    tB.oJ.oJ(si.this.bgF, si.this.nQI, si.this.LS, si.this.oTd - si.this.LS, cYVar, "landingpage_endcard", i10);
                }
            }
        }, this.Yg).ZYk(true);
        this.Pfn = ZYk2;
        this.yz = ZYk2.oJ;
        ZYk2.oJ(si() ? "landingpage_endcard" : str);
        this.Pfn.ZYk(this.dLZ);
        this.Pfn.tB(true);
        this.eZI.getWebView().setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.8
            @Override // android.view.View.OnScrollChangeListener
            public void onScrollChange(View view, int i10, int i11, int i12, int i13) {
                com.bytedance.sdk.openadsdk.ex.BTZ btz = si.this.Pfn;
                if (btz != null) {
                    btz.ZYk(i11);
                }
            }
        });
        so soVar = this.f13030mu.Xe;
        if (soVar != null) {
            this.Pfn.oJ(soVar.ex());
        }
        com.bytedance.sdk.openadsdk.common.ex oJ2 = HyG.oJ(cYVar, this.eZI, this.f13030mu.HyG, this.dLZ);
        this.sH = oJ2;
        if (oJ2 != null) {
            if (si()) {
                str = "landingpage_endcard";
            }
            oJ2.oJ(str);
        }
        if (si()) {
            HyG.oJ(cYVar, this.eZI);
        }
        com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn pfn = new com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn(com.bytedance.sdk.openadsdk.core.si.oJ(), this.oJ, cYVar.edj(), this.sH, this.Pfn, cYVar.eXp() || Ln.cFZ(cYVar)) { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.9
            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str2) {
                super.onPageFinished(webView, str2);
                si.this.Dex = false;
                si.this.QSm = true;
                if (si.this.f13030mu.Jc.tb()) {
                    View kkU = si.this.f13030mu.ofl.kkU();
                    if (kkU instanceof com.bytedance.sdk.openadsdk.core.Pfn.ex) {
                        ((com.bytedance.sdk.openadsdk.core.Pfn.ex) kkU).setImageResource(com.bytedance.sdk.component.utils.cY.ex(si.this.f13030mu.Rl, "tt_skip_btn"));
                    }
                }
                DeviceUtils.AudioInfoReceiver.oJ(si.this);
                si.this.TA = DeviceUtils.cFZ();
                com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn2 = si.this.f13033so;
                if (pfn2 != null) {
                    pfn2.ba();
                }
                si.this.f13030mu.Xe.ZYk(str2);
                ex exVar2 = exVar;
                if (exVar2 != null) {
                    exVar2.oJ(webView, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str2, Bitmap bitmap) {
                super.onPageStarted(webView, str2, bitmap);
                com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn2 = si.this.f13033so;
                if (pfn2 != null) {
                    pfn2.Pfn();
                }
                ex exVar2 = exVar;
                if (exVar2 != null) {
                    exVar2.oJ(webView, str2, bitmap);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i10, String str2, String str3) {
                super.onReceivedError(webView, i10, str2, str3);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            @TargetApi(21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                si.this.f13030mu.Xe.oJ(webResourceRequest.isForMainFrame(), webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode());
                if (webResourceRequest.getUrl() != null) {
                    Log.i("TTAD.RFWVM", "onReceivedHttpError:url =" + webResourceRequest.getUrl().toString());
                }
                if (webResourceRequest.isForMainFrame()) {
                    si.this.RZ.set(false);
                    si.this.Dex = false;
                    si.this.f13028ba = webResourceResponse.getStatusCode();
                    si.this.cFZ = "onReceivedHttpError";
                }
                if (si.this.f13033so != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(Module.ResponseKey.Code, webResourceResponse.getStatusCode());
                        jSONObject.put("msg", webResourceResponse.getReasonPhrase());
                        si.this.f13033so.oJ(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                super.onReceivedSslError(webView, sslErrorHandler, sslError);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str2) {
                if (!Ln.cFZ(cYVar)) {
                    try {
                        if (TextUtils.isEmpty(si.this.lY)) {
                            return super.shouldInterceptRequest(webView, str2);
                        }
                        si.PiB(si.this);
                        WebResourceResponseModel oJ3 = com.bytedance.sdk.openadsdk.cFZ.ZYk.oJ().oJ(si.this.mwH, si.this.lY, str2);
                        if (oJ3 != null && oJ3.getWebResourceResponse() != null) {
                            si.awB(si.this);
                            return oJ3.getWebResourceResponse();
                        }
                        if (oJ3 != null && oJ3.getMsg() == 2) {
                            si.eZI(si.this);
                        }
                        return super.shouldInterceptRequest(webView, str2);
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.QSm.oJ("TTAD.RFWVM", "shouldInterceptRequest url error", th2);
                        return super.shouldInterceptRequest(webView, str2);
                    }
                }
                long currentTimeMillis = System.currentTimeMillis();
                WebResourceResponse oJ4 = com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(cYVar.ib().PiB(), Ln.PiB(cYVar), str2);
                long currentTimeMillis2 = System.currentTimeMillis();
                if (si.this.f13033so != null) {
                    jFA.oJ oJ5 = com.bytedance.sdk.component.adexpress.ex.jFA.oJ(str2);
                    int i10 = oJ4 != null ? 1 : 2;
                    if (oJ5 == jFA.oJ.HTML) {
                        si.this.f13033so.oJ(str2, currentTimeMillis, currentTimeMillis2, i10);
                    } else if (oJ5 == jFA.oJ.JS) {
                        si.this.f13033so.ZYk(str2, currentTimeMillis, currentTimeMillis2, i10);
                    }
                }
                return oJ4 != null ? oJ4 : super.shouldInterceptRequest(webView, str2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                if (webResourceError != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                    Log.i("TTAD.RFWVM", "onReceivedError WebResourceError : description=" + ((Object) webResourceError.getDescription()) + "  url =" + webResourceRequest.getUrl().toString());
                }
                if (webResourceRequest == null || webResourceRequest.getUrl() == null || !si.this.oJ(webResourceRequest.getUrl().toString())) {
                    if (webResourceError != null && webResourceRequest != null && webResourceRequest.isForMainFrame()) {
                        si.this.f13030mu.Xe.oJ(webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), String.valueOf(webResourceRequest.getUrl()));
                    }
                    if (webResourceRequest == null || webResourceRequest.isForMainFrame()) {
                        si.this.RZ.set(false);
                        si.this.Dex = false;
                    }
                    if (si.this.f13033so != null) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            if (webResourceError != null) {
                                jSONObject.put(Module.ResponseKey.Code, webResourceError.getErrorCode());
                                jSONObject.put("msg", webResourceError.getDescription());
                            }
                            si.this.f13033so.oJ(jSONObject);
                        } catch (JSONException unused) {
                        }
                    }
                    if (webResourceError != null) {
                        si.this.f13028ba = webResourceError.getErrorCode();
                        si.this.cFZ = String.valueOf(webResourceError.getDescription());
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.Pfn, android.webkit.WebViewClient
            @TargetApi(21)
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.QSm.oJ("TTAD.RFWVM", "shouldInterceptRequest error1", th2);
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
            }
        };
        this.ofl = pfn;
        this.eZI.setWebViewClient(pfn);
        this.ofl.oJ(cYVar);
        this.ofl.oJ(this.PiB ? "rewarded_video" : "fullscreen_interstitial_ad");
        if (cYVar.eXp() && (baVar = this.eZI) != null && baVar.getWebView() != null) {
            this.eZI.getWebView().setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.10
                private final int tB = com.bytedance.sdk.openadsdk.core.si.ZYk();

                /* JADX WARN: Removed duplicated region for block: B:36:0x00d2 A[Catch: all -> 0x0066, TryCatch #3 {all -> 0x0066, blocks: (B:9:0x001f, B:18:0x0038, B:20:0x0052, B:26:0x006e, B:28:0x00b3, B:30:0x00bd, B:34:0x00ca, B:36:0x00d2, B:38:0x00de, B:39:0x00e7, B:41:0x00f4, B:50:0x015c, B:52:0x0185, B:54:0x018b, B:56:0x0199, B:58:0x01a1, B:60:0x01a9, B:62:0x01b1, B:63:0x01f1, B:68:0x0203, B:70:0x020f, B:72:0x021e, B:74:0x0242, B:76:0x024a, B:77:0x0280, B:79:0x0288, B:80:0x02c0, B:84:0x02f1, B:88:0x0305, B:90:0x0315, B:91:0x031e, B:93:0x0326, B:96:0x0330, B:99:0x033a, B:101:0x0349, B:100:0x0342, B:73:0x0230, B:25:0x0069, B:43:0x00ff, B:44:0x0129, B:46:0x0137, B:48:0x0141, B:49:0x014f), top: B:116:0x001f }] */
                @Override // android.view.View.OnTouchListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public boolean onTouch(android.view.View r20, android.view.MotionEvent r21) {
                    /*
                        Method dump skipped, instructions count: 859
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.oJ.si.AnonymousClass10.onTouch(android.view.View, android.view.MotionEvent):boolean");
                }
            });
        }
        com.bytedance.sdk.component.jFA.ba baVar3 = this.eZI;
        if (baVar3 != null) {
            baVar3.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.oJ.ex(this.oJ, this.Pfn, this.sH) { // from class: com.bytedance.sdk.openadsdk.component.reward.oJ.si.11
                @Override // com.bytedance.sdk.openadsdk.core.widget.oJ.ex, android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i10) {
                    super.onProgressChanged(webView, i10);
                    ex exVar2 = exVar;
                    if (exVar2 != null) {
                        exVar2.oJ(webView, i10);
                    }
                }
            });
        }
        oJ(this.eZI);
        this.eZI.setLayerType(1, null);
        this.eZI.setBackgroundColor(-1);
        this.eZI.setDisplayZoomControls(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return this.f13030mu.ZYk.eXp() && str.endsWith(".mp4");
    }

    public void oJ(DownloadListener downloadListener) {
        com.bytedance.sdk.component.jFA.ba baVar = this.eZI;
        if (baVar == null || downloadListener == null) {
            return;
        }
        baVar.setDownloadListener(downloadListener);
    }

    public void oJ(com.bytedance.sdk.component.jFA.ba baVar) {
        if (baVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.widget.oJ.tB.oJ(this.f13030mu.HyG).oJ(false).ZYk(false).oJ(baVar.getWebView());
        baVar.setUserAgentString(RZ.oJ(baVar.getWebView(), 7504));
        baVar.setMixedContentMode(0);
    }

    public void oJ(boolean z10, boolean z11) {
        oJ(this.oJ, z10, z11);
    }

    public void oJ(UN un2, boolean z10, boolean z11) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z10);
            jSONObject.put(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD_SHOW, z11);
            com.bytedance.sdk.openadsdk.activity.so soVar = this.f13030mu.oCU;
            if (soVar != null) {
                jSONObject.put("multi_ads_show", soVar.wd().cFZ());
            }
            un2.oJ("endcard_control_event", jSONObject);
            if (z11) {
                if (this.QSm) {
                    return;
                }
                this.jB = true;
                return;
            }
            this.jB = false;
        } catch (Exception unused) {
        }
    }

    public void oJ(boolean z10, int i10, String str) {
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = this.f13033so;
        if (pfn == null) {
            return;
        }
        if (z10) {
            pfn.ZYk();
        } else {
            pfn.oJ(i10, str);
        }
    }
}
