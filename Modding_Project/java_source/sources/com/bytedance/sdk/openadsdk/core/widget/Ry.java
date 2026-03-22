package com.bytedance.sdk.openadsdk.core.widget;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class Ry {
    private float Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private int f13299ba;
    private int cFZ;
    private boolean dLZ;
    private float ex;
    private final oJ oJ;
    private final boolean ZYk = false;
    private boolean tB = false;

    /* renamed from: so  reason: collision with root package name */
    private boolean f13300so = true;
    private boolean jFA = false;
    private final View.OnTouchListener kkU = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.Ry.1
        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (Ry.this.oJ.cY()) {
                if (!Ry.this.tB) {
                    return true;
                }
                return false;
            }
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action != 1) {
                    if (action == 3) {
                        Ry.this.dLZ = false;
                    }
                } else {
                    if (Math.abs(x10 - Ry.this.f13299ba) > 20.0f || Math.abs(y10 - Ry.this.cFZ) > 20.0f) {
                        Ry.this.f13300so = false;
                    }
                    Ry.this.f13300so = true;
                    Ry.this.jFA = false;
                    Ry.this.ex = 0.0f;
                    Ry.this.Pfn = 0.0f;
                    Ry.this.f13299ba = 0;
                    if (Ry.this.oJ != null) {
                        Ry.this.oJ.oJ(view, Ry.this.f13300so);
                    }
                    Ry.this.dLZ = false;
                }
            } else {
                Ry ry = Ry.this;
                ry.dLZ = ry.oJ(motionEvent);
                Ry.this.ex = x10;
                Ry.this.Pfn = y10;
                Ry.this.f13299ba = (int) x10;
                Ry.this.cFZ = (int) y10;
                Ry.this.f13300so = true;
                if (Ry.this.oJ != null && Ry.this.tB) {
                    Ry.this.oJ.oJ(view, true);
                }
            }
            if (!Ry.this.tB) {
                return true;
            }
            return false;
        }
    };

    /* loaded from: classes3.dex */
    public interface oJ {
        boolean cY();

        void oJ(View view, boolean z10);
    }

    public Ry(oJ oJVar) {
        this.oJ = oJVar;
    }

    public void oJ(View view) {
        if (view != null) {
            view.setOnTouchListener(this.kkU);
        }
    }

    public void oJ(boolean z10) {
        this.tB = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean oJ(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            int tB = cdg.tB(com.bytedance.sdk.openadsdk.core.si.oJ().getApplicationContext());
            int Pfn = cdg.Pfn(com.bytedance.sdk.openadsdk.core.si.oJ().getApplicationContext());
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float f10 = tB;
            if (rawX <= f10 * 0.01f || rawX >= f10 * 0.99f) {
                return true;
            }
            float f11 = Pfn;
            return rawY <= 0.01f * f11 || rawY >= f11 * 0.99f;
        }
        return false;
    }
}
