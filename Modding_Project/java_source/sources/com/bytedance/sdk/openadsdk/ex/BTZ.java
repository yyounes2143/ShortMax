package com.bytedance.sdk.openadsdk.ex;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.webkit.JavascriptInterface;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import com.bytedance.applog.util.WebViewJsUtil;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.model.RZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.widget.oJ.ba;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class BTZ {
    private static final int[] tB = {10, 30, 50, 75, 100};
    private boolean BTZ;
    private long HL;
    private boolean HyG;
    private long IUZ;
    private long Id;
    private boolean Jc;
    private final AtomicInteger Jm;
    private final AtomicBoolean LS;
    private long Ln;
    private long LpP;
    private String NO;
    private long Pfn;
    private String PiB;
    private boolean QSm;
    private final AtomicInteger Qu;
    private jFA RZ;
    private volatile long Rl;
    private com.bytedance.sdk.openadsdk.QSm.so Ry;
    private final boolean UN;
    private String WcQ;
    private WeakReference<WebView> XAo;
    private final cY Xe;
    private int Yg;
    AtomicBoolean ZYk;
    private final Context awB;

    /* renamed from: ba  reason: collision with root package name */
    private int f13328ba;
    private volatile int bgF;
    private final AtomicBoolean cFZ;
    private long cY;
    private dLZ cdg;
    private int dLZ;
    private com.bytedance.sdk.openadsdk.core.widget.oJ.ba eZI;
    private int ex;
    private long jB;
    private final AtomicBoolean jFA;

    /* renamed from: jr  reason: collision with root package name */
    private int f13329jr;
    private final AtomicBoolean kkU;
    private volatile long lY;

    /* renamed from: mu  reason: collision with root package name */
    private final AtomicInteger f13330mu;
    private volatile long mwH;
    private final AtomicBoolean nQI;
    private long nke;
    public ba.oJ oJ;
    private volatile long oTd;
    private boolean ofl;

    /* renamed from: oq  reason: collision with root package name */
    private int f13331oq;
    private String sH;

    /* renamed from: si  reason: collision with root package name */
    private boolean f13332si;

    /* renamed from: so  reason: collision with root package name */
    private final AtomicBoolean f13333so;

    /* renamed from: tb  reason: collision with root package name */
    private String f13334tb;

    /* renamed from: wd  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.ex.ex.Pfn f13335wd;
    private final AtomicBoolean yz;

    /* loaded from: classes3.dex */
    private class oJ {
        private oJ() {
        }

        @JavascriptInterface
        public String getUrl() {
            return "";
        }

        @JavascriptInterface
        public void readPercent(String str) {
            int i10 = 0;
            try {
                int intValue = Float.valueOf(str).intValue();
                if (intValue > 100) {
                    i10 = 100;
                } else if (intValue >= 0) {
                    i10 = intValue;
                }
            } catch (Throwable unused) {
            }
            BTZ.this.f13330mu.set(i10);
        }
    }

    public BTZ(cY cYVar, WebView webView, dLZ dlz, int i10) {
        this(cYVar, webView);
        this.cdg = dlz;
        this.Yg = i10;
    }

    private boolean jFA() {
        cY cYVar;
        if (this.HyG && (cYVar = this.Xe) != null && cYVar.HL()) {
            return true;
        }
        return false;
    }

    private int kkU() {
        WebView webView;
        WeakReference<WebView> weakReference = this.XAo;
        if (weakReference != null) {
            webView = weakReference.get();
        } else {
            webView = null;
        }
        if (webView != null) {
            try {
                WebBackForwardList copyBackForwardList = webView.copyBackForwardList();
                if (copyBackForwardList != null) {
                    if (copyBackForwardList.getCurrentIndex() == 0) {
                        return 1;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    public void ba() {
        if (jFA() && this.mwH > 0 && this.oTd > 0 && !this.LS.getAndSet(true)) {
            tB.ZYk(this.oTd - this.mwH, this.Xe, this.NO, (String) null);
        }
    }

    public void cFZ() {
        if (this.nke == 0) {
            this.nke = System.currentTimeMillis();
        }
        this.HL = System.currentTimeMillis();
        if ("landingpage".equals(this.f13334tb) || "landingpage_endcard".equals(this.f13334tb) || "landingpage_split_screen".equals(this.f13334tb) || "landingpage_direct".equals(this.f13334tb) || "aggregate_page".equals(this.f13334tb)) {
            if (this.yz.compareAndSet(false, true)) {
                com.bytedance.sdk.openadsdk.ba.ZYk.oJ().oJ("landingStart", this.Xe, this.sH);
            } else {
                com.bytedance.sdk.openadsdk.ba.ZYk.oJ().oJ("landingContinue", this.Xe, this.sH);
            }
        }
        if (QSm.ba(this.Xe) || QSm.ZYk(this.Xe)) {
            oJ(true, SystemClock.elapsedRealtime());
        }
    }

    public void so() {
        if (("landingpage".equals(this.f13334tb) || "landingpage_endcard".equals(this.f13334tb) || "landingpage_split_screen".equals(this.f13334tb) || "landingpage_direct".equals(this.f13334tb) || "aggregate_page".equals(this.f13334tb) || "landingpage_split_ceiling".equals(this.f13334tb)) && this.f13328ba == 2) {
            if (this.IUZ > 0 || !tB()) {
                long currentTimeMillis = System.currentTimeMillis() - Math.max(this.HL, this.IUZ);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("load_status", this.f13328ba);
                    jSONObject.put("max_scroll_percent", this.f13330mu.get());
                    jSONObject.put("jump_times", this.Jm.getAndSet(0));
                    jSONObject.put("click_times", this.Qu.getAndSet(0));
                    jSONObject.putOpt("render_type", "h5");
                    jSONObject.putOpt("render_type_2", 0);
                } catch (JSONException unused) {
                }
                this.kkU.set(true);
                oJ("stay_page", jSONObject, Math.min(currentTimeMillis, (long) TTAdConstant.AD_MAX_EVENT_TIME));
                com.bytedance.sdk.openadsdk.ba.ZYk.oJ().oJ("landingPause", this.Xe, this.sH);
            }
        }
    }

    public void Pfn() {
        if (jFA()) {
            this.mwH = SystemClock.elapsedRealtime();
            ba();
        }
    }

    public com.bytedance.sdk.openadsdk.ex.ex.Pfn ZYk() {
        return this.f13335wd;
    }

    public void ex() {
        if (jFA()) {
            this.lY = SystemClock.elapsedRealtime();
            tB.oJ(this.Xe, this.NO);
        }
    }

    public boolean tB() {
        return this.HyG;
    }

    public BTZ ZYk(boolean z10) {
        this.ofl = z10;
        return this;
    }

    public void tB(boolean z10) {
        this.HyG = z10;
    }

    public BTZ(cY cYVar, WebView webView) {
        this(cYVar, webView, false);
    }

    private String tB(String str) {
        return WebViewJsUtil.JS_URL_PREFIX.concat(String.valueOf(str));
    }

    public void ZYk(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.NO = str;
    }

    public cY oJ() {
        return this.Xe;
    }

    public BTZ(cY cYVar, WebView webView, boolean z10) {
        this.ex = 0;
        this.Pfn = -1L;
        this.f13328ba = 1;
        this.cFZ = new AtomicBoolean(false);
        this.f13333so = new AtomicBoolean(false);
        this.jFA = new AtomicBoolean(false);
        this.kkU = new AtomicBoolean(false);
        this.dLZ = -1;
        this.QSm = false;
        this.f13331oq = 0;
        this.ZYk = new AtomicBoolean(false);
        this.f13334tb = "landingpage";
        this.HL = 0L;
        this.IUZ = 0L;
        this.Ln = 0L;
        this.LpP = 0L;
        this.nke = 0L;
        this.Jc = false;
        this.UN = false;
        this.f13330mu = new AtomicInteger(0);
        this.ofl = false;
        this.HyG = false;
        this.Rl = 0L;
        this.Jm = new AtomicInteger(0);
        this.Qu = new AtomicInteger(0);
        this.nQI = new AtomicBoolean(false);
        this.bgF = 0;
        this.Yg = -1;
        this.LS = new AtomicBoolean(false);
        this.yz = new AtomicBoolean(false);
        Context oJ2 = com.bytedance.sdk.openadsdk.core.si.oJ();
        this.awB = oJ2;
        this.Xe = cYVar;
        if (webView == null) {
            return;
        }
        this.QSm = z10;
        WeakReference<WebView> weakReference = new WeakReference<>(webView);
        this.XAo = weakReference;
        WebView webView2 = weakReference.get();
        if (webView2 == null) {
            return;
        }
        if (cYVar != null && cYVar.Zzm()) {
            com.bytedance.sdk.openadsdk.core.widget.oJ.ba baVar = new com.bytedance.sdk.openadsdk.core.widget.oJ.ba(webView2, cYVar, oJ2, this.QSm);
            this.eZI = baVar;
            this.oJ = baVar.tB();
        }
        if (cYVar != null && cYVar.rg() && com.bytedance.sdk.openadsdk.core.settings.PiB.ib().BHY()) {
            this.RZ = new jFA(cYVar, webView, this.QSm);
        }
        if (webView instanceof com.bytedance.sdk.component.jFA.Pfn) {
            this.jB = ((com.bytedance.sdk.component.jFA.Pfn) webView2).oJ;
        } else {
            this.jB = System.currentTimeMillis();
        }
        try {
            webView2.addJavascriptInterface(new oJ(), "JS_LANDING_PAGE_LOG_OBJ");
        } catch (Exception e10) {
            com.bytedance.sdk.component.utils.QSm.oJ("LandingPageLog", "addJavascriptInterface exception", e10);
        }
        if (cYVar != null && cYVar.DTf() != null) {
            this.Pfn = cYVar.DTf().optLong("page_id", -1L);
        }
        this.sH = String.valueOf(SystemClock.elapsedRealtime());
    }

    public void ex(boolean z10) {
        WeakReference<WebView> weakReference = this.XAo;
        WebView webView = weakReference != null ? weakReference.get() : null;
        if (webView != null) {
            try {
                webView.removeJavascriptInterface("JS_LANDING_PAGE_LOG_OBJ");
            } catch (Exception e10) {
                com.bytedance.sdk.component.utils.QSm.oJ("LandingPageLog", "removeJavascriptInterface exception", e10);
            }
        }
        if (this.f13333so.compareAndSet(false, true)) {
            oJ(z10, "1");
            if (this.ofl) {
                tB.oJ(this.Xe, this.f13334tb, System.currentTimeMillis() - this.nke, this.Yg, kkU());
            }
        } else if (this.f13328ba == 2 && !this.kkU.get()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("load_status", this.f13328ba);
                jSONObject.put("max_scroll_percent", this.f13330mu.get());
                jSONObject.put("jump_times", this.Jm.getAndSet(0));
                jSONObject.put("click_times", this.Qu.getAndSet(0));
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
            } catch (JSONException unused) {
            }
            oJ("stay_page", jSONObject, 0L);
        }
        if ("landingpage".equals(this.f13334tb) || "landingpage_endcard".equals(this.f13334tb) || "landingpage_split_screen".equals(this.f13334tb) || "landingpage_direct".equals(this.f13334tb) || "aggregate_page".equals(this.f13334tb) || "landingpage_split_ceiling".equals(this.f13334tb)) {
            com.bytedance.sdk.openadsdk.ba.ZYk.oJ().oJ("landingFinish", this.Xe, this.sH);
        }
    }

    public void oJ(boolean z10) {
        if (z10) {
            this.f13331oq = 1;
        }
    }

    public void ZYk(WebView webView, String str, boolean z10) {
        jFA jfa = this.RZ;
        if (jfa == null || !z10) {
            return;
        }
        jfa.oJ(webView, str);
    }

    public void oJ(dLZ dlz) {
        this.cdg = dlz;
    }

    public void oJ(long j10) {
        this.IUZ = j10;
    }

    public void ZYk(int i10) {
        com.bytedance.sdk.openadsdk.core.widget.oJ.ba baVar = this.eZI;
        if (baVar == null || !this.f13332si) {
            return;
        }
        baVar.oJ(i10);
    }

    public void oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.widget.oJ.ba baVar = this.eZI;
        if (baVar != null) {
            baVar.oJ(str);
        }
        jFA jfa = this.RZ;
        if (jfa != null) {
            jfa.tB(str);
        }
        this.f13334tb = str;
    }

    public void oJ(int i10) {
        this.Yg = i10;
    }

    public void oJ(com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn) {
        this.f13335wd = pfn;
    }

    public void oJ(com.bytedance.sdk.openadsdk.QSm.so soVar) {
        this.Ry = soVar;
    }

    public void oJ(WebView webView, int i10) {
        if (webView == null) {
            return;
        }
        if (this.Rl == 0) {
            this.Rl = SystemClock.elapsedRealtime();
        }
        if (this.Ln == 0 && i10 > 0) {
            this.Ln = System.currentTimeMillis();
        } else if (this.LpP == 0 && i10 == 100) {
            this.LpP = System.currentTimeMillis();
        }
        if (this.ex != tB.length && ("landingpage".equals(this.f13334tb) || "landingpage_endcard".equals(this.f13334tb) || "landingpage_split_screen".equals(this.f13334tb) || "landingpage_direct".equals(this.f13334tb) || "aggregate_page".equals(this.f13334tb))) {
            int i11 = this.ex;
            while (true) {
                int[] iArr = tB;
                if (i11 >= iArr.length || i10 < iArr[this.ex]) {
                    break;
                }
                int i12 = i11 + 1;
                this.ex = i12;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", webView.getUrl());
                    long j10 = this.Pfn;
                    if (j10 != -1) {
                        jSONObject.put("page_id", j10);
                    }
                    jSONObject.putOpt("render_type", "h5");
                    jSONObject.putOpt("render_type_2", 0);
                    jSONObject.put("pct", iArr[i11]);
                } catch (Exception unused) {
                }
                oJ("progress_load_finish", jSONObject);
                i11 = i12;
            }
        }
        if (i10 == 100) {
            oJ(false, SystemClock.elapsedRealtime());
            oJ(webView.getUrl(), "progress", Math.min(this.LpP - this.Ln, (long) TTAdConstant.AD_MAX_EVENT_TIME));
        }
    }

    private void oJ(String str, String str2, long j10) {
        if (this.jFA.compareAndSet(false, true)) {
            JSONObject jSONObject = new JSONObject();
            try {
                if (str.length() > 200) {
                    int indexOf = str.indexOf(38, 200);
                    int i10 = 300;
                    if (indexOf == -1 || indexOf > 300) {
                        indexOf = str.indexOf(63);
                    }
                    if (indexOf != -1 && indexOf <= 300) {
                        i10 = indexOf;
                    }
                    str = str.substring(0, i10);
                }
                jSONObject.put("url", str);
                jSONObject.put("type", str2);
            } catch (Throwable unused) {
            }
            oJ("load_finish_progress", jSONObject, j10);
        }
    }

    public void oJ(WebView webView, String str, Bitmap bitmap, boolean z10, int i10) {
        this.f13332si = z10;
        this.f13329jr++;
        com.bytedance.sdk.openadsdk.core.widget.oJ.ba baVar = this.eZI;
        if (baVar != null && z10) {
            baVar.ZYk(str);
            this.eZI.ZYk();
        }
        jFA jfa = this.RZ;
        if (jfa != null && z10) {
            jfa.oJ(str, i10);
        }
        WeakReference<WebView> weakReference = this.XAo;
        WebView webView2 = weakReference != null ? weakReference.get() : null;
        if (webView2 != null) {
            try {
                WebBackForwardList copyBackForwardList = webView2.copyBackForwardList();
                if (copyBackForwardList != null && copyBackForwardList.getCurrentIndex() > this.bgF) {
                    this.Jm.incrementAndGet();
                }
                this.bgF = copyBackForwardList.getCurrentIndex();
            } catch (Exception e10) {
                com.bytedance.sdk.component.utils.QSm.oJ("LandingPageLog", "copyBackForwardList exception", e10);
            }
        }
        if (this.Rl == 0) {
            this.Rl = SystemClock.elapsedRealtime();
        }
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = this.f13335wd;
        if (pfn != null) {
            pfn.Pfn();
        }
        if (this.cFZ.compareAndSet(false, true)) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
                int i11 = this.Yg;
                if (i11 >= 0) {
                    jSONObject.putOpt("preload_status", Integer.valueOf(i11));
                }
            } catch (Exception unused) {
            }
            oJ("load_start", jSONObject);
        }
    }

    public void oJ(WebView webView, String str, boolean z10) {
        oJ(false, SystemClock.elapsedRealtime());
        com.bytedance.sdk.openadsdk.core.widget.oJ.ba baVar = this.eZI;
        if (baVar != null && z10) {
            baVar.oJ();
        }
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = this.f13335wd;
        if (pfn != null) {
            pfn.ba();
        }
        jFA jfa = this.RZ;
        if (jfa != null && z10) {
            jfa.oJ(str);
        }
        if (webView != null && !this.Jc && this.ofl) {
            this.Jc = true;
            com.bytedance.sdk.component.utils.WcQ.oJ(webView, "javascript:\nfunction sendScroll(){\n   var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n   var clientH = window.innerHeight || document.documentElement.clientHeight;\n   var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n   var validH = scrollH + clientH;\n   var result = (validH/totalH*100).toFixed(2);\n   console.log('LandingPageLogscroll status: (' + scrollH + '+' + clientH + ')/' + totalH + '=' + result);\n   window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n}\nsendScroll();\nwindow.addEventListener('scroll', function(e){\n    sendScroll();\n});");
        }
        if (this.f13333so.compareAndSet(false, true)) {
            if (this.f13328ba != 3) {
                this.f13328ba = 2;
            }
            this.HL = System.currentTimeMillis();
            boolean z11 = this.f13328ba == 2;
            int kkU = kkU();
            if (z11) {
                long j10 = this.LpP - this.Ln;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, this.dLZ);
                    jSONObject.put("error_msg", this.PiB);
                    jSONObject.put("error_url", this.WcQ);
                    int i10 = this.Yg;
                    if (i10 >= 0) {
                        jSONObject.put("preload_status", i10);
                    }
                    jSONObject.put("first_page", kkU);
                    jSONObject.putOpt("render_type", "h5");
                    jSONObject.putOpt("render_type_2", 0);
                    jSONObject.put("url", this.Xe.Oof());
                    jSONObject.put("preload_h5_type", this.Xe.LpP());
                } catch (Exception unused) {
                }
                oJ(z10, MBridgeConstans.ENDCARD_URL_TYPE_PL);
                long min = Math.min(j10, (long) TTAdConstant.AD_MAX_EVENT_TIME);
                oJ("load_finish", jSONObject, min);
                if (jFA()) {
                    this.oTd = SystemClock.elapsedRealtime();
                    ba();
                    tB.oJ(this.Xe, this.NO, this.oTd - this.lY);
                }
                oJ(str, "load_finish", min);
                dLZ dlz = this.cdg;
                if (dlz != null) {
                    dlz.oJ(kkU);
                    return;
                }
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, this.dLZ);
                jSONObject2.put("error_msg", this.PiB);
                jSONObject2.put("error_url", this.WcQ);
                jSONObject2.put("first_page", kkU);
                int i11 = this.Yg;
                if (i11 >= 0) {
                    jSONObject2.put("preload_status", i11);
                }
                jSONObject2.putOpt("render_type", "h5");
                jSONObject2.putOpt("render_type_2", 0);
                jSONObject2.put("url", this.Xe.Oof());
                jSONObject2.put("preload_h5_type", this.Xe.LpP());
            } catch (Exception unused2) {
            }
            oJ(z10, "2");
            oJ("load_fail", jSONObject2);
            if (jFA()) {
                tB.oJ(this.Xe, this.NO, SystemClock.elapsedRealtime() - this.lY, this.dLZ, this.PiB, this.WcQ);
            }
            if (this.BTZ) {
                jSONObject2.remove("render_type");
                jSONObject2.remove("render_type_2");
                oJ("load_fail_main", jSONObject2);
            }
        }
    }

    public void oJ(WebView webView, int i10, String str, String str2, String str3, boolean z10) {
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = this.f13335wd;
        if (pfn != null) {
            pfn.oJ((JSONObject) null);
        }
        if ((str3 == null || !str3.startsWith("image")) && this.f13328ba != 2) {
            this.f13328ba = 3;
        }
        this.dLZ = i10;
        this.PiB = str;
        this.WcQ = str2;
        this.BTZ = z10;
    }

    public void oJ(com.bytedance.sdk.component.jFA.ba baVar) {
        int LS;
        Bitmap oJ2;
        cY cYVar;
        if ((!"landingpage".equals(this.f13334tb) && !"landingpage_endcard".equals(this.f13334tb) && !"landingpage_split_screen".equals(this.f13334tb) && !"landingpage_direct".equals(this.f13334tb) && !"aggregate_page".equals(this.f13334tb)) || (LS = com.bytedance.sdk.openadsdk.core.si.ex().LS()) == 0 || new Random().nextInt(100) + 1 > LS || baVar == null || baVar.getWebView() == null || baVar.getVisibility() != 0 || (oJ2 = cdg.oJ(baVar)) == null || (cYVar = this.Xe) == null) {
            return;
        }
        cdg.oJ(cYVar, this.f13334tb, "landing_page_blank", oJ2, baVar.getUrl(), this.Pfn);
    }

    private void oJ(String str, JSONObject jSONObject) {
        oJ(str, jSONObject, -1L);
    }

    private void oJ(final String str, final JSONObject jSONObject, final long j10) {
        if (!this.ofl || this.Xe == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.QSm.so soVar = this.Ry;
        final int ofl = soVar != null ? soVar.ofl() : -1;
        tB.oJ(System.currentTimeMillis(), this.Xe, this.f13334tb, str, new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.BTZ.1
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject2 = null;
                if (jSONObject != null) {
                    try {
                        boolean ZYk = Ln.ZYk(BTZ.this.Xe);
                        int i10 = 0;
                        jSONObject.put("is_playable", ZYk ? 1 : 0);
                        jSONObject.put("usecache", com.bytedance.sdk.openadsdk.core.BTZ.tB.oJ.oJ().oJ(BTZ.this.Xe) ? 1 : 0);
                        if (ZYk && ("load_finish".equals(str) || "load_fail".equals(str))) {
                            jSONObject.put("playable_has_show", ofl);
                        }
                        if (com.bytedance.sdk.openadsdk.PiB.oJ.tB(BTZ.this.Xe)) {
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("is_lp_pre_render", BTZ.this.f13331oq);
                            jSONObject.put("pag_json_data", jSONObject3.toString());
                        }
                        if ("stay_page".equals(str)) {
                            JSONObject jSONObject4 = jSONObject;
                            if (BTZ.this.f13329jr <= 1) {
                                i10 = 1;
                            }
                            jSONObject4.put("first_page", i10);
                        }
                    } catch (JSONException unused) {
                    }
                    try {
                        JSONObject jSONObject5 = new JSONObject();
                        try {
                            jSONObject5.put("ad_extra_data", jSONObject.toString());
                            long j11 = j10;
                            if (j11 > 0) {
                                jSONObject5.put("duration", j11);
                            }
                        } catch (JSONException unused2) {
                        }
                        jSONObject2 = jSONObject5;
                    } catch (JSONException unused3) {
                    }
                }
                String unused4 = BTZ.this.f13334tb;
                return jSONObject2;
            }
        });
    }

    public void oJ(MotionEvent motionEvent) {
        com.bytedance.sdk.openadsdk.core.widget.oJ.ba baVar = this.eZI;
        if (baVar != null && this.f13332si) {
            baVar.oJ(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.Rl != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                this.Qu.incrementAndGet();
                if (this.nQI.getAndSet(true)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", this.Xe.Oof());
                } catch (JSONException unused) {
                }
                oJ("click_time", jSONObject, Math.max(SystemClock.elapsedRealtime() - this.Rl, 0L));
            }
        }
    }

    public void oJ(String str, boolean z10) {
        com.bytedance.sdk.openadsdk.core.widget.oJ.ba baVar = this.eZI;
        if (baVar != null && z10) {
            baVar.tB(str);
        }
        jFA jfa = this.RZ;
        if (jfa == null || !z10) {
            return;
        }
        jfa.ZYk(str);
    }

    private void oJ(boolean z10, final String str) {
        if (z10) {
            final int kkU = kkU();
            tB.oJ(new com.bytedance.sdk.component.so.so("sendPrefLog") { // from class: com.bytedance.sdk.openadsdk.ex.BTZ.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        com.bytedance.sdk.openadsdk.core.settings.cFZ Id = com.bytedance.sdk.openadsdk.core.si.ex().Id();
                        boolean oJ2 = BTZ.this.oJ(Id, str);
                        if (!oJ2) {
                            return;
                        }
                        if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.settings.cFZ.ZYk)) {
                            BTZ.this.oJ(kkU, str);
                        } else if (!TextUtils.isEmpty(Id.tB) && oJ2) {
                            String str2 = Id.tB;
                            com.bytedance.sdk.component.cFZ.ZYk.ZYk tB2 = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().tB();
                            tB2.ZYk(str2);
                            HashMap hashMap = new HashMap();
                            hashMap.put("content-type", "application/json; charset=utf-8");
                            tB2.ex(hashMap);
                            tB2.oJ(9);
                            tB2.oJ("sendPrefLog");
                            tB2.oJ(new com.bytedance.sdk.component.cFZ.oJ.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.BTZ.2.1
                                @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                                public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, IOException iOException) {
                                }

                                @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
                                public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, com.bytedance.sdk.component.cFZ.ZYk zYk) {
                                    try {
                                        com.bytedance.sdk.openadsdk.core.settings.cFZ.ZYk = zYk.ex();
                                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                        BTZ.this.oJ(kkU, str);
                                    } catch (Exception e10) {
                                        com.bytedance.sdk.component.utils.QSm.oJ("LandingPageLog", "TTWebViewClient : onPageFinished", e10);
                                    }
                                }
                            });
                        }
                    } catch (Throwable th2) {
                        com.bytedance.sdk.component.utils.QSm.tB(th2.getMessage(), new Object[0]);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(int i10, String str) {
        try {
            if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.settings.cFZ.ZYk)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            StringBuilder sb2 = new StringBuilder(com.bytedance.sdk.openadsdk.core.settings.cFZ.ZYk);
            jSONObject.putOpt(BidResponsedEx.KEY_CID, oJ().edj());
            jSONObject.putOpt("ad_id", oJ().edj());
            jSONObject.put("log_extra", oJ().pe());
            HyG.oJ(sb2, "\"/** adInfo **/\"", jSONObject.toString());
            HyG.oJ(sb2, "\"/** first_page **/\"", String.valueOf(i10));
            int i11 = (this.Pfn > (-1L) ? 1 : (this.Pfn == (-1L) ? 0 : -1));
            String str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            HyG.oJ(sb2, "\"/** ix_to_externalurl **/\"", i11 != 0 ? "1" : MBridgeConstans.ENDCARD_URL_TYPE_PL);
            if (this.Yg == 2) {
                str2 = "2";
            }
            HyG.oJ(sb2, "\"/** preload_status **/\"", str2);
            HyG.oJ(sb2, "\"/** scene_state **/\"", str);
            HyG.oJ(sb2, "\"/** web_init_time **/\"", String.valueOf(this.jB));
            HyG.oJ(sb2, "\"/** channel_name **/\"", "\"" + oJ().PQw() + "\"");
            HyG.oJ(sb2, "\"/** session_id **/\"", "\"" + UUID.randomUUID().toString() + "\"");
            HyG.oJ(sb2, "\"/** web_url **/\"", "\"" + oJ().Oof() + "\"");
            String sb3 = sb2.toString();
            if (TextUtils.isEmpty(sb3)) {
                return;
            }
            final String tB2 = tB(sb3);
            WeakReference<WebView> weakReference = this.XAo;
            final WebView webView = weakReference != null ? weakReference.get() : null;
            if (TextUtils.isEmpty(tB2) || webView == null) {
                return;
            }
            ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.ex.BTZ.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.component.utils.WcQ.oJ(webView, tB2);
                }
            });
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB(th2.getMessage(), new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean oJ(com.bytedance.sdk.openadsdk.core.settings.cFZ cfz, String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 48:
                if (str.equals(MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                    c10 = 0;
                    break;
                }
                break;
            case 49:
                if (str.equals("1")) {
                    c10 = 1;
                    break;
                }
                break;
            case 50:
                if (str.equals("2")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return cfz.ex;
            case 1:
                return cfz.Pfn;
            case 2:
                return cfz.f13254ba;
            default:
                return false;
        }
    }

    public void oJ(boolean z10, long j10) {
        if (z10) {
            this.Id = j10;
        } else {
            this.cY = j10;
        }
        if (this.Id <= 0 || this.cY <= 0 || !this.f13332si || !this.ZYk.compareAndSet(false, true)) {
            return;
        }
        oJ(this.Xe, this.f13334tb, this.cY - this.Id, this.f13331oq);
    }

    public static void oJ(final cY cYVar, final String str, final long j10, final int i10) {
        tB.oJ(System.currentTimeMillis(), cYVar, str, "lp_feeling_duration", new com.bytedance.sdk.openadsdk.awB.tB.oJ() { // from class: com.bytedance.sdk.openadsdk.ex.BTZ.4
            @Override // com.bytedance.sdk.openadsdk.awB.tB.oJ
            public JSONObject oJ() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("is_lp_pre_render", i10);
                    jSONObject3.put("meta_pre_render", cYVar.XS() ? 1 : 0);
                    RZ oq2 = cYVar.oq();
                    if (oq2 == null) {
                        oq2 = new RZ();
                    }
                    jSONObject3.put("pre_render_status", oq2.tB());
                    jSONObject3.put("pre_render_use_gecko", oq2.ZYk());
                    jSONObject3.put("pre_render_add_type", oq2.oJ());
                    jSONObject2.put("pag_json_data", jSONObject3.toString());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", j10);
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        });
    }
}
