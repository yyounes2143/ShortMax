package com.bytedance.sdk.openadsdk.oq;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import com.bytedance.sdk.component.embedapplog.PangleEncryptManager;
import com.bytedance.sdk.component.utils.HL;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.component.utils.so;
import com.bytedance.sdk.openadsdk.Id.ex;
import com.bytedance.sdk.openadsdk.Id.tB;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.jFA.ZYk;
import com.bytedance.sdk.openadsdk.core.jr;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
import com.bytedance.sdk.openadsdk.core.settings.dLZ;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.bytedance.sdk.openadsdk.utils.oq;
import com.mbridge.msdk.foundation.download.Command;
import com.pgl.ssdk.ces.out.PglSSConfig;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    public static String ZYk;
    public static final ConcurrentHashMap<String, Object> oJ = new ConcurrentHashMap<>();
    private static volatile tB tB;

    public static int Pfn() {
        if (!ZYk()) {
            return 0;
        }
        return oJ("ad_load_and_render_opt", "webview_preload_cache", 0);
    }

    public static boolean ZYk() {
        if (oJ("ad_load_and_render_opt", "enable", 0) != 1) {
            return false;
        }
        return true;
    }

    public static int ba() {
        if (!ZYk()) {
            return 0;
        }
        return oJ("ad_load_and_render_opt", "webview_preload_cache_v3", 0);
    }

    private static tB cFZ() {
        return oJ(si.oJ(), jFA.ZYk().ex());
    }

    public static boolean ex() {
        if (!ZYk() || oJ("ad_load_and_render_opt", "sync_barrier_switch_opt", 0) != 1) {
            return false;
        }
        return true;
    }

    public static tB oJ(final Context context, final String str) {
        if (tB == null) {
            synchronized (oJ.class) {
                try {
                    if (tB == null) {
                        tB tBVar = new tB(new ex() { // from class: com.bytedance.sdk.openadsdk.oq.oJ.1
                            @Override // com.bytedance.sdk.openadsdk.Id.ex
                            public String Pfn() {
                                String oJ2 = HyG.oJ("/api/ad/union/sdk/strategies/adn", false, true);
                                oJ.ZYk = oJ2;
                                return oJ2;
                            }

                            @Override // com.bytedance.sdk.openadsdk.Id.ex
                            public Context ZYk() {
                                Context context2 = context;
                                if (context2 != null) {
                                    return context2;
                                }
                                return si.oJ();
                            }

                            @Override // com.bytedance.sdk.openadsdk.Id.ex
                            public JSONObject ba() {
                                try {
                                    JSONObject oJ2 = dLZ.oJ(HL.oJ(si.oJ(), 0L));
                                    if (!oJ2.has("app_id")) {
                                        if (!TextUtils.isEmpty(str)) {
                                            oJ2.put("app_id", str);
                                        } else if (TextUtils.isEmpty(jFA.ZYk().ex())) {
                                            return null;
                                        } else {
                                            oJ2.put("app_id", jFA.ZYk().ex());
                                        }
                                    }
                                    return com.bytedance.sdk.component.utils.oJ.oJ(oJ2);
                                } catch (Throwable th2) {
                                    QSm.tB("StrategyUtils", th2.getMessage());
                                    return null;
                                }
                            }

                            @Override // com.bytedance.sdk.openadsdk.Id.ex
                            public Map<String, String> cFZ() {
                                HashMap hashMap = new HashMap();
                                hashMap.put(Command.HTTP_HEADER_USER_AGENT, HyG.ex());
                                String ZYk2 = com.bytedance.sdk.openadsdk.multipro.ex.ex.ZYk("ttopenadsdk", PglSSConfig.CUSTOMINFO_KEY_IPV6, "");
                                if (!ZYk2.isEmpty()) {
                                    JSONObject jSONObject = new JSONObject();
                                    try {
                                        jSONObject.put("ipv6", ZYk2);
                                    } catch (JSONException unused) {
                                    }
                                    JSONObject encryptType4 = PangleEncryptManager.encryptType4(jSONObject, new jr(PangleEncryptConstant.CryptDataScene.UNKNOWN));
                                    if (encryptType4 != null) {
                                        hashMap.put("transfer-param", encryptType4.optString("message"));
                                        if (encryptType4.optInt("cypher") == 4) {
                                            hashMap.put("cypher", "4");
                                        } else {
                                            hashMap.put("cypher", "3");
                                        }
                                    }
                                }
                                try {
                                    hashMap.put("x-pangle-target-idc", PiB.ib().JJ());
                                } catch (Throwable unused2) {
                                }
                                return hashMap;
                            }

                            @Override // com.bytedance.sdk.openadsdk.Id.ex
                            public Handler ex() {
                                return WcQ.ZYk();
                            }

                            @Override // com.bytedance.sdk.openadsdk.Id.ex
                            public ExecutorService oJ() {
                                return ofl.Pfn();
                            }

                            @Override // com.bytedance.sdk.openadsdk.Id.ex
                            public String tB() {
                                return "pag_adn_strategy_center";
                            }

                            @Override // com.bytedance.sdk.openadsdk.Id.ex
                            public JSONObject oJ(JSONObject jSONObject) {
                                int optInt = jSONObject.optInt("cypher", -1);
                                if (optInt != -1 && optInt == 3) {
                                    String tB2 = com.bytedance.sdk.component.utils.oJ.tB(jSONObject.optString("message"));
                                    if (TextUtils.isEmpty(tB2)) {
                                        return jSONObject;
                                    }
                                    try {
                                        return new JSONObject(tB2);
                                    } catch (Throwable unused) {
                                        return jSONObject;
                                    }
                                }
                                return jSONObject;
                            }

                            @Override // com.bytedance.sdk.openadsdk.Id.ex
                            public HandlerThread oJ(String str2, int i10) {
                                return so.oJ(str2, i10);
                            }
                        });
                        tB = tBVar;
                        tBVar.oJ(new com.bytedance.sdk.openadsdk.Id.oJ() { // from class: com.bytedance.sdk.openadsdk.oq.oJ.2
                            @Override // com.bytedance.sdk.openadsdk.Id.oJ
                            public void ZYk() {
                                com.bytedance.sdk.openadsdk.si.tB.ZYk(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.oq.oJ.2.2
                                    @Override // com.bytedance.sdk.openadsdk.si.ex
                                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                        oJVar.ZYk("strategy_fetch");
                                        return oJVar;
                                    }
                                });
                                com.bytedance.sdk.openadsdk.ba.oJ.oJ().ZYk();
                                com.bytedance.sdk.openadsdk.QSm.oJ.tB.oJ().ZYk();
                                oq.ZYk();
                                HashMap hashMap = new HashMap();
                                String oJ2 = oJ.oJ(PglSSConfig.CUSTOMINFO_KEY_SEC_CONFIG_STR, "");
                                if (!TextUtils.isEmpty(oJ2)) {
                                    hashMap.put(PglSSConfig.CUSTOMINFO_KEY_SEC_CONFIG_STR, oJ2);
                                }
                                ZYk.ZYk().oJ(hashMap);
                            }

                            @Override // com.bytedance.sdk.openadsdk.Id.oJ
                            public void oJ() {
                                com.bytedance.sdk.openadsdk.si.tB.oJ(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.oq.oJ.2.1
                                    @Override // com.bytedance.sdk.openadsdk.si.ex
                                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                        oJVar.ZYk("strategy_fetch");
                                        return oJVar;
                                    }
                                });
                            }

                            @Override // com.bytedance.sdk.openadsdk.Id.oJ
                            public void oJ(int i10, String str2) {
                                com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.oq.oJ.2.3
                                    @Override // com.bytedance.sdk.openadsdk.si.ex
                                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                        oJVar.ZYk("strategy_fetch");
                                        return oJVar;
                                    }
                                });
                                oq.oJ(oJ.ZYk);
                            }
                        });
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return tB;
    }

    public static boolean tB() {
        if (!ZYk() || oJ("ad_load_and_render_opt", "thread_switch_opt", 0) != 1) {
            return false;
        }
        return true;
    }

    public static int oJ(String str, int i10) {
        tB cFZ = cFZ();
        return cFZ != null ? cFZ.oJ(str, i10) : i10;
    }

    public static boolean oJ(String str, boolean z10) {
        tB cFZ = cFZ();
        return cFZ != null ? cFZ.oJ(str, z10) : z10;
    }

    public static String oJ(String str, String str2) {
        tB cFZ = cFZ();
        return cFZ != null ? cFZ.oJ(str, str2) : str2;
    }

    public static int oJ(String str, String str2, int i10) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            String str3 = str + "_" + str2;
            ConcurrentHashMap<String, Object> concurrentHashMap = oJ;
            Object obj = concurrentHashMap.get(str3);
            if (obj != null && (obj instanceof Integer)) {
                return ((Integer) obj).intValue();
            }
            try {
                String oJ2 = cFZ().oJ(str, "");
                if (TextUtils.isEmpty(oJ2)) {
                    return i10;
                }
                int optInt = new JSONObject(oJ2).optInt(str2, i10);
                concurrentHashMap.put(str3, Integer.valueOf(optInt));
                return optInt;
            } catch (Throwable th2) {
                QSm.tB("StrategyUtils", th2.getMessage());
            }
        }
        return i10;
    }

    public static String oJ(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            String str4 = str + "_" + str2;
            ConcurrentHashMap<String, Object> concurrentHashMap = oJ;
            Object obj = concurrentHashMap.get(str4);
            if (obj != null && (obj instanceof String)) {
                return (String) obj;
            }
            try {
                String oJ2 = cFZ().oJ(str, "");
                if (TextUtils.isEmpty(oJ2)) {
                    return str3;
                }
                String optString = new JSONObject(oJ2).optString(str2, str3);
                concurrentHashMap.put(str4, optString);
                return optString;
            } catch (Throwable th2) {
                QSm.tB("StrategyUtils", th2.getMessage());
            }
        }
        return str3;
    }

    public static void oJ() {
        tB cFZ = cFZ();
        if (cFZ != null) {
            cFZ.oJ();
        }
    }
}
