package com.bytedance.sdk.openadsdk;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.AttachUserData;
import com.apm.insight.CrashType;
import com.apm.insight.CustomRequestHeader;
import com.apm.insight.MonitorCrash;
import com.apm.insight.Npth;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.bytedance.sdk.component.embedapplog.PangleEncryptManager;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.BTZ;
import com.bytedance.sdk.openadsdk.core.jr;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.settings.ba;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.multipro.ex.ex;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.pgl.ssdk.ces.out.PglSSConfig;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ApmHelper {
    private static ZYk Pfn = null;
    private static final AtomicBoolean ZYk = new AtomicBoolean(false);

    /* renamed from: ba  reason: collision with root package name */
    private static oJ f12827ba = null;
    private static boolean ex = false;
    private static volatile boolean oJ = false;
    private static String tB;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface ZYk {
        void oJ(String str, String str2, Throwable th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ {
        public final String ZYk;
        public final String oJ;
        public final Throwable tB;

        public oJ(String str, String str2, Throwable th2) {
            this.oJ = str;
            this.ZYk = str2;
            this.tB = th2;
        }
    }

    @NonNull
    public static Pair<String, String> generateRequestHeader() {
        String str = "";
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("gaid", com.bytedance.sdk.openadsdk.RZ.oJ.ZYk.oJ.oJ().ZYk());
            jSONObject.put("ipv6", ex.ZYk("ttopenadsdk", PglSSConfig.CUSTOMINFO_KEY_IPV6, ""));
            jSONObject.put(TtmlNode.TAG_REGION, si.ex().mu());
        } catch (JSONException unused) {
        }
        JSONObject encryptType4WithNoWrapBase64 = PangleEncryptManager.encryptType4WithNoWrapBase64(jSONObject, new jr(PangleEncryptConstant.CryptDataScene.UNKNOWN));
        String str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        if (encryptType4WithNoWrapBase64 != null) {
            int optInt = encryptType4WithNoWrapBase64.optInt("cypher");
            if (optInt == 4) {
                str = encryptType4WithNoWrapBase64.optString("message");
                str2 = "4";
            } else if (optInt == 3) {
                str = encryptType4WithNoWrapBase64.optString("message");
                str2 = "3";
            } else {
                str = jSONObject.toString();
            }
        }
        return new Pair<>(str2, str);
    }

    public static void initApm(final Context context, final InitConfig initConfig) {
        if (!ZYk.compareAndSet(false, true) || oJ) {
            return;
        }
        ofl.oJ(new so("init-apm") { // from class: com.bytedance.sdk.openadsdk.ApmHelper.1
            @Override // java.lang.Runnable
            public void run() {
                if (!ApmHelper.oJ) {
                    ba ex2 = si.ex();
                    boolean unused = ApmHelper.ex = ex2.cdg();
                    String Ry = HyG.Ry();
                    if (ApmHelper.ex && !TextUtils.isEmpty(Ry)) {
                        String unused2 = ApmHelper.tB = initConfig.getAppId();
                        String[] strArr = {"com.bytedance.sdk.component", "com.bytedance.sdk.mediation", BuildConfig.LIBRARY_PACKAGE_NAME, "com.com.bytedance.overseas.sdk", "com.pgl.ssdk", "com.bykv.vk", "com.iab.omid.library.bytedance2", "com.bytedance.adsdk"};
                        String oJ2 = BTZ.oJ(context);
                        try {
                            Npth.setCrashWaitTime(com.bytedance.sdk.openadsdk.oq.oJ.oJ("apm_crash_wait_time", 10000));
                            Npth.enableLoopMonitor(false);
                            Npth.enableAnrInfo(false);
                            Npth.enableNativeDump(false);
                            Npth.enableActivityDump(false);
                            Npth.enableMessageDump(false);
                            MonitorCrash.setCustomRequestHeaderCallback(new CustomRequestHeader() { // from class: com.bytedance.sdk.openadsdk.ApmHelper.1.1
                                @Override // com.apm.insight.CustomRequestHeader
                                public void addRequestHeader(HttpURLConnection httpURLConnection) {
                                    Pair<String, String> generateRequestHeader = ApmHelper.generateRequestHeader();
                                    httpURLConnection.setRequestProperty("cypher", (String) generateRequestHeader.first);
                                    httpURLConnection.setRequestProperty("transfer-param", (String) generateRequestHeader.second);
                                    httpURLConnection.setRequestProperty("x-pangle-target-idc", si.ex().JJ());
                                }
                            });
                            final MonitorCrash initSDK = MonitorCrash.initSDK(context, "10000001", 7504L, BuildConfig.VERSION_NAME, strArr);
                            initSDK.setCustomDataCallback(new AttachUserData() { // from class: com.bytedance.sdk.openadsdk.ApmHelper.1.2
                                @Override // com.apm.insight.AttachUserData
                                @Nullable
                                public Map<? extends String, ? extends String> getUserData(CrashType crashType) {
                                    Map<? extends String, ? extends String> tB2 = ApmHelper.tB();
                                    if (tB2.containsKey("render_type")) {
                                        initSDK.addTags("render_type", tB2.get("render_type"));
                                    } else {
                                        initSDK.addTags("render_type", "-2");
                                    }
                                    return tB2;
                                }
                            });
                            if (ex2.sH()) {
                                initSDK.config().setSoList(new String[]{"libnms.so", "libtobEmbedPagEncrypt.so", "tt_ugen_layout.so"});
                            }
                            initSDK.config().setDeviceId(oJ2);
                            initSDK.setReportUrl(Ry);
                            initSDK.addTags("host_appid", ApmHelper.tB);
                            initSDK.addTags("sdk_version", BuildConfig.VERSION_NAME);
                            ZYk unused3 = ApmHelper.Pfn = new ZYk() { // from class: com.bytedance.sdk.openadsdk.ApmHelper.1.3
                                @Override // com.bytedance.sdk.openadsdk.ApmHelper.ZYk
                                public void oJ(String str, String str2, Throwable th2) {
                                    initSDK.reportCustomErr(str, str2, th2);
                                }
                            };
                            boolean unused4 = ApmHelper.oJ = true;
                            ApmHelper.tB(oJ2, Ry);
                            oJ oJVar = ApmHelper.f12827ba;
                            oJ unused5 = ApmHelper.f12827ba = null;
                            if (oJVar != null) {
                                ApmHelper.Pfn.oJ(oJVar.oJ, oJVar.ZYk, oJVar.tB);
                            }
                        } catch (Throwable unused6) {
                            boolean unused7 = ApmHelper.oJ = false;
                        }
                    }
                }
                ApmHelper.ZYk.set(false);
            }
        });
    }

    public static boolean isIsInit() {
        return oJ;
    }

    public static void reportCustomError(String str, String str2, Throwable th2) {
        ZYk zYk = Pfn;
        if (zYk != null) {
            zYk.oJ(str, str2, th2);
        } else {
            f12827ba = new oJ(str, str2, th2);
        }
    }

    public static void reportPvFromBackGround() {
        if (ex) {
            ZYk(BTZ.oJ(si.oJ()), HyG.Ry());
        }
    }

    private static Map<String, String> so() {
        HashMap hashMap = new HashMap();
        cY ZYk2 = com.bytedance.sdk.openadsdk.utils.ZYk.ZYk();
        if (ZYk2 != null) {
            hashMap.put("adType", String.valueOf(ZYk2.TxP()));
            hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, String.valueOf(ZYk2.dwQ()));
            hashMap.put(BidResponsedEx.KEY_CID, ZYk2.edj());
            hashMap.put("reqId", ZYk2.iPr());
            hashMap.put("rit", ZYk2.nke("-1"));
            int uvK = ZYk2.uvK();
            if (ZYk2.oIC() != 2) {
                uvK = -1;
            }
            hashMap.put("render_type", String.valueOf(uvK));
        }
        return hashMap;
    }

    static /* synthetic */ Map tB() {
        return so();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tB(String str, String str2) {
        ZYk(str, str2);
    }

    private static void ZYk(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        si.tB().oJ(ZYk(str), "https://" + str2 + "/monitor/collect/c/session?version_code=7504&device_platform=android&aid=10000001");
    }

    private static JSONObject ZYk(String str) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.put("sdk_version", BuildConfig.VERSION_NAME);
            jSONObject3.put("host_app_id", tB);
            jSONObject2.putOpt("custom", jSONObject3);
            jSONObject2.put("os", "Android");
            jSONObject2.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, Build.VERSION.RELEASE);
            jSONObject2.put("device_model", Build.MODEL);
            jSONObject2.put("device_brand", Build.BRAND);
            jSONObject2.put("sdk_version_name", "0.0.5");
            jSONObject2.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, "10000001");
            jSONObject2.put(TTVideoEngineInterface.PLAY_API_KEY_UPDATEVERSIONCODE, 7504);
            jSONObject2.put("bd_did", str);
            jSONObject.putOpt("apm_id", "20000001");
            jSONObject.putOpt("header", jSONObject2);
            jSONObject.putOpt("local_time", Long.valueOf(System.currentTimeMillis()));
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(new JSONObject().put("local_time_ms", System.currentTimeMillis()));
            jSONObject.putOpt("launch", jSONArray);
        } catch (JSONException e10) {
            QSm.tB("ApmHelper", e10.getMessage());
        }
        return jSONObject;
    }
}
