package com.bytedance.sdk.openadsdk.core.kkU.ex;

import android.content.Context;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.adsdk.ugeno.ZYk.tB;
import com.bytedance.adsdk.ugeno.core.BTZ;
import com.bytedance.adsdk.ugeno.core.PiB;
import com.bytedance.adsdk.ugeno.core.awB;
import com.bytedance.adsdk.ugeno.core.eZI;
import com.bytedance.adsdk.ugeno.ex.ba;
import com.bytedance.sdk.openadsdk.core.kkU.cFZ.ex;
import com.bytedance.sdk.openadsdk.utils.ofl;
import com.ss.ttm.player.MediaFormat;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ implements awB, eZI {
    private tB<View> ZYk;
    private eZI ex;
    private final Context oJ;
    private InterfaceC0220oJ tB;

    /* renamed from: com.bytedance.sdk.openadsdk.core.kkU.ex.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    interface InterfaceC0220oJ {
        void oJ(PiB piB);
    }

    public oJ(Context context) {
        this.oJ = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(JSONObject jSONObject, JSONObject jSONObject2, ex exVar) {
        try {
            BTZ btz = new BTZ(this.oJ);
            tB<View> oJ = btz.oJ(jSONObject);
            this.ZYk = oJ;
            if (oJ == null) {
                if (exVar != null) {
                    exVar.oJ(3000, "ugen render fail");
                    return;
                }
                return;
            }
            View dLZ = oJ.dLZ();
            if (dLZ != null) {
                dLZ.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.kkU.ex.oJ.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                    }
                });
            }
            btz.oJ((awB) this);
            btz.oJ((eZI) this);
            if (jSONObject2 != null) {
                try {
                    jSONObject2.put(MediaFormat.KEY_LANGUAGE, com.bytedance.sdk.openadsdk.core.BTZ.ZYk());
                    jSONObject2.put("os", "Android");
                } catch (JSONException unused) {
                }
            }
            btz.ZYk(jSONObject2);
            if (exVar != null) {
                exVar.oJ(this.ZYk);
            }
        } catch (Exception e10) {
            if (exVar != null) {
                exVar.oJ(3000, "ugen render fail exception is" + e10.getMessage());
            }
        }
    }

    @Override // com.bytedance.adsdk.ugeno.core.awB
    public void oJ(tB tBVar, String str, ba.oJ oJVar) {
    }

    public void oJ(final JSONObject jSONObject, final JSONObject jSONObject2, final ex exVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            ZYk(jSONObject, jSONObject2, exVar);
        } else {
            ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.kkU.ex.oJ.1
                @Override // java.lang.Runnable
                public void run() {
                    oJ.this.ZYk(jSONObject, jSONObject2, exVar);
                }
            });
        }
    }

    public void oJ(InterfaceC0220oJ interfaceC0220oJ) {
        this.tB = interfaceC0220oJ;
    }

    public void oJ(eZI ezi) {
        this.ex = ezi;
    }

    @Override // com.bytedance.adsdk.ugeno.core.awB
    public void oJ(PiB piB, awB.ZYk zYk, awB.oJ oJVar) {
        InterfaceC0220oJ interfaceC0220oJ;
        if (piB == null) {
            return;
        }
        if ((piB.ZYk() == 1 || piB.ZYk() == 4) && (interfaceC0220oJ = this.tB) != null) {
            interfaceC0220oJ.oJ(piB);
        }
        if (zYk == null || piB.ex() == null) {
            return;
        }
        zYk.oJ(piB.ex());
    }

    @Override // com.bytedance.adsdk.ugeno.core.eZI
    public void oJ(tB tBVar, MotionEvent motionEvent) {
        eZI ezi = this.ex;
        if (ezi != null) {
            ezi.oJ(tBVar, motionEvent);
        }
    }
}
