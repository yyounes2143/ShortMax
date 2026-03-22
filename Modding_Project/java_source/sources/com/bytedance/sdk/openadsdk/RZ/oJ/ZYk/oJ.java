package com.bytedance.sdk.openadsdk.RZ.oJ.ZYk;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.work.PeriodicWorkRequest;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    private static volatile oJ ex;
    private AtomicLong oJ = new AtomicLong(0);
    private int ZYk = 0;
    private String tB = "";

    private oJ() {
    }

    public static oJ oJ() {
        if (ex == null) {
            synchronized (oJ.class) {
                try {
                    if (ex == null) {
                        oJ oJVar = new oJ();
                        ex = oJVar;
                        oJVar.tB();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ex;
    }

    public String ZYk() {
        if (tB()) {
            return this.tB;
        }
        return "";
    }

    public boolean tB() {
        return PiB.ib().tb("gaid");
    }

    public void oJ(String str) {
        this.tB = str;
    }

    public void oJ(boolean z10) {
        if (this.ZYk == 1 || !TextUtils.isEmpty(ZYk())) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (z10 || this.oJ.get() <= elapsedRealtime) {
            this.oJ.set(elapsedRealtime + PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS);
            ofl.oJ((so) new DeviceUtils.tB());
        }
    }

    public void oJ(int i10) {
        this.ZYk = i10;
    }

    public void oJ(JSONObject jSONObject) {
        if (!tB() || jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("gaid", this.tB);
        } catch (JSONException unused) {
        }
    }
}
