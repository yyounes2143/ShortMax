package com.bytedance.sdk.component.adexpress.dynamic.tB.oJ;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.SoftReference;
/* loaded from: classes3.dex */
public class cFZ implements View.OnTouchListener {
    private static int tB = 10;
    private int Pfn;
    private float ZYk;
    private com.bytedance.sdk.component.adexpress.dynamic.tB.so ex;
    private float oJ;

    /* renamed from: ba  reason: collision with root package name */
    private RectF f12721ba = new RectF();
    private long cFZ = 0;

    /* renamed from: so  reason: collision with root package name */
    private final int f12722so = 200;
    private final int jFA = 3;
    private SoftReference<View> kkU = new SoftReference<>(null);

    public cFZ(com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar, int i10, final ViewGroup viewGroup) {
        this.Pfn = tB;
        this.ex = soVar;
        if (i10 > 0) {
            this.Pfn = i10;
        }
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.cFZ.1
                @Override // java.lang.Runnable
                public void run() {
                    View findViewById = viewGroup.findViewById(2097610746);
                    cFZ.this.kkU = new SoftReference(findViewById);
                }
            });
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar;
        com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar2;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                RectF rectF = this.f12721ba;
                if (rectF != null && !rectF.contains(this.oJ, this.ZYk)) {
                    return false;
                }
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                float abs = Math.abs(rawX - this.oJ);
                float abs2 = Math.abs(rawY - this.ZYk);
                int ZYk = com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(com.bytedance.sdk.component.adexpress.ex.oJ(), Math.abs(rawX - this.oJ));
                int i10 = tB;
                if (abs >= i10 && abs2 >= i10) {
                    if (rawX > this.oJ && ZYk > this.Pfn && (soVar2 = this.ex) != null) {
                        soVar2.oJ();
                    }
                } else if ((System.currentTimeMillis() - this.cFZ < 200 || (abs < 3.0f && abs2 < 3.0f)) && (soVar = this.ex) != null) {
                    soVar.oJ();
                }
            }
        } else {
            this.f12721ba = oJ(this.kkU.get());
            this.oJ = motionEvent.getRawX();
            this.ZYk = motionEvent.getRawY();
            this.cFZ = System.currentTimeMillis();
        }
        return true;
    }

    private RectF oJ(View view) {
        if (view == null) {
            return new RectF();
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        return new RectF(i10, iArr[1], i10 + view.getWidth(), iArr[1] + view.getHeight());
    }
}
