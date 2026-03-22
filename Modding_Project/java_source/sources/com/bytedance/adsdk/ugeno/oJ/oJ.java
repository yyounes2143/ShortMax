package com.bytedance.adsdk.ugeno.oJ;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.adsdk.ugeno.oJ.oJ.oJ;
import com.bytedance.adsdk.ugeno.oJ.tB;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ extends AnimatorListenerAdapter {
    private int Pfn;
    private tB ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f11699ba = 1;
    private com.bytedance.adsdk.ugeno.oJ.oJ.oJ cFZ;
    private Context ex;
    private ZYk jFA;
    private com.bytedance.adsdk.ugeno.ZYk.tB oJ;

    /* renamed from: so  reason: collision with root package name */
    private String f11700so;
    private ValueAnimator tB;

    public oJ(Context context, com.bytedance.adsdk.ugeno.ZYk.tB tBVar, tB tBVar2) {
        this.oJ = tBVar;
        this.ZYk = tBVar2;
        this.ex = context;
    }

    public String Pfn() {
        return this.f11700so;
    }

    public void ZYk() {
        ValueAnimator valueAnimator = this.tB;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    public ValueAnimator ex() {
        com.bytedance.adsdk.ugeno.oJ.ZYk.oJ tBVar;
        tB tBVar2 = this.ZYk;
        if (tBVar2 == null || this.oJ == null) {
            return null;
        }
        Map<String, TreeMap<Float, String>> ZYk = tBVar2.ZYk();
        ArrayList arrayList = new ArrayList();
        if (ZYk != null && !ZYk.isEmpty()) {
            for (Map.Entry<String, TreeMap<Float, String>> entry : ZYk.entrySet()) {
                if (entry != null) {
                    String key = entry.getKey();
                    String tB = Pfn.oJ(key).tB();
                    tB.hashCode();
                    char c10 = 65535;
                    switch (tB.hashCode()) {
                        case 104431:
                            if (tB.equals("int")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case 97526364:
                            if (tB.equals(TypedValues.Custom.S_FLOAT)) {
                                c10 = 1;
                                break;
                            }
                            break;
                        case 106845584:
                            if (tB.equals("point")) {
                                c10 = 2;
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                            tBVar = new com.bytedance.adsdk.ugeno.oJ.ZYk.tB(this.ex, this.oJ, key, entry.getValue());
                            break;
                        case 1:
                            tBVar = new com.bytedance.adsdk.ugeno.oJ.ZYk.ZYk(this.ex, this.oJ, key, entry.getValue());
                            break;
                        case 2:
                            tBVar = new com.bytedance.adsdk.ugeno.oJ.ZYk.ex(this.ex, this.oJ, key, entry.getValue());
                            break;
                        default:
                            tBVar = null;
                            break;
                    }
                    if (tBVar != null) {
                        arrayList.addAll(tBVar.Pfn());
                    }
                }
            }
        }
        JSONObject oJ = this.ZYk.oJ();
        if (oJ != null) {
            com.bytedance.adsdk.ugeno.oJ.oJ.oJ oJ2 = oJ.C0149oJ.oJ(this.oJ, oJ);
            this.cFZ = oJ2;
            if (oJ2 != null) {
                arrayList.addAll(oJ2.tB());
            }
        }
        final View dLZ = this.oJ.dLZ();
        if (dLZ == null) {
            return null;
        }
        final tB.oJ cFZ = this.ZYk.cFZ();
        if (cFZ != null) {
            dLZ.post(new Runnable() { // from class: com.bytedance.adsdk.ugeno.oJ.oJ.1
                @Override // java.lang.Runnable
                public void run() {
                    int width = dLZ.getWidth();
                    int height = dLZ.getHeight();
                    dLZ.setPivotX(ex.oJ(cFZ.oJ, width));
                    dLZ.setPivotY(ex.oJ(cFZ.ZYk, height));
                }
            });
        }
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(dLZ, (PropertyValuesHolder[]) arrayList.toArray(new PropertyValuesHolder[0]));
        this.Pfn = ex.oJ(this.ZYk.ex());
        ofPropertyValuesHolder.setDuration(this.ZYk.tB());
        int i10 = this.Pfn;
        if (i10 != Integer.MIN_VALUE) {
            ofPropertyValuesHolder.setRepeatCount(i10);
        }
        this.f11699ba = this.ZYk.kkU();
        this.f11700so = this.ZYk.jFA();
        ofPropertyValuesHolder.setStartDelay(this.ZYk.ba());
        ofPropertyValuesHolder.setRepeatMode(ex.oJ(this.ZYk.Pfn()));
        ofPropertyValuesHolder.setInterpolator(ex.ZYk(this.ZYk.so()));
        ofPropertyValuesHolder.addListener(this);
        this.tB = ofPropertyValuesHolder;
        return ofPropertyValuesHolder;
    }

    public void oJ() {
        ValueAnimator valueAnimator = this.tB;
        if (valueAnimator == null || this.f11699ba == 0 || this.Pfn == Integer.MIN_VALUE) {
            return;
        }
        valueAnimator.start();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        ZYk zYk = this.jFA;
        if (zYk != null) {
            zYk.ZYk();
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        super.onAnimationStart(animator);
        ZYk zYk = this.jFA;
        if (zYk != null) {
            zYk.oJ();
        }
    }

    public void tB() {
        ValueAnimator valueAnimator = this.tB;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public void ZYk(Canvas canvas) {
        com.bytedance.adsdk.ugeno.oJ.oJ.oJ oJVar = this.cFZ;
        if (oJVar != null) {
            oJVar.ZYk(canvas);
        }
    }

    public void oJ(ZYk zYk) {
        this.jFA = zYk;
    }

    public void oJ(Canvas canvas) {
        com.bytedance.adsdk.ugeno.oJ.oJ.oJ oJVar = this.cFZ;
        if (oJVar != null) {
            oJVar.oJ(canvas);
        }
    }

    public void oJ(int i10, int i11) {
        com.bytedance.adsdk.ugeno.oJ.oJ.oJ oJVar = this.cFZ;
        if (oJVar != null) {
            oJVar.oJ(i10, i11);
        }
    }
}
