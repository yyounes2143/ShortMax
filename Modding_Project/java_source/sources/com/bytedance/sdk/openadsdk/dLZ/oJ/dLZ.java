package com.bytedance.sdk.openadsdk.dLZ.oJ;

import com.bytedance.sdk.component.oJ.ex;
import com.bytedance.sdk.component.oJ.si;
import com.bytedance.sdk.openadsdk.core.UN;
import com.bytedance.sdk.openadsdk.core.model.cY;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class dLZ extends com.bytedance.sdk.component.oJ.ex<JSONObject, JSONObject> {
    private cY ZYk;
    private HashSet<Integer> ex = new HashSet<>();
    private WeakReference<UN> oJ;
    private long tB;

    public dLZ(UN un2, cY cYVar) {
        this.oJ = new WeakReference<>(un2);
        this.ZYk = cYVar;
    }

    public static void oJ(si siVar, final UN un2, final cY cYVar) {
        siVar.oJ("requestDelayCallback", new ex.ZYk() { // from class: com.bytedance.sdk.openadsdk.dLZ.oJ.dLZ.1
            @Override // com.bytedance.sdk.component.oJ.ex.ZYk
            public com.bytedance.sdk.component.oJ.ex oJ() {
                return new dLZ(UN.this, cYVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.oJ.ex
    public void oJ(JSONObject jSONObject, com.bytedance.sdk.component.oJ.ba baVar) throws Exception {
        UN un2 = this.oJ.get();
        if (un2 != null && jSONObject != null) {
            un2.oJ(new com.bytedance.sdk.openadsdk.BTZ.ZYk() { // from class: com.bytedance.sdk.openadsdk.dLZ.oJ.dLZ.2
                @Override // com.bytedance.sdk.openadsdk.BTZ.ZYk
                public void oJ(int i10) {
                    dLZ.this.ex.add(Integer.valueOf(i10));
                    if (dLZ.this.ex.size() >= dLZ.this.tB) {
                        try {
                            dLZ.this.oJ((dLZ) new JSONObject());
                            dLZ.this.ex.clear();
                        } catch (Exception e10) {
                            e10.getMessage();
                        }
                    }
                }
            });
            int optInt = jSONObject.optInt("delay", -1);
            if (optInt < 0) {
                return;
            }
            this.tB = optInt / 1000;
            return;
        }
        tB();
    }
}
