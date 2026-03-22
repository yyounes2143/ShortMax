package com.bytedance.adsdk.ugeno.ex.ex;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import com.bytedance.adsdk.ugeno.cFZ.jFA;
/* loaded from: classes3.dex */
public class dLZ extends tB implements jFA.oJ {
    private boolean BTZ;
    private Handler PiB;
    private int dLZ;

    public dLZ(Context context) {
        super(context);
        this.dLZ = 500;
        this.PiB = new com.bytedance.adsdk.ugeno.cFZ.jFA(Looper.getMainLooper(), this);
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ex.tB
    public boolean oJ(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return false;
        }
        this.dLZ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(this.Pfn.get("delay"), 500);
        return oJ(this.ZYk, (MotionEvent) objArr[0]);
    }

    private boolean oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, MotionEvent motionEvent) {
        com.bytedance.adsdk.ugeno.ex.dLZ dlz;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.PiB.sendEmptyMessageDelayed(1102, this.dLZ);
        } else if (action == 1) {
            if (this.BTZ && (dlz = this.oJ) != null) {
                dlz.oJ(this.ZYk, this.f11673ba, this.tB.ZYk());
                this.BTZ = false;
                Handler handler = this.PiB;
                if (handler != null) {
                    handler.removeMessages(1102);
                }
                return true;
            }
            Handler handler2 = this.PiB;
            if (handler2 != null) {
                handler2.removeMessages(1102);
            }
            this.BTZ = false;
            return false;
        } else if (action == 3) {
            Handler handler3 = this.PiB;
            if (handler3 != null) {
                handler3.removeMessages(1102);
            }
            this.BTZ = false;
        }
        return true;
    }

    @Override // com.bytedance.adsdk.ugeno.cFZ.jFA.oJ
    public void oJ(Message message) {
        if (message.what != 1102) {
            return;
        }
        this.BTZ = true;
        Handler handler = this.PiB;
        if (handler != null) {
            handler.removeMessages(1102);
        }
    }
}
