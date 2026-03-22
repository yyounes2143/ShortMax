package com.bytedance.adsdk.ugeno.ex.ex;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.bytedance.adsdk.ugeno.cFZ.jFA;
import java.util.Map;
/* loaded from: classes3.dex */
public class kkU extends tB implements jFA.oJ {
    private int BTZ;
    private Handler PiB;
    private int WcQ;
    private int dLZ;

    public kkU(Context context) {
        super(context);
        this.BTZ = 0;
        this.PiB = new com.bytedance.adsdk.ugeno.cFZ.jFA(Looper.getMainLooper(), this);
        this.WcQ = 0;
    }

    @Override // com.bytedance.adsdk.ugeno.ex.ex.tB
    public boolean oJ(Object... objArr) {
        Map<String, String> map = this.Pfn;
        if (map != null) {
            int oJ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(map.get("loop"), 0);
            this.dLZ = oJ;
            if (oJ <= 0) {
                this.WcQ = -1;
            } else {
                this.WcQ = oJ;
            }
            this.BTZ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(this.Pfn.get("duration"), 0);
        }
        this.PiB.sendEmptyMessageDelayed(1001, this.BTZ);
        return true;
    }

    @Override // com.bytedance.adsdk.ugeno.cFZ.jFA.oJ
    public void oJ(Message message) {
        int i10;
        int i11;
        if (message.what != 1001) {
            return;
        }
        Log.d("UGBaseEventMonitor", "handleMsg: execute timer event" + this.WcQ);
        this.oJ.oJ(this.ZYk, this.f11673ba, this.tB.ZYk());
        int i12 = this.WcQ + (-1);
        this.WcQ = i12;
        if (i12 < 0 && (i11 = this.BTZ) != 0) {
            this.PiB.sendEmptyMessageDelayed(1001, i11);
        } else if (i12 > 0 && (i10 = this.BTZ) != 0) {
            this.PiB.sendEmptyMessageDelayed(1001, i10);
        } else {
            this.PiB.removeMessages(1001);
        }
    }
}
