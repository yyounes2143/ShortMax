package com.bytedance.adsdk.ugeno.core.ZYk;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.bytedance.adsdk.ugeno.core.PiB;
import com.bytedance.adsdk.ugeno.core.awB;
/* loaded from: classes3.dex */
public class tB {
    private boolean Pfn;
    private float ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final int f11660ba;
    private Context ex;
    private float oJ;
    private PiB tB;

    public tB(Context context, PiB piB) {
        this.ex = context;
        this.tB = piB;
        this.f11660ba = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public boolean oJ(awB awb, com.bytedance.adsdk.ugeno.ZYk.tB tBVar, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action == 3) {
                        this.Pfn = false;
                    }
                } else {
                    float x10 = motionEvent.getX();
                    float y10 = motionEvent.getY();
                    if (Math.abs(x10 - this.oJ) >= this.f11660ba || Math.abs(y10 - this.ZYk) >= this.f11660ba) {
                        this.Pfn = true;
                    }
                }
            } else if (this.Pfn) {
                this.Pfn = false;
                return false;
            } else {
                float x11 = motionEvent.getX();
                float y11 = motionEvent.getY();
                if (Math.abs(x11 - this.oJ) < this.f11660ba && Math.abs(y11 - this.ZYk) < this.f11660ba) {
                    if (awb != null) {
                        awb.oJ(this.tB, tBVar, tBVar);
                        return true;
                    }
                } else {
                    this.Pfn = false;
                }
            }
        } else {
            this.oJ = motionEvent.getX();
            this.ZYk = motionEvent.getY();
        }
        return true;
    }
}
