package com.bytedance.adsdk.ugeno.ex.ex;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
/* loaded from: classes3.dex */
public class jFA extends tB {
    private float BTZ;
    private boolean PiB;
    private com.bytedance.adsdk.ugeno.core.ZYk.oJ WcQ;
    private float dLZ;

    public jFA(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ex.tB
    public boolean oJ(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return false;
        }
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar = this.ZYk;
        if (tBVar != null && tBVar.oTd() && this.WcQ == null) {
            this.WcQ = new com.bytedance.adsdk.ugeno.core.ZYk.oJ();
        }
        return oJ(this.ZYk, (MotionEvent) objArr[0]);
    }

    public boolean oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, MotionEvent motionEvent) {
        com.bytedance.adsdk.ugeno.core.ZYk.oJ oJVar = this.WcQ;
        if (oJVar != null) {
            if (oJVar.oJ(motionEvent)) {
                Log.d("GesThrough_UGTapEvent", "mockEvent，skip");
                return false;
            }
            this.WcQ.oJ(tBVar, motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.dLZ = motionEvent.getRawX();
            this.BTZ = motionEvent.getRawY();
        } else if (action != 1) {
            if (action == 2) {
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                if (Math.abs(rawX - this.dLZ) >= 15.0f || Math.abs(rawY - this.BTZ) >= 15.0f) {
                    this.PiB = true;
                }
            } else if (action == 3) {
                this.PiB = false;
            }
        } else if (this.PiB) {
            this.PiB = false;
            this.dLZ = 0.0f;
            this.BTZ = 0.0f;
            if (this.WcQ != null) {
                Log.d("GesThrough_UGTapEvent", "Non-tap event, need gesture through");
                this.WcQ.oJ(tBVar);
            }
            return false;
        } else {
            float rawX2 = motionEvent.getRawX();
            float rawY2 = motionEvent.getRawY();
            if (Math.abs(rawX2 - this.dLZ) < 15.0f && Math.abs(rawY2 - this.BTZ) < 15.0f) {
                Log.d("GesThrough_UGTapEvent", "Tap event, direct handling");
                com.bytedance.adsdk.ugeno.ex.dLZ dlz = this.oJ;
                if (dlz != null) {
                    dlz.oJ(tBVar, this.f11673ba, this.tB.ZYk());
                    this.dLZ = 0.0f;
                    this.BTZ = 0.0f;
                    return true;
                }
            } else {
                this.PiB = false;
                if (this.WcQ != null) {
                    Log.d("GesThrough_UGTapEvent", "Non-tap event, need gesture through");
                    this.WcQ.oJ(tBVar);
                }
            }
        }
        return true;
    }
}
