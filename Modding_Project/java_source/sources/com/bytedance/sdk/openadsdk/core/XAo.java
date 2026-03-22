package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.ZYk;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity;
import com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity;
import com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.ex.ZYk;
import com.bytedance.sdk.openadsdk.multipro.ZYk.oJ;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.huawei.hms.support.api.entity.core.CommonCode;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class XAo {
    private static boolean oJ = false;

    public static void oJ(boolean z10) {
        oJ = z10;
    }

    private static com.bytedance.sdk.openadsdk.awB.oJ.ZYk oJ(int i10, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        com.bytedance.sdk.openadsdk.awB.oJ.ZYk zYk = new com.bytedance.sdk.openadsdk.awB.oJ.ZYk();
        zYk.oJ(ZYk.oJ.oJ);
        zYk.oJ(cYVar);
        zYk.ZYk(HyG.oJ(cYVar));
        zYk.oJ(i10);
        zYk.oJ(false);
        zYk.ZYk(cYVar.sQ());
        return zYk;
    }

    public static boolean oJ(Context context, com.bytedance.sdk.openadsdk.core.model.cY cYVar, int i10, @Nullable PAGNativeAd pAGNativeAd, @Nullable com.bytedance.sdk.openadsdk.core.tB.oJ oJVar, String str, @Nullable com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba baVar, boolean z10, int i11) {
        String oJ2;
        com.bytedance.sdk.openadsdk.ex.tB.oJ(oJ(-1, cYVar));
        if (context != null && cYVar != null && i10 != -1) {
            com.bytedance.sdk.openadsdk.core.model.PiB TNk = cYVar.TNk();
            HashMap hashMap = new HashMap();
            if (cYVar.GSK() == 0) {
                hashMap.put("dpl_probability_jump", Boolean.valueOf(i11 >= 11));
            }
            if (i11 != 0 && cYVar.Br()) {
                hashMap.put("dsp_click_type", Integer.valueOf(i11));
            }
            if (TNk != null && !TextUtils.isEmpty(TNk.oJ())) {
                if (oJ(context, cYVar, i10, str, z10, hashMap)) {
                    com.bytedance.sdk.openadsdk.ex.tB.oJ(oJ(2, cYVar));
                    com.bytedance.sdk.openadsdk.utils.Pfn.oJ(cYVar);
                    return true;
                }
                if (TNk.tB() != 2 || cYVar.Dc() == 5 || cYVar.Dc() == 15) {
                    if (TNk.tB() == 1 && !TextUtils.isEmpty(TNk.ZYk())) {
                        oJ2 = TNk.ZYk();
                    } else {
                        oJ2 = oJ(cYVar);
                    }
                } else if (baVar != null) {
                    if (!baVar.oJ(cYVar)) {
                        if (baVar.ex(cYVar)) {
                            com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str, "open_fallback_url", hashMap);
                            com.bytedance.sdk.openadsdk.ex.tB.oJ(oJ(3, cYVar));
                            com.bytedance.sdk.openadsdk.utils.Pfn.oJ(cYVar);
                            return true;
                        }
                        oJ2 = oJ(TNk, cYVar);
                        com.bytedance.sdk.openadsdk.ex.tB.oJ(oJ(3, cYVar));
                    } else {
                        com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str, "open_fallback_url", hashMap);
                        com.bytedance.sdk.openadsdk.ex.tB.oJ(oJ(3, cYVar));
                        com.bytedance.sdk.openadsdk.utils.Pfn.oJ(cYVar);
                        return true;
                    }
                } else {
                    oJ2 = oJ(TNk, cYVar);
                }
                com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str, "open_fallback_url", hashMap);
            } else {
                oJ2 = oJ(cYVar);
            }
            String str2 = oJ2;
            if (cYVar.GSK() == 0 && !TextUtils.isEmpty(str2) && str2.contains("play.google.com/store")) {
                String substring = str2.substring(str2.indexOf("?id=") + 4);
                com.bytedance.sdk.openadsdk.ex.tB.oJ(oJ(4, cYVar));
                boolean oJ3 = com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ex.oJ(context, str2, substring, str, cYVar);
                if (oJ3) {
                    com.bytedance.sdk.openadsdk.utils.Pfn.oJ(cYVar);
                }
                return oJ3;
            }
            boolean oJ4 = oJ(context, cYVar, i10, pAGNativeAd, oJVar, str, z10, str2);
            if (oJ4) {
                com.bytedance.sdk.openadsdk.utils.Pfn.oJ(cYVar);
            }
            return oJ4;
        }
        com.bytedance.sdk.openadsdk.ex.tB.oJ(oJ(1, cYVar));
        return false;
    }

    private static String oJ(com.bytedance.sdk.openadsdk.core.model.PiB piB, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (!TextUtils.isEmpty(piB.ZYk())) {
            return piB.ZYk();
        }
        return oJ(cYVar);
    }

    private static String oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (cYVar.Br() && cYVar.Du() != null) {
            return cYVar.Du().jFA();
        }
        return cYVar.Oof();
    }

    public static boolean oJ(Context context, com.bytedance.sdk.openadsdk.core.model.cY cYVar, int i10, String str, boolean z10, Map<String, Object> map) {
        if (cYVar == null) {
            return false;
        }
        com.bytedance.sdk.openadsdk.core.model.PiB TNk = cYVar.TNk();
        if (TNk != null && !TextUtils.isEmpty(TNk.oJ())) {
            if (map == null) {
                map = new HashMap<>();
            }
            Map<String, Object> map2 = map;
            String oJ2 = TNk.oJ();
            if (com.bytedance.sdk.openadsdk.RZ.oJ.oJ.tB.oJ()) {
                return com.bytedance.sdk.openadsdk.RZ.oJ.oJ.tB.oJ(context, oJ2, cYVar, i10, map2, z10);
            }
            Uri parse = Uri.parse(oJ2);
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
            intent.setData(parse);
            if (HyG.ex(context)) {
                HyG.ZYk oJ3 = HyG.oJ(context, intent);
                if (oJ3.ZYk > 0) {
                    if (si.ex().so()) {
                        HyG.oJ(cYVar, str);
                    }
                    if (!(context instanceof Activity)) {
                        intent.addFlags(268435456);
                    }
                    map2.put("can_query_install", 1);
                    map2.put("matched_count", Integer.valueOf(oJ3.ZYk));
                    map2.put("url", oJ2);
                    ComponentName componentName = oJ3.oJ;
                    if (componentName != null) {
                        intent.setComponent(componentName);
                    }
                    com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str, "open_url_app", map2);
                    try {
                        context.startActivity(intent);
                        com.bytedance.sdk.openadsdk.ex.PiB.oJ().oJ(map2).oJ(cYVar, str);
                        com.bytedance.sdk.openadsdk.ex.tB.oJ("dp_start_act_success", cYVar, str, map2);
                        return true;
                    } catch (Exception e10) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("exception", e10.getMessage());
                            jSONObject.put(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, intent.toString());
                            jSONObject.put("can_query_install", 1);
                        } catch (Exception unused) {
                        }
                        ex.oJ(cYVar, str, -4, jSONObject);
                        if (!si.ex().so()) {
                            oJ(context, cYVar.Oof(), cYVar, i10, str, z10);
                        }
                        return false;
                    }
                }
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, intent.toString());
                    jSONObject2.put("can_query_install", 1);
                } catch (Exception unused2) {
                }
                ex.oJ(cYVar, str, -3, jSONObject2);
            } else {
                try {
                    if (si.ex().so()) {
                        HyG.oJ(cYVar, str);
                    }
                    if (!(context instanceof Activity)) {
                        intent.addFlags(268435456);
                    }
                    map2.put("can_query_install", 0);
                    com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str, "open_url_app", map2);
                    context.startActivity(intent);
                    com.bytedance.sdk.openadsdk.ex.PiB.oJ().oJ(map2).oJ(cYVar, str);
                    return true;
                } catch (Throwable unused3) {
                }
            }
            return false;
        }
        ex.oJ(cYVar, str, TNk == null ? -1 : -2, TNk != null ? TNk.ex() : null);
        return false;
    }

    public static boolean oJ(Context context, com.bytedance.sdk.openadsdk.core.model.cY cYVar, int i10, PAGNativeAd pAGNativeAd, com.bytedance.sdk.openadsdk.core.tB.oJ oJVar, String str, boolean z10, String str2) {
        if (TextUtils.isEmpty(str2) && !com.bytedance.sdk.openadsdk.core.model.Ln.ZYk(cYVar)) {
            com.bytedance.sdk.openadsdk.ex.tB.oJ(oJ(5, cYVar));
            return false;
        }
        int sQ = cYVar.sQ();
        if (sQ != 2 && sQ != 8) {
            com.bytedance.sdk.component.utils.ZYk.oJ(context, oJ(context, str2, cYVar, i10, pAGNativeAd, oJVar, str, z10), null);
            oJ = false;
            return true;
        }
        return com.bytedance.sdk.openadsdk.utils.Id.oJ(context, str2, cYVar, ZYk.oJ.oJ);
    }

    public static void oJ(Context context, String str, com.bytedance.sdk.openadsdk.core.model.cY cYVar, int i10, String str2, boolean z10) {
        com.bytedance.sdk.component.utils.ZYk.oJ(context, oJ(context, str, cYVar, i10, (PAGNativeAd) null, (com.bytedance.sdk.openadsdk.core.tB.oJ) null, str2, z10), null);
    }

    public static void oJ(Context context, String str, final com.bytedance.sdk.openadsdk.core.model.cY cYVar, int i10, final String str2, boolean z10, RZ rz) {
        com.bytedance.sdk.component.utils.ZYk.oJ(context, oJ(context, str, cYVar, i10, null, null, str2, z10, true, rz), new ZYk.InterfaceC0180ZYk() { // from class: com.bytedance.sdk.openadsdk.core.XAo.1
            @Override // com.bytedance.sdk.component.utils.ZYk.InterfaceC0180ZYk
            public void oJ() {
                com.bytedance.sdk.openadsdk.ex.tB.oJ(com.bytedance.sdk.openadsdk.core.model.cY.this, str2, 3, (JSONObject) null);
            }

            @Override // com.bytedance.sdk.component.utils.ZYk.InterfaceC0180ZYk
            public void oJ(Throwable th2) {
                com.bytedance.sdk.openadsdk.ex.tB.oJ(com.bytedance.sdk.openadsdk.core.model.cY.this, str2, -2, (JSONObject) null);
            }
        });
    }

    private static Intent oJ(Context context, String str, com.bytedance.sdk.openadsdk.core.model.cY cYVar, int i10, @Nullable PAGNativeAd pAGNativeAd, com.bytedance.sdk.openadsdk.core.tB.oJ oJVar, String str2, boolean z10) {
        return oJ(context, str, cYVar, i10, pAGNativeAd, oJVar, str2, z10, false, null);
    }

    public static boolean oJ(Context context, com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str, int i10, int i11) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("click_countdown_remaining", i11);
            com.bytedance.sdk.openadsdk.ex.tB.so(cYVar, str, jSONObject);
            Intent oJ2 = oJ(context, cYVar, str, i10);
            if (oJ2 == null) {
                return false;
            }
            return com.bytedance.sdk.component.utils.ZYk.oJ(context, oJ2, null, false);
        } catch (Throwable unused) {
            return false;
        }
    }

    public static Intent oJ(Context context, com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str, int i10) {
        if (context == null || cYVar == null || !com.bytedance.sdk.openadsdk.core.model.Ln.ZYk(cYVar)) {
            return null;
        }
        Intent intent = new Intent(context, TTPlayableLandingPageActivity.class);
        intent.putExtra("ad_pending_download", false);
        String BTZ = com.bytedance.sdk.openadsdk.core.model.Ln.BTZ(cYVar);
        if (!TextUtils.isEmpty(BTZ)) {
            if (BTZ.contains("?")) {
                BTZ = BTZ + "&orientation=portrait";
            } else {
                BTZ = BTZ + "?orientation=portrait";
            }
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            intent.putExtra("url", BTZ);
            intent.putExtra("event_tag", str);
            intent.putExtra("source", i10);
            intent.putExtra("gecko_id", cYVar.PQw());
            intent.putExtra("web_title", cYVar.UUI());
            intent.putExtra("adid", cYVar.edj());
            intent.putExtra("log_extra", cYVar.pe());
            intent.putExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA, cYVar.mf().toString());
        } else {
            cYVar.Pfn(BTZ);
            cYVar.ba(str);
            cYVar.ZYk(i10);
            intent.putExtra("meta_index", IUZ.oJ().oJ(cYVar));
        }
        return intent;
    }

    private static Intent oJ(Context context, String str, com.bytedance.sdk.openadsdk.core.model.cY cYVar, int i10, @Nullable PAGNativeAd pAGNativeAd, com.bytedance.sdk.openadsdk.core.tB.oJ oJVar, String str2, boolean z10, boolean z11, RZ rz) {
        Intent intent;
        if (!z11 && com.bytedance.sdk.openadsdk.core.model.Ln.ZYk(cYVar) && (pAGNativeAd != null || oJVar != null)) {
            intent = new Intent(context, TTPlayableLandingPageActivity.class);
            boolean oJ2 = oJ(cYVar, z10);
            intent.putExtra("ad_pending_download", oJ2);
            String BTZ = com.bytedance.sdk.openadsdk.core.model.Ln.BTZ(cYVar);
            if (!TextUtils.isEmpty(BTZ)) {
                if (BTZ.contains("?")) {
                    str = BTZ + "&orientation=portrait";
                } else {
                    str = BTZ + "?orientation=portrait";
                }
            }
            cYVar.ZYk(oJ2);
        } else if (!z11 && cYVar.sQ() == 3 && ((cYVar.LS() == 2 || (cYVar.LS() == 1 && oJ)) && !cYVar.Quj())) {
            intent = new Intent(context, TTVideoLandingPageLink2Activity.class);
        } else {
            intent = new Intent(context, TTLandingPageActivity.class);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            intent.putExtra("url", str);
            intent.putExtra("event_tag", str2);
            intent.putExtra("source", i10);
            intent.putExtra("gecko_id", cYVar.PQw());
            if (!z11 || rz == null) {
                intent.putExtra("web_title", cYVar.UUI());
            } else {
                intent.putExtra("web_title", rz.ZYk());
                intent.putExtra("only_loading", rz.oJ());
            }
            intent.putExtra("adid", cYVar.edj());
            intent.putExtra("log_extra", cYVar.pe());
            intent.putExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA, cYVar.mf().toString());
        } else {
            if (z11 && rz != null) {
                cYVar.QSm(rz.ZYk());
                cYVar.oJ(rz.oJ());
            }
            cYVar.Pfn(str);
            cYVar.ba(str2);
            cYVar.ZYk(i10);
            intent.putExtra("meta_index", IUZ.oJ().oJ(cYVar));
        }
        if (cYVar.Dc() == 5 || cYVar.Dc() == 15 || cYVar.Dc() == 50) {
            com.bytedance.sdk.openadsdk.multipro.ZYk.oJ oJVar2 = null;
            if (pAGNativeAd != null) {
                if (pAGNativeAd instanceof oJ.InterfaceC0236oJ) {
                    oJVar2 = ((oJ.InterfaceC0236oJ) pAGNativeAd).ba();
                } else if (pAGNativeAd instanceof com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.ZYk) {
                    oJVar2 = ((com.bytedance.sdk.openadsdk.oJ.ZYk.oJ.ZYk) pAGNativeAd).ZYk();
                }
                if (oJVar2 != null) {
                    intent.putExtra(TTAdConstant.MULTI_PROCESS_DATA, oJVar2.oJ().toString());
                }
            }
            if (oJVar != null && oJVar.ZYk() && (oJVar2 = oJVar.tB()) != null) {
                intent.putExtra(TTAdConstant.MULTI_PROCESS_DATA, oJVar2.oJ().toString());
            }
            if (oJVar2 != null) {
                intent.putExtra("video_is_auto_play", oJVar2.ex);
                if (com.bytedance.sdk.component.utils.awB.ex()) {
                    oJVar2.oJ().toString();
                }
            }
        }
        return intent;
    }

    private static boolean oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, boolean z10) {
        if (z10 && cYVar != null && cYVar.sQ() == 4) {
            return com.bytedance.sdk.openadsdk.core.model.Ln.ZYk(cYVar);
        }
        return false;
    }
}
