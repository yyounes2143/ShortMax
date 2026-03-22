package com.bytedance.adsdk.ugeno.core.ZYk;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes3.dex */
public class oJ {
    public String oJ = "GesThrough_";
    private List<MotionEvent> ZYk = new ArrayList();
    private Set<String> tB = Collections.synchronizedSet(new HashSet());

    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, MotionEvent motionEvent) {
        if (tBVar == null || motionEvent == null || this.ZYk == null) {
            return;
        }
        this.oJ = "GesThrough_" + tBVar.UN();
        int[] iArr = new int[2];
        tBVar.dLZ().getLocationInWindow(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        if (motionEvent.getAction() == 0) {
            this.ZYk.clear();
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(i10, i11);
        this.ZYk.add(obtain);
    }

    public boolean oJ(MotionEvent motionEvent) {
        if (motionEvent == null || this.tB == null) {
            return false;
        }
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        long downTime = motionEvent.getDownTime();
        return this.tB.contains(downTime + "_" + pointerId);
    }

    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        if (this.ZYk.isEmpty() || this.tB == null || tBVar == null || tBVar.dLZ() == null || tBVar.dLZ().getRootView() == null) {
            return;
        }
        final View rootView = tBVar.dLZ().getRootView();
        String str = this.oJ;
        Log.d(str, "Re-dispatch motionEvents.size(): " + this.ZYk.size());
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.bytedance.adsdk.ugeno.core.ZYk.oJ.1
            @Override // java.lang.Runnable
            public void run() {
                for (MotionEvent motionEvent : oJ.this.ZYk) {
                    if (motionEvent != null) {
                        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                        long downTime = motionEvent.getDownTime();
                        oJ.this.tB.add(downTime + "_" + pointerId);
                        rootView.dispatchTouchEvent(motionEvent);
                        motionEvent.recycle();
                    }
                }
                oJ.this.ZYk.clear();
            }
        }, 300L);
    }
}
