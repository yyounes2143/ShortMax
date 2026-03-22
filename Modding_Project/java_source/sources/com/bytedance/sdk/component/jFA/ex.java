package com.bytedance.sdk.component.jFA;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.utils.QSm;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex extends tB {
    private final ba Pfn;
    private final int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private View.OnTouchListener f12786ba;
    private long cFZ = -1;
    private final Context ex;
    private float jFA;
    private String kkU;
    private final View.OnTouchListener oJ;

    /* renamed from: so  reason: collision with root package name */
    private float f12787so;
    private final long tB;

    public ex(Context context, View.OnTouchListener onTouchListener, int i10, long j10, ba baVar) {
        this.ex = context;
        this.oJ = onTouchListener;
        this.ZYk = i10;
        this.tB = j10;
        this.Pfn = baVar;
    }

    private boolean oJ(long j10) {
        long j11 = this.cFZ;
        if (j11 == -1) {
            this.cFZ = j10;
            return false;
        }
        int i10 = this.ZYk;
        if (i10 == 1) {
            if (j10 - j11 <= this.tB) {
                return true;
            }
            this.cFZ = j10;
            return false;
        }
        if (i10 == 2) {
            if (j10 - j11 <= this.tB) {
                this.cFZ = j10;
                return true;
            }
            this.cFZ = j10;
        }
        return false;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        motionEvent.getX();
        motionEvent.getY();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (action != 0) {
            if (action == 1 && oJ(x10, y10, this.f12787so, this.jFA, this.ex)) {
                if (oJ(SystemClock.elapsedRealtime())) {
                    motionEvent.setAction(3);
                    oJ(1, x10, y10);
                } else {
                    oJ(0, x10, y10);
                }
            }
        } else {
            this.f12787so = x10;
            this.jFA = y10;
        }
        View.OnTouchListener onTouchListener = this.oJ;
        if (onTouchListener != null) {
            onTouchListener.onTouch(view, motionEvent);
        }
        View.OnTouchListener onTouchListener2 = this.f12786ba;
        if (onTouchListener2 != null) {
            onTouchListener2.onTouch(view, motionEvent);
        }
        return false;
    }

    private void oJ(int i10, float f10, float f11) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("is_interceptor", i10);
            jSONObject2.put("click_x", f10);
            jSONObject2.put("click_y", f11);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("lp_click_type", this.ZYk);
            jSONObject3.put("lp_click_interval", this.tB);
            jSONObject2.put("pag_json_data", jSONObject3.toString());
            jSONObject.put("ad_extra_data", jSONObject2.toString());
        } catch (Throwable th2) {
            QSm.oJ("LpClickIntervalTouchListener", "sendLpClickInterceptEvent", th2);
        }
        if (com.bytedance.sdk.component.jFA.oJ.oJ.oJ().ZYk() != null) {
            com.bytedance.sdk.component.jFA.oJ.ZYk ZYk = com.bytedance.sdk.component.jFA.oJ.oJ.oJ().ZYk();
            ba baVar = this.Pfn;
            ZYk.oJ(baVar != null ? baVar.getMaterialMeta() : null, this.kkU, "click_interval_intercept", jSONObject);
        }
    }

    public void oJ(String str) {
        this.kkU = str;
    }

    @Override // com.bytedance.sdk.component.jFA.tB
    public void oJ(View.OnTouchListener onTouchListener) {
        this.f12786ba = onTouchListener;
    }
}
