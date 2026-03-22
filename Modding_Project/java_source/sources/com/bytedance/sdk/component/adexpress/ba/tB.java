package com.bytedance.sdk.component.adexpress.ba;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.Ln;
/* loaded from: classes3.dex */
public class tB extends FrameLayout {
    private si Pfn;
    private ImageView ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private AnimatorSet f12668ba;
    private TextView ex;
    private Context oJ;
    private ImageView tB;

    public tB(@NonNull Context context) {
        super(context);
        this.f12668ba = new AnimatorSet();
        this.oJ = context;
        Pfn();
        ba();
    }

    private void Pfn() {
        FrameLayout frameLayout = new FrameLayout(this.oJ);
        this.Pfn = new si(this.oJ);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 95.0f), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 95.0f));
        layoutParams.gravity = 17;
        frameLayout.addView(this.Pfn, layoutParams);
        this.ZYk = new ImageView(this.oJ);
        int oJ = Ln.oJ(this.oJ, 60.0f);
        this.ZYk.setImageDrawable(com.bytedance.sdk.component.adexpress.ex.so.oJ(1, null, null, new int[]{oJ, oJ}, Integer.valueOf(Ln.oJ(this.oJ, 1.0f)), Integer.valueOf(Color.parseColor("#80FFFFFF"))));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 75.0f), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 75.0f));
        layoutParams2.gravity = 17;
        frameLayout.addView(this.ZYk, layoutParams2);
        this.tB = new ImageView(this.oJ);
        int oJ2 = Ln.oJ(this.oJ, 50.0f);
        this.tB.setImageDrawable(com.bytedance.sdk.component.adexpress.ex.so.oJ(1, Integer.valueOf(Color.parseColor("#80FFFFFF")), null, new int[]{oJ2, oJ2}, null, null));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 63.0f), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.oJ, 63.0f));
        layoutParams3.gravity = 17;
        frameLayout.addView(this.tB, layoutParams3);
        addView(frameLayout);
        TextView textView = new TextView(this.oJ);
        this.ex = textView;
        textView.setTextColor(-1);
        this.ex.setMaxLines(1);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 81;
        addView(this.ex, layoutParams4);
    }

    private void ba() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.tB, "scaleX", 1.0f, 0.9f);
        ofFloat.setRepeatCount(-1);
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.setRepeatMode(2);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.tB, "scaleY", 1.0f, 0.9f);
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setRepeatMode(2);
        ofFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f12668ba.setDuration(800L);
        this.f12668ba.playTogether(ofFloat, ofFloat2);
    }

    public void ZYk() {
        this.f12668ba.cancel();
    }

    public void ex() {
        this.Pfn.ZYk();
        this.Pfn.tB();
    }

    public void oJ() {
        this.f12668ba.start();
    }

    public void setGuideText(String str) {
        this.ex.setText(str);
    }

    public void tB() {
        this.Pfn.oJ();
    }
}
