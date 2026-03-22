package com.bytedance.adsdk.ugeno.jFA.ZYk;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.bytedance.adsdk.ugeno.core.PiB;
import com.bytedance.adsdk.ugeno.ex;
import java.util.Map;
/* loaded from: classes3.dex */
public class oJ extends FrameLayout {
    private Map<Integer, PiB> ZYk;
    private ex oJ;

    public oJ(Context context) {
        super(context);
    }

    public void oJ(ex exVar) {
        this.oJ = exVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ex exVar = this.oJ;
        if (exVar != null) {
            exVar.cFZ();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ex exVar = this.oJ;
        if (exVar != null) {
            exVar.so();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        Map<Integer, PiB> map = this.ZYk;
        if (map != null && map.containsKey(4)) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        ex exVar = this.oJ;
        if (exVar != null) {
            exVar.ba();
        }
        super.onLayout(z10, i10, i11, i12, i13);
        ex exVar2 = this.oJ;
        if (exVar2 != null) {
            exVar2.oJ(i10, i11, i12, i13);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        ex exVar = this.oJ;
        if (exVar != null) {
            int[] oJ = exVar.oJ(i10, i11);
            super.onMeasure(oJ[0], oJ[1]);
        } else {
            super.onMeasure(i10, i11);
        }
        ex exVar2 = this.oJ;
        if (exVar2 != null) {
            exVar2.Pfn();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        ex exVar = this.oJ;
        if (exVar != null) {
            exVar.ZYk(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    public void setEventMap(Map<Integer, PiB> map) {
        this.ZYk = map;
    }
}
