package com.bytedance.sdk.openadsdk.kkU;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.adjust.sdk.Constants;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba;
import com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.HyG;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ implements tB {
    private final ZYk ZYk;
    private final cY oJ;
    private final Map<String, ba> tB = new HashMap();

    private oJ(ZYk zYk, cY cYVar) {
        this.ZYk = zYk;
        this.oJ = cYVar;
    }

    public static oJ oJ(ZYk zYk, cY cYVar) {
        return new oJ(zYk, cYVar);
    }

    @Override // com.bytedance.sdk.openadsdk.kkU.tB
    public void oJ() {
        this.tB.clear();
    }

    private cY oJ(JSONObject jSONObject, String str) {
        String oJ;
        if (jSONObject == null) {
            return null;
        }
        cY cYVar = new cY();
        cYVar.Pfn(jSONObject);
        if (!TextUtils.isEmpty(str)) {
            cYVar.tb(str);
        }
        if (this.oJ == null) {
            return cYVar;
        }
        String oJ2 = cYVar.Wd() != null ? cYVar.Wd().oJ() : null;
        if (TextUtils.isEmpty(oJ2)) {
            return this.oJ;
        }
        com.bytedance.sdk.openadsdk.core.model.ba Wd = this.oJ.Wd();
        if (Wd != null && oJ2.equals(Wd.oJ())) {
            return this.oJ;
        }
        JSONObject jSONObject2 = new JSONObject();
        if (Wd != null) {
            try {
                oJ = Wd.oJ();
            } catch (JSONException unused) {
            }
        } else {
            oJ = "null";
        }
        jSONObject2.put("lu", oJ);
        jSONObject2.put("ju", oJ2);
        cY cYVar2 = this.oJ;
        com.bytedance.sdk.openadsdk.core.ex.oJ(cYVar2, HyG.oJ(cYVar2), -5, jSONObject2);
        if (Wd != null && oJ2.contains("play.google.com/store") && !oJ2.contains(Constants.REFERRER)) {
            cYVar.Wd().oJ(Wd.oJ());
        }
        return cYVar;
    }

    @Override // com.bytedance.sdk.openadsdk.kkU.tB
    public void oJ(Context context, JSONObject jSONObject, String str, int i10, boolean z10) {
        JSONObject optJSONObject;
        if (context == null || jSONObject == null || (optJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        oJ(context, oJ(optJSONObject, str), optJSONObject, i10, z10);
    }

    private void oJ(Context context, cY cYVar, JSONObject jSONObject, int i10, boolean z10) {
        if (context == null || cYVar == null || cYVar.Wd() == null || jSONObject == null || this.ZYk == null || this.tB.get(cYVar.Wd().oJ()) != null) {
            return;
        }
        String ZYk = HyG.ZYk(i10);
        if (TextUtils.isEmpty(ZYk)) {
            return;
        }
        this.tB.put(cYVar.Wd().oJ(), oJ(context, ZYk));
    }

    @Override // com.bytedance.sdk.openadsdk.kkU.tB
    public void oJ(Context context, JSONObject jSONObject, String str) {
        if (context == null || this.oJ == null) {
            return;
        }
        cFZ.oJ(context, str).tB(this.oJ);
    }

    @Override // com.bytedance.sdk.openadsdk.kkU.tB
    public void oJ(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        oJ(oJ(optJSONObject, (String) null), optJSONObject);
    }

    private void oJ(cY cYVar, JSONObject jSONObject) {
        if (this.ZYk == null || cYVar == null || cYVar.Wd() == null) {
            return;
        }
        String oJ = cYVar.Wd().oJ();
        if (this.tB.containsKey(oJ)) {
            this.tB.remove(oJ);
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("message", "success");
                jSONObject2.put("status", "unsubscribed");
                jSONObject2.put("appad", jSONObject);
                this.ZYk.oJ("app_ad_event", jSONObject2);
            } catch (JSONException e10) {
                QSm.tB("JsAppAdDownloadManager", e10.getMessage());
            }
        }
    }

    private ba oJ(@NonNull Context context, @NonNull String str) {
        ba oJ = cFZ.oJ(context, str);
        oJ.oJ(true);
        return oJ;
    }
}
