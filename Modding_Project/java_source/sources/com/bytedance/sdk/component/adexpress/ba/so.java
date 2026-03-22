package com.bytedance.sdk.component.adexpress.ba;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.text.TextUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.ss.ttm.player.MediaPlayer;
/* loaded from: classes3.dex */
public class so extends Id {
    private int Pfn;
    private ImageView ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private AnimatorSet f12667ba;
    private ImageView ex;
    private TextView oJ;
    private ImageView tB;

    public so(Context context) {
        super(context);
        this.f12667ba = new AnimatorSet();
        ZYk(context);
    }

    private void ZYk(Context context) {
        addView(com.bytedance.sdk.component.adexpress.tB.oJ.ZYk(context));
        this.ZYk = (ImageView) findViewById(2097610751);
        this.tB = (ImageView) findViewById(2097610750);
        this.ex = (ImageView) findViewById(2097610749);
        this.oJ = (TextView) findViewById(2097610748);
    }

    private void ex() {
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this, "alphaColor", 0, 60);
        ofInt.setInterpolator(new LinearInterpolator());
        ofInt.setDuration(2000L);
        ofInt.setRepeatCount(-1);
        ofInt.start();
    }

    public float getAlphaColor() {
        return this.Pfn;
    }

    @Override // com.bytedance.sdk.component.adexpress.ba.Id
    protected void oJ(Context context) {
    }

    public void setAlphaColor(int i10) {
        if (i10 >= 0 && i10 <= 60) {
            int i11 = i10 + MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO;
            ImageView imageView = this.ex;
            int rgb = Color.rgb(i11, i11, i11);
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
            imageView.setColorFilter(rgb, mode);
            int i12 = ((i10 + 20) % 60) + MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO;
            this.tB.setColorFilter(Color.rgb(i12, i12, i12), mode);
            int i13 = ((i10 + 40) % 60) + MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO;
            this.ZYk.setColorFilter(Color.rgb(i13, i13, i13), mode);
        }
    }

    public void setButtonText(String str) {
        if (this.oJ != null && !TextUtils.isEmpty(str)) {
            this.oJ.setText(str);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ba.Id
    public void oJ() {
        ex();
    }

    @Override // com.bytedance.sdk.component.adexpress.ba.Id
    public void ZYk() {
        this.f12667ba.cancel();
    }
}
