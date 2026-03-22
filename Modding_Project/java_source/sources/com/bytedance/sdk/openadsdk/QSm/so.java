package com.bytedance.sdk.openadsdk.QSm;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class so {
    private String Amz;
    private int BHY;
    private final Handler BTZ;
    private JSONObject BWx;
    private ViewTreeObserver.OnGlobalLayoutListener Dc;
    private int Dex;
    private com.bytedance.sdk.openadsdk.QSm.oJ EP;
    private long HL;
    private String HyG;
    private int IUZ;
    private boolean Id;
    private float JJ;
    private long Jc;
    private String Jm;
    private boolean LE;
    private int LS;
    private long Ln;
    private long LpP;
    private int MVA;
    private long MoK;
    private String NO;
    private int NX;
    private String Oof;
    private boolean PQw;
    private String PdF;
    public final String Pfn;
    private Runnable PiB;
    private String QSm;
    private int Qu;
    private int Qzd;
    private Set<String> RZ;
    private String Rl;
    private boolean Ry;
    private String SB;
    private String SCr;
    private int SWT;
    private long TA;
    private volatile boolean TNk;
    private Context UF;
    private JSONObject UK;
    private long UN;
    private boolean UUI;
    private String Uf;
    @Nullable
    private WebView VJm;
    private int VSB;
    private boolean WGj;
    private Runnable WcQ;
    private boolean Wd;
    private String Wek;
    private long XAo;
    private String XQY;
    private int XSu;
    private String Xe;
    private String YF;
    private tB YQ;
    private int Yg;
    private int ZMY;
    public final String ZYk;
    private int Zjw;
    private int Zzm;
    private ZYk awB;
    private WeakReference<View> bD;

    /* renamed from: ba  reason: collision with root package name */
    private final String f12841ba;
    private boolean bgF;
    private final String cFZ;
    private boolean cY;
    private String cdg;
    private Runnable dLZ;
    private List<JSONObject> dZS;
    private boolean eW;
    private JSONObject eXp;
    private boolean eZI;
    private String edj;
    public final String ex;
    private float hwh;

    /* renamed from: ib  reason: collision with root package name */
    private float f12842ib;
    private boolean jB;
    private Runnable jFA;
    private int jXJ;

    /* renamed from: jr  reason: collision with root package name */
    private boolean f12843jr;
    private Runnable kkU;
    private int lY;

    /* renamed from: mu  reason: collision with root package name */
    private long f12844mu;
    private int mwH;
    private int nQI;
    private long nke;
    private ba oCU;
    private String oG;
    private int oIC;
    public final String oJ;
    private int oTd;
    private long ofl;

    /* renamed from: oo  reason: collision with root package name */
    private int f12845oo;

    /* renamed from: oq  reason: collision with root package name */
    private String f12846oq;

    /* renamed from: pe  reason: collision with root package name */
    private volatile boolean f12847pe;
    private int rJ;

    /* renamed from: rg  reason: collision with root package name */
    private int f12848rg;
    private int sH;
    private int sQ;

    /* renamed from: si  reason: collision with root package name */
    private boolean f12849si;

    /* renamed from: so  reason: collision with root package name */
    private final Handler f12850so;
    public final String tB;

    /* renamed from: tb  reason: collision with root package name */
    private long f12851tb;
    private boolean uaj;

    /* renamed from: uq  reason: collision with root package name */
    private boolean f12852uq;
    private oJ uvK;

    /* renamed from: wd  reason: collision with root package name */
    private long f12853wd;
    private boolean yB;
    private Map<String, String> yQF;
    private String ypD;
    private int yz;
    private JSONObject zGT;

    /* loaded from: classes3.dex */
    public enum oJ {
        LAND_PAGE,
        FEED,
        OTHER,
        FEED_AWEME
    }

    private so(Context context, WebView webView, tB tBVar, com.bytedance.sdk.openadsdk.QSm.oJ oJVar, oJ oJVar2) {
        this.f12841ba = "playable_stuck_check_ping";
        this.cFZ = "playable_apply_media_permission_callback";
        this.f12850so = new Handler(Looper.getMainLooper());
        this.BTZ = new Handler(Looper.getMainLooper());
        this.eZI = true;
        this.f12849si = true;
        this.Ry = true;
        this.oJ = "PL_sdk_playable_global_viewable";
        this.ZYk = "PL_sdk_page_screen_blank";
        this.tB = "PL_sdk_playable_destroy_analyze_summary";
        this.ex = "PL_sdk_playable_hardware_dialog_cancel";
        this.Pfn = "PL_sdk_playable_hardware_dialog_setting";
        this.RZ = new HashSet(Arrays.asList("adInfo", "appInfo", "subscribe_app_ad", "download_app_ad"));
        this.QSm = null;
        this.f12846oq = "embeded_ad";
        this.Id = true;
        this.cY = true;
        this.f12843jr = false;
        this.Xe = "";
        this.f12851tb = 10L;
        this.HL = 10L;
        this.IUZ = 700;
        this.Ln = 0L;
        this.LpP = 0L;
        this.nke = -1L;
        this.Jc = -1L;
        this.UN = -1L;
        this.f12844mu = -1L;
        this.XAo = -1L;
        this.ofl = -1L;
        this.f12853wd = -1L;
        this.HyG = "";
        this.cdg = "";
        this.Rl = "";
        this.Jm = "";
        this.Qu = 0;
        this.nQI = 0;
        this.bgF = false;
        this.Yg = 0;
        this.lY = -1;
        this.mwH = 0;
        this.oTd = 0;
        this.LS = 0;
        this.NO = null;
        this.jB = false;
        this.yz = 0;
        this.sH = 0;
        this.Dex = 0;
        this.oIC = 0;
        this.MoK = 0L;
        this.TA = 0L;
        this.VSB = -2;
        this.jXJ = 0;
        this.BHY = 0;
        this.SWT = 0;
        this.zGT = new JSONObject();
        this.yQF = new HashMap();
        this.eXp = new JSONObject();
        this.YF = "";
        this.JJ = 0.0f;
        this.hwh = 0.0f;
        this.uaj = false;
        this.UUI = false;
        this.eW = false;
        this.dZS = new ArrayList();
        this.Wd = true;
        this.TNk = true;
        this.f12847pe = true;
        this.Dc = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.QSm.so.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                try {
                    View view = (View) so.this.bD.get();
                    if (view != null) {
                        so.this.ZYk(view);
                    }
                } catch (Throwable th2) {
                    cFZ.oJ("PlayablePlugin", "onSizeChanged error", th2);
                }
            }
        };
        this.rJ = -1;
        this.VSB = 0;
        this.uvK = oJVar2;
        this.VJm = webView;
        jFA.oJ(webView);
        oJ(webView);
        oJ(context, tBVar, oJVar);
    }

    static /* synthetic */ int BTZ(so soVar) {
        int i10 = soVar.Qu;
        soVar.Qu = i10 + 1;
        return i10;
    }

    private void Jm() {
        Runnable runnable;
        Runnable runnable2;
        this.awB.oJ(System.currentTimeMillis());
        Handler handler = this.BTZ;
        if (handler != null) {
            int i10 = this.VSB;
            if (i10 == 0 && (runnable2 = this.PiB) != null) {
                handler.post(runnable2);
            } else if ((i10 == 1 || i10 == 2) && (runnable = this.WcQ) != null) {
                handler.post(runnable);
            }
            this.awB.oJ(500);
        }
    }

    static /* synthetic */ int PiB(so soVar) {
        int i10 = soVar.nQI;
        soVar.nQI = i10 + 1;
        return i10;
    }

    private void Rl() {
        String str;
        if (this.eXp == null || (str = this.oG) == null || str.contains("/cid_")) {
            return;
        }
        String optString = this.eXp.optString(BidResponsedEx.KEY_CID);
        if (!TextUtils.isEmpty(optString)) {
            String host = Uri.parse(this.oG).getHost();
            if (TextUtils.isEmpty(host)) {
                this.oG += "/cid_" + optString;
                return;
            }
            this.oG = this.oG.replace(host, host + "/cid_" + optString);
        }
    }

    private void cdg() {
        this.awB = new ZYk(this, this.IUZ);
        this.jFA = new Runnable() { // from class: com.bytedance.sdk.openadsdk.QSm.so.5
            @Override // java.lang.Runnable
            public void run() {
                if (so.this.Id) {
                    so.this.Id = false;
                    so.this.f12850so.removeCallbacks(so.this.kkU);
                    so.this.oJ(2, "ContainerLoadTimeOut");
                }
            }
        };
        this.kkU = new Runnable() { // from class: com.bytedance.sdk.openadsdk.QSm.so.6
            @Override // java.lang.Runnable
            public void run() {
                if (so.this.Id) {
                    so.this.Id = false;
                    so.this.TNk = false;
                    so.this.f12850so.removeCallbacks(so.this.jFA);
                    so.this.oJ(3, "JSSDKLoadTimeOut");
                }
            }
        };
        this.PiB = new Runnable() { // from class: com.bytedance.sdk.openadsdk.QSm.so.7
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                if (so.this.VJm != null) {
                    so.this.VJm.evaluateJavascript("javascript:typeof playable_callJS === 'function' && playable_callJS()", new ValueCallback<String>() { // from class: com.bytedance.sdk.openadsdk.QSm.so.7.1
                        @Override // android.webkit.ValueCallback
                        /* renamed from: oJ */
                        public void onReceiveValue(String str) {
                            if (so.this.awB != null) {
                                so.this.awB.oJ(System.currentTimeMillis());
                            }
                        }
                    });
                }
                if (so.this.BTZ != null) {
                    so.this.BTZ.postDelayed(this, 500L);
                }
            }
        };
        this.WcQ = new Runnable() { // from class: com.bytedance.sdk.openadsdk.QSm.so.8
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                so.this.oJ("playable_stuck_check_ping", new JSONObject());
                if (so.this.BTZ != null) {
                    so.this.BTZ.postDelayed(this, 500L);
                }
            }
        };
        this.dLZ = new Runnable() { // from class: com.bytedance.sdk.openadsdk.QSm.so.9
            @Override // java.lang.Runnable
            public void run() {
                if (so.this.TA > 0) {
                    if (so.this.TA - so.this.MoK <= so.this.IUZ) {
                        so.this.Jc();
                        so.this.MoK = 0L;
                        so.this.TA = 0L;
                        return;
                    }
                    so.this.ZYk(1, "Clicking on the hot zone causes the program to freeze.");
                    return;
                }
                so.this.ZYk(1, "Clicking on the hot zone causes the program to freeze.");
            }
        };
    }

    public void HL() {
        if (this.EP != null) {
            oJ oJVar = oJ.LAND_PAGE;
        }
    }

    public int HyG() {
        return this.rJ;
    }

    public void IUZ() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.XAo > 0) {
                jSONObject.put("playable_material_first_frame_show_duration", System.currentTimeMillis() - this.XAo);
            } else {
                jSONObject.put("playable_material_first_frame_show_duration", 0L);
            }
            if (this.UN > 0) {
                jSONObject.put("playable_material_first_frame_load_duration", System.currentTimeMillis() - this.UN);
            } else {
                jSONObject.put("playable_material_first_frame_load_duration", 0L);
            }
            tB("PL_sdk_material_first_frame_show", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void Id() {
        com.bytedance.sdk.openadsdk.QSm.oJ oJVar = this.EP;
        if (oJVar != null) {
            oJVar.tB();
        }
    }

    public void Jc() {
        if (!this.cY) {
            return;
        }
        this.ofl = System.currentTimeMillis();
        if (this.uvK == oJ.FEED_AWEME) {
            if (this.f12852uq && this.jXJ == 3) {
                ZYk zYk = this.awB;
                if (zYk != null && zYk.ZYk()) {
                    Jm();
                } else if (this.awB == null) {
                    this.awB = new ZYk(this, this.IUZ);
                    Jm();
                }
            }
        } else if (this.f12852uq && this.jXJ == 2) {
            ZYk zYk2 = this.awB;
            if (zYk2 != null && zYk2.ZYk()) {
                Jm();
            } else if (this.awB == null) {
                this.awB = new ZYk(this, this.IUZ);
                Jm();
            }
        }
    }

    public void Ln() {
        ZYk zYk;
        this.TA = System.currentTimeMillis();
        int i10 = this.VSB;
        if ((i10 == 1 || i10 == 2) && (zYk = this.awB) != null) {
            zYk.oJ(System.currentTimeMillis());
        }
    }

    public void LpP() {
        int i10;
        int i11 = this.VSB;
        if (i11 == 0 || i11 == 1 || i11 == 2) {
            if (this.TNk) {
                this.f12850so.postDelayed(this.jFA, this.f12851tb * 1000);
            }
            if ((this.f12847pe && BTZ(this.oG)) || (i10 = this.VSB) == 1 || i10 == 2) {
                this.f12850so.postDelayed(this.kkU, this.HL * 1000);
            }
        }
    }

    public JSONObject QSm() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("devicePixelRatio", this.f12842ib);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("width", this.Qzd);
            jSONObject2.put("height", this.MVA);
            jSONObject.put("screen", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(TextureRenderKeys.KEY_IS_X, this.Zzm);
            jSONObject3.put(TextureRenderKeys.KEY_IS_Y, this.sQ);
            jSONObject3.put("width", this.f12845oo);
            jSONObject3.put("height", this.f12848rg);
            jSONObject.put("webview", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put(TextureRenderKeys.KEY_IS_X, this.NX);
            jSONObject4.put(TextureRenderKeys.KEY_IS_Y, this.ZMY);
            jSONObject4.put("width", this.Zjw);
            jSONObject4.put("height", this.XSu);
            jSONObject.put("visible", jSONObject4);
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "getViewport error", th2);
        }
        return jSONObject;
    }

    public JSONObject RZ() {
        return this.eXp;
    }

    public JSONObject Ry() {
        if (this.zGT.isNull("width")) {
            View view = this.bD.get();
            if (view == null) {
                return this.zGT;
            }
            ZYk(view);
        }
        return this.zGT;
    }

    public void UN() {
        try {
            ZYk zYk = this.awB;
            if (zYk != null) {
                zYk.oJ();
            }
            Handler handler = this.BTZ;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable th2) {
            th2.toString();
        }
    }

    public JSONObject WcQ() {
        boolean oJ2;
        boolean oJ3;
        try {
            boolean z10 = true;
            if (Build.VERSION.SDK_INT >= 33) {
                oJ2 = Pfn.oJ(this.UF, "android.permission.READ_MEDIA_IMAGES");
                oJ3 = true;
            } else {
                oJ2 = Pfn.oJ(this.UF, "android.permission.READ_EXTERNAL_STORAGE");
                oJ3 = Pfn.oJ(this.UF, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isHasRead", oJ2);
            jSONObject.put("isHasWrite", oJ3);
            if (!oJ2 || !oJ3) {
                z10 = false;
            }
            jSONObject.put("result", z10);
            return jSONObject;
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "getCameraPermission error", th2);
            return new JSONObject();
        }
    }

    public void XAo() {
        if (this.eW) {
            return;
        }
        this.eW = true;
        this.LpP = 0L;
        this.f12849si = true;
        mu();
        try {
            View view = this.bD.get();
            if (view != null) {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this.Dc);
            }
        } catch (Throwable unused) {
        }
        try {
            this.oCU.ZYk();
        } catch (Throwable unused2) {
        }
        try {
            ZYk zYk = this.awB;
            if (zYk != null) {
                zYk.oJ();
                this.awB = null;
            }
            Handler handler = this.BTZ;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable th2) {
            th2.toString();
        }
        try {
            if (!TextUtils.isEmpty(this.oG)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("playable_all_times", this.Qu);
                jSONObject.put("playable_hit_times", this.nQI);
                int i10 = this.Qu;
                if (i10 > 0) {
                    jSONObject.put("playable_hit_ratio", this.nQI / (i10 * 1.0d));
                } else {
                    jSONObject.put("playable_hit_ratio", 0);
                }
                tB("PL_sdk_preload_times", jSONObject);
            }
        } catch (Throwable unused3) {
        }
        try {
            if (!TextUtils.isEmpty(this.oG)) {
                if (this.nke != -1) {
                    this.Ln += System.currentTimeMillis() - this.nke;
                    this.nke = -1L;
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("playable_user_play_duration", this.Ln);
                tB("PL_sdk_user_play_duration", jSONObject2);
            }
        } catch (Throwable unused4) {
        }
        this.TNk = false;
        this.f12847pe = false;
        this.f12850so.removeCallbacks(this.jFA);
        this.f12850so.removeCallbacks(this.kkU);
        this.f12850so.removeCallbacksAndMessages(null);
    }

    public void Xe() {
        this.jB = true;
    }

    public JSONObject awB() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("scene_type", this.uvK.ordinal());
            jSONObject.put("safe_area_top_height", this.JJ);
            jSONObject.put("safe_area_bottom_height", this.hwh);
            jSONObject.put("playable_enter_from", this.oTd);
            jSONObject.put("playable_retry_count", this.mwH);
            jSONObject.put("playable_card_session", this.HyG);
            jSONObject.put("playable_video_session", this.cdg);
            jSONObject.put("playable_network_type", eZI());
            jSONObject.put("aweme_id", this.Jm);
            return jSONObject;
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "playableInfo error", th2);
            return new JSONObject();
        }
    }

    public void cY() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.XAo > 0) {
                jSONObject.put("playable_material_interactable_duration", System.currentTimeMillis() - this.XAo);
            } else {
                jSONObject.put("playable_material_interactable_duration", 0L);
            }
            if (this.UN > 0) {
                long currentTimeMillis = System.currentTimeMillis() - this.UN;
                this.f12853wd = currentTimeMillis;
                jSONObject.put("playable_material_interactable_load_duration", currentTimeMillis);
            } else {
                jSONObject.put("playable_material_interactable_load_duration", 0L);
            }
            tB("PL_sdk_material_interactable", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public String eZI() {
        com.bytedance.sdk.openadsdk.QSm.oJ oJVar;
        if (TextUtils.isEmpty(this.Rl) && (oJVar = this.EP) != null) {
            this.Rl = oJVar.oJ().toString();
        }
        return this.Rl;
    }

    public void jr() {
        this.lY = 2;
    }

    public void mu() {
        this.BHY = 0;
        this.SWT = 0;
        this.f12842ib = 0.0f;
        this.Qzd = 0;
        this.MVA = 0;
        this.sQ = 0;
        this.Zzm = 0;
        this.f12845oo = 0;
        this.f12848rg = 0;
        this.ZMY = 0;
        this.NX = 0;
        this.Zjw = 0;
        this.XSu = 0;
    }

    public void nke() {
        this.f12847pe = false;
        this.f12850so.removeCallbacks(this.kkU);
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.UN > 0) {
                jSONObject.put("playable_jssdk_load_success_duration", System.currentTimeMillis() - this.UN);
            } else {
                jSONObject.put("playable_jssdk_load_success_duration", 0L);
            }
            tB("PL_sdk_jssdk_load_success", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public int ofl() {
        if (this.Jc != -1 && this.f12852uq) {
            return 2;
        }
        return 1;
    }

    public void oq() {
        com.bytedance.sdk.openadsdk.QSm.oJ oJVar = this.EP;
        if (oJVar != null) {
            oJVar.ZYk();
        }
    }

    public com.bytedance.sdk.openadsdk.QSm.oJ si() {
        return this.EP;
    }

    public void tb() {
        if (this.EP != null) {
            oJ oJVar = oJ.LAND_PAGE;
        }
    }

    public String wd() {
        return "function playable_callJS(){return \"Android call the JS method is callJS\";}";
    }

    private boolean BTZ(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("/union-fe/playable/") || str.contains("/union-fe-sg/playable/") || str.contains("/union-fe-i18n/playable/");
    }

    public String Pfn() {
        return this.Uf;
    }

    public JSONObject PiB() {
        try {
            boolean oJ2 = Pfn.oJ(this.UF, "android.permission.CAMERA");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("result", oJ2);
            return jSONObject;
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "getCameraPermission error", th2);
            return new JSONObject();
        }
    }

    public String ba() {
        return this.Wek;
    }

    public String cFZ() {
        return this.Oof;
    }

    public Set<String> dLZ() {
        return this.oCU.oJ();
    }

    public String ex() {
        return this.SCr;
    }

    public boolean jFA() {
        return this.f12852uq;
    }

    public JSONObject kkU() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("send_click", this.LE);
            return jSONObject;
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "getPlayableClickStatus error", th2);
            return new JSONObject();
        }
    }

    public boolean so() {
        return this.yB;
    }

    public JSONObject tB() {
        return this.BWx;
    }

    public JSONObject BTZ() {
        try {
            boolean oJ2 = Pfn.oJ(this.UF, "android.permission.RECORD_AUDIO");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("result", oJ2);
            return jSONObject;
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "getCameraPermission error", th2);
            return new JSONObject();
        }
    }

    public so Pfn(String str) {
        this.Oof = str;
        return this;
    }

    public so ba(String str) {
        this.f12846oq = str;
        return this;
    }

    public so cFZ(String str) {
        Uri parse;
        String scheme;
        int indexOf;
        String decode;
        this.YF = str;
        try {
            parse = Uri.parse(str);
            scheme = parse.getScheme();
        } catch (Throwable unused) {
        }
        if (!ProxyConfig.MATCH_HTTP.equalsIgnoreCase(scheme) && !"https".equalsIgnoreCase(scheme)) {
            String host = parse.getHost();
            if (!"webview".equalsIgnoreCase(host) && (host == null || !host.contains("webview"))) {
                if ("lynxview".equalsIgnoreCase(host) || (host != null && host.contains("lynxview"))) {
                    if (this.VSB == -1) {
                        ZYk(2);
                    } else {
                        ZYk(1);
                    }
                }
                this.oG = str;
                return this;
            }
            ZYk(0);
            String queryParameter = parse.getQueryParameter("url");
            if (!TextUtils.isEmpty(queryParameter) && (decode = Uri.decode(queryParameter)) != null) {
                int indexOf2 = decode.indexOf("?");
                str = indexOf2 != -1 ? decode.substring(0, indexOf2) : decode;
            }
            this.oG = str;
            return this;
        }
        ZYk(0);
        if (str != null && (indexOf = str.indexOf("?")) != -1) {
            str = str.substring(0, indexOf);
        }
        this.oG = str;
        return this;
    }

    public void dLZ(String str) {
        this.f12850so.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.QSm.so.3
            @Override // java.lang.Runnable
            public void run() {
                so.PiB(so.this);
            }
        });
    }

    public so ex(String str) {
        this.Wek = str;
        return this;
    }

    public void jFA(String str) {
        WebView webView;
        boolean z10 = this.jXJ == -1;
        this.jXJ = 2;
        if (!z10) {
            this.PdF = str;
            JSONObject jSONObject = new JSONObject();
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.f12844mu = currentTimeMillis;
                long j10 = this.UN;
                jSONObject.put("playable_html_load_start_duration", j10 != -1 ? currentTimeMillis - j10 : 0L);
                jSONObject.put("playable_has_show", ofl());
            } catch (Throwable th2) {
                cFZ.oJ("PlayablePlugin", "reportUrlLoadFinish error", th2);
            }
            tB("PL_sdk_html_load_finish", jSONObject);
        }
        this.TNk = false;
        this.f12850so.removeCallbacks(this.jFA);
        try {
            if (this.VSB == 0) {
                if (this.eZI && (webView = this.VJm) != null) {
                    this.eZI = false;
                    webView.evaluateJavascript(wd(), new ValueCallback<String>() { // from class: com.bytedance.sdk.openadsdk.QSm.so.11
                        @Override // android.webkit.ValueCallback
                        public /* bridge */ /* synthetic */ void onReceiveValue(String str2) {
                        }
                    });
                }
                Jc();
            }
        } catch (Throwable th3) {
            cFZ.oJ("PlayablePlugin", "crashMonitor error", th3);
        }
    }

    public JSONObject so(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        int optInt = jSONObject.optInt("type", 0);
        JSONObject jSONObject2 = new JSONObject();
        if (optInt == 1) {
            jSONObject2.put("result", Pfn.ZYk(this.UF, "android.permission.RECORD_AUDIO"));
        } else if (optInt != 2) {
            if (optInt == 3) {
                jSONObject2.put("result", Pfn.oJ(this.UF));
            }
            return jSONObject2;
        } else {
            jSONObject2.put("result", Pfn.ZYk(this.UF, "android.permission.CAMERA"));
        }
        return jSONObject2;
    }

    public so tB(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("playable_style", str);
            this.BWx = jSONObject;
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "setPlayableStyle error", th2);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(View view) {
        if (view == null) {
            return;
        }
        try {
            if (this.BHY == view.getWidth() && this.SWT == view.getHeight()) {
                return;
            }
            this.BHY = view.getWidth();
            this.SWT = view.getHeight();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", this.BHY);
            jSONObject.put("height", this.SWT);
            oJ("resize", jSONObject);
            this.zGT = jSONObject;
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "resetViewDataJsonByView error", th2);
        }
    }

    public void Pfn(JSONObject jSONObject) {
        this.UK = jSONObject;
        this.LS++;
        UN();
        this.f12850so.removeCallbacks(this.dLZ);
        if (this.cY) {
            this.ofl = System.currentTimeMillis();
            this.MoK = System.currentTimeMillis();
            this.TA = 0L;
            int i10 = this.VSB;
            if (i10 == 0) {
                WebView webView = this.VJm;
                if (webView != null) {
                    webView.evaluateJavascript("javascript:typeof playable_callJS === 'function' && playable_callJS()", new ValueCallback<String>() { // from class: com.bytedance.sdk.openadsdk.QSm.so.10
                        @Override // android.webkit.ValueCallback
                        /* renamed from: oJ */
                        public void onReceiveValue(String str) {
                            so.this.TA = System.currentTimeMillis();
                        }
                    });
                }
            } else if (i10 == 1 || i10 == 2) {
                oJ("playable_stuck_check_ping", new JSONObject());
            }
            this.f12850so.postDelayed(this.dLZ, this.IUZ);
        }
    }

    public void ba(JSONObject jSONObject) {
        ZYk(2, jSONObject != null ? jSONObject.optString("error_msg", "The material directly invokes the exception pocket mask on the client") : "The material directly invokes the exception pocket mask on the client");
    }

    public so ex(boolean z10) {
        this.LE = z10;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("send_click", this.LE);
            oJ("change_playable_click", jSONObject);
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "setPlayableClick error", th2);
        }
        return this;
    }

    private void oJ(Context context, tB tBVar, com.bytedance.sdk.openadsdk.QSm.oJ oJVar) {
        this.QSm = UUID.randomUUID().toString();
        this.UF = context;
        this.EP = oJVar;
        this.YQ = tBVar;
        kkU.oJ(oJVar);
        this.oCU = new ba(this);
        cdg();
        if (this.VJm == null) {
            this.rJ = 4;
            this.f12850so.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.QSm.so.4
                @Override // java.lang.Runnable
                public void run() {
                    so.this.oJ(5, "webview is null");
                }
            });
        }
    }

    public void kkU(String str) {
        this.f12850so.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.QSm.so.2
            @Override // java.lang.Runnable
            public void run() {
                so.BTZ(so.this);
            }
        });
    }

    public void ba(boolean z10) {
        this.PQw = z10;
    }

    public so tB(boolean z10) {
        if (this.rJ == -1 || this.f12852uq == z10) {
            return this;
        }
        this.f12852uq = z10;
        JSONObject jSONObject = new JSONObject();
        try {
            if (!this.f12852uq) {
                jSONObject.put("playable_background_show_type", this.sH);
            }
        } catch (JSONException unused) {
        }
        tB(this.f12852uq ? "PL_sdk_viewable_true" : "PL_sdk_viewable_false", jSONObject);
        if (this.Jc == -1 && this.f12852uq) {
            this.Jc = System.currentTimeMillis();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("render_type", this.rJ == 1 ? 1 : 2);
                int i10 = this.rJ;
                if (i10 != -1) {
                    jSONObject2.put("webview_state", i10);
                }
            } catch (JSONException unused2) {
            }
            tB("PL_sdk_page_show", jSONObject2);
        }
        if (this.Jc != -1 && !this.f12852uq && !this.uaj) {
            this.uaj = true;
        }
        if (this.f12852uq) {
            this.nke = System.currentTimeMillis();
        } else if (this.nke != -1) {
            this.Ln += System.currentTimeMillis() - this.nke;
            this.nke = -1L;
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("viewStatus", this.f12852uq);
            oJ("viewableChange", jSONObject3);
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "setViewable error", th2);
        }
        if (this.f12852uq) {
            Jc();
        } else {
            UN();
        }
        return this;
    }

    public void ex(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.NO = jSONObject.optString("section");
        }
    }

    private String ex(String str, String str2) {
        String format = String.format("rubeex://playable-minigamelite?id=%1s&schema=%2s", str, Uri.encode(str2));
        this.oG = format;
        return format;
    }

    public void so(String str) {
        this.jXJ = 1;
        JSONObject jSONObject = new JSONObject();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            this.UN = currentTimeMillis;
            long j10 = this.Jc;
            jSONObject.put("playable_page_show_duration", j10 != -1 ? currentTimeMillis - j10 : 0L);
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "reportUrlLoadStart error", th2);
        }
        tB("PL_sdk_html_load_start", jSONObject);
        this.TNk = true;
        this.f12847pe = true;
        if (this.Wd) {
            LpP();
            this.TNk = false;
            this.f12847pe = false;
        }
        if (this.f12849si) {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                StringBuffer stringBuffer2 = new StringBuffer();
                StringBuffer stringBuffer3 = new StringBuffer();
                if (Pfn.oJ(this.UF, Pfn.BTZ)) {
                    stringBuffer.append("Microphone_");
                    stringBuffer2.append("1");
                    if (Pfn.ZYk(this.UF, "android.permission.RECORD_AUDIO")) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                    }
                } else {
                    stringBuffer2.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                    stringBuffer3.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                }
                if (Pfn.oJ(this.UF, Pfn.dLZ)) {
                    stringBuffer.append("Magetometer_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                    stringBuffer3.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                }
                if (Pfn.oJ(this.UF, Pfn.kkU)) {
                    stringBuffer.append("Accelerometer_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                    stringBuffer3.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                }
                if (Pfn.oJ(this.UF, Pfn.jFA)) {
                    stringBuffer.append("Gyro_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                    stringBuffer3.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                }
                if (Pfn.oJ(this.UF, Pfn.f12830so)) {
                    stringBuffer.append("Camera_");
                    stringBuffer2.append("1");
                    if (Pfn.ZYk(this.UF, "android.permission.CAMERA")) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                    }
                } else {
                    stringBuffer2.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                    stringBuffer3.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                }
                if (Pfn.oJ(this.UF, Pfn.cFZ)) {
                    stringBuffer.append("Photo");
                    stringBuffer2.append("1");
                    if (Pfn.oJ(this.UF)) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                    }
                } else {
                    stringBuffer2.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                    stringBuffer3.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("playable_available_hardware_name", stringBuffer.toString());
                jSONObject2.put("playable_available_hardware_code", stringBuffer2.toString());
                jSONObject2.put("playable_available_hardware_auth_code", stringBuffer3.toString());
                tB("PL_sdk_hardware_detect", jSONObject2);
                this.f12849si = false;
            } catch (Throwable th3) {
                cFZ.oJ("PlayablePlugin", "Hardware detect error", th3);
            }
        }
    }

    public JSONObject ex(String str, JSONObject jSONObject) {
        System.currentTimeMillis();
        if (cFZ.oJ() && jSONObject != null) {
            jSONObject.toString();
        }
        JSONObject oJ2 = this.oCU.oJ(str, jSONObject);
        if (cFZ.oJ()) {
            System.currentTimeMillis();
            if (oJ2 != null) {
                oJ2.toString();
            }
        }
        return oJ2;
    }

    public Map<String, String> ZYk() {
        return this.yQF;
    }

    public so ZYk(String str) {
        this.SCr = str;
        return this;
    }

    public so ZYk(boolean z10) {
        this.WGj = z10;
        return this;
    }

    public void oJ(View view) {
        if (view == null) {
            return;
        }
        try {
            this.bD = new WeakReference<>(view);
            ZYk(view);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this.Dc);
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "setViewForScreenSize error", th2);
        }
    }

    public so ZYk(long j10) {
        if (j10 <= 0) {
            this.HL = 10L;
        } else {
            this.HL = j10;
        }
        return this;
    }

    private void Pfn(String str, JSONObject jSONObject) {
        try {
            int i10 = this.VSB;
            if (i10 == 0) {
                if (this.uvK != oJ.LAND_PAGE && !BTZ(this.oG)) {
                    Rl();
                }
                jSONObject.put("playable_url", this.oG);
            } else {
                if (i10 != 3 && i10 != 4) {
                    if (i10 == 1 || i10 == 2) {
                        jSONObject.put("playable_url", tB(this.Amz, this.ypD));
                    }
                }
                jSONObject.put("playable_url", ex(this.SB, this.edj));
            }
            jSONObject.put("playable_render_type", this.VSB);
            if (this.EP != null) {
                if (this.VSB == 0 && (this.uvK != oJ.LAND_PAGE || BTZ(this.oG))) {
                    this.EP.oJ(jSONObject);
                } else if (this.VSB != 0) {
                    this.EP.oJ(jSONObject);
                }
            }
        } catch (JSONException unused) {
        }
    }

    public void ZYk(JSONObject jSONObject) {
        if (this.EP != null) {
            try {
                jSONObject.optBoolean("isPrevent", false);
            } catch (Exception unused) {
            }
        }
    }

    public Context oJ() {
        return this.UF;
    }

    public void ZYk(String str, String str2) {
        Bitmap oJ2;
        if (TextUtils.isEmpty(str2) || (oJ2 = Pfn.oJ(str2)) == null) {
            return;
        }
        MediaStore.Images.Media.insertImage(this.UF.getContentResolver(), oJ2, str, "");
    }

    public so oJ(String str, String str2) {
        this.yQF.put(str, str2);
        return this;
    }

    public so oJ(String str) {
        this.Uf = str;
        return this;
    }

    public void jFA(JSONObject jSONObject) {
        if (jSONObject != null) {
            boolean optBoolean = jSONObject.optBoolean("success", true);
            if (optBoolean) {
                this.jXJ = 3;
                Jc();
            } else {
                this.jXJ = -2;
            }
            if (optBoolean || !this.Id) {
                return;
            }
            this.Id = false;
            this.TNk = false;
            this.f12847pe = false;
            this.f12850so.removeCallbacks(this.jFA);
            this.f12850so.removeCallbacks(this.kkU);
            oJ(4, "CaseRenderFail");
        }
    }

    public so oJ(boolean z10) {
        this.yB = z10;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", this.yB);
            oJ("volumeChange", jSONObject);
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "setIsMute error", th2);
        }
        return this;
    }

    public so ZYk(int i10) {
        this.VSB = i10;
        return this;
    }

    public JSONObject cFZ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        int optInt = jSONObject.optInt("type", 0);
        JSONObject jSONObject2 = new JSONObject();
        if (optInt != 1) {
            if (optInt != 2) {
                return optInt != 3 ? jSONObject2 : WcQ();
            }
            return PiB();
        }
        return BTZ();
    }

    public void ZYk(int i10, String str) {
        this.lY = i10;
        if (this.UK == null) {
            this.UK = new JSONObject();
        }
        try {
            this.UK.put("playable_stuck_type", i10);
            this.UK.put("playable_stuck_reason", str);
            if (this.ofl > 0) {
                this.UK.put("playable_stuck_duration", System.currentTimeMillis() - this.ofl);
            } else {
                this.UK.put("playable_stuck_duration", 0L);
            }
        } catch (Throwable unused) {
        }
        tB("PL_sdk_page_stuck", this.UK);
        UN();
        if (this.EP == null || i10 != 2) {
            return;
        }
        this.UK = new JSONObject();
    }

    public so oJ(long j10) {
        if (j10 <= 0) {
            this.f12851tb = 10L;
        } else {
            this.f12851tb = j10;
        }
        return this;
    }

    public so Pfn(boolean z10) {
        this.Wd = z10;
        return this;
    }

    public void oJ(int i10) {
        this.rJ = i10;
    }

    public void oJ(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.QSm.oJ oJVar = this.EP;
        if (oJVar == null || oJVar.ZYk(jSONObject) || jSONObject == null) {
            return;
        }
        String optString = jSONObject.optString("resource_base64");
        if (TextUtils.isEmpty(optString)) {
            return;
        }
        int optInt = jSONObject.optInt("resource_type", -1);
        String optString2 = jSONObject.optString("resource_name", "playable_media");
        if (optInt == 1) {
            ZYk(optString2, optString);
        }
    }

    public so tB(JSONObject jSONObject) {
        this.eXp = jSONObject;
        return this;
    }

    private void tB(int i10, String str) {
        com.bytedance.sdk.openadsdk.QSm.oJ oJVar = this.EP;
        if (oJVar != null) {
            oJVar.oJ(i10, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ZYk(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Pfn(str, jSONObject);
    }

    public void oJ(String str, JSONObject jSONObject) {
        if (cFZ.oJ() && jSONObject != null) {
            jSONObject.toString();
        }
        tB tBVar = this.YQ;
        if (tBVar != null) {
            tBVar.oJ(str, jSONObject);
        }
    }

    private String tB(String str, String str2) {
        String queryParameter;
        String queryParameter2;
        if (TextUtils.isEmpty(this.XQY) && !TextUtils.isEmpty(this.YF)) {
            Uri parse = Uri.parse(this.YF);
            String host = parse.getHost();
            if (!"lynxview".equalsIgnoreCase(host) && (host == null || !host.contains("lynxview"))) {
                queryParameter = "";
                queryParameter2 = "";
            } else {
                queryParameter = parse.getQueryParameter("surl");
                queryParameter2 = parse.getQueryParameter("playable_hash");
            }
            Uri.Builder appendQueryParameter = new Uri.Builder().scheme(parse.getScheme()).authority(host).appendQueryParameter("surl", queryParameter);
            if (!TextUtils.isEmpty(queryParameter2)) {
                appendQueryParameter.appendQueryParameter("playable_hash", queryParameter2);
            }
            this.XQY = appendQueryParameter.toString();
        }
        return this.XQY;
    }

    public so oJ(float f10) {
        this.f12842ib = f10;
        return this;
    }

    protected void oJ(int i10, String str) {
        UN();
        tB(i10, str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_code", i10);
            jSONObject.put("playable_msg", str);
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "reportRenderFatal error", th2);
        }
        tB("PL_sdk_global_faild", jSONObject);
    }

    public void oJ(int i10, String str, String str2) {
        this.jXJ = -1;
        this.PdF = str2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_code", i10);
            jSONObject.put("playable_msg", str);
            jSONObject.put("playable_fail_url", str2);
            jSONObject.put("playable_has_show", ofl());
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "onWebReceivedError error", th2);
        }
        tB("PL_sdk_html_load_error", jSONObject);
        if (this.Id) {
            this.Id = false;
            this.TNk = false;
            this.f12847pe = false;
            this.f12850so.removeCallbacks(this.jFA);
            this.f12850so.removeCallbacks(this.kkU);
            oJ(1, "ContainerLoadFail");
        }
    }

    public void tB(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            if (!this.bgF && this.nQI > 0) {
                this.bgF = true;
            }
            if ("PL_sdk_html_load_start".equals(str) || "PL_sdk_html_load_finish".equals(str) || "PL_sdk_html_load_error".equals(str)) {
                jSONObject.put("usecache", this.PQw ? 1 : 0);
            }
            jSONObject.put("playable_event", str);
            jSONObject.put("playable_ts", System.currentTimeMillis());
            jSONObject.put("playable_viewable", this.f12852uq);
            jSONObject.put("playable_session_id", this.QSm);
            int i10 = this.VSB;
            if (i10 == 0) {
                if (this.uvK != oJ.LAND_PAGE && !BTZ(this.oG)) {
                    Rl();
                }
                jSONObject.put("playable_url", this.oG);
            } else {
                if (i10 != 3 && i10 != 4) {
                    if (i10 == 1 || i10 == 2) {
                        jSONObject.put("playable_url", tB(this.Amz, this.ypD));
                    }
                }
                jSONObject.put("playable_url", ex(this.SB, this.edj));
            }
            jSONObject.put("playable_full_url", this.YF);
            jSONObject.put("playable_replay_count", this.Yg);
            jSONObject.put("playable_is_prerender", this.WGj);
            jSONObject.put("playable_is_preload", this.bgF);
            jSONObject.put("playable_render_type", this.VSB);
            jSONObject.put("playable_scenes_type", this.uvK.ordinal());
            String str2 = "";
            jSONObject.put("playable_gecko_key", TextUtils.isEmpty(this.Amz) ? "" : this.Amz);
            if (!TextUtils.isEmpty(this.ypD)) {
                str2 = this.ypD;
            }
            jSONObject.put("playable_gecko_channel", str2);
            jSONObject.put("playable_sdk_version", "6.6.0");
            jSONObject.put("playable_minigamelite_id", this.SB);
            jSONObject.put("playable_minigamelite_schema", this.edj);
            jSONObject.put("playable_is_debug", this.UUI);
            jSONObject.put("playable_retry_count", this.mwH);
            jSONObject.put("playable_enter_from", this.oTd);
            jSONObject.put("playable_sequence", this.LS);
            jSONObject.put("playable_current_section", this.NO);
            jSONObject.put("is_playable_finish", this.jB);
            jSONObject.put("playable_card_session", this.HyG);
            jSONObject.put("playable_video_session", this.cdg);
            jSONObject.put("playable_network_type", eZI());
            jSONObject.put("playable_lynx_version", this.Xe);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("ad_extra_data", jSONObject);
            jSONObject2.put(ITTVideoEngineEventSource.KEY_TAG, this.f12846oq);
            jSONObject2.put("nt", 4);
            jSONObject2.put("category", "umeng");
            jSONObject2.put("is_ad_event", "1");
            jSONObject2.put("refer", "playable");
            jSONObject2.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, this.eXp.opt(BidResponsedEx.KEY_CID));
            jSONObject2.put("log_extra", this.eXp.opt("log_extra"));
            int i11 = this.VSB;
            if (i11 != -1 && i11 != -2) {
                if (this.EP != null) {
                    List<JSONObject> list = this.dZS;
                    if (list != null && !list.isEmpty()) {
                        for (JSONObject jSONObject3 : this.dZS) {
                            JSONObject optJSONObject = jSONObject3.optJSONObject("ad_extra_data");
                            if (optJSONObject != null) {
                                optJSONObject.put("playable_render_type", this.VSB);
                                optJSONObject.put("playable_url", this.oG);
                            }
                            this.EP.oJ(optJSONObject);
                        }
                        this.dZS.clear();
                    }
                    if (this.VSB == 0 && (this.uvK != oJ.LAND_PAGE || BTZ(this.oG))) {
                        this.EP.oJ(jSONObject);
                        return;
                    } else if (this.VSB != 0) {
                        this.EP.oJ(jSONObject);
                        return;
                    } else {
                        return;
                    }
                }
                return;
            }
            if (this.dZS == null) {
                this.dZS = new ArrayList();
            }
            this.dZS.add(jSONObject2);
        } catch (Throwable th2) {
            cFZ.oJ("PlayablePlugin", "reportEvent error", th2);
        }
    }

    public void oJ(boolean z10, String str, int i10) {
        if (z10) {
            this.jXJ = -1;
            this.PdF = str;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("playable_code", i10);
                jSONObject.put("playable_msg", "url load error");
                jSONObject.put("playable_fail_url", str);
                jSONObject.put("playable_has_show", ofl());
            } catch (Throwable th2) {
                cFZ.oJ("PlayablePlugin", "onWebReceivedHttpError error", th2);
            }
            tB("PL_sdk_html_load_error", jSONObject);
            if (this.Id) {
                this.Id = false;
                this.TNk = false;
                this.f12847pe = false;
                this.f12850so.removeCallbacks(this.jFA);
                this.f12850so.removeCallbacks(this.kkU);
                oJ(1, "ContainerLoadFail");
            }
        }
    }

    private so(Context context, int i10, tB tBVar, com.bytedance.sdk.openadsdk.QSm.oJ oJVar) {
        this.f12841ba = "playable_stuck_check_ping";
        this.cFZ = "playable_apply_media_permission_callback";
        this.f12850so = new Handler(Looper.getMainLooper());
        this.BTZ = new Handler(Looper.getMainLooper());
        this.eZI = true;
        this.f12849si = true;
        this.Ry = true;
        this.oJ = "PL_sdk_playable_global_viewable";
        this.ZYk = "PL_sdk_page_screen_blank";
        this.tB = "PL_sdk_playable_destroy_analyze_summary";
        this.ex = "PL_sdk_playable_hardware_dialog_cancel";
        this.Pfn = "PL_sdk_playable_hardware_dialog_setting";
        this.RZ = new HashSet(Arrays.asList("adInfo", "appInfo", "subscribe_app_ad", "download_app_ad"));
        this.QSm = null;
        this.f12846oq = "embeded_ad";
        this.Id = true;
        this.cY = true;
        this.f12843jr = false;
        this.Xe = "";
        this.f12851tb = 10L;
        this.HL = 10L;
        this.IUZ = 700;
        this.Ln = 0L;
        this.LpP = 0L;
        this.nke = -1L;
        this.Jc = -1L;
        this.UN = -1L;
        this.f12844mu = -1L;
        this.XAo = -1L;
        this.ofl = -1L;
        this.f12853wd = -1L;
        this.HyG = "";
        this.cdg = "";
        this.Rl = "";
        this.Jm = "";
        this.Qu = 0;
        this.nQI = 0;
        this.bgF = false;
        this.Yg = 0;
        this.lY = -1;
        this.mwH = 0;
        this.oTd = 0;
        this.LS = 0;
        this.NO = null;
        this.jB = false;
        this.yz = 0;
        this.sH = 0;
        this.Dex = 0;
        this.oIC = 0;
        this.MoK = 0L;
        this.TA = 0L;
        this.VSB = -2;
        this.jXJ = 0;
        this.BHY = 0;
        this.SWT = 0;
        this.zGT = new JSONObject();
        this.yQF = new HashMap();
        this.eXp = new JSONObject();
        this.YF = "";
        this.JJ = 0.0f;
        this.hwh = 0.0f;
        this.uaj = false;
        this.UUI = false;
        this.eW = false;
        this.dZS = new ArrayList();
        this.Wd = true;
        this.TNk = true;
        this.f12847pe = true;
        this.Dc = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.QSm.so.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                try {
                    View view = (View) so.this.bD.get();
                    if (view != null) {
                        so.this.ZYk(view);
                    }
                } catch (Throwable th2) {
                    cFZ.oJ("PlayablePlugin", "onSizeChanged error", th2);
                }
            }
        };
        this.rJ = -1;
        this.VSB = i10;
        this.uvK = oJ.LAND_PAGE;
        oJ(context, tBVar, oJVar);
    }

    public static so oJ(Context context, @Nullable WebView webView, tB tBVar, com.bytedance.sdk.openadsdk.QSm.oJ oJVar) {
        if (tBVar == null || oJVar == null) {
            return null;
        }
        if (webView == null) {
            return new so(context, 0, tBVar, oJVar);
        }
        return new so(context, webView, tBVar, oJVar, oJ.LAND_PAGE);
    }
}
