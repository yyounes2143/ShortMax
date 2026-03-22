package com.bytedance.sdk.openadsdk.component.oJ;

import android.app.Activity;
import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ;
import com.bytedance.sdk.openadsdk.core.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.so.jFA;
import com.bytedance.sdk.openadsdk.core.so.so;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class ZYk {
    public static so ZYk(cY cYVar, Activity activity, final com.bytedance.sdk.openadsdk.component.so.oJ oJVar, com.bytedance.sdk.openadsdk.component.jFA.ZYk zYk) {
        so soVar = new so(activity.getApplicationContext(), cYVar, "open_ad", 4) { // from class: com.bytedance.sdk.openadsdk.component.oJ.ZYk.2
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.oJ, com.bytedance.sdk.openadsdk.core.ZYk.ZYk, com.bytedance.sdk.openadsdk.core.ZYk.tB
            public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
                HashMap hashMap = new HashMap();
                hashMap.put("duration", Long.valueOf(oJVar.tB()));
                oJ(hashMap);
                super.oJ(view, f10, f11, f12, f13, sparseArray, z10);
            }
        };
        soVar.oJ((View) zYk);
        oJ(activity.getApplicationContext(), cYVar, soVar);
        oJ(soVar, cYVar);
        return soVar;
    }

    public static oJ oJ(cY cYVar, Activity activity, com.bytedance.sdk.openadsdk.component.so.oJ oJVar) {
        oJ oJVar2 = new oJ(activity.getApplicationContext(), cYVar, "open_ad", 4, oJVar);
        oJVar2.oJ(activity.findViewById(16908290));
        oJVar2.ZYk(activity.findViewById(520093713));
        oJ(activity.getApplicationContext(), cYVar, oJVar2);
        oJ(oJVar2, cYVar);
        return oJVar2;
    }

    public static jFA oJ(cY cYVar, Activity activity, final com.bytedance.sdk.openadsdk.component.so.oJ oJVar, com.bytedance.sdk.openadsdk.component.jFA.ZYk zYk) {
        jFA jfa = new jFA(activity, cYVar, "open_ad", 4) { // from class: com.bytedance.sdk.openadsdk.component.oJ.ZYk.1
            @Override // com.bytedance.sdk.openadsdk.core.ZYk.ZYk, com.bytedance.sdk.openadsdk.core.ZYk.tB
            public void oJ(View view, float f10, float f11, float f12, float f13, SparseArray<tB.oJ> sparseArray, boolean z10) {
                HashMap hashMap = new HashMap();
                hashMap.put("duration", Long.valueOf(oJVar.tB()));
                oJ(hashMap);
                super.oJ(view, f10, f11, f12, f13, sparseArray, z10);
            }
        };
        jfa.oJ(zYk);
        oJ(activity.getApplicationContext(), cYVar, jfa);
        oJ(jfa, cYVar);
        return jfa;
    }

    public static void oJ(com.bytedance.sdk.openadsdk.core.ZYk.ZYk zYk, cY cYVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("click_area", Integer.valueOf(cYVar.Yg()));
        hashMap.put("openad_creative_type", cY.Pfn(cYVar) ? "video_normal_ad" : "image_normal_ad");
        hashMap.put("click_scence", Integer.valueOf(Ln.tB(cYVar) ? 3 : 1));
        zYk.oJ(hashMap);
    }

    private static void oJ(Context context, cY cYVar, com.bytedance.sdk.openadsdk.core.ZYk.ZYk zYk) {
        if (cYVar == null || cYVar.sQ() != 4) {
            return;
        }
        zYk.oJ(cFZ.oJ(context, "open_ad"));
    }
}
