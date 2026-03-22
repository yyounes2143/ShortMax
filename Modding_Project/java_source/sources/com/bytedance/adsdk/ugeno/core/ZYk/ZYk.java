package com.bytedance.adsdk.ugeno.core.ZYk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.cFZ.jFA;
import com.bytedance.adsdk.ugeno.core.PiB;
import com.bytedance.adsdk.ugeno.core.awB;
import com.bytedance.adsdk.ugeno.core.kkU;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk implements jFA.oJ {
    private com.bytedance.adsdk.ugeno.ZYk.tB Pfn;
    private awB ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private Handler f11658ba = new jFA(Looper.getMainLooper(), this);
    private PiB ex;
    private int oJ;
    private Context tB;

    public ZYk(Context context, PiB piB, com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        this.tB = context;
        this.ex = piB;
        this.Pfn = tBVar;
    }

    public void oJ(awB awb) {
        this.ZYk = awb;
    }

    public void oJ() {
        PiB piB = this.ex;
        if (piB == null) {
            return;
        }
        try {
            int parseInt = Integer.parseInt(com.bytedance.adsdk.ugeno.tB.ZYk.oJ(piB.tB().optString("delay"), this.Pfn.BTZ()));
            this.oJ = parseInt;
            this.f11658ba.sendEmptyMessageDelayed(1001, parseInt);
        } catch (NumberFormatException unused) {
        }
    }

    @Override // com.bytedance.adsdk.ugeno.cFZ.jFA.oJ
    public void oJ(Message message) {
        if (message.what != 1001) {
            return;
        }
        JSONObject tB = this.ex.tB();
        if (TextUtils.equals(tB.optString("type"), "onAnimation")) {
            String optString = tB.optString("nodeId");
            com.bytedance.adsdk.ugeno.ZYk.tB tBVar = this.Pfn;
            com.bytedance.adsdk.ugeno.ZYk.tB ex = tBVar.ZYk(tBVar).ex(optString);
            new kkU(ex.dLZ(), com.bytedance.adsdk.ugeno.core.oJ.oJ(tB.optJSONObject("animatorSet"), ex)).oJ();
        } else {
            awB awb = this.ZYk;
            if (awb != null) {
                PiB piB = this.ex;
                com.bytedance.adsdk.ugeno.ZYk.tB tBVar2 = this.Pfn;
                awb.oJ(piB, tBVar2, tBVar2);
            }
        }
        this.f11658ba.removeMessages(1001);
    }
}
