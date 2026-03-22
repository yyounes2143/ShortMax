package com.bytedance.sdk.component.adexpress.dynamic.tB.oJ;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.SoftReference;
/* loaded from: classes3.dex */
public class oJ implements View.OnTouchListener {
    private static int tB = 10;
    private int Pfn;
    private float ZYk;
    private com.bytedance.sdk.component.adexpress.dynamic.tB.so ex;
    private float oJ;

    /* renamed from: ba  reason: collision with root package name */
    private RectF f12725ba = new RectF();
    private long cFZ = 0;

    /* renamed from: so  reason: collision with root package name */
    private final int f12726so = 200;
    private final int jFA = 3;
    private SoftReference<ViewGroup> kkU = new SoftReference<>(null);

    public oJ(com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar, int i10, final ViewGroup viewGroup) {
        this.Pfn = tB;
        this.ex = soVar;
        if (i10 > 0) {
            this.Pfn = i10;
        }
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.tB.oJ.oJ.1
                @Override // java.lang.Runnable
                public void run() {
                    oJ.this.kkU = new SoftReference(viewGroup);
                }
            });
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                RectF rectF = this.f12725ba;
                if (rectF != null && !rectF.contains(this.oJ, this.ZYk)) {
                    return false;
                }
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                float abs = Math.abs(rawX - this.oJ);
                float abs2 = Math.abs(rawY - this.ZYk);
                int i10 = this.Pfn;
                if (abs >= i10 && abs2 >= i10) {
                    com.bytedance.sdk.component.adexpress.dynamic.tB.so soVar2 = this.ex;
                    if (soVar2 != null) {
                        soVar2.oJ();
                    }
                } else if ((System.currentTimeMillis() - this.cFZ < 200 || (abs < 3.0f && abs2 < 3.0f)) && (soVar = this.ex) != null) {
                    soVar.oJ();
                }
            }
        } else {
            this.f12725ba = oJ(this.kkU.get());
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
