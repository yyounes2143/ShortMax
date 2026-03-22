package com.bytedance.sdk.openadsdk.core.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.applovin.impl.sb;
import com.applovin.sdk.AppLovinMediationProvider;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.settings.BTZ;
import com.bytedance.sdk.openadsdk.core.settings.Pfn;
import com.bytedance.sdk.openadsdk.core.settings.TTSdkSettings;
import com.bytedance.sdk.openadsdk.core.settings.dLZ;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.ex.oJ.WcQ;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.pgl.ssdk.ces.out.PglSSConfig;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.vungle.ads.internal.model.Cookie;
import com.vungle.ads.internal.signals.SignalManager;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class PiB implements ba, dLZ.oJ {
    private static String IUZ;
    private Pfn.ZYk<JSONObject> HL;
    private final BroadcastReceiver Id;
    private final com.bytedance.sdk.openadsdk.core.settings.oJ PiB;
    private boolean RZ;
    private int Ry;
    private final kkU WcQ;
    private final Set<String> Xe;
    private final AtomicBoolean awB;
    final Pfn.ZYk<ConcurrentHashMap<String, Integer>> cFZ;
    private final Runnable cY;
    private volatile boolean eZI;

    /* renamed from: jr  reason: collision with root package name */
    private final Pfn.ZYk<Map<String, Integer>> f13244jr;
    private Set<String> kkU;

    /* renamed from: si  reason: collision with root package name */
    private int f13245si;

    /* renamed from: so  reason: collision with root package name */
    Pfn.ZYk<WcQ> f13246so;

    /* renamed from: tb  reason: collision with root package name */
    private final Pfn.ZYk<Set<String>> f13247tb;
    public static final String oJ = sb.a("_", new CharSequence[]{"bus_con_collect", HyG.Ln()});
    public static final String ZYk = sb.a("_", new CharSequence[]{"bus_con", HyG.Ln(), HyG.IUZ(), "timeout"});
    public static final String tB = sb.a("_", new CharSequence[]{"bus_con", HyG.Ln(), HyG.IUZ(), "alpha"});
    private static final String jFA = HyG.Id();
    private static final com.bytedance.sdk.component.so.so dLZ = new com.bytedance.sdk.component.so.so("TemplateReInitTask") { // from class: com.bytedance.sdk.openadsdk.core.settings.PiB.1
        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.component.adexpress.oJ.ZYk.Pfn.ZYk().jFA();
            com.bytedance.sdk.component.adexpress.oJ.ZYk.Pfn.ZYk().ZYk(false);
            com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.ZYk();
            com.bytedance.sdk.component.adexpress.oJ.ZYk.Pfn.ZYk().tB();
        }
    };
    public static String ex = "";
    public static String Pfn = "IABTCF_TCString";
    private static boolean BTZ = false;
    private static final ConcurrentLinkedQueue<BTZ.oJ> QSm = new ConcurrentLinkedQueue<>();

    /* renamed from: oq  reason: collision with root package name */
    private static final so f13243oq = new so();

    /* renamed from: ba  reason: collision with root package name */
    static final ConcurrentHashMap<String, Integer> f13242ba = new ConcurrentHashMap<>();

    /* renamed from: com.bytedance.sdk.openadsdk.core.settings.PiB$9  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 extends BroadcastReceiver {
        private final Runnable ZYk = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.PiB.9.1
            @Override // java.lang.Runnable
            public void run() {
                ofl.ZYk(new com.bytedance.sdk.component.so.so("LoadLocalData") { // from class: com.bytedance.sdk.openadsdk.core.settings.PiB.9.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            PiB.this.ZYk();
                        } catch (Exception unused) {
                        }
                    }
                });
            }
        };

        AnonymousClass9() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            if (intent == null) {
                return;
            }
            ofl.ZYk(new com.bytedance.sdk.component.so.so("setting_receiver") { // from class: com.bytedance.sdk.openadsdk.core.settings.PiB.9.2
                @Override // java.lang.Runnable
                public void run() {
                    String action = intent.getAction();
                    if ("_tryFetRemoDat".equals(action)) {
                        PiB.this.oJ(intent.getIntExtra("_source", 0), intent.getBooleanExtra("_force", false));
                    } else if ("_dataChanged".equals(action)) {
                        com.bytedance.sdk.component.utils.jFA.oJ().removeCallbacks(AnonymousClass9.this.ZYk);
                        com.bytedance.sdk.component.utils.jFA.oJ().postDelayed(AnonymousClass9.this.ZYk, 10000L);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class oJ {
        static final PiB oJ = new PiB();
    }

    private String NX() {
        return this.WcQ.oJ("force_language", "");
    }

    private Set<String> Zjw() {
        return (Set) this.WcQ.oJ("perf_con_applog_send", this.Xe, this.f13247tb);
    }

    public static boolean Zzm() {
        return BTZ;
    }

    @Nullable
    private static SharedPreferences ex(Context context) {
        try {
            return PreferenceManager.getDefaultSharedPreferences(context);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void hwh() {
        Context oJ2;
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB() && (oJ2 = si.oJ()) != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(oJ2.getPackageName());
                intent.setAction("_dataChanged");
                oJ2.sendBroadcast(intent);
            } catch (Throwable th2) {
                QSm.oJ("TTAD.SdkSettings", "", th2);
            }
        }
    }

    public static ba ib() {
        if (si.oJ() == null) {
            IllegalStateException illegalStateException = new IllegalStateException("context is null");
            Log.e("TTAD.SdkSettings", "context is null", illegalStateException);
            ApmHelper.reportCustomError("context is null", "context is null", illegalStateException);
            return f13243oq;
        }
        return oJ.oJ;
    }

    public static String oo() {
        if (IUZ == null) {
            String ZYk2 = com.bytedance.sdk.openadsdk.core.tB.oJ().ZYk("settings_host_from_meta", "");
            IUZ = ZYk2;
            if (ZYk2 == null) {
                IUZ = "";
            }
        }
        return IUZ;
    }

    private static int tB(boolean z10) {
        return z10 ? 20 : 5;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean BHY() {
        return this.WcQ.oJ(oJ, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int BTZ() {
        Zjw();
        return this.Ry;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean BWx() {
        if (this.WcQ.oJ("token_enable", 0) != 1) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int Dex() {
        return this.WcQ.oJ("perf_con_thread_stack_size", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int EP() {
        return this.WcQ.oJ("perf_con_drawable_code", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int HL(String str) {
        Integer num;
        Map map = (Map) this.WcQ.oJ("perf_con_applog_rate", null, this.f13244jr);
        if (map == null || (num = (Integer) map.get(str)) == null || num.intValue() < 0 || num.intValue() > 100) {
            return 100;
        }
        return num.intValue();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int HyG() {
        int oJ2 = this.WcQ.oJ("privacy_personalized_ad", Integer.MAX_VALUE);
        if (oJ2 != Integer.MAX_VALUE) {
            return oJ2;
        }
        int jr2 = HyG.jr();
        if (jr2 == 1 || jr2 == 2) {
            return 2;
        }
        if (jr2 == 3) {
            return 1;
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String IUZ() {
        return this.WcQ.oJ("ads_url", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public cFZ Id() {
        return (cFZ) this.WcQ.oJ("insert_js_config", cFZ.oJ, new Pfn.ZYk<cFZ>() { // from class: com.bytedance.sdk.openadsdk.core.settings.PiB.8
            @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.ZYk
            /* renamed from: oJ */
            public cFZ ZYk(String str) {
                return new cFZ(str);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String JJ() {
        return this.WcQ.oJ("target_region", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int Jc() {
        return this.WcQ.oJ("ivrv_downward", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean Jm() {
        return this.WcQ.oJ("bus_con_dislike_report_raw", false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int LS() {
        return this.WcQ.oJ("blank_detect_rate", 30);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String Ln() {
        return this.WcQ.oJ("settings_url", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String LpP() {
        return this.WcQ.oJ("app_log_url", "");
    }

    public long MVA() {
        return this.WcQ.oJ("last_req_time", 0L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public long MoK() {
        return this.WcQ.oJ("perf_con_adlog_expire_time", 0L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public JSONObject NO() {
        return (JSONObject) this.WcQ.oJ("video_cache_config", null, Pfn.oJ);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public void PdF() {
        Pfn.oJ oJ2 = this.WcQ.oJ();
        oJ2.oJ("settings_url", "");
        oJ2.oJ();
        Ln("");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    @Nullable
    public JSONObject Pfn() {
        return (JSONObject) this.WcQ.oJ("digest", null, Pfn.oJ);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int PiB() {
        Zjw();
        return this.f13245si;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public long QSm() {
        return this.WcQ.oJ("duration", 10000L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean Qu() {
        if (this.WcQ.oJ("privacy_debug_unlock", 1) != 0) {
            return true;
        }
        return false;
    }

    public long Qzd() {
        long oJ2 = this.WcQ.oJ("req_inter_min", TTAdConstant.AD_MAX_EVENT_TIME);
        if (oJ2 < 0 || oJ2 > SignalManager.TWENTY_FOUR_HOURS_MILLIS) {
            return TTAdConstant.AD_MAX_EVENT_TIME;
        }
        return oJ2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean RZ() {
        return this.WcQ.oJ("landingpage_new_style", -1) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean Rl() {
        if (this.WcQ.oJ("bus_con_sec_type", Integer.MAX_VALUE) != 0) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String Ry() {
        return this.WcQ.oJ("ab_test_param", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean SCr() {
        if (this.WcQ.oJ("bus_con_url_check", 1) != 0) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int SWT() {
        return this.WcQ.oJ(ZYk, 10000);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean TA() {
        if (this.WcQ.oJ("perf_con_adlog_turn_off_retry_ad", 0) != 1) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean UF() {
        if (this.WcQ.oJ("perf_con_use_new_thread_pool", 0) != 1) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean UK() {
        if (this.WcQ.oJ("perf_con_adlog_turn_off_retry_stats", 0) != 1) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String UN() {
        return this.WcQ.oJ("dyn_draw_engine_url", jFA);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String Uf() {
        return this.WcQ.oJ("bus_con_check_clz", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String VJm() {
        return this.WcQ.oJ("dual_event_url", (String) null);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int VSB() {
        int oJ2 = this.WcQ.oJ("bus_con_token_thread_count", 4);
        if (oJ2 <= 0 || oJ2 > 30) {
            return 4;
        }
        return oJ2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean WcQ() {
        return this.WcQ.oJ("allow_blind_mode_request_ad", false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int Wek() {
        return this.WcQ.oJ("perf_con_close_button_delay_check_time", -1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int XAo() {
        return this.WcQ.oJ("isGdprUser", -1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public Set<String> XQY() {
        return (Set) this.WcQ.oJ("privacy_fields_allowed", Collections.emptySet(), Pfn.ZYk);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int Xe() {
        int oJ2 = this.WcQ.oJ("fetch_tpl_second", 0);
        if (oJ2 <= 0) {
            return 0;
        }
        return oJ2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean YF() {
        return this.WcQ.oJ("privacy_app_reg", true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public JSONObject YQ() {
        return (JSONObject) this.WcQ.oJ("perf_con_thread_pool_config", new JSONObject(), this.HL);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean Yg() {
        if (this.WcQ.oJ("read_video_from_cache", 1) == 1) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean awB() {
        return this.WcQ.oJ("support_gzip", false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int bD() {
        int oJ2 = this.WcQ.oJ("bus_con_auto_click_delay", 3000);
        if (oJ2 <= 0) {
            return 3000;
        }
        return oJ2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public long ba() {
        return this.WcQ.oJ("data_time", 0L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean bgF() {
        if (this.WcQ.oJ("global_rate", 1.0f) == 1.0f) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public void cFZ() {
        this.WcQ.oJ().oJ("tt_sdk_settings").oJ("ab_test_param").oJ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String cY() {
        return this.WcQ.oJ("playableLoadH5Url", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean cdg() {
        int oJ2 = this.PiB.oJ("perf_con_apm", 100);
        if (oJ2 == 0) {
            return false;
        }
        if (oJ2 >= 0 && oJ2 < 100 && oJ2 <= ((int) (Math.random() * 100.0d))) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public Set<String> dLZ() {
        return Zjw();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean eXp() {
        if (this.WcQ.oJ("bus_con_video_keep_screen_on", 1) == 1) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean eZI() {
        return this.WcQ.oJ("ad_revenue_enable", true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean jB() {
        if (!com.bytedance.sdk.component.adexpress.ex.ZYk.oJ(si.oJ())) {
            return false;
        }
        return this.WcQ.oJ("support_rtl", false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String jFA() {
        return this.WcQ.oJ("ab_test_version", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String jXJ() {
        return this.WcQ.oJ("bus_con_express_host", "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int jr() {
        int oJ2 = this.WcQ.oJ("fetch_tpl_timeout_ctrl", 3000);
        if (oJ2 <= 0) {
            return 3000;
        }
        return oJ2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int kkU() {
        return this.WcQ.oJ("splash_video_load_strategy", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int lY() {
        int oJ2 = this.WcQ.oJ("perf_con_webview_cache_count", 0);
        if (oJ2 < 0) {
            return 0;
        }
        return oJ2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String mu() {
        return this.WcQ.oJ("dc", "TX");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int mwH() {
        int oJ2 = this.WcQ.oJ("perf_con_webview_cache_count_v3", 0);
        if (oJ2 < 0) {
            return 0;
        }
        return oJ2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean nQI() {
        return this.eZI;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String nke() {
        return this.WcQ.oJ("policy_url", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public WcQ oCU() {
        return (WcQ) this.WcQ.oJ("perf_con_track_url_strategy", WcQ.oJ, this.f13246so);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public Set<String> oG() {
        return (Set) this.WcQ.oJ("perf_con_drop2rt_skip_label_list", Collections.emptySet(), Pfn.ZYk);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean oIC() {
        return this.WcQ.oJ("bus_con_adshow_check_enable", true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String[] oTd() {
        Set<String> set;
        try {
            set = this.kkU;
        } catch (Throwable unused) {
        }
        if (set == null || set.size() == 0) {
            JSONArray jSONArray = new JSONArray(this.WcQ.oJ("gecko_hosts", (String) null));
            if (jSONArray.length() != 0) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    this.kkU.add(jSONArray.getString(i10));
                }
            }
            Set<String> oJ2 = kkU.oJ(this.kkU);
            this.kkU = oJ2;
            if (oJ2 != null) {
                if (oJ2.size() == 0) {
                }
            }
            return null;
        }
        return (String[]) this.kkU.toArray(new String[0]);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int ofl() {
        return this.WcQ.oJ("vbtt", 5);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int oq() {
        return this.WcQ.oJ(AppLovinMediationProvider.MAX, 50);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean sH() {
        if (this.WcQ.oJ("perf_con_apm_native", Integer.MAX_VALUE) == 1) {
            return true;
        }
        return false;
    }

    void sQ() {
        if (!dLZ.oJ()) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.WcQ.ZYk().removeCallbacks(this.cY);
        com.bytedance.sdk.openadsdk.core.WcQ.ZYk().postDelayed(this.cY, Qzd());
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int si() {
        return this.WcQ.oJ("loadedCallbackOpportunity", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean so() {
        return this.WcQ.oJ("if_both_open", 0) == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public void tb() {
        String NX = NX();
        if (TextUtils.isEmpty(NX)) {
            return;
        }
        if (NX.equals("zh-Hant")) {
            com.bytedance.sdk.component.utils.BTZ.oJ(si.oJ(), "zh", "tw");
        } else {
            com.bytedance.sdk.component.utils.BTZ.oJ(si.oJ(), NX, null);
        }
        try {
            TTAdDislikeToast.onResourceUpdated();
        } catch (Throwable th2) {
            QSm.tB("TTAD.SdkSettings", th2.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int uvK() {
        return this.WcQ.oJ("bus_con_behavior_count", 300);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean wd() {
        int oJ2 = this.WcQ.oJ("privacy_ad_enable", Integer.MAX_VALUE);
        if (oJ2 == 1) {
            return true;
        }
        if (oJ2 == 0) {
            return false;
        }
        int jr2 = HyG.jr();
        if (jr2 == 1 || jr2 == 2 || jr2 == 3) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean yQF() {
        if (this.WcQ.oJ("perf_con_is_new_net_thread", 0) != 1) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int yz() {
        return this.WcQ.oJ("bus_con_send_log_type", 1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public float zGT() {
        return this.WcQ.oJ(tB, 1.0f);
    }

    private PiB() {
        this.kkU = Collections.synchronizedSet(new HashSet());
        this.PiB = new com.bytedance.sdk.openadsdk.core.settings.oJ();
        this.WcQ = new kkU(new BTZ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.settings.PiB.5
            @Override // com.bytedance.sdk.openadsdk.core.settings.BTZ.oJ
            public void ZYk() {
                if (PiB.QSm != null && !PiB.QSm.isEmpty()) {
                    Iterator it = PiB.QSm.iterator();
                    while (it.hasNext()) {
                        ((BTZ.oJ) it.next()).ZYk();
                    }
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.settings.BTZ.oJ
            public void oJ() {
                BTZ.oJ[] oJVarArr;
                boolean unused = PiB.BTZ = true;
                if (PiB.QSm != null && PiB.QSm.size() != 0 && (oJVarArr = (BTZ.oJ[]) PiB.QSm.toArray()) != null) {
                    for (BTZ.oJ oJVar : oJVarArr) {
                        oJVar.oJ();
                    }
                }
            }
        });
        this.awB = new AtomicBoolean(false);
        this.eZI = false;
        this.f13245si = 5000;
        this.Ry = 10;
        AnonymousClass9 anonymousClass9 = new AnonymousClass9();
        this.Id = anonymousClass9;
        this.cY = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.PiB.10
            @Override // java.lang.Runnable
            public void run() {
                PiB.this.ex(2);
                PiB.this.sQ();
            }
        };
        this.cFZ = new Pfn.ZYk<ConcurrentHashMap<String, Integer>>() { // from class: com.bytedance.sdk.openadsdk.core.settings.PiB.11
            @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.ZYk
            /* renamed from: oJ */
            public ConcurrentHashMap<String, Integer> ZYk(String str) {
                if (TextUtils.isEmpty(str)) {
                    return PiB.f13242ba;
                }
                ConcurrentHashMap<String, Integer> concurrentHashMap = new ConcurrentHashMap<>();
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        int optInt = jSONObject.optInt(next, 100);
                        if (!TextUtils.isEmpty(next) && optInt >= 0 && optInt <= 100) {
                            concurrentHashMap.put(next, Integer.valueOf(optInt));
                        }
                    }
                } catch (JSONException e10) {
                    Log.i("TTAD.SdkSettings", e10.getMessage());
                }
                return concurrentHashMap;
            }
        };
        this.f13244jr = new Pfn.ZYk<Map<String, Integer>>() { // from class: com.bytedance.sdk.openadsdk.core.settings.PiB.12
            @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.ZYk
            /* renamed from: oJ */
            public Map<String, Integer> ZYk(String str) {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    HashMap hashMap = new HashMap(jSONObject.length());
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        if (!TextUtils.isEmpty(next)) {
                            int optInt = jSONObject.optInt(next, 100);
                            if (optInt >= 0 && optInt <= 100) {
                                hashMap.put(next, Integer.valueOf(optInt));
                            } else {
                                hashMap.put(next, 100);
                            }
                        }
                    }
                    return hashMap;
                } catch (Exception e10) {
                    QSm.tB("get applog rate from sp failed:" + e10.getMessage(), new Object[0]);
                    return null;
                }
            }
        };
        this.Xe = new HashSet();
        this.f13247tb = new Pfn.ZYk<Set<String>>() { // from class: com.bytedance.sdk.openadsdk.core.settings.PiB.2
            @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.ZYk
            /* renamed from: oJ */
            public Set<String> ZYk(String str) {
                HashSet hashSet = new HashSet();
                if (!TextUtils.isEmpty(str)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        int optInt = jSONObject.optInt("applog_count");
                        if (optInt >= 2 && optInt <= 100) {
                            PiB.this.Ry = optInt;
                        }
                        int optInt2 = jSONObject.optInt("applog_interval");
                        if (optInt2 >= 100 && optInt2 <= 30000) {
                            PiB.this.f13245si = optInt2;
                        }
                        JSONArray jSONArray = jSONObject.getJSONArray("core_label_arr");
                        if (jSONArray != null) {
                            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                                String string = jSONArray.getString(i10);
                                if (!TextUtils.isEmpty(string)) {
                                    hashSet.add(string);
                                }
                            }
                        }
                    } catch (JSONException e10) {
                        Log.i("TTAD.SdkSettings", e10.getMessage());
                    }
                }
                if (hashSet.size() == 0) {
                    return new HashSet(Arrays.asList("click", "show", "insight_log", "mrc_show"));
                }
                return hashSet;
            }
        };
        this.HL = new Pfn.ZYk<JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.settings.PiB.3
            @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.ZYk
            /* renamed from: oJ */
            public JSONObject ZYk(String str) {
                JSONObject jSONObject;
                try {
                    jSONObject = new JSONObject(str);
                } catch (Throwable th2) {
                    QSm.tB("TTAD.SdkSettings", th2.getMessage());
                    jSONObject = null;
                }
                if (jSONObject == null) {
                    return new JSONObject();
                }
                return jSONObject;
            }
        };
        this.f13246so = new Pfn.ZYk<WcQ>() { // from class: com.bytedance.sdk.openadsdk.core.settings.PiB.4
            @Override // com.bytedance.sdk.openadsdk.core.settings.Pfn.ZYk
            /* renamed from: oJ */
            public WcQ ZYk(String str) {
                WcQ wcQ = new WcQ();
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    wcQ.oJ(jSONObject.optInt("enable_strategy", 0) == 1);
                    wcQ.oJ(oJ(jSONObject.optJSONObject(DataLoaderHelper.PRELOAD_DEFAULT_SCENE)));
                    JSONObject optJSONObject = jSONObject.optJSONObject("adid_configs");
                    if (optJSONObject != null) {
                        Iterator<String> keys = optJSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            wcQ.oJ(next, oJ(optJSONObject.getJSONObject(next)));
                        }
                    }
                } catch (Exception unused) {
                }
                return wcQ;
            }

            private WcQ.oJ oJ(JSONObject jSONObject) {
                if (jSONObject != null) {
                    return new WcQ.oJ(jSONObject.optInt("retry_times", -1), jSONObject.optInt("time_interval", -1));
                }
                return null;
            }
        };
        try {
            Context oJ2 = si.oJ();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("_dataChanged");
            if (Build.VERSION.SDK_INT >= 33) {
                oJ2.registerReceiver(anonymousClass9, intentFilter, 4);
            } else {
                oJ2.registerReceiver(anonymousClass9, intentFilter);
            }
        } catch (Exception e10) {
            QSm.oJ("TTAD.SdkSettings", "", e10);
        }
    }

    public static void Ln(String str) {
        if (str == null) {
            str = "";
        }
        String oo2 = oo();
        if (oo2 == null || !oo2.equals(str)) {
            com.bytedance.sdk.openadsdk.core.tB.oJ().oJ("settings_host_from_meta", str);
            IUZ = str;
            ib().oJ(8, true);
        }
    }

    public static String tB(Context context) {
        SharedPreferences ex2;
        return (context == null || (ex2 = ex(context)) == null) ? "" : ex2.getString(Pfn, "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean IUZ(String str) {
        Set set;
        if (TextUtils.isEmpty(str) || (set = (Set) this.WcQ.oJ("token_adx_ids", Collections.emptySet(), Pfn.ZYk)) == null || set.size() == 0) {
            return false;
        }
        return set.contains(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int Id(String str) {
        return Xe(str).IUZ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean Pfn(String str) {
        return Xe(str).cFZ == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int QSm(String str) {
        return Xe(str).f13253tb;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean RZ(String str) {
        return Xe(str).f13250oq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int Ry(String str) {
        return Xe(str).QSm;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int WcQ(String str) {
        return Xe(str).kkU;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    @NonNull
    public ZYk Xe(String str) {
        return tB.oJ(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean awB(String str) {
        return Xe(str).Id == 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int ba(String str) {
        return Xe(str).Ry;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean cFZ(String str) {
        return str == null || Xe(str).WcQ == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean cY(String str) {
        return Xe(str).nke;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean dLZ(String str) {
        try {
            return Xe(str).cY != null;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean eZI(String str) {
        return str == null || DeviceUtils.kkU(si.oJ()) == 0 || Xe(str).PiB == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int ex() {
        return this.WcQ.oJ("max_tpl_cnts", 100);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int jFA(String str) {
        return Xe(str).dLZ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean jr(String str) {
        return si.ex().Xe(str).awB == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int kkU(String str) {
        return Xe(str).BTZ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int oq(String str) {
        return Xe(str).HL;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public JSONObject si(String str) {
        JSONObject jSONObject = null;
        try {
            JSONObject jSONObject2 = new JSONObject(this.WcQ.oJ("core_settings", ""));
            try {
                jSONObject2.put("ad_slot_setting", Xe(str).UN);
                return jSONObject2;
            } catch (JSONException e10) {
                e = e10;
                jSONObject = jSONObject2;
                QSm.tB("TTAD.SdkSettings", "getCoreSettingJsonObj", e.getMessage());
                return jSONObject;
            }
        } catch (JSONException e11) {
            e = e11;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int so(String str) {
        if (str == null) {
            return 1500;
        }
        return Xe(str).eZI;
    }

    private static void ZYk(int i10, boolean z10) {
        Context oJ2 = si.oJ();
        if (oJ2 != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(oJ2.getPackageName());
                intent.setAction("_tryFetRemoDat");
                intent.putExtra("_force", z10);
                intent.putExtra("_source", i10);
                oJ2.sendBroadcast(intent);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int BTZ(String str) {
        return Xe(String.valueOf(str)).f13252so;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean PiB(String str) {
        return BTZ(str) != 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean ex(String str) {
        int i10 = Xe(str).Pfn;
        if (i10 != 1) {
            return i10 == 2 && Ry.tB(si.oJ()) != 0;
        }
        return Ry.ex(si.oJ());
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public void oJ() {
        try {
            tB.oJ();
            this.WcQ.tB();
            this.PiB.tB();
            Context oJ2 = si.oJ();
            File file = new File(new File(oJ2.getDataDir(), "shared_prefs"), "tt_sdk_settings.xml");
            if (file.exists() && file.isFile()) {
                oJ2.deleteSharedPreferences(file.getName().replace(".xml", ""));
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean HL() {
        return this.WcQ.ZYk();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public String tB() {
        return this.WcQ.oJ("aes_key", "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean tB(String str) {
        return Xe(str).Ln;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public void ex(@TTSdkSettings.FETCH_REQUEST_SOURCE int i10) {
        oJ(i10, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int tB(int i10) {
        return Xe(String.valueOf(i10)).jFA;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean tb(@NonNull String str) {
        Set set = (Set) this.WcQ.oJ("privacy_fields_allowed", Collections.emptySet(), Pfn.ZYk);
        if (set.isEmpty()) {
            int jr2 = HyG.jr();
            if (jr2 != 1) {
                if (jr2 != 2 && jr2 != 3) {
                    return false;
                }
                if (!"mcc".equals(str) && !"mnc".equals(str)) {
                    return false;
                }
            }
            return true;
        }
        return set.contains(str);
    }

    public static int ZYk(Context context) {
        SharedPreferences ex2;
        if (context == null || (ex2 = ex(context)) == null) {
            return -2;
        }
        int i10 = ex2.getInt("IABTCF_CmpSdkID", Integer.MIN_VALUE);
        int i11 = ex2.getInt("IABTCF_CmpSdkVersion", Integer.MIN_VALUE);
        if (i10 == Integer.MIN_VALUE && i11 == Integer.MIN_VALUE) {
            return -2;
        }
        return ex2.getInt(Cookie.IABTCF_GDPR_APPLIES, -1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public void oJ(JSONObject jSONObject, Pfn.oJ oJVar) {
        if (jSONObject == null || !jSONObject.has("dyn_draw_engine_url")) {
            return;
        }
        kkU kku = this.WcQ;
        String str = jFA;
        String oJ2 = kku.oJ("dyn_draw_engine_url", str);
        final String optString = jSONObject.optString("dyn_draw_engine_url", str);
        if (!TextUtils.isEmpty(oJ2) && !TextUtils.isEmpty(optString) && !optString.equals(oJ2)) {
            com.bytedance.sdk.openadsdk.core.WcQ.ZYk().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.PiB.7
                @Override // java.lang.Runnable
                public void run() {
                    if (!TextUtils.equals(PiB.this.WcQ.oJ("dyn_draw_engine_url", PiB.jFA), optString)) {
                        return;
                    }
                    com.bytedance.sdk.component.adexpress.oJ.ZYk.Pfn.ZYk().tB();
                }
            }, 5000L);
        }
        oJVar.oJ("dyn_draw_engine_url", optString);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    @WorkerThread
    public synchronized void ZYk() {
        SystemClock.elapsedRealtime();
        boolean z10 = this.eZI;
        this.PiB.oJ(this.eZI);
        this.WcQ.oJ(this.eZI);
        tB.oJ(!z10);
        this.eZI = true;
        SystemClock.elapsedRealtime();
        if (!z10) {
            com.bytedance.sdk.openadsdk.core.WcQ.ZYk().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.PiB.6
                @Override // java.lang.Runnable
                public void run() {
                    if (dLZ.oJ()) {
                        PiB.this.ex(1);
                        PiB.this.sQ();
                        return;
                    }
                    com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ().ZYk();
                }
            }, 1000L);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int oJ(String str) {
        if (str == null) {
            return 0;
        }
        return si.ex().Xe(str).RZ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int oJ(String str, int i10) {
        Integer num;
        Map map = (Map) this.WcQ.oJ("perf_con_stats_rate", f13242ba, this.cFZ);
        return (map == null || (num = (Integer) map.get(str)) == null || num.intValue() < 0 || num.intValue() > 100) ? i10 : num.intValue();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public void ZYk(JSONObject jSONObject, Pfn.oJ oJVar) {
        if (jSONObject.has("is_gdpr_user")) {
            int i10 = -1;
            int optInt = jSONObject.optInt("is_gdpr_user", -1);
            if (optInt == -1 || optInt == 1 || optInt == 0) {
                i10 = optInt;
            }
            oJVar.oJ("isGdprUser", i10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int oJ(String str, boolean z10) {
        if (str == null) {
            return tB(z10);
        }
        int i10 = Xe(str).Xe;
        return i10 != -1 ? i10 : tB(z10);
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean ZYk(String str) {
        return Xe(str).tB == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int ZYk(int i10) {
        return Xe(String.valueOf(i10)).ZYk;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public int oJ(int i10) {
        return Xe(String.valueOf(i10)).Jc;
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public void oJ(long j10) {
        this.WcQ.oJ().oJ("last_req_time", j10).oJ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public void oJ(@TTSdkSettings.FETCH_REQUEST_SOURCE int i10, boolean z10) {
        if (!com.bytedance.sdk.openadsdk.core.WcQ.Pfn() && i10 != 1 && i10 != 2) {
            if (z10) {
                this.RZ = true;
                return;
            }
            return;
        }
        try {
            if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.jFA.ZYk().ex())) {
                return;
            }
            if (this.RZ) {
                this.RZ = false;
                if (!z10) {
                    z10 = true;
                }
            }
            long MVA = MVA();
            long currentTimeMillis = System.currentTimeMillis();
            long Qzd = Qzd();
            long j10 = currentTimeMillis - MVA;
            if (z10 || j10 >= Qzd) {
                if (!dLZ.oJ()) {
                    ZYk(i10, z10);
                } else if (this.awB.compareAndSet(false, true)) {
                    ofl.ZYk((com.bytedance.sdk.component.so.so) new dLZ(this, this.WcQ, this.PiB));
                    com.bytedance.sdk.openadsdk.core.WcQ.ZYk().removeCallbacks(this.cY);
                }
            }
        } catch (Throwable th2) {
            ApmHelper.reportCustomError("settings request error", "settings", th2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.dLZ.oJ
    public void oJ(boolean z10) {
        this.awB.set(false);
        sQ();
        if (z10) {
            HashMap hashMap = new HashMap();
            Set<String> XQY = XQY();
            if (XQY != null && !XQY.isEmpty()) {
                hashMap.put(PglSSConfig.CUSTOMINFO_KEY_ALLOWED_FIELDS, XQY);
            }
            String Ry = HyG.Ry();
            if (!TextUtils.isEmpty(Ry)) {
                hashMap.put(PglSSConfig.CUSTOMINFO_KEY_TRANSFER_HOST, Ry);
            }
            hashMap.put(PglSSConfig.CUSTOMINFO_KEY_TARGET_IDC, JJ());
            com.bytedance.sdk.openadsdk.core.jFA.ZYk.ZYk().oJ(hashMap);
            hwh();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public void oJ(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("_tryFetRemoDat");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(this.Id, intentFilter, 4);
            } else {
                context.registerReceiver(this.Id, intentFilter);
            }
        } catch (Exception e10) {
            QSm.oJ("TTAD.SdkSettings", "", e10);
        }
        if (nQI()) {
            ex(1);
            sQ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.ba
    public boolean oJ(PangleEncryptConstant.CryptDataScene cryptDataScene) {
        if (cryptDataScene != PangleEncryptConstant.CryptDataScene.GET_ADS && cryptDataScene != PangleEncryptConstant.CryptDataScene.BIDDING_TOKEN) {
            if (cryptDataScene == PangleEncryptConstant.CryptDataScene.APP_LOG) {
                return this.WcQ.oJ("perf_con_crypt_V4_applog", false);
            }
            return this.WcQ.oJ("perf_con_crypt_V4", false);
        }
        return this.WcQ.oJ("perf_con_crypt_V4_get_ad", false);
    }

    public static void oJ(BTZ.oJ oJVar) {
        ConcurrentLinkedQueue<BTZ.oJ> concurrentLinkedQueue = QSm;
        if (concurrentLinkedQueue.contains(oJVar)) {
            return;
        }
        concurrentLinkedQueue.add(oJVar);
    }
}
