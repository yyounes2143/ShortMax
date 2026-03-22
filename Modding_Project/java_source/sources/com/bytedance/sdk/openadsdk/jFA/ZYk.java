package com.bytedance.sdk.openadsdk.jFA;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.Pfn.dLZ;
import com.bytedance.sdk.component.Pfn.eZI;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk<T> implements eZI<T> {
    private final String ZYk;
    private final cY ex;
    private final long oJ = SystemClock.elapsedRealtime();
    private final eZI<T> tB;

    public ZYk(final cY cYVar, String str, eZI<T> ezi) {
        this.tB = ezi;
        this.ex = cYVar;
        this.ZYk = str;
        if (ex.ZYk()) {
            com.bytedance.sdk.openadsdk.si.tB.oJ(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.jFA.ZYk.1
                @Override // com.bytedance.sdk.openadsdk.si.ex
                public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                    com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                    oJVar.ZYk("load_img");
                    cY cYVar2 = cYVar;
                    if (cYVar2 != null) {
                        oJVar.tB(cYVar2.nke("-1"));
                        oJVar.ex(HyG.tB(cYVar.TxP()));
                    }
                    oJVar.oJ(BuildConfig.VERSION_NAME);
                    return oJVar;
                }
            });
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.eZI
    public void oJ(dLZ<T> dlz) {
        eZI<T> ezi = this.tB;
        if (ezi != null) {
            ezi.oJ(dlz);
        }
        if (this.ex != null) {
            final long elapsedRealtime = SystemClock.elapsedRealtime() - this.oJ;
            final int cFZ = dlz.cFZ() / 1024;
            final int i10 = dlz.ba() ? 1 : 0;
            com.bytedance.sdk.openadsdk.awB.tB.oJ("load_image_success", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.jFA.ZYk.2
                @Override // com.bytedance.sdk.openadsdk.awB.ZYk
                @Nullable
                public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("duration", elapsedRealtime);
                    jSONObject.put("url", ZYk.this.ZYk);
                    jSONObject.put("preload_size", cFZ);
                    jSONObject.put("local_cache", i10);
                    jSONObject.put("image_mode", ZYk.this.ex.Dc());
                    jSONObject.put("use_new_img", ex.ZYk() ? 1 : 0);
                    return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("load_image_success").oJ(ZYk.this.ex.TxP()).ZYk(jSONObject.toString());
                }
            });
            if (ex.ZYk()) {
                com.bytedance.sdk.openadsdk.si.tB.ZYk(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.jFA.ZYk.3
                    @Override // com.bytedance.sdk.openadsdk.si.ex
                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                        oJVar.ZYk("load_img");
                        if (ZYk.this.ex != null) {
                            oJVar.tB(ZYk.this.ex.nke("-1"));
                            oJVar.ex(HyG.tB(ZYk.this.ex.TxP()));
                        }
                        oJVar.oJ(BuildConfig.VERSION_NAME);
                        return oJVar;
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.component.Pfn.eZI
    public void oJ(final int i10, final String str, @Nullable final Throwable th2) {
        eZI<T> ezi = this.tB;
        if (ezi != null) {
            ezi.oJ(i10, str, th2);
        }
        cY cYVar = this.ex;
        if (cYVar != null) {
            if (!TextUtils.isEmpty(HyG.oJ(cYVar))) {
                final long elapsedRealtime = SystemClock.elapsedRealtime() - this.oJ;
                com.bytedance.sdk.openadsdk.awB.tB.oJ("load_image_error", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.jFA.ZYk.4
                    @Override // com.bytedance.sdk.openadsdk.awB.ZYk
                    @Nullable
                    public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("duration", elapsedRealtime);
                        jSONObject.put("url", ZYk.this.ZYk);
                        jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, i10);
                        Throwable th3 = th2;
                        if (th3 instanceof NullPointerException) {
                            ApmHelper.reportCustomError("image load fail", "image_load", th3);
                        }
                        jSONObject.put("error_message", str);
                        jSONObject.put("image_mode", ZYk.this.ex.Dc());
                        jSONObject.put("use_new_img", ex.ZYk() ? 1 : 0);
                        return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("load_image_error").oJ(ZYk.this.ex.TxP()).ZYk(jSONObject.toString());
                    }
                });
            }
            if (ex.ZYk()) {
                com.bytedance.sdk.openadsdk.si.tB.tB(new com.bytedance.sdk.openadsdk.si.ex() { // from class: com.bytedance.sdk.openadsdk.jFA.ZYk.5
                    @Override // com.bytedance.sdk.openadsdk.si.ex
                    public com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel() {
                        com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                        oJVar.ZYk("load_img");
                        if (ZYk.this.ex != null) {
                            oJVar.tB(ZYk.this.ex.nke("-1"));
                            oJVar.ex(HyG.tB(ZYk.this.ex.TxP()));
                        }
                        oJVar.oJ(BuildConfig.VERSION_NAME);
                        return oJVar;
                    }
                });
            }
        }
    }
}
