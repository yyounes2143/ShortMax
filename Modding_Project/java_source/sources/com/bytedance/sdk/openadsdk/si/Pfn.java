package com.bytedance.sdk.openadsdk.si;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.Ry;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.jFA;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class Pfn implements ex {
    private int Pfn;
    private int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f13382ba;
    private int ex;
    long oJ = System.currentTimeMillis();
    private ex tB;

    public Pfn(ex exVar, int i10, int i11, int i12) {
        this.ZYk = Integer.MIN_VALUE;
        this.tB = exVar;
        this.ex = i10;
        this.Pfn = i11;
        this.f13382ba = i12;
        Context oJ = oJ.oJ();
        if (oJ != null) {
            this.ZYk = Ry.tB(oJ);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.si.ex
    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
        JSONObject jSONObject;
        com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel = this.tB.generatorModel();
        generatorModel.oJ(BuildConfig.VERSION_NAME);
        generatorModel.oJ(this.ex);
        generatorModel.ZYk(this.Pfn);
        generatorModel.tB(this.f13382ba);
        generatorModel.ZYk(this.oJ);
        generatorModel.ba(jFA.ZYk().cFZ());
        generatorModel.ex(WcQ.ex());
        String tB = generatorModel.tB();
        String PiB = generatorModel.PiB();
        if (this.ZYk != Integer.MIN_VALUE && ("get_ad".equals(tB) || "dislike".equals(tB) || "stats".equals(tB))) {
            try {
                if (TextUtils.isEmpty(PiB)) {
                    jSONObject = new JSONObject();
                } else {
                    jSONObject = new JSONObject(PiB);
                }
                jSONObject.put("nt", this.ZYk);
                generatorModel.cFZ(jSONObject.toString());
            } catch (JSONException unused) {
            }
        }
        return generatorModel;
    }
}
