package com.bytedance.sdk.openadsdk.core.kkU.jFA;

import android.content.Context;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.adsdk.ugeno.ZYk.tB;
import com.bytedance.adsdk.ugeno.core.BTZ;
import com.bytedance.adsdk.ugeno.core.PiB;
import com.bytedance.adsdk.ugeno.core.awB;
import com.bytedance.adsdk.ugeno.core.dLZ;
import com.bytedance.adsdk.ugeno.core.eZI;
import com.bytedance.adsdk.ugeno.ex.ba;
import com.bytedance.sdk.openadsdk.core.kkU.cFZ.ex;
import com.bytedance.sdk.openadsdk.utils.ofl;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ implements awB, eZI {
    private BTZ ZYk;
    private Context oJ;
    private tB tB;

    public oJ(Context context) {
        this.oJ = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, ex exVar) {
        this.ZYk = new BTZ(this.oJ);
        oJ();
        this.ZYk.oJ((awB) this);
        this.ZYk.oJ((eZI) this);
        if (jSONObject != null && jSONObject2 != null) {
            try {
                tB<View> oJ = this.ZYk.oJ(jSONObject, jSONObject2, jSONObject3);
                this.tB = oJ;
                if (oJ == null) {
                    if (exVar != null) {
                        exVar.oJ(3000, "ugen render fail");
                        return;
                    }
                    return;
                }
                exVar.oJ(oJ);
            } catch (NoClassDefFoundError unused) {
                if (exVar != null) {
                    exVar.oJ(138, "ugen render yoga error");
                }
            } catch (UnsatisfiedLinkError unused2) {
                if (exVar != null) {
                    exVar.oJ(139, "ugen render yoga error");
                }
            } catch (Throwable unused3) {
                if (exVar != null) {
                    exVar.oJ(138, "ugen render error");
                }
            }
        } else if (exVar != null) {
            exVar.oJ(133, "template or data is null");
        }
    }

    @Override // com.bytedance.adsdk.ugeno.core.eZI
    public void oJ(tB tBVar, MotionEvent motionEvent) {
    }

    @Override // com.bytedance.adsdk.ugeno.core.awB
    public void oJ(tB tBVar, String str, ba.oJ oJVar) {
    }

    @Override // com.bytedance.adsdk.ugeno.core.awB
    public void oJ(PiB piB, awB.ZYk zYk, awB.oJ oJVar) {
    }

    public void oJ(final JSONObject jSONObject, final JSONObject jSONObject2, final JSONObject jSONObject3, final ex exVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            ZYk(jSONObject, jSONObject2, jSONObject3, exVar);
        } else {
            ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.kkU.jFA.oJ.1
                @Override // java.lang.Runnable
                public void run() {
                    oJ.this.ZYk(jSONObject, jSONObject2, jSONObject3, exVar);
                }
            });
        }
    }

    private void oJ() {
        dLZ dlz = new dLZ();
        dlz.oJ(this.oJ);
        this.ZYk.oJ("page", dlz);
    }
}
