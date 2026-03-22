package com.bytedance.sdk.component.adexpress.ba;

import android.content.Context;
import android.text.TextUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
/* loaded from: classes3.dex */
public class dLZ extends FrameLayout {
    private final ImageView ZYk;
    private final RotateAnimation ex;
    private final TextView oJ;
    private final BTZ tB;

    public dLZ(@NonNull Context context) {
        super(context);
        addView(com.bytedance.sdk.component.adexpress.tB.oJ.ex(context));
        this.oJ = (TextView) findViewById(2097610742);
        this.ZYk = (ImageView) findViewById(2097610745);
        this.tB = (BTZ) findViewById(2097610744);
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 30.0f, 1, 0.65f, 1, 0.9f);
        this.ex = rotateAnimation;
        rotateAnimation.setDuration(300L);
        rotateAnimation.setRepeatMode(2);
        rotateAnimation.setRepeatCount(1);
        rotateAnimation.setInterpolator(new LinearInterpolator());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable getHaloAnimation() {
        return new Runnable() { // from class: com.bytedance.sdk.component.adexpress.ba.dLZ.1
            @Override // java.lang.Runnable
            public void run() {
                dLZ.this.ZYk.startAnimation(dLZ.this.ex);
                dLZ.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.ba.dLZ.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        dLZ.this.tB.oJ(4);
                    }
                }, 100L);
                dLZ.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.ba.dLZ.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        dLZ.this.tB.oJ(4);
                    }
                }, 300L);
                dLZ dlz = dLZ.this;
                dlz.postDelayed(dlz.getHaloAnimation(), 1200L);
            }
        };
    }

    public void setText(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "Slide or click to jump to the details page or third-party application";
        }
        TextView textView = this.oJ;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void ZYk() {
        this.ex.cancel();
    }

    public void oJ() {
        postDelayed(getHaloAnimation(), 300L);
    }
}
