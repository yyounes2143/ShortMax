package com.bytedance.sdk.openadsdk.core.so;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.BTZ;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class cY extends GestureDetector {
    private final com.bytedance.sdk.openadsdk.core.ZYk.ba ZYk;
    private final oJ oJ;

    /* loaded from: classes3.dex */
    static class oJ extends GestureDetector.SimpleOnGestureListener {
        boolean oJ = false;

        oJ() {
        }

        boolean ZYk() {
            return this.oJ;
        }

        void oJ() {
            this.oJ = false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            this.oJ = true;
            return super.onSingleTapUp(motionEvent);
        }
    }

    public cY(Context context) {
        this(context, new oJ());
    }

    public boolean ZYk() {
        return this.oJ.ZYk();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ() {
        this.oJ.oJ();
    }

    @Override // android.view.GestureDetector
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.ZYk.oJ(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    public cY(Context context, oJ oJVar) {
        super(context, oJVar);
        this.oJ = oJVar;
        this.ZYk = new com.bytedance.sdk.openadsdk.core.ZYk.ba();
        setIsLongpressEnabled(false);
    }

    public com.bytedance.sdk.openadsdk.core.model.BTZ oJ(Context context, View view, View view2) {
        if (this.ZYk == null) {
            return new BTZ.oJ().oJ();
        }
        return new BTZ.oJ().ba(this.ZYk.oJ).Pfn(this.ZYk.ZYk).ex(this.ZYk.tB).tB(this.ZYk.ex).ZYk(this.ZYk.Pfn).oJ(this.ZYk.f13109ba).ZYk(cdg.oJ(view)).oJ(cdg.oJ(view2)).tB(cdg.tB(view)).ex(cdg.tB(view2)).ex(this.ZYk.cFZ).Pfn(this.ZYk.f13110so).ba(this.ZYk.jFA).oJ(this.ZYk.BTZ).ZYk(com.bytedance.sdk.openadsdk.core.jFA.ZYk().oJ() ? 1 : 2).oJ("vessel").oJ(cdg.so(context)).tB(cdg.kkU(context)).ZYk(cdg.jFA(context)).oJ();
    }
}
