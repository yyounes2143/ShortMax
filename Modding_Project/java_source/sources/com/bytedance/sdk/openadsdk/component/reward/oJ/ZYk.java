package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.IUZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    private static final SparseArray<WeakReference<cY>> oJ = new SparseArray<>();

    public static void oJ(oJ oJVar, Intent intent, Bundle bundle) {
        oJ(intent, oJVar);
        oJ(bundle, oJVar);
    }

    public static cY oJ(Intent intent, Bundle bundle, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk zYk) {
        if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            com.bytedance.sdk.openadsdk.core.model.oJ ZYk = IUZ.oJ().ZYk(IUZ.oJ(intent));
            r3 = ZYk != null ? ZYk.dLZ() : null;
            if (zYk != null) {
                zYk.oJ(bundle);
            }
            IUZ.oJ().Pfn();
        } else if (intent != null) {
            try {
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_AD_INFO);
                if (stringExtra != null) {
                    r3 = com.bytedance.sdk.openadsdk.core.model.oJ.ZYk(new JSONObject(stringExtra)).dLZ();
                }
            } catch (Exception e10) {
                QSm.oJ("TTAD.RFDM", "", e10);
            }
        }
        if (bundle != null) {
            try {
                WeakReference<cY> weakReference = oJ.get(bundle.getInt("meta_tmp"));
                if (weakReference != null) {
                    r3 = weakReference.get();
                }
            } catch (Throwable th2) {
                QSm.oJ("TTAD.RFDM", "", th2);
            }
        }
        if (r3 != null) {
            r3.oJ(r3.NO(), 7);
        }
        return r3;
    }

    public static void oJ(Intent intent, oJ oJVar) {
        if (intent == null) {
            return;
        }
        oJVar.cY.tB(intent.getBooleanExtra("video_is_cached", false));
        oJVar.nQI = intent.getStringExtra("multi_process_listener_key");
        oJVar.yz = intent.getIntExtra("orientation_angle", 0) == 3;
    }

    public static void oJ(Bundle bundle, oJ oJVar) {
        if (bundle == null) {
            return;
        }
        oJVar.nQI = bundle.getString("multi_process_listener_key");
        oJVar.cY.tB(bundle.getBoolean("video_is_cached", false));
        oJVar.bgF = bundle.getBoolean("is_mute");
        if (bundle.getLong("video_current") > 0) {
            oJVar.cY.ZYk(bundle.getLong("video_current", 0L));
        }
        oJVar.oJ(bundle.getBoolean("has_show_skip_btn"));
    }

    public static void oJ(oJ oJVar, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        try {
            cY cYVar = oJVar.ZYk;
            oJ.append(cYVar.hashCode(), new WeakReference<>(cYVar));
            bundle.putInt("meta_tmp", cYVar.hashCode());
            bundle.putString("multi_process_listener_key", oJVar.nQI);
            bundle.putBoolean("video_is_cached", oJVar.cY.nke());
            bundle.putLong("video_current", oJVar.cY.BTZ());
            bundle.putBoolean("is_mute", oJVar.bgF);
            bundle.putBoolean("has_show_skip_btn", oJVar.sH);
        } catch (Throwable th2) {
            QSm.oJ("TTAD.RFDM", "onSaveInstanceState: ", th2);
        }
    }

    public static void oJ(cY cYVar, Intent intent, Bundle bundle) {
        if (bundle == null || cYVar == null) {
            return;
        }
        try {
            oJ.append(cYVar.hashCode(), new WeakReference<>(cYVar));
            bundle.putInt("meta_tmp", cYVar.hashCode());
            if (intent != null) {
                bundle.putString("multi_process_listener_key", intent.getStringExtra("multi_process_listener_key"));
                bundle.putBoolean("video_is_cached", intent.getBooleanExtra("video_is_cached", false));
            }
        } catch (Throwable th2) {
            QSm.oJ("TTAD.RFDM", "onSaveInstanceState: ", th2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void oJ(android.content.Intent r2, android.app.Activity r3, boolean r4, com.bytedance.sdk.openadsdk.core.model.oJ r5, java.lang.String r6) {
        /*
            if (r3 != 0) goto L8
            r3 = 268435456(0x10000000, float:2.5243549E-29)
            r2.addFlags(r3)
            goto L1d
        L8:
            android.view.WindowManager r3 = r3.getWindowManager()     // Catch: java.lang.Exception -> L15
            android.view.Display r3 = r3.getDefaultDisplay()     // Catch: java.lang.Exception -> L15
            int r3 = r3.getRotation()     // Catch: java.lang.Exception -> L15
            goto L1e
        L15:
            r3 = move-exception
            java.lang.String r0 = "TTAD.RFDM"
            java.lang.String r1 = ""
            com.bytedance.sdk.component.utils.QSm.oJ(r0, r1, r3)
        L1d:
            r3 = 0
        L1e:
            java.lang.String r0 = "orientation_angle"
            r2.putExtra(r0, r3)
            java.lang.String r3 = "video_is_cached"
            r2.putExtra(r3, r4)
            boolean r3 = com.bytedance.sdk.openadsdk.multipro.ZYk.tB()
            if (r3 == 0) goto L44
            org.json.JSONObject r3 = r5.PiB()
            if (r3 != 0) goto L35
            return
        L35:
            java.lang.String r4 = "multi_process_ad_info"
            java.lang.String r3 = r3.toString()
            r2.putExtra(r4, r3)
            java.lang.String r3 = "multi_process_listener_key"
            r2.putExtra(r3, r6)
            return
        L44:
            com.bytedance.sdk.openadsdk.core.IUZ r3 = com.bytedance.sdk.openadsdk.core.IUZ.oJ()
            r3.Pfn()
            com.bytedance.sdk.openadsdk.core.IUZ r3 = com.bytedance.sdk.openadsdk.core.IUZ.oJ()
            int r3 = r3.oJ(r5)
            java.lang.String r4 = "meta_index"
            r2.putExtra(r4, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.oJ.ZYk.oJ(android.content.Intent, android.app.Activity, boolean, com.bytedance.sdk.openadsdk.core.model.oJ, java.lang.String):void");
    }
}
