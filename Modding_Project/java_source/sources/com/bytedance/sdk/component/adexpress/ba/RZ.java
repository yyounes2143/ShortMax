package com.bytedance.sdk.component.adexpress.ba;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class RZ extends LinearLayout {
    private JSONObject BTZ;
    private TextView Pfn;
    private TextView ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private TextView f12648ba;
    private oJ cFZ;
    private int dLZ;
    private com.bytedance.sdk.component.utils.jr ex;
    private int jFA;
    private int kkU;
    private TextView oJ;

    /* renamed from: so  reason: collision with root package name */
    private LinearLayout f12649so;
    private ImageView tB;

    /* renamed from: com.bytedance.sdk.component.adexpress.ba.RZ$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (RZ.this.tB != null) {
                final RotateAnimation rotateAnimation = new RotateAnimation(-14.0f, 14.0f, 1, 0.9f, 1, 0.9f);
                rotateAnimation.setInterpolator(new ZYk(null));
                rotateAnimation.setDuration(1000L);
                rotateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.bytedance.sdk.component.adexpress.ba.RZ.1.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        RZ.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.ba.RZ.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                RZ.this.tB.startAnimation(rotateAnimation);
                            }
                        }, 250L);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                RZ.this.tB.startAnimation(rotateAnimation);
            }
        }
    }

    /* loaded from: classes3.dex */
    private static class ZYk implements Interpolator {
        private ZYk() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            if (f10 <= 0.25f) {
                return (f10 * (-2.0f)) + 0.5f;
            }
            if (f10 <= 0.5f) {
                return (f10 * 4.0f) - 1.0f;
            }
            if (f10 <= 0.75f) {
                return (f10 * (-4.0f)) + 3.0f;
            }
            return (f10 * 2.0f) - 1.5f;
        }

        /* synthetic */ ZYk(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    /* loaded from: classes3.dex */
    public interface oJ {
    }

    public RZ(@NonNull Context context, View view, int i10, int i11, int i12, JSONObject jSONObject) {
        super(context);
        this.jFA = i10;
        this.kkU = i11;
        this.dLZ = i12;
        this.BTZ = jSONObject;
        oJ(context, view);
    }

    public LinearLayout getShakeLayout() {
        return this.f12649so;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.ex == null) {
                this.ex = new com.bytedance.sdk.component.utils.jr(getContext().getApplicationContext(), 1);
            }
            new Object() { // from class: com.bytedance.sdk.component.adexpress.ba.RZ.2
            };
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setOnShakeViewListener(oJ oJVar) {
        this.cFZ = oJVar;
    }

    public void setShakeText(String str) {
        if (TextUtils.isEmpty(str)) {
            this.Pfn.setVisibility(8);
            this.f12648ba.setVisibility(8);
            return;
        }
        this.Pfn.setText(str);
    }

    protected void oJ(Context context, View view) {
        addView(view);
        this.f12649so = (LinearLayout) findViewById(2097610727);
        this.tB = (ImageView) findViewById(2097610725);
        this.oJ = (TextView) findViewById(2097610724);
        this.ZYk = (TextView) findViewById(2097610726);
        this.Pfn = (TextView) findViewById(2097610723);
        this.f12648ba = (TextView) findViewById(2097610728);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.f12649so.setBackground(gradientDrawable);
    }

    public void oJ() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "alpha", 0.0f, 1.0f);
        ofFloat.setDuration(300L);
        ofFloat.start();
        postDelayed(new AnonymousClass1(), 500L);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
    }
}
