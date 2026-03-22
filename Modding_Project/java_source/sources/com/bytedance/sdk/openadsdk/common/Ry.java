package com.bytedance.sdk.openadsdk.common;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.common.awB;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class Ry {
    private boolean BTZ;
    private final RelativeLayout Pfn;
    TTAdDislikeToast ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final cY f12958ba;
    private final Context cFZ;
    private TextView jFA;
    private com.bytedance.sdk.openadsdk.core.Pfn.ba kkU;
    awB oJ;

    /* renamed from: so  reason: collision with root package name */
    private ImageView f12959so;
    final AtomicBoolean tB = new AtomicBoolean(false);
    final AtomicBoolean ex = new AtomicBoolean(false);
    private final int dLZ = cdg.ZYk(com.bytedance.sdk.openadsdk.core.si.oJ(), 44.0f);

    public Ry(Context context, RelativeLayout relativeLayout, cY cYVar) {
        this.cFZ = context;
        this.Pfn = relativeLayout;
        this.f12958ba = cYVar;
        Pfn();
    }

    private void Pfn() {
        String UUI;
        this.f12959so = (ImageView) this.Pfn.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.UK);
        this.jFA = (TextView) this.Pfn.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.VSB);
        ImageView imageView = (ImageView) this.Pfn.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.jXJ);
        this.kkU = (com.bytedance.sdk.openadsdk.core.Pfn.ba) this.Pfn.findViewById(com.bytedance.sdk.openadsdk.utils.eZI.uvK);
        cY cYVar = this.f12958ba;
        if (cYVar != null) {
            TextView textView = this.jFA;
            if (TextUtils.isEmpty(cYVar.UUI())) {
                UUI = com.bytedance.sdk.component.utils.cY.oJ(this.cFZ, "tt_web_title_default");
            } else {
                UUI = this.f12958ba.UUI();
            }
            textView.setText(UUI);
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.Ry.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Ry.this.ex();
            }
        });
    }

    private void ba() {
        try {
            if (this.oJ == null) {
                awB awb = new awB(this.cFZ, this.f12958ba);
                this.oJ = awb;
                awb.setDislikeSource("landing_page");
                this.oJ.setCallback(new awB.oJ() { // from class: com.bytedance.sdk.openadsdk.common.Ry.6
                    @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                    public void ZYk(View view) {
                        Ry.this.tB.set(false);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                    public void oJ(View view) {
                        Ry.this.tB.set(true);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.awB.oJ
                    public void oJ(FilterWord filterWord) {
                        if (Ry.this.ex.get() || filterWord == null || filterWord.hasSecondOptions()) {
                            return;
                        }
                        Ry.this.ex.set(true);
                    }
                });
            }
            FrameLayout frameLayout = (FrameLayout) this.Pfn.getRootView().findViewById(16908290);
            frameLayout.addView(this.oJ);
            if (this.ZYk == null) {
                TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this.cFZ);
                this.ZYk = tTAdDislikeToast;
                frameLayout.addView(tTAdDislikeToast);
            }
        } catch (Throwable th2) {
            ApmHelper.reportCustomError("initDislike error", "TTTitleNewStyleManager", th2);
        }
    }

    private void cFZ() {
        this.ZYk.show(TTAdDislikeToast.getDislikeTip());
    }

    public void ZYk() {
        try {
            final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.Pfn.getLayoutParams();
            if (!this.BTZ && marginLayoutParams.topMargin == 0) {
                ValueAnimator ofInt = ValueAnimator.ofInt(0, -this.dLZ);
                ofInt.setDuration(300L);
                ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.common.Ry.4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        marginLayoutParams.topMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        Ry.this.Pfn.setLayoutParams(marginLayoutParams);
                    }
                });
                ofInt.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.common.Ry.5
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        Ry.this.BTZ = false;
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        Ry.this.BTZ = true;
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }
                });
                ofInt.start();
            }
        } catch (Throwable unused) {
        }
    }

    protected void ex() {
        if (this.ex.get()) {
            cFZ();
            return;
        }
        if (this.oJ == null) {
            ba();
        }
        awB awb = this.oJ;
        if (awb != null) {
            awb.oJ();
        }
    }

    public ImageView tB() {
        return this.f12959so;
    }

    public void oJ(int i10) {
        if (i10 == 100) {
            this.kkU.setVisibility(8);
            return;
        }
        this.kkU.setVisibility(0);
        this.kkU.setProgress(i10);
    }

    public void oJ() {
        try {
            final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.Pfn.getLayoutParams();
            if (this.BTZ) {
                return;
            }
            int i10 = marginLayoutParams.topMargin;
            int i11 = this.dLZ;
            if (i10 == (-i11)) {
                ValueAnimator ofInt = ValueAnimator.ofInt(-i11, 0);
                ofInt.setDuration(300L);
                ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.common.Ry.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        marginLayoutParams.topMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        Ry.this.Pfn.setLayoutParams(marginLayoutParams);
                    }
                });
                ofInt.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.common.Ry.3
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        Ry.this.BTZ = false;
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        Ry.this.BTZ = true;
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }
                });
                ofInt.start();
            }
        } catch (Throwable unused) {
        }
    }
}
