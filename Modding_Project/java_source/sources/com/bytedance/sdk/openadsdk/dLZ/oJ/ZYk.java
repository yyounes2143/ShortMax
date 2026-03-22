package com.bytedance.sdk.openadsdk.dLZ.oJ;

import androidx.annotation.NonNull;
import com.bytedance.sdk.component.oJ.ex;
import com.bytedance.sdk.component.oJ.si;
import com.bytedance.sdk.openadsdk.core.UN;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk extends com.bytedance.sdk.component.oJ.ex<JSONObject, JSONObject> {
    private final WeakReference<UN> oJ;

    public ZYk(UN un2) {
        this.oJ = new WeakReference<>(un2);
    }

    public static void oJ(si siVar, final UN un2) {
        siVar.oJ("interstitial_webview_close", new ex.ZYk() { // from class: com.bytedance.sdk.openadsdk.dLZ.oJ.ZYk.1
            @Override // com.bytedance.sdk.component.oJ.ex.ZYk
            public com.bytedance.sdk.component.oJ.ex oJ() {
                return new ZYk(UN.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.oJ.ex
    public void oJ(@NonNull JSONObject jSONObject, @NonNull com.bytedance.sdk.component.oJ.ba baVar) throws Exception {
        com.bytedance.sdk.openadsdk.core.jFA.ZYk().si();
        UN un2 = this.oJ.get();
        if (un2 == null) {
            tB();
        } else {
            un2.so();
        }
    }
}
