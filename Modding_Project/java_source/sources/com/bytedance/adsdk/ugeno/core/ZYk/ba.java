package com.bytedance.adsdk.ugeno.core.ZYk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.bytedance.adsdk.ugeno.cFZ.jFA;
import com.bytedance.adsdk.ugeno.core.PiB;
import com.bytedance.adsdk.ugeno.core.awB;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba implements jFA.oJ {
    private PiB Pfn;
    private int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private com.bytedance.adsdk.ugeno.ZYk.tB f11659ba;
    private Handler cFZ = new jFA(Looper.getMainLooper(), this);
    private Context ex;
    private boolean oJ;
    private awB tB;

    public ba(Context context, PiB piB, com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        this.ex = context;
        this.Pfn = piB;
        this.f11659ba = tBVar;
    }

    public void oJ(awB awb) {
        this.tB = awb;
    }

    public void oJ() {
        PiB piB = this.Pfn;
        if (piB == null) {
            return;
        }
        JSONObject tB = piB.tB();
        try {
            this.ZYk = Integer.parseInt(com.bytedance.adsdk.ugeno.tB.ZYk.oJ(tB.optString("interval", "8000"), this.f11659ba.BTZ()));
            this.oJ = tB.optBoolean("repeat");
            this.cFZ.sendEmptyMessageDelayed(1001, this.ZYk);
        } catch (NumberFormatException unused) {
        }
    }

    @Override // com.bytedance.adsdk.ugeno.cFZ.jFA.oJ
    public void oJ(Message message) {
        if (message.what != 1001) {
            return;
        }
        awB awb = this.tB;
        if (awb != null) {
            PiB piB = this.Pfn;
            com.bytedance.adsdk.ugeno.ZYk.tB tBVar = this.f11659ba;
            awb.oJ(piB, tBVar, tBVar);
        }
        if (this.oJ) {
            this.cFZ.sendEmptyMessageDelayed(1001, this.ZYk);
        } else {
            this.cFZ.removeMessages(1001);
        }
    }
}
