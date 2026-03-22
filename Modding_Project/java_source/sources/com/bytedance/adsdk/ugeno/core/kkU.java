package com.bytedance.adsdk.ugeno.core;

import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.bytedance.adsdk.ugeno.core.oJ;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class kkU {
    private int Pfn;
    private oJ ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f11665ba;
    private String cFZ;
    private View ex;
    Paint oJ;
    private AnimatorSet tB = new AnimatorSet();

    public kkU(View view, oJ oJVar) {
        this.ex = view;
        this.ZYk = oJVar;
        Paint paint = new Paint();
        this.oJ = paint;
        paint.setAntiAlias(true);
    }

    public void ZYk() {
        AnimatorSet animatorSet = this.tB;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public void oJ() {
        ArrayList arrayList = new ArrayList();
        List<oJ.C0144oJ> tB = this.ZYk.tB();
        if (tB == null || tB.size() <= 0) {
            return;
        }
        for (oJ.C0144oJ c0144oJ : tB) {
            if (c0144oJ != null) {
                ObjectAnimator objectAnimator = new ObjectAnimator();
                objectAnimator.setDuration(c0144oJ.oJ());
                if (TextUtils.equals(c0144oJ.Pfn(), "translateX")) {
                    objectAnimator.setPropertyName("translationX");
                } else if (TextUtils.equals(c0144oJ.Pfn(), "translateY")) {
                    objectAnimator.setPropertyName("translationY");
                } else {
                    objectAnimator.setPropertyName(c0144oJ.Pfn());
                }
                objectAnimator.setStartDelay(c0144oJ.ex());
                objectAnimator.setTarget(this.ex);
                if (TextUtils.equals(c0144oJ.Pfn(), TtmlNode.ATTR_TTS_BACKGROUND_COLOR)) {
                    objectAnimator.setIntValues((int) c0144oJ.ba(), (int) c0144oJ.cFZ());
                    Log.d("UGenAnimation", "playAnimation: from = " + c0144oJ.ba() + "; to=" + c0144oJ.cFZ());
                } else {
                    objectAnimator.setFloatValues(c0144oJ.ba(), c0144oJ.cFZ());
                }
                int ZYk = (int) this.ZYk.ZYk();
                if (ZYk != 0) {
                    objectAnimator.setRepeatCount(ZYk);
                } else {
                    objectAnimator.setRepeatCount((int) c0144oJ.ZYk());
                }
                if (TextUtils.equals(c0144oJ.Pfn(), TtmlNode.ATTR_TTS_BACKGROUND_COLOR)) {
                    objectAnimator.setEvaluator(new ArgbEvaluator());
                }
                String ba2 = this.ZYk.ba();
                if (TextUtils.isEmpty(ba2)) {
                    ba2 = c0144oJ.tB();
                }
                if (TextUtils.equals(ba2, "reverse")) {
                    objectAnimator.setRepeatMode(2);
                } else {
                    objectAnimator.setRepeatMode(1);
                }
                if (c0144oJ.so() != null && c0144oJ.so().length > 0) {
                    objectAnimator.setFloatValues(c0144oJ.so());
                }
                if (TextUtils.equals(c0144oJ.Pfn(), "rotationX")) {
                    this.ex.post(new Runnable() { // from class: com.bytedance.adsdk.ugeno.core.kkU.1
                        @Override // java.lang.Runnable
                        public void run() {
                            kkU.this.ex.setPivotX(kkU.this.ex.getWidth() / 2.0f);
                            kkU.this.ex.setPivotY(kkU.this.ex.getHeight());
                        }
                    });
                }
                if (TextUtils.equals(c0144oJ.Pfn(), "ripple")) {
                    this.cFZ = c0144oJ.kkU();
                }
                String jFA = c0144oJ.jFA();
                jFA.hashCode();
                char c10 = 65535;
                switch (jFA.hashCode()) {
                    case -1354466595:
                        if (jFA.equals("accelerate")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1263948740:
                        if (jFA.equals("decelerate")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1102672091:
                        if (jFA.equals("linear")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 475910905:
                        if (jFA.equals("accelerateDecelerate")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 1312628413:
                        if (jFA.equals("standard")) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        objectAnimator.setInterpolator(new AccelerateInterpolator());
                        break;
                    case 1:
                        objectAnimator.setInterpolator(new DecelerateInterpolator());
                        break;
                    case 2:
                    case 4:
                        objectAnimator.setInterpolator(new LinearInterpolator());
                        break;
                    case 3:
                        objectAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
                        break;
                }
                arrayList.add(objectAnimator);
            }
        }
        if (this.ZYk.ex() != 0) {
            this.tB.setDuration(this.ZYk.ex());
        }
        this.tB.setStartDelay(this.ZYk.Pfn());
        if (TextUtils.equals(this.ZYk.oJ(), "sequentially")) {
            this.tB.playSequentially(arrayList);
        } else {
            this.tB.playTogether(arrayList);
        }
        this.tB.start();
    }

    public void oJ(Canvas canvas, IAnimation iAnimation) {
        try {
            if (iAnimation.getRipple() == 0.0f || TextUtils.isEmpty(this.cFZ)) {
                return;
            }
            this.oJ.setColor(com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(this.cFZ));
            this.oJ.setAlpha(90);
            ((ViewGroup) this.ex.getParent()).setClipChildren(true);
            int i10 = this.Pfn;
            int i11 = this.f11665ba;
            canvas.drawCircle(i10, i11, Math.min(i10, i11) * 2 * iAnimation.getRipple(), this.oJ);
        } catch (Throwable th2) {
            Log.d("UGenAnimation", "ripple animation error " + th2.getMessage());
        }
    }

    public void oJ(int i10, int i11) {
        this.Pfn = i10 / 2;
        this.f11665ba = i11 / 2;
    }
}
