package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.eZI;
import com.bytedance.sdk.openadsdk.ex.oJ;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.vodsetting.Module;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class UN implements com.bytedance.sdk.component.adexpress.Pfn.ZYk, IUZ.oJ, com.bytedance.sdk.openadsdk.kkU.ZYk {
    private static final Map<String, Boolean> jFA;
    private WeakReference<View> BTZ;
    private JSONObject HL;
    private String HyG;
    private com.bytedance.sdk.openadsdk.core.ZYk.ex IUZ;
    private JSONObject Id;
    private HashMap<String, kkU> Jc;
    private com.bytedance.sdk.openadsdk.BTZ.cFZ Jm;
    private com.bytedance.sdk.openadsdk.BTZ.tB Ln;
    private com.bytedance.sdk.openadsdk.BTZ.kkU LpP;
    private WeakReference<com.bytedance.sdk.component.jFA.ba> Pfn;
    private String PiB;
    private com.bytedance.sdk.component.adexpress.ZYk.dLZ QSm;
    private boolean Qu;
    private JSONObject RZ;
    private com.bytedance.sdk.openadsdk.core.widget.oJ.oJ Rl;
    private com.bytedance.sdk.openadsdk.core.model.cY Ry;
    private int WcQ;
    private com.bytedance.sdk.openadsdk.ex.ex.Pfn XAo;
    private com.bytedance.sdk.openadsdk.BTZ.ba Xe;
    private com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk Yg;
    boolean ZYk;
    private String awB;
    private Context bgF;
    private String cFZ;
    private com.bytedance.sdk.openadsdk.kkU.ex cY;
    private String dLZ;
    private int eZI;

    /* renamed from: jr  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.BTZ.oJ f13095jr;
    private com.bytedance.sdk.openadsdk.kkU.tB kkU;
    private oJ lY;
    private tB mwH;
    private boolean nQI;
    protected Map<String, Object> oJ;
    private com.bytedance.sdk.component.oJ.si ofl;

    /* renamed from: oq  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.so.awB f13097oq;

    /* renamed from: so  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.widget.Pfn f13099so;

    /* renamed from: tb  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.BTZ.Pfn f13100tb;

    /* renamed from: wd  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.BTZ.ZYk f13101wd;

    /* renamed from: si  reason: collision with root package name */
    private boolean f13098si = true;
    private boolean nke = true;
    private boolean UN = false;

    /* renamed from: mu  reason: collision with root package name */
    private boolean f13096mu = false;
    boolean tB = false;
    boolean ex = false;
    private boolean cdg = false;

    /* renamed from: ba  reason: collision with root package name */
    private final com.bytedance.sdk.component.utils.IUZ f13094ba = new com.bytedance.sdk.component.utils.IUZ(Looper.getMainLooper(), this);

    /* loaded from: classes3.dex */
    public static class ZYk {
        public int Pfn;
        public String ZYk;
        public JSONObject ex;
        public String oJ;
        public String tB;
    }

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class tB implements Runnable {
        private final JSONObject ZYk;
        private final com.bytedance.sdk.openadsdk.core.so.awB oJ;

        public tB(com.bytedance.sdk.openadsdk.core.so.awB awb, JSONObject jSONObject) {
            this.oJ = awb;
            this.ZYk = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            UN.ZYk(this.oJ, this.ZYk);
        }
    }

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        jFA = concurrentHashMap;
        Boolean bool = Boolean.TRUE;
        concurrentHashMap.put("log_event", bool);
        concurrentHashMap.put("private", bool);
        concurrentHashMap.put("dispatch_message", bool);
        concurrentHashMap.put("custom_event", bool);
        concurrentHashMap.put("log_event_v3", bool);
    }

    public UN(Context context) {
        this.bgF = context;
    }

    private void BTZ(JSONObject jSONObject) throws Exception {
        oJ(jSONObject, this.Ry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Id() {
        com.bytedance.sdk.openadsdk.core.so.awB awb = this.f13097oq;
        if (awb != null) {
            awb.oJ();
        }
    }

    private void PiB(JSONObject jSONObject) throws Exception {
        if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.model.Ln.dLZ(this.Ry))) {
            return;
        }
        jSONObject.put("playable_style", com.bytedance.sdk.openadsdk.core.model.Ln.dLZ(this.Ry));
    }

    private void QSm() {
        com.bytedance.sdk.openadsdk.BTZ.kkU kku = this.LpP;
        if (kku == null) {
            return;
        }
        kku.oJ();
    }

    private Context RZ() {
        WeakReference<com.bytedance.sdk.component.jFA.ba> weakReference = this.Pfn;
        Activity oJ2 = (weakReference == null || weakReference.get() == null) ? null : com.bytedance.sdk.component.utils.ZYk.oJ(this.Pfn.get());
        return oJ2 == null ? this.bgF : oJ2;
    }

    private static List<String> Ry() {
        return Arrays.asList("appInfo", "adInfo", "getTemplateInfo", "getTeMaiAds");
    }

    private void WcQ(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn;
        if (jSONObject == null || (pfn = this.XAo) == null) {
            return;
        }
        pfn.ZYk(jSONObject);
    }

    private boolean Xe() {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.Ry;
        if (cYVar == null || cYVar.yV() == null || com.bytedance.sdk.openadsdk.core.model.Ln.ZYk(this.Ry) || this.UN || this.Ry.yV().optInt("parent_type") != 2) {
            return false;
        }
        int qnr = this.Ry.qnr();
        if (qnr != 8 && qnr != 7) {
            return false;
        }
        this.UN = true;
        return true;
    }

    private void awB(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.BTZ.tB tBVar = this.Ln;
        if (tBVar == null || jSONObject == null) {
            return;
        }
        tBVar.oJ(jSONObject.optBoolean("isRenderSuc", false), jSONObject.optInt(Module.ResponseKey.Code, -1), jSONObject.optString("msg", ""));
    }

    private void cY() {
        if (this.bgF == null || TextUtils.isEmpty(si.ex().nke())) {
            return;
        }
        TTWebsiteActivity.oJ(this.bgF, this.Ry, this.HyG);
    }

    private WebView eZI() {
        com.bytedance.sdk.component.jFA.ba baVar;
        WeakReference<com.bytedance.sdk.component.jFA.ba> weakReference = this.Pfn;
        if (weakReference == null || (baVar = weakReference.get()) == null) {
            return null;
        }
        return baVar.getWebView();
    }

    private JSONObject jr() {
        return ZYk(this.Ry);
    }

    private void oq() {
        com.bytedance.sdk.openadsdk.BTZ.kkU kku = this.LpP;
        if (kku == null) {
            return;
        }
        kku.ZYk();
    }

    private JSONObject si() {
        try {
            View view = this.BTZ.get();
            com.bytedance.sdk.component.jFA.ba baVar = this.Pfn.get();
            if (view != null && baVar != null) {
                int[] ZYk2 = cdg.ZYk(view);
                int[] ZYk3 = cdg.ZYk((View) baVar);
                if (ZYk2 != null && ZYk3 != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(TextureRenderKeys.KEY_IS_X, cdg.tB(si.oJ(), ZYk2[0] - ZYk3[0]));
                    jSONObject.put(TextureRenderKeys.KEY_IS_Y, cdg.tB(si.oJ(), ZYk2[1] - ZYk3[1]));
                    jSONObject.put(SRStrategy.MEDIAINFO_KEY_WIDTH, cdg.tB(si.oJ(), view.getWidth()));
                    jSONObject.put("h", cdg.tB(si.oJ(), view.getHeight()));
                    jSONObject.put("isExist", true);
                    return jSONObject;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private void tb() {
        if (this.kkU == null) {
            this.kkU = com.bytedance.sdk.openadsdk.kkU.oJ.oJ(this, this.Ry);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.ZYk
    @JavascriptInterface
    public String adInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            BTZ(jSONObject);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.ZYk
    @JavascriptInterface
    public String appInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            ZYk(jSONObject);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    public boolean ba() {
        return this.tB;
    }

    public void cFZ() {
        com.bytedance.sdk.openadsdk.BTZ.tB tBVar;
        if (this.nQI && (tBVar = this.Ln) != null) {
            tBVar.oJ();
            return;
        }
        Context context = this.bgF;
        if ((context instanceof Activity) && com.bytedance.sdk.openadsdk.utils.Id.oJ((Activity) context)) {
            ((Activity) this.bgF).finish();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.ZYk
    @JavascriptInterface
    public void changeVideoState(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            com.bytedance.sdk.openadsdk.utils.ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.UN.4
                @Override // java.lang.Runnable
                public void run() {
                    UN.this.eZI(jSONObject);
                }
            });
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.ZYk
    @JavascriptInterface
    public void clickEvent(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            com.bytedance.sdk.openadsdk.utils.ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.UN.5
                @Override // java.lang.Runnable
                public void run() {
                    UN.this.Pfn(jSONObject);
                }
            });
        } catch (Exception unused) {
        }
    }

    public void dLZ() {
        Xe();
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.ZYk
    @JavascriptInterface
    public void dynamicTrack(String str) {
        try {
            QSm(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.ZYk
    @JavascriptInterface
    public String getCurrentVideoState() {
        JSONObject jSONObject = new JSONObject();
        si(jSONObject);
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.ZYk
    @JavascriptInterface
    public String getData(String str) {
        if (TextUtils.isEmpty(str)) {
            return this.Id.toString();
        }
        try {
            JSONObject oJ2 = com.bytedance.sdk.openadsdk.core.so.oJ.ZYk.oJ(this.Id, new JSONObject(str));
            if (oJ2 == null) {
                return this.Id.toString();
            }
            return oJ2.toString();
        } catch (Exception unused) {
            return this.Id.toString();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.ZYk
    @JavascriptInterface
    public String getTemplateInfo() {
        oJ("getTemplateInfo", true);
        try {
            JSONObject jSONObject = this.Id;
            if (jSONObject != null) {
                jSONObject.put("setting", jr());
                com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.Ry;
                if (cYVar != null && cYVar.VzB() != null) {
                    this.Id.put("dynamic_configs", this.Ry.VzB());
                }
                com.bytedance.sdk.openadsdk.core.model.cY cYVar2 = this.Ry;
                if (cYVar2 != null) {
                    this.Id.put("extension", cYVar2.Yk());
                }
            }
            oJ("getTemplateInfo", false);
            return this.Id.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.ZYk
    @JavascriptInterface
    public void initRenderFinish() {
        com.bytedance.sdk.openadsdk.utils.ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.UN.7
            @Override // java.lang.Runnable
            public void run() {
                if (UN.this.Rl != null) {
                    UN.this.Rl.oJ();
                }
            }
        });
    }

    public boolean jFA() {
        return this.cdg;
    }

    boolean kkU() {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.Ry;
        return cYVar != null && cYVar.hwh() == 1;
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.ZYk
    @JavascriptInterface
    public void muteVideo(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            tB tBVar = this.mwH;
            if (tBVar != null) {
                com.bytedance.sdk.openadsdk.utils.ofl.ZYk(tBVar);
            }
            tB tBVar2 = new tB(this.f13097oq, jSONObject);
            this.mwH = tBVar2;
            com.bytedance.sdk.openadsdk.utils.ofl.oJ(tBVar2);
        } catch (Exception unused) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.AndroidObject", "");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.ZYk
    @JavascriptInterface
    public void renderDidFinish(String str) {
        try {
            Ry(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.ZYk
    @JavascriptInterface
    public void skipVideo() {
        com.bytedance.sdk.openadsdk.utils.ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.UN.6
            @Override // java.lang.Runnable
            public void run() {
                UN.this.Id();
            }
        });
    }

    public void so() {
        com.bytedance.sdk.openadsdk.core.so.awB awb = this.f13097oq;
        if (awb != null) {
            awb.ZYk();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.ZYk
    @JavascriptInterface
    public void videoFrameChanged(String str) {
        if (this.Jm == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ = new com.bytedance.sdk.component.adexpress.ZYk.WcQ();
            JSONObject optJSONObject = jSONObject.optJSONObject("videoInfo");
            if (optJSONObject != null) {
                double optDouble = optJSONObject.optDouble(TextureRenderKeys.KEY_IS_X);
                double optDouble2 = optJSONObject.optDouble(TextureRenderKeys.KEY_IS_Y);
                double optDouble3 = optJSONObject.optDouble("width");
                double optDouble4 = optJSONObject.optDouble("height");
                if (RZ(optJSONObject)) {
                    wcQ.oJ((float) optJSONObject.optDouble("borderRadiusTopLeft"));
                    wcQ.ZYk((float) optJSONObject.optDouble("borderRadiusTopRight"));
                    wcQ.tB((float) optJSONObject.optDouble("borderRadiusBottomLeft"));
                    wcQ.ex((float) optJSONObject.optDouble("borderRadiusBottomRight"));
                }
                wcQ.tB(optDouble);
                wcQ.ex(optDouble2);
                wcQ.Pfn(optDouble3);
                wcQ.ba(optDouble4);
            }
            com.bytedance.sdk.openadsdk.BTZ.cFZ cfz = this.Jm;
            if (cfz != null) {
                cfz.oJ(wcQ);
            }
        } catch (Throwable unused) {
        }
    }

    private void Ry(JSONObject jSONObject) {
        int i10;
        double d10;
        double d11;
        boolean z10;
        double d12;
        String optString;
        int optInt;
        UN un2 = this;
        if (un2.QSm == null || jSONObject == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn = un2.XAo;
        if (pfn != null) {
            pfn.eZI();
        }
        com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ = new com.bytedance.sdk.component.adexpress.ZYk.WcQ();
        wcQ.oJ(1);
        try {
            boolean optBoolean = jSONObject.optBoolean("isRenderSuc");
            JSONObject optJSONObject = jSONObject.optJSONObject("AdSize");
            if (optJSONObject != null) {
                d10 = optJSONObject.optDouble("width");
                d11 = optJSONObject.optDouble("height");
            } else {
                d10 = 0.0d;
                d11 = 0.0d;
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject("videoInfo");
            if (optJSONObject2 != null) {
                try {
                    double optDouble = optJSONObject2.optDouble(TextureRenderKeys.KEY_IS_X);
                    double optDouble2 = optJSONObject2.optDouble(TextureRenderKeys.KEY_IS_Y);
                    z10 = optBoolean;
                    double optDouble3 = optJSONObject2.optDouble("width");
                    double optDouble4 = optJSONObject2.optDouble("height");
                    if (un2.RZ(optJSONObject2)) {
                        d12 = d11;
                        wcQ.oJ((float) optJSONObject2.optDouble("borderRadiusTopLeft"));
                        wcQ.ZYk((float) optJSONObject2.optDouble("borderRadiusTopRight"));
                        wcQ.tB((float) optJSONObject2.optDouble("borderRadiusBottomLeft"));
                        wcQ.ex((float) optJSONObject2.optDouble("borderRadiusBottomRight"));
                    } else {
                        d12 = d11;
                    }
                    wcQ.tB(optDouble);
                    wcQ.ex(optDouble2);
                    wcQ.Pfn(optDouble3);
                    wcQ.ba(optDouble4);
                } catch (Exception unused) {
                    i10 = 101;
                    un2 = this;
                    wcQ.ZYk(i10);
                    wcQ.oJ(so.oJ(i10));
                    un2.QSm.oJ(wcQ);
                }
            } else {
                z10 = optBoolean;
                d12 = d11;
            }
        } catch (Exception unused2) {
        }
        try {
            optString = jSONObject.optString("msg", so.oJ(101));
            optInt = jSONObject.optInt(Module.ResponseKey.Code, 101);
        } catch (Exception unused3) {
            un2 = this;
            i10 = 101;
            wcQ.ZYk(i10);
            wcQ.oJ(so.oJ(i10));
            un2.QSm.oJ(wcQ);
        }
        try {
            wcQ.oJ(z10);
            wcQ.oJ(d10);
            wcQ.ZYk(d12);
            wcQ.oJ(optString);
            wcQ.ZYk(optInt);
            un2 = this;
            un2.QSm.oJ(wcQ);
        } catch (Exception unused4) {
            un2 = this;
            i10 = 101;
            wcQ.ZYk(i10);
            wcQ.oJ(so.oJ(i10));
            un2.QSm.oJ(wcQ);
        }
    }

    private void jFA(String str) {
        int indexOf;
        if (str != null && str.startsWith("bytedance://")) {
            try {
                if (str.equals("bytedance://dispatch_message/")) {
                    WebView eZI = eZI();
                    if (eZI != null) {
                        com.bytedance.sdk.component.utils.WcQ.oJ(eZI, "javascript:ToutiaoJSBridge._fetchQueue()");
                    }
                } else if (!str.startsWith("bytedance://private/setresult/") || (indexOf = str.indexOf(38, 30)) <= 0) {
                } else {
                    String substring = str.substring(30, indexOf);
                    String substring2 = str.substring(indexOf + 1);
                    if (!substring.equals("SCENE_FETCHQUEUE") || substring2.length() <= 0) {
                        return;
                    }
                    cFZ(substring2);
                }
            } catch (Exception unused) {
            }
        }
    }

    public void BTZ() {
        com.bytedance.sdk.openadsdk.kkU.tB tBVar = this.kkU;
        if (tBVar != null) {
            tBVar.oJ();
        }
        tB tBVar2 = this.mwH;
        if (tBVar2 != null) {
            com.bytedance.sdk.openadsdk.utils.ofl.ZYk(tBVar2);
            this.mwH = null;
        }
        this.bgF = null;
        this.Yg = null;
    }

    public boolean Pfn() {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.Ry;
        return cYVar != null && cYVar.VSB();
    }

    public void ba(String str) {
        this.HyG = str;
    }

    public void dLZ(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.oJ(new com.bytedance.sdk.component.so.so("sendLogV3") { // from class: com.bytedance.sdk.openadsdk.core.UN.3
            @Override // java.lang.Runnable
            public void run() {
                JSONObject optJSONObject = jSONObject.optJSONObject("extJson");
                if (optJSONObject != null && optJSONObject.has("category") && optJSONObject.has(ITTVideoEngineEventSource.KEY_TAG) && optJSONObject.has("label")) {
                    String optString = optJSONObject.optString("category");
                    String optString2 = optJSONObject.optString(ITTVideoEngineEventSource.KEY_TAG);
                    String optString3 = optJSONObject.optString("label");
                    long optLong = jSONObject.optLong(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                    long optLong2 = jSONObject.optLong("extValue");
                    try {
                        optJSONObject.put("ua_policy", UN.this.eZI);
                    } catch (Exception unused) {
                    }
                    new oJ.C0233oJ(System.currentTimeMillis(), UN.this.Ry).ex(optString).ZYk(optString2).tB(optString3).Pfn(String.valueOf(optLong)).ba(String.valueOf(optLong2)).oJ(optJSONObject).oJ((com.bytedance.sdk.openadsdk.ex.ZYk.oJ) null);
                }
            }
        });
    }

    public com.bytedance.sdk.openadsdk.core.model.cY ex() {
        return this.Ry;
    }

    public UN tB(String str) {
        this.dLZ = str;
        return this;
    }

    private void Id(JSONObject jSONObject) {
        WebView eZI;
        if (jSONObject == null || (eZI = eZI()) == null) {
            return;
        }
        com.bytedance.sdk.component.utils.WcQ.oJ(eZI, "javascript:ToutiaoJSBridge._handleMessageFromToutiao(" + jSONObject + ")");
    }

    private void QSm(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            Uri parse = Uri.parse(jSONObject.optString("trackData"));
            if ("bytedance".equals(parse.getScheme().toLowerCase())) {
                com.bytedance.sdk.openadsdk.utils.RZ.oJ(parse, this);
            }
        } catch (Exception unused) {
        }
    }

    private void oq(JSONObject jSONObject) {
        if (jSONObject == null || this.cY == null) {
            return;
        }
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("temaiProductIds");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                this.cY.oJ(true, optJSONArray);
            } else {
                this.cY.oJ(false, null);
            }
        } catch (Exception unused) {
            this.cY.oJ(false, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean so(String str) {
        if (!TextUtils.isEmpty(str) && "click_other".equals(str)) {
            return kkU();
        }
        return true;
    }

    public UN Pfn(String str) {
        this.awB = str;
        return this;
    }

    public void PiB() {
        oJ oJVar = this.lY;
        if (oJVar != null) {
            oJVar.oJ();
        }
    }

    public com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk WcQ() {
        return this.Yg;
    }

    public void awB() {
        com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk = this.Yg;
        if (zYk != null) {
            zYk.mu();
        }
    }

    public void ba(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.model.cY oJ2 = com.bytedance.sdk.openadsdk.core.ZYk.oJ(jSONObject);
        if (oJ2 != null) {
            boolean Pfn = com.bytedance.sdk.openadsdk.core.model.QSm.Pfn(this.Ry);
            oJ(oJ2, Pfn ? HyG.ZYk(this.WcQ) : this.HyG, !Pfn);
        }
    }

    public UN ex(String str) {
        this.PiB = str;
        return this;
    }

    public void kkU(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.model.oJ tB2;
        if (jSONObject == null) {
            return;
        }
        int optInt = jSONObject.optInt(TextureRenderKeys.KEY_IS_INDEX);
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = this.Ry;
        if (cYVar == null || (tB2 = cYVar.tB()) == null) {
            return;
        }
        List<com.bytedance.sdk.openadsdk.core.model.cY> ex = tB2.ex();
        if (optInt < 0 || optInt >= ex.size()) {
            return;
        }
        oJ(ex.get(optInt), this.HyG, false);
        com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk = this.Yg;
        if (zYk != null) {
            zYk.ba();
        }
    }

    public void tB() {
        com.bytedance.sdk.component.oJ.si siVar = this.ofl;
        if (siVar == null) {
            return;
        }
        siVar.oJ();
        this.ofl = null;
    }

    private boolean RZ(@NonNull JSONObject jSONObject) {
        return jSONObject.has("borderRadiusTopLeft") && jSONObject.has("borderRadiusBottomLeft") && jSONObject.has("borderRadiusTopRight") && jSONObject.has("borderRadiusBottomRight");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject cY(JSONObject jSONObject) {
        if (this.oJ != null) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            try {
                JSONObject jSONObject2 = new JSONObject();
                String optString = jSONObject.optString("ad_extra_data", null);
                if (optString != null) {
                    jSONObject2 = new JSONObject(optString);
                }
                for (Map.Entry<String, Object> entry : this.oJ.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            } catch (Exception e10) {
                com.bytedance.sdk.component.utils.QSm.tB(e10.toString(), new Object[0]);
            }
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eZI(JSONObject jSONObject) {
        if (this.f13097oq != null && jSONObject != null) {
            try {
                this.f13097oq.oJ(jSONObject.optInt("stateType", -1));
            } catch (Exception unused) {
            }
        }
    }

    public void Pfn(JSONObject jSONObject) {
        String str;
        double d10;
        double d11;
        double d12;
        double d13;
        double d14;
        double d15;
        double d16;
        double d17;
        double d18;
        JSONObject jSONObject2;
        if (jSONObject == null) {
            return;
        }
        com.bytedance.sdk.component.utils.QSm.oJ("TTAD.AndroidObject", "trigger Class1 method1");
        try {
            String optString = jSONObject.optString("adId");
            int optInt = jSONObject.optInt("areaType", 1);
            String optString2 = jSONObject.optString("clickAreaType");
            JSONObject optJSONObject = jSONObject.optJSONObject("clickInfo");
            double d19 = 0.0d;
            if (optJSONObject != null) {
                double optDouble = optJSONObject.optDouble("down_x", 0.0d);
                d12 = optJSONObject.optDouble("down_y", 0.0d);
                double optDouble2 = optJSONObject.optDouble("up_x", 0.0d);
                double optDouble3 = optJSONObject.optDouble("up_y", 0.0d);
                double optDouble4 = optJSONObject.optDouble("down_time", 0.0d);
                double optDouble5 = optJSONObject.optDouble("up_time", 0.0d);
                double optDouble6 = optJSONObject.optDouble("button_x", 0.0d);
                double optDouble7 = optJSONObject.optDouble("button_y", 0.0d);
                double optDouble8 = optJSONObject.optDouble("button_width", 0.0d);
                double optDouble9 = optJSONObject.optDouble("button_height", 0.0d);
                jSONObject2 = optJSONObject.optJSONObject("rectInfo");
                d18 = optDouble9;
                d19 = optDouble;
                d11 = optDouble2;
                d13 = optDouble4;
                d14 = optDouble5;
                d15 = optDouble6;
                d16 = optDouble7;
                d17 = optDouble8;
                str = optString;
                d10 = optDouble3;
            } else {
                str = optString;
                d10 = 0.0d;
                d11 = 0.0d;
                d12 = 0.0d;
                d13 = 0.0d;
                d14 = 0.0d;
                d15 = 0.0d;
                d16 = 0.0d;
                d17 = 0.0d;
                d18 = 0.0d;
                jSONObject2 = null;
            }
            com.bytedance.sdk.openadsdk.core.model.eZI oJ2 = new eZI.oJ().ex((float) d19).tB((float) d12).ZYk((float) d11).oJ((float) d10).ZYk((long) d13).oJ((long) d14).ex((int) d15).Pfn((int) d16).ba((int) d17).cFZ((int) d18).oJ(optString2).oJ((SparseArray<tB.oJ>) null).oJ(true).ZYk(optInt).oJ(jSONObject2).oJ(jSONObject.optInt("clickAreaCategory", -1)).ZYk(optJSONObject).oJ();
            com.bytedance.sdk.component.adexpress.ZYk.dLZ dlz = this.QSm;
            if (dlz != null) {
                dlz.oJ(null, optInt, oJ2);
            }
            oJ(str, optInt, oJ2);
        } catch (Exception unused) {
            com.bytedance.sdk.component.adexpress.ZYk.dLZ dlz2 = this.QSm;
            if (dlz2 != null) {
                dlz2.oJ(null, -1, null);
            }
        }
    }

    public UN ZYk(String str) {
        this.cFZ = str;
        return this;
    }

    public void ex(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        int optInt = jSONObject.optInt("zoom_type", 1);
        JSONObject optJSONObject = jSONObject.optJSONObject("videoInfo");
        com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ = new com.bytedance.sdk.component.adexpress.ZYk.WcQ();
        if (optJSONObject != null) {
            double optDouble = optJSONObject.optDouble(TextureRenderKeys.KEY_IS_X);
            double optDouble2 = optJSONObject.optDouble(TextureRenderKeys.KEY_IS_Y);
            double optDouble3 = optJSONObject.optDouble("width");
            double optDouble4 = optJSONObject.optDouble("height");
            wcQ.tB(optDouble);
            wcQ.ex(optDouble2);
            wcQ.Pfn(optDouble3);
            wcQ.ba(optDouble4);
        }
        com.bytedance.sdk.openadsdk.core.so.awB awb = this.f13097oq;
        if (awb != null) {
            awb.oJ(optInt, wcQ);
        }
    }

    private void cFZ(String str) {
        try {
            JSONArray jSONArray = new JSONArray(new String(Base64.decode(str, 2)));
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                ZYk zYk = new ZYk();
                try {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                    if (optJSONObject != null) {
                        zYk.oJ = optJSONObject.optString("__msg_type", null);
                        zYk.ZYk = optJSONObject.optString("__callback_id", null);
                        zYk.tB = optJSONObject.optString("func");
                        zYk.ex = optJSONObject.optJSONObject(MetricsSQLiteCacheKt.METRICS_PARAMS);
                        zYk.Pfn = optJSONObject.optInt("JSSDK");
                    }
                } catch (Throwable unused) {
                }
                if (!TextUtils.isEmpty(zYk.oJ) && !TextUtils.isEmpty(zYk.tB)) {
                    Message obtainMessage = this.f13094ba.obtainMessage(11);
                    obtainMessage.obj = zYk;
                    this.f13094ba.sendMessage(obtainMessage);
                }
            }
        } catch (Exception unused2) {
        }
    }

    public com.bytedance.sdk.component.oJ.si ZYk() {
        return this.ofl;
    }

    public UN ZYk(com.bytedance.sdk.component.jFA.ba baVar) {
        this.Pfn = new WeakReference<>(baVar);
        return this;
    }

    public JSONObject so(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        com.bytedance.sdk.openadsdk.core.so.awB awb = this.f13097oq;
        if (awb != null) {
            try {
                jSONObject2.put("state", awb.oJ(jSONObject) ? 1 : 0);
            } catch (Throwable unused) {
            }
        }
        return jSONObject2;
    }

    public void tB(JSONObject jSONObject) {
        Ry.oJ(RZ(), this.bgF instanceof Activity, jSONObject, this.Ry, this.HyG, this.WcQ, eZI(), this.f13099so);
    }

    public UN ZYk(boolean z10) {
        this.f13096mu = z10;
        return this;
    }

    public UN ZYk(int i10) {
        this.WcQ = i10;
        return this;
    }

    public UN oJ(com.bytedance.sdk.openadsdk.core.widget.oJ.oJ oJVar) {
        this.Rl = oJVar;
        return this;
    }

    public static void ZYk(JSONObject jSONObject) throws Exception {
        JSONArray jSONArray = new JSONArray();
        for (String str : Ry()) {
            jSONArray.put(str);
        }
        jSONObject.put("appName", com.bytedance.sdk.openadsdk.common.ZYk.oJ());
        jSONObject.put("innerAppName", com.bytedance.sdk.openadsdk.common.ZYk.Pfn());
        jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, com.bytedance.sdk.openadsdk.common.ZYk.ZYk());
        jSONObject.put("sdkEdition", com.bytedance.sdk.openadsdk.common.ZYk.tB());
        jSONObject.put("appVersion", com.bytedance.sdk.openadsdk.common.ZYk.ex());
        jSONObject.put("netType", com.bytedance.sdk.openadsdk.common.ZYk.ba());
        jSONObject.put("supportList", jSONArray);
        jSONObject.put("deviceId", com.bytedance.sdk.openadsdk.common.ZYk.oJ(si.oJ()));
        if (DeviceUtils.ZYk(si.oJ())) {
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_DEVICEPLATFORM, "Android_Pad");
        } else {
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_DEVICEPLATFORM, "Android");
        }
        jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE, Build.VERSION.RELEASE);
    }

    public UN oJ(com.bytedance.sdk.openadsdk.core.widget.Pfn pfn) {
        this.f13099so = pfn;
        return this;
    }

    public com.bytedance.sdk.openadsdk.BTZ.ZYk oJ() {
        return this.f13101wd;
    }

    private boolean si(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.so.awB awb = this.f13097oq;
        if (awb != null && jSONObject != null) {
            double tB2 = awb.tB();
            double ex = this.f13097oq.ex();
            int Pfn = this.f13097oq.Pfn();
            com.bytedance.sdk.component.utils.QSm.oJ("TTAD.TopLayoutHelper", "current:", Double.valueOf(tB2), "state", Integer.valueOf(Pfn), "countdownTime", Double.valueOf(ex));
            try {
                jSONObject.put("currentTime", tB2 / 1000.0d);
                if (ex > 0.0d) {
                    jSONObject.put("countDownTime", ex / 1000.0d);
                }
                jSONObject.put("state", Pfn);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public void oJ(com.bytedance.sdk.openadsdk.BTZ.ZYk zYk) {
        this.f13101wd = zYk;
    }

    public void tB(boolean z10) {
        this.tB = z10;
    }

    private void tB(String str, JSONObject jSONObject) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", NotificationCompat.CATEGORY_EVENT);
            jSONObject2.put("__event_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            Id(jSONObject2);
        } catch (Exception unused) {
        }
    }

    public UN oJ(com.bytedance.sdk.component.jFA.ba baVar) {
        WebView webView;
        if (baVar == null || (webView = baVar.getWebView()) == null) {
            return this;
        }
        try {
            com.bytedance.sdk.component.oJ.si ZYk2 = com.bytedance.sdk.component.oJ.si.oJ(webView).oJ(new com.bytedance.sdk.openadsdk.dLZ.oJ()).oJ("ToutiaoJSBridge").oJ(new com.bytedance.sdk.component.oJ.BTZ() { // from class: com.bytedance.sdk.openadsdk.core.UN.1
                @Override // com.bytedance.sdk.component.oJ.BTZ
                @NonNull
                public <T> T oJ(@NonNull String str, @NonNull Type type) {
                    return null;
                }

                @Override // com.bytedance.sdk.component.oJ.BTZ
                @NonNull
                public <T> String oJ(@NonNull T t10) {
                    return null;
                }
            }).oJ(jFA.ZYk().si()).ZYk(true).oJ().ZYk();
            this.ofl = ZYk2;
            com.bytedance.sdk.openadsdk.dLZ.oJ.cFZ.oJ(ZYk2, this);
            com.bytedance.sdk.openadsdk.dLZ.oJ.oJ.oJ(this.ofl, this);
            com.bytedance.sdk.openadsdk.dLZ.oJ.ZYk.oJ(this.ofl, this);
            com.bytedance.sdk.openadsdk.dLZ.oJ.tB.oJ(this.ofl, this);
            com.bytedance.sdk.openadsdk.dLZ.oJ.ba.oJ(this.ofl, this);
            com.bytedance.sdk.openadsdk.dLZ.oJ.jFA.oJ(this.ofl, this);
            com.bytedance.sdk.openadsdk.dLZ.oJ.BTZ.oJ(this.ofl, this);
            com.bytedance.sdk.openadsdk.dLZ.oJ.kkU.oJ(this.ofl, baVar);
            com.bytedance.sdk.openadsdk.dLZ.oJ.so.oJ(this.ofl, this);
            com.bytedance.sdk.openadsdk.dLZ.oJ.Pfn.oJ(this.ofl, this.Id);
            com.bytedance.sdk.openadsdk.dLZ.oJ.ex.oJ(this.ofl, this);
            com.bytedance.sdk.openadsdk.dLZ.oJ.awB.oJ(this.ofl, baVar, this, this.Ry);
            com.bytedance.sdk.openadsdk.dLZ.oJ.dLZ.oJ(this.ofl, this, this.Ry);
            com.bytedance.sdk.openadsdk.dLZ.oJ.PiB.oJ(this.ofl, this);
            com.bytedance.sdk.openadsdk.dLZ.oJ.WcQ.oJ(this.ofl, this);
        } catch (Exception unused) {
        }
        return this;
    }

    public JSONObject jFA(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk = this.Yg;
            if (zYk != null) {
                List<com.bytedance.sdk.openadsdk.core.model.cY> IUZ = zYk.IUZ();
                for (int i10 = 0; i10 < IUZ.size(); i10++) {
                    jSONArray.put(tB(IUZ.get(i10)));
                }
            }
            jSONObject2.put("creatives", jSONArray);
        } catch (JSONException unused) {
        }
        return jSONObject2;
    }

    public void ex(boolean z10) {
        this.Qu = z10;
    }

    public void tB(int i10) {
        com.bytedance.sdk.openadsdk.core.so.awB awb = this.f13097oq;
        if (awb != null) {
            awb.ZYk(i10);
        }
    }

    public JSONObject cFZ(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        com.bytedance.sdk.openadsdk.core.so.awB awb = this.f13097oq;
        if (awb != null) {
            try {
                jSONObject2.put("state", awb.ZYk(jSONObject) ? 1 : 0);
            } catch (Throwable unused) {
            }
        }
        return jSONObject2;
    }

    private JSONObject tB(com.bytedance.sdk.openadsdk.core.model.cY cYVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("is_ad_event", "1");
        jSONObject2.put(BidResponsedEx.KEY_CID, cYVar.cdg());
        jSONObject2.put("req_id", cYVar.iPr());
        jSONObject2.put("ad_id", cYVar.edj());
        jSONObject2.put("log_extra", cYVar.pe());
        jSONObject2.put("isRTL", com.bytedance.sdk.openadsdk.core.settings.PiB.ib().jB());
        jSONObject.put("ad_info", jSONObject2);
        jSONObject.put("endcard_creative", cYVar.Rl());
        jSONObject.put("dynamic_creative", cYVar.YF());
        jSONObject.put("title", cYVar.UUI());
        com.bytedance.sdk.openadsdk.core.model.cY.oJ(cYVar, jSONObject);
        com.bytedance.sdk.openadsdk.core.model.cY.ZYk(cYVar, jSONObject);
        jSONObject.put("source", cYVar.Qzd());
        jSONObject.put("button_text", cYVar.SB());
        com.bytedance.sdk.openadsdk.core.model.PiB TNk = cYVar.TNk();
        if (TNk != null) {
            jSONObject.put("deeplink_url", TNk.oJ());
        }
        jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, cYVar.MVA());
        jSONObject.put("has_show", cYVar.ofl() ? 1 : 0);
        jSONObject.put("has_click", cYVar.Tjr() ? 1 : 0);
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(com.bytedance.sdk.openadsdk.core.so.awB awb, JSONObject jSONObject) {
        if (awb == null || jSONObject == null) {
            return;
        }
        try {
            awb.oJ(jSONObject.optBoolean("mute", false), !jSONObject.has("mute") ? "jsb_def" : "jsb_web");
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0094 A[Catch: Exception -> 0x00c4, TryCatch #0 {Exception -> 0x00c4, blocks: (B:7:0x000f, B:10:0x0017, B:13:0x001f, B:16:0x0027, B:18:0x002d, B:27:0x0053, B:29:0x006c, B:31:0x0084, B:35:0x008d, B:37:0x0094, B:38:0x0098, B:40:0x009d, B:42:0x00a3, B:43:0x00ac, B:46:0x00b4, B:48:0x00bb, B:47:0x00b8, B:28:0x0060), top: B:51:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b4 A[Catch: Exception -> 0x00c4, TRY_ENTER, TryCatch #0 {Exception -> 0x00c4, blocks: (B:7:0x000f, B:10:0x0017, B:13:0x001f, B:16:0x0027, B:18:0x002d, B:27:0x0053, B:29:0x006c, B:31:0x0084, B:35:0x008d, B:37:0x0094, B:38:0x0098, B:40:0x009d, B:42:0x00a3, B:43:0x00ac, B:46:0x00b4, B:48:0x00bb, B:47:0x00b8, B:28:0x0060), top: B:51:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b8 A[Catch: Exception -> 0x00c4, TryCatch #0 {Exception -> 0x00c4, blocks: (B:7:0x000f, B:10:0x0017, B:13:0x001f, B:16:0x0027, B:18:0x002d, B:27:0x0053, B:29:0x006c, B:31:0x0084, B:35:0x008d, B:37:0x0094, B:38:0x0098, B:40:0x009d, B:42:0x00a3, B:43:0x00ac, B:46:0x00b4, B:48:0x00bb, B:47:0x00b8, B:28:0x0060), top: B:51:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject ZYk(com.bytedance.sdk.openadsdk.core.model.cY r10) {
        /*
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            com.bytedance.sdk.openadsdk.core.settings.ba r1 = com.bytedance.sdk.openadsdk.core.si.ex()
            if (r1 != 0) goto Lc
            return r0
        Lc:
            r1 = 0
            if (r10 == 0) goto L14
            int r2 = r10.uv()     // Catch: java.lang.Exception -> Lc4
            goto L15
        L14:
            r2 = r1
        L15:
            if (r10 == 0) goto L1c
            int r3 = r10.qnr()     // Catch: java.lang.Exception -> Lc4
            goto L1d
        L1c:
            r3 = r1
        L1d:
            if (r10 == 0) goto L24
            int r4 = r10.xwf()     // Catch: java.lang.Exception -> Lc4
            goto L25
        L24:
            r4 = r1
        L25:
            if (r10 == 0) goto L2c
            int r5 = r10.HUl()     // Catch: java.lang.Exception -> Lc4
            goto L2d
        L2c:
            r5 = r1
        L2d:
            com.bytedance.sdk.openadsdk.core.settings.ba r6 = com.bytedance.sdk.openadsdk.core.si.ex()     // Catch: java.lang.Exception -> Lc4
            java.lang.String r7 = java.lang.String.valueOf(r2)     // Catch: java.lang.Exception -> Lc4
            boolean r6 = r6.Pfn(r7)     // Catch: java.lang.Exception -> Lc4
            com.bytedance.sdk.openadsdk.core.settings.ba r7 = com.bytedance.sdk.openadsdk.core.si.ex()     // Catch: java.lang.Exception -> Lc4
            java.lang.String r8 = java.lang.String.valueOf(r2)     // Catch: java.lang.Exception -> Lc4
            int r7 = r7.BTZ(r8)     // Catch: java.lang.Exception -> Lc4
            r8 = 1
            if (r7 != r8) goto L4a
            r7 = r8
            goto L4b
        L4a:
            r7 = r1
        L4b:
            r9 = 7
            if (r3 == r9) goto L60
            r9 = 8
            if (r3 != r9) goto L53
            goto L60
        L53:
            com.bytedance.sdk.openadsdk.core.settings.ba r3 = com.bytedance.sdk.openadsdk.core.si.ex()     // Catch: java.lang.Exception -> Lc4
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.Exception -> Lc4
            boolean r2 = r3.ZYk(r2)     // Catch: java.lang.Exception -> Lc4
            goto L6c
        L60:
            com.bytedance.sdk.openadsdk.core.settings.ba r3 = com.bytedance.sdk.openadsdk.core.si.ex()     // Catch: java.lang.Exception -> Lc4
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.Exception -> Lc4
            boolean r2 = r3.eZI(r2)     // Catch: java.lang.Exception -> Lc4
        L6c:
            java.lang.String r3 = "voice_control"
            r0.put(r3, r2)     // Catch: java.lang.Exception -> Lc4
            java.lang.String r2 = "rv_skip_time"
            r0.put(r2, r4)     // Catch: java.lang.Exception -> Lc4
            java.lang.String r2 = "fv_skip_show"
            r0.put(r2, r6)     // Catch: java.lang.Exception -> Lc4
            java.lang.String r2 = "iv_skip_time"
            r0.put(r2, r5)     // Catch: java.lang.Exception -> Lc4
            java.lang.String r2 = "show_dislike"
            if (r10 == 0) goto L8c
            boolean r3 = r10.LTg()     // Catch: java.lang.Exception -> Lc4
            if (r3 == 0) goto L8c
            r3 = r8
            goto L8d
        L8c:
            r3 = r1
        L8d:
            r0.put(r2, r3)     // Catch: java.lang.Exception -> Lc4
            java.lang.String r2 = "video_adaptation"
            if (r10 == 0) goto L98
            int r1 = r10.bD()     // Catch: java.lang.Exception -> Lc4
        L98:
            r0.put(r2, r1)     // Catch: java.lang.Exception -> Lc4
            if (r10 == 0) goto Lac
            org.json.JSONObject r1 = r10.VzB()     // Catch: java.lang.Exception -> Lc4
            if (r1 == 0) goto Lac
            java.lang.String r1 = "dynamic_configs"
            org.json.JSONObject r2 = r10.VzB()     // Catch: java.lang.Exception -> Lc4
            r0.put(r1, r2)     // Catch: java.lang.Exception -> Lc4
        Lac:
            boolean r1 = com.bytedance.sdk.openadsdk.core.model.QSm.tB(r10)     // Catch: java.lang.Exception -> Lc4
            java.lang.String r2 = "skip_change_to_close"
            if (r1 == 0) goto Lb8
            r0.put(r2, r8)     // Catch: java.lang.Exception -> Lc4
            goto Lbb
        Lb8:
            r0.put(r2, r7)     // Catch: java.lang.Exception -> Lc4
        Lbb:
            java.lang.String r1 = "bar_render_platform"
            boolean r10 = r10.wd()     // Catch: java.lang.Exception -> Lc4
            r0.put(r1, r10)     // Catch: java.lang.Exception -> Lc4
        Lc4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.UN.ZYk(com.bytedance.sdk.openadsdk.core.model.cY):org.json.JSONObject");
    }

    public UN oJ(com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn) {
        this.XAo = pfn;
        return this;
    }

    public UN oJ(boolean z10) {
        this.ZYk = z10;
        return this;
    }

    public UN oJ(View view) {
        this.BTZ = new WeakReference<>(view);
        return this;
    }

    public UN oJ(int i10) {
        this.eZI = i10;
        return this;
    }

    public UN oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        this.Ry = cYVar;
        if (cYVar != null) {
            this.RZ = cYVar.yV();
        }
        return this;
    }

    public UN oJ(com.bytedance.sdk.openadsdk.BTZ.tB tBVar) {
        this.Ln = tBVar;
        return this;
    }

    public UN oJ(com.bytedance.sdk.openadsdk.BTZ.kkU kku) {
        this.LpP = kku;
        return this;
    }

    public UN oJ(Map<String, Object> map) {
        this.oJ = map;
        return this;
    }

    public void Pfn(boolean z10) {
        this.nQI = z10;
    }

    public UN oJ(com.bytedance.sdk.component.adexpress.ZYk.dLZ dlz) {
        this.QSm = dlz;
        return this;
    }

    public UN oJ(com.bytedance.sdk.openadsdk.core.so.awB awb) {
        this.f13097oq = awb;
        return this;
    }

    public UN oJ(JSONObject jSONObject) {
        this.Id = jSONObject;
        return this;
    }

    public UN oJ(com.bytedance.sdk.openadsdk.BTZ.oJ oJVar) {
        this.f13095jr = oJVar;
        return this;
    }

    public UN oJ(com.bytedance.sdk.openadsdk.BTZ.ba baVar) {
        this.Xe = baVar;
        return this;
    }

    public UN oJ(com.bytedance.sdk.openadsdk.BTZ.Pfn pfn) {
        this.f13100tb = pfn;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(String str, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", TextureRenderKeys.KEY_IS_CALLBACK);
            jSONObject2.put("__callback_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            Id(jSONObject2);
        } catch (Exception unused) {
        }
    }

    public UN oJ(com.bytedance.sdk.openadsdk.BTZ.cFZ cfz) {
        this.Jm = cfz;
        return this;
    }

    public static void oJ(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.cY cYVar) throws Exception {
        String edj = cYVar.edj();
        if (!TextUtils.isEmpty(edj)) {
            jSONObject.put(BidResponsedEx.KEY_CID, edj);
        }
        String pe2 = cYVar.pe();
        if (!TextUtils.isEmpty(pe2)) {
            jSONObject.put("log_extra", pe2);
        }
        String ZiK = cYVar.ZiK();
        if (!TextUtils.isEmpty(ZiK)) {
            jSONObject.put(DownloadModel.DOWNLOAD_URL, ZiK);
        }
        jSONObject.put("dc", TextUtils.isEmpty(si.ex().mu()) ? si.ex().mu() : "TX");
        jSONObject.put(MediaFormat.KEY_LANGUAGE, BTZ.ZYk());
        jSONObject.put("isRTL", com.bytedance.sdk.openadsdk.core.settings.PiB.ib().jB());
    }

    public void ZYk(@NonNull final Uri uri) {
        try {
            String host = uri.getHost();
            if (!"log_event".equals(host) && !"custom_event".equals(host) && !"log_event_v3".equals(host)) {
                if ("private".equals(host) || "dispatch_message".equals(host)) {
                    jFA(uri.toString());
                    return;
                }
                return;
            }
            com.bytedance.sdk.openadsdk.ex.tB.oJ(new com.bytedance.sdk.component.so.so("log_event_handleUri") { // from class: com.bytedance.sdk.openadsdk.core.UN.2
                @Override // java.lang.Runnable
                public void run() {
                    long j10;
                    String str;
                    JSONObject jSONObject;
                    String queryParameter = uri.getQueryParameter("category");
                    String queryParameter2 = uri.getQueryParameter(ITTVideoEngineEventSource.KEY_TAG);
                    UN.this.HyG = queryParameter2;
                    String queryParameter3 = uri.getQueryParameter("label");
                    if (!UN.this.so(queryParameter3)) {
                        return;
                    }
                    long j11 = 0;
                    try {
                        j10 = Long.parseLong(uri.getQueryParameter(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                    } catch (Exception unused) {
                        j10 = 0;
                    }
                    try {
                        j11 = Long.parseLong(uri.getQueryParameter("ext_value"));
                    } catch (Exception unused2) {
                    }
                    long j12 = j11;
                    JSONObject jSONObject2 = null;
                    try {
                        String queryParameter4 = uri.getQueryParameter(GearStrategyConsts.EV_EXTRA_INFO);
                        if (!TextUtils.isEmpty(queryParameter4)) {
                            JSONObject jSONObject3 = new JSONObject(queryParameter4);
                            try {
                                jSONObject3.putOpt("ua_policy", Integer.valueOf(UN.this.eZI));
                            } catch (Throwable unused3) {
                            }
                            jSONObject2 = jSONObject3;
                        }
                    } catch (Throwable unused4) {
                    }
                    if ("click".equals(queryParameter3)) {
                        jSONObject2 = UN.this.cY(jSONObject2);
                    }
                    if (!"landing_perf_error".equals(queryParameter3) && !"landing_perf_stats".equals(queryParameter3)) {
                        str = UN.this.oJ(queryParameter2, queryParameter3);
                        jSONObject = jSONObject2;
                    } else {
                        try {
                            JSONObject jSONObject4 = new JSONObject();
                            for (String str2 : uri.getQueryParameterNames()) {
                                try {
                                    if (GearStrategyConsts.EV_EXTRA_INFO.equals(str2)) {
                                        jSONObject4.put("ad_extra_data", new JSONObject(uri.getQueryParameter(str2)).optString("ad_extra_data"));
                                    } else {
                                        jSONObject4.put(str2, uri.getQueryParameter(str2));
                                    }
                                } catch (Exception unused5) {
                                }
                            }
                            str = UN.this.cFZ;
                            jSONObject = jSONObject4;
                        } catch (Exception unused6) {
                            return;
                        }
                    }
                    com.bytedance.sdk.openadsdk.ex.tB.oJ(UN.this.Ry, queryParameter, str, queryParameter3, j10, j12, jSONObject, com.bytedance.sdk.openadsdk.core.model.QSm.Pfn(UN.this.Ry));
                }
            });
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0364, code lost:
        if (r3 != null) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0366, code lost:
        r7 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x03b1, code lost:
        if (r3 != null) goto L77;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject oJ(com.bytedance.sdk.openadsdk.core.UN.ZYk r23, int r24) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 1326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.UN.oJ(com.bytedance.sdk.openadsdk.core.UN$ZYk, int):org.json.JSONObject");
    }

    private void oJ(JSONObject jSONObject, boolean z10, String str) {
        com.bytedance.sdk.openadsdk.core.widget.Pfn pfn;
        if (z10) {
            try {
                String optString = jSONObject.optString("ad_extra_data");
                if (TextUtils.isEmpty(optString) || new JSONObject(optString).optInt("agg_request_type", -1) != 1 || !"click".equals(str) || (pfn = this.f13099so) == null) {
                    return;
                }
                pfn.oJ();
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.QSm.oJ("TTAD.AndroidObject", "callAggClickListener faile", th2);
            }
        }
    }

    private boolean oJ(JSONObject jSONObject, JSONObject jSONObject2) {
        String str;
        int i10;
        String str2;
        if (jSONObject != null) {
            i10 = jSONObject.optInt("landingStyle");
            str = jSONObject.optString("url");
            str2 = jSONObject.optString("fallback_url");
        } else {
            str = null;
            i10 = -1;
            str2 = null;
        }
        boolean z10 = false;
        if (i10 == 1) {
            if (!com.bytedance.sdk.component.utils.Ry.oJ(str)) {
                try {
                    jSONObject2.put("invalid_url", 1);
                } catch (JSONException e10) {
                    com.bytedance.sdk.component.utils.QSm.oJ("TTAD.AndroidObject", "handleUrl, EX1->: ", e10);
                }
                return z10;
            }
        } else if (i10 == 2) {
            try {
                if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                    jSONObject2.put("empty_url", 1);
                } else if (!com.bytedance.sdk.component.utils.Ry.oJ(str2)) {
                    jSONObject2.put("invalid_url", 1);
                }
            } catch (JSONException e11) {
                com.bytedance.sdk.component.utils.QSm.oJ("TTAD.AndroidObject", "handleUrl, EX2->: ", e11);
            }
            return z10;
        }
        z10 = true;
        return z10;
    }

    private void oJ(String str, boolean z10) {
        if (this.XAo == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (z10) {
            this.XAo.oJ(str);
        } else {
            this.XAo.ZYk(str);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Pfn.ZYk
    public void oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt(CrashHianalyticsData.TIME);
            String optString = jSONObject.optString("flag");
            com.bytedance.sdk.openadsdk.core.so.awB awb = this.f13097oq;
            if (awb != null) {
                awb.oJ(optInt, optString);
            }
        } catch (JSONException unused) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.AndroidObject", "requestPauseVideo json exception");
        }
    }

    public void oJ(final ZYk zYk, final JSONObject jSONObject) {
        if (zYk == null) {
            return;
        }
        try {
            oJ(zYk.ex, new com.bytedance.sdk.openadsdk.BTZ.ex() { // from class: com.bytedance.sdk.openadsdk.core.UN.8
                @Override // com.bytedance.sdk.openadsdk.BTZ.ex
                public void oJ(boolean z10, com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
                    if (z10) {
                        try {
                            jSONObject.put("creatives", UN.oJ(oJVar));
                            UN.this.ZYk(zYk.ZYk, jSONObject);
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                    UN.this.ZYk(zYk.ZYk, jSONObject);
                }
            });
        } catch (Exception unused) {
        }
    }

    private boolean oJ(String str, int i10, com.bytedance.sdk.openadsdk.core.model.eZI ezi) {
        HashMap<String, kkU> hashMap;
        if (TextUtils.isEmpty(str) || (hashMap = this.Jc) == null || hashMap.get(str) == null) {
            return false;
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0049 A[Catch: Exception -> 0x003f, TryCatch #0 {Exception -> 0x003f, blocks: (B:5:0x0007, B:7:0x0010, B:10:0x001a, B:12:0x0036, B:18:0x0045, B:20:0x0049, B:22:0x0050, B:24:0x0056, B:26:0x005c, B:27:0x0060, B:29:0x0066, B:30:0x0074, B:32:0x0078, B:34:0x007e, B:36:0x0082, B:37:0x0089, B:39:0x008f, B:40:0x0093, B:42:0x0099, B:43:0x00a9, B:45:0x00af, B:47:0x00bc, B:17:0x0042, B:49:0x00c9), top: B:53:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0066 A[Catch: Exception -> 0x003f, LOOP:0: B:27:0x0060->B:29:0x0066, LOOP_END, TryCatch #0 {Exception -> 0x003f, blocks: (B:5:0x0007, B:7:0x0010, B:10:0x001a, B:12:0x0036, B:18:0x0045, B:20:0x0049, B:22:0x0050, B:24:0x0056, B:26:0x005c, B:27:0x0060, B:29:0x0066, B:30:0x0074, B:32:0x0078, B:34:0x007e, B:36:0x0082, B:37:0x0089, B:39:0x008f, B:40:0x0093, B:42:0x0099, B:43:0x00a9, B:45:0x00af, B:47:0x00bc, B:17:0x0042, B:49:0x00c9), top: B:53:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0082 A[Catch: Exception -> 0x003f, TryCatch #0 {Exception -> 0x003f, blocks: (B:5:0x0007, B:7:0x0010, B:10:0x001a, B:12:0x0036, B:18:0x0045, B:20:0x0049, B:22:0x0050, B:24:0x0056, B:26:0x005c, B:27:0x0060, B:29:0x0066, B:30:0x0074, B:32:0x0078, B:34:0x007e, B:36:0x0082, B:37:0x0089, B:39:0x008f, B:40:0x0093, B:42:0x0099, B:43:0x00a9, B:45:0x00af, B:47:0x00bc, B:17:0x0042, B:49:0x00c9), top: B:53:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008f A[Catch: Exception -> 0x003f, TryCatch #0 {Exception -> 0x003f, blocks: (B:5:0x0007, B:7:0x0010, B:10:0x001a, B:12:0x0036, B:18:0x0045, B:20:0x0049, B:22:0x0050, B:24:0x0056, B:26:0x005c, B:27:0x0060, B:29:0x0066, B:30:0x0074, B:32:0x0078, B:34:0x007e, B:36:0x0082, B:37:0x0089, B:39:0x008f, B:40:0x0093, B:42:0x0099, B:43:0x00a9, B:45:0x00af, B:47:0x00bc, B:17:0x0042, B:49:0x00c9), top: B:53:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00af A[Catch: Exception -> 0x003f, TryCatch #0 {Exception -> 0x003f, blocks: (B:5:0x0007, B:7:0x0010, B:10:0x001a, B:12:0x0036, B:18:0x0045, B:20:0x0049, B:22:0x0050, B:24:0x0056, B:26:0x005c, B:27:0x0060, B:29:0x0066, B:30:0x0074, B:32:0x0078, B:34:0x007e, B:36:0x0082, B:37:0x0089, B:39:0x008f, B:40:0x0093, B:42:0x0099, B:43:0x00a9, B:45:0x00af, B:47:0x00bc, B:17:0x0042, B:49:0x00c9), top: B:53:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00bc A[Catch: Exception -> 0x003f, TryCatch #0 {Exception -> 0x003f, blocks: (B:5:0x0007, B:7:0x0010, B:10:0x001a, B:12:0x0036, B:18:0x0045, B:20:0x0049, B:22:0x0050, B:24:0x0056, B:26:0x005c, B:27:0x0060, B:29:0x0066, B:30:0x0074, B:32:0x0078, B:34:0x007e, B:36:0x0082, B:37:0x0089, B:39:0x008f, B:40:0x0093, B:42:0x0099, B:43:0x00a9, B:45:0x00af, B:47:0x00bc, B:17:0x0042, B:49:0x00c9), top: B:53:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void oJ(org.json.JSONObject r10, final com.bytedance.sdk.openadsdk.BTZ.ex r11) {
        /*
            r9 = this;
            java.lang.String r0 = "common_params"
            java.lang.String r1 = "session_params"
            if (r11 != 0) goto L7
            return
        L7:
            com.bytedance.sdk.openadsdk.core.UN$9 r2 = new com.bytedance.sdk.openadsdk.core.UN$9     // Catch: java.lang.Exception -> L3f
            r2.<init>()     // Catch: java.lang.Exception -> L3f
            com.bytedance.sdk.openadsdk.core.model.cY r11 = r9.Ry     // Catch: java.lang.Exception -> L3f
            if (r11 == 0) goto Lc9
            java.lang.String r11 = r9.PiB     // Catch: java.lang.Exception -> L3f
            boolean r11 = android.text.TextUtils.isEmpty(r11)     // Catch: java.lang.Exception -> L3f
            if (r11 == 0) goto L1a
            goto Lc9
        L1a:
            com.bytedance.sdk.openadsdk.core.model.cY r11 = r9.Ry     // Catch: java.lang.Exception -> L3f
            int r11 = r11.qnr()     // Catch: java.lang.Exception -> L3f
            com.bytedance.sdk.openadsdk.core.model.cY r3 = r9.Ry     // Catch: java.lang.Exception -> L3f
            com.bytedance.sdk.openadsdk.AdSlot r3 = r3.BHY()     // Catch: java.lang.Exception -> L3f
            com.bytedance.sdk.openadsdk.core.model.HL r4 = new com.bytedance.sdk.openadsdk.core.model.HL     // Catch: java.lang.Exception -> L3f
            r4.<init>()     // Catch: java.lang.Exception -> L3f
            r5 = 1
            r4.f13181ba = r5     // Catch: java.lang.Exception -> L3f
            com.bytedance.sdk.openadsdk.core.model.cY r5 = r9.Ry     // Catch: java.lang.Exception -> L3f
            com.bytedance.sdk.openadsdk.core.model.cY$oJ r5 = r5.PdF()     // Catch: java.lang.Exception -> L3f
            if (r5 != 0) goto L42
            com.bytedance.sdk.openadsdk.core.model.cY r5 = r9.Ry     // Catch: java.lang.Exception -> L3f
            com.bytedance.sdk.openadsdk.core.model.Jc r5 = r5.BWx()     // Catch: java.lang.Exception -> L3f
            if (r5 == 0) goto L45
            goto L42
        L3f:
            r10 = move-exception
            goto Lcf
        L42:
            r5 = 2
            r4.jFA = r5     // Catch: java.lang.Exception -> L3f
        L45:
            org.json.JSONObject r5 = r9.RZ     // Catch: java.lang.Exception -> L3f
            if (r5 != 0) goto L4e
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Exception -> L3f
            r5.<init>()     // Catch: java.lang.Exception -> L3f
        L4e:
            if (r10 == 0) goto L74
            boolean r6 = r10.has(r1)     // Catch: java.lang.Exception -> L3f
            if (r6 == 0) goto L74
            org.json.JSONObject r1 = r10.optJSONObject(r1)     // Catch: java.lang.Exception -> L3f
            if (r1 == 0) goto L74
            java.util.Iterator r6 = r1.keys()     // Catch: java.lang.Exception -> L3f
        L60:
            boolean r7 = r6.hasNext()     // Catch: java.lang.Exception -> L3f
            if (r7 == 0) goto L74
            java.lang.Object r7 = r6.next()     // Catch: java.lang.Exception -> L3f
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Exception -> L3f
            java.lang.Object r8 = r1.opt(r7)     // Catch: java.lang.Exception -> L3f
            r5.put(r7, r8)     // Catch: java.lang.Exception -> L3f
            goto L60
        L74:
            r4.cFZ = r5     // Catch: java.lang.Exception -> L3f
            if (r10 == 0) goto La9
            boolean r1 = r10.has(r0)     // Catch: java.lang.Exception -> L3f
            if (r1 == 0) goto La9
            org.json.JSONObject r1 = r4.f13182so     // Catch: java.lang.Exception -> L3f
            if (r1 != 0) goto L89
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Exception -> L3f
            r1.<init>()     // Catch: java.lang.Exception -> L3f
            r4.f13182so = r1     // Catch: java.lang.Exception -> L3f
        L89:
            org.json.JSONObject r10 = r10.optJSONObject(r0)     // Catch: java.lang.Exception -> L3f
            if (r10 == 0) goto La9
            java.util.Iterator r0 = r10.keys()     // Catch: java.lang.Exception -> L3f
        L93:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> L3f
            if (r1 == 0) goto La9
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> L3f
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Exception -> L3f
            org.json.JSONObject r5 = r4.f13182so     // Catch: java.lang.Exception -> L3f
            java.lang.Object r6 = r10.opt(r1)     // Catch: java.lang.Exception -> L3f
            r5.put(r1, r6)     // Catch: java.lang.Exception -> L3f
            goto L93
        La9:
            boolean r10 = com.bytedance.sdk.openadsdk.utils.ZYk.oJ()     // Catch: java.lang.Exception -> L3f
            if (r10 == 0) goto Lbc
            com.bytedance.sdk.openadsdk.core.Id r10 = com.bytedance.sdk.openadsdk.core.si.tB()     // Catch: java.lang.Exception -> L3f
            com.bytedance.sdk.openadsdk.core.UN$10 r0 = new com.bytedance.sdk.openadsdk.core.UN$10     // Catch: java.lang.Exception -> L3f
            r0.<init>()     // Catch: java.lang.Exception -> L3f
            r10.oJ(r3, r4, r11, r0)     // Catch: java.lang.Exception -> L3f
            return
        Lbc:
            com.bytedance.sdk.openadsdk.core.Id r10 = com.bytedance.sdk.openadsdk.core.si.tB()     // Catch: java.lang.Exception -> L3f
            com.bytedance.sdk.openadsdk.core.UN$11 r0 = new com.bytedance.sdk.openadsdk.core.UN$11     // Catch: java.lang.Exception -> L3f
            r0.<init>()     // Catch: java.lang.Exception -> L3f
            r10.oJ(r3, r4, r11, r0)     // Catch: java.lang.Exception -> L3f
            return
        Lc9:
            r10 = 0
            r11 = 0
            r2.oJ(r10, r11)     // Catch: java.lang.Exception -> L3f
            return
        Lcf:
            java.lang.String r11 = "TTAD.AndroidObject"
            java.lang.String r0 = "get ads error"
            com.bytedance.sdk.component.utils.QSm.oJ(r11, r0, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.UN.oJ(org.json.JSONObject, com.bytedance.sdk.openadsdk.BTZ.ex):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.tB tBVar, com.bytedance.sdk.openadsdk.BTZ.ex exVar) {
        if (oJVar.ex() != null && !oJVar.ex().isEmpty()) {
            com.bytedance.sdk.openadsdk.core.model.cY cYVar = oJVar.ex().get(0);
            if (cYVar != null) {
                this.RZ = cYVar.yV();
            }
            exVar.oJ(true, oJVar);
            return;
        }
        exVar.oJ(false, null);
        tBVar.oJ(-3);
        tBVar.tB(7);
        com.bytedance.sdk.openadsdk.core.model.tB.oJ(tBVar);
    }

    public static JSONArray oJ(com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        com.bytedance.sdk.openadsdk.core.model.cY ba2;
        if (oJVar == null || !oJVar.Pfn() || (ba2 = oJVar.ba()) == null || TextUtils.isEmpty(ba2.FjF())) {
            return null;
        }
        try {
            return new JSONObject(ba2.FjF()).optJSONArray("creatives");
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean oJ(Uri uri) {
        if (uri == null) {
            return false;
        }
        if ("bytedance".equals(uri.getScheme())) {
            return jFA.containsKey(uri.getHost());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String oJ(String str, String str2) {
        if (com.bytedance.sdk.openadsdk.core.model.QSm.Pfn(this.Ry)) {
            if ("show".equals(str2)) {
                return HyG.oJ(this.WcQ);
            }
            return "aggregate_page";
        } else if (com.bytedance.sdk.openadsdk.core.model.Ln.Pfn(this.Ry)) {
            return this.cFZ;
        } else {
            if (this.Ln != null) {
                return HyG.oJ(this.WcQ);
            }
            return this.QSm == null ? HyG.ZYk(this.WcQ) : str;
        }
    }

    @Override // com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        if (message != null && message.what == 11) {
            Object obj = message.obj;
            if (obj instanceof ZYk) {
                try {
                    oJ((ZYk) obj, 1);
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.kkU.ZYk
    public void oJ(String str, JSONObject jSONObject) {
        tB(str, jSONObject);
    }

    private void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str, boolean z10) {
        com.bytedance.sdk.openadsdk.core.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.core.ZYk.oJ(si.oJ(), cYVar, str, this.WcQ);
        oJVar.oJ(com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ.oJ(si.oJ(), str));
        if (!z10) {
            oJVar.oJ(false);
        }
        oJVar.onClick(null);
    }

    public void oJ(JSONObject jSONObject, String str) {
        com.bytedance.sdk.openadsdk.core.so.awB awb = this.f13097oq;
        if (awb != null) {
            awb.oJ(str, jSONObject);
            return;
        }
        com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk = this.Yg;
        if (zYk != null) {
            zYk.oJ(str, jSONObject);
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk) {
        this.Yg = zYk;
    }

    public void oJ(oJ oJVar) {
        this.lY = oJVar;
    }
}
