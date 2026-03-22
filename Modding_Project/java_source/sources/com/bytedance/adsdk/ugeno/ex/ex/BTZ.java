package com.bytedance.adsdk.ugeno.ex.ex;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import com.bytedance.adsdk.ugeno.cFZ.jFA;
/* loaded from: classes3.dex */
public class BTZ extends tB implements jFA.oJ {
    private Handler BTZ;
    private int dLZ;

    public BTZ(Context context) {
        super(context);
        this.dLZ = 500;
        this.BTZ = new com.bytedance.adsdk.ugeno.cFZ.jFA(Looper.getMainLooper(), this);
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
        int action = motionEvent.getAction();
        if (action == 0) {
            this.BTZ.sendEmptyMessageDelayed(1101, this.dLZ);
            return false;
        } else if (action == 1 || action == 3) {
            this.BTZ.removeMessages(1101);
            return false;
        } else {
            return false;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.cFZ.jFA.oJ
    public void oJ(Message message) {
        if (message.what != 1101) {
            return;
        }
        com.bytedance.adsdk.ugeno.ex.dLZ dlz = this.oJ;
        if (dlz != null) {
            dlz.oJ(this.ZYk, this.f11673ba, this.tB.ZYk());
        }
        Handler handler = this.BTZ;
        if (handler != null) {
            handler.removeMessages(1101);
        }
    }
}
