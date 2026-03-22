package com.bytedance.sdk.openadsdk.dLZ.oJ;

import com.bytedance.sdk.component.oJ.si;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.vodsetting.Module;
import com.ss.ttvideoengine.log.VideoEventOneOutSync;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba extends com.bytedance.sdk.component.oJ.Pfn<JSONObject, JSONObject> {
    private final WeakReference<UN> oJ;

    public ba(UN un2) {
        this.oJ = new WeakReference<>(un2);
    }

    public static void oJ(si siVar, UN un2) {
        siVar.oJ("interactiveFinish", new ba(un2));
    }

    @Override // com.bytedance.sdk.component.oJ.Pfn
    public JSONObject oJ(JSONObject jSONObject, com.bytedance.sdk.component.oJ.ba baVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<UN> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            UN un2 = this.oJ.get();
            cY ex = un2.ex();
            try {
                boolean z10 = true;
                int i10 = 0;
                if (jSONObject.optInt(VideoEventOneOutSync.END_TYPE_FINISH, 1) != 1) {
                    z10 = false;
                }
                int optInt = jSONObject.optInt("reduce_duration", -1);
                int SYE = ex != null ? ex.SYE() : 0;
                if (optInt >= 0 && SYE >= 0) {
                    optInt = Math.min(optInt, SYE);
                } else if (optInt < 0) {
                    optInt = SYE >= 0 ? SYE : 0;
                }
                if (z10) {
                    un2.tB(optInt);
                } else {
                    i10 = -1;
                }
                jSONObject2.put(Module.ResponseKey.Code, i10);
                jSONObject2.put("reduce_duration", optInt);
            } catch (JSONException e10) {
                QSm.tB("InteractiveFinishMethod", e10.getMessage());
            }
        }
        return jSONObject2;
    }
}
