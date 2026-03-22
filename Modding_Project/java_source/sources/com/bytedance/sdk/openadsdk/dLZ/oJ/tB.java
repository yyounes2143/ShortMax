package com.bytedance.sdk.openadsdk.dLZ.oJ;

import androidx.annotation.NonNull;
import com.bytedance.sdk.component.oJ.ex;
import com.bytedance.sdk.component.oJ.si;
import com.bytedance.sdk.openadsdk.core.UN;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB extends com.bytedance.sdk.component.oJ.ex<JSONObject, JSONObject> {
    private final WeakReference<UN> oJ;

    public tB(UN un2) {
        this.oJ = new WeakReference<>(un2);
    }

    public static void oJ(si siVar, final UN un2) {
        siVar.oJ("newClickEvent", new ex.ZYk() { // from class: com.bytedance.sdk.openadsdk.dLZ.oJ.tB.1
            @Override // com.bytedance.sdk.component.oJ.ex.ZYk
            public com.bytedance.sdk.component.oJ.ex oJ() {
                return new tB(UN.this);
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
            un2.Pfn(jSONObject);
        }
    }
}
