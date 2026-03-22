package com.bytedance.sdk.openadsdk.dLZ.oJ;

import androidx.annotation.NonNull;
import com.bytedance.sdk.component.oJ.ex;
import com.bytedance.sdk.component.oJ.si;
import com.bytedance.sdk.openadsdk.core.UN;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ extends com.bytedance.sdk.component.oJ.ex<JSONObject, JSONObject> {
    private final WeakReference<UN> oJ;

    public oJ(UN un2) {
        this.oJ = new WeakReference<>(un2);
    }

    public static void oJ(si siVar, final UN un2) {
        siVar.oJ("getNetworkData", new ex.ZYk() { // from class: com.bytedance.sdk.openadsdk.dLZ.oJ.oJ.1
            @Override // com.bytedance.sdk.component.oJ.ex.ZYk
            public com.bytedance.sdk.component.oJ.ex oJ() {
                return new oJ(UN.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.oJ.ex
    public void oJ(@NonNull JSONObject jSONObject, @NonNull com.bytedance.sdk.component.oJ.ba baVar) throws Exception {
        UN un2 = this.oJ.get();
        if (un2 == null) {
            tB();
        } else {
            un2.oJ(jSONObject, new com.bytedance.sdk.openadsdk.BTZ.ex() { // from class: com.bytedance.sdk.openadsdk.dLZ.oJ.oJ.2
                @Override // com.bytedance.sdk.openadsdk.BTZ.ex
                public void oJ(boolean z10, com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        if (!z10) {
                            oJ.this.oJ((oJ) jSONObject2);
                            return;
                        }
                        jSONObject2.put("creatives", UN.oJ(oJVar));
                        oJ.this.oJ((oJ) jSONObject2);
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }
}
