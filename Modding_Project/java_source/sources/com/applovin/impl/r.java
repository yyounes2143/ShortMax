package com.applovin.impl;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
/* loaded from: classes2.dex */
public class r extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private ViewGroup f9377a;

    /* renamed from: b  reason: collision with root package name */
    private AppLovinSdkUtils.Size f9378b;

    /* renamed from: c  reason: collision with root package name */
    private Activity f9379c;

    /* renamed from: d  reason: collision with root package name */
    private RelativeLayout f9380d;

    public r(ViewGroup viewGroup, AppLovinSdkUtils.Size size, Activity activity) {
        super(activity, 16973840);
        this.f9377a = viewGroup;
        this.f9378b = size;
        this.f9379c = activity;
        requestWindowFeature(1);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.f9380d.removeView(this.f9377a);
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(AppLovinSdkUtils.dpToPx(this.f9379c, this.f9378b.getWidth()), AppLovinSdkUtils.dpToPx(this.f9379c, this.f9378b.getHeight()));
        layoutParams.addRule(13);
        this.f9377a.setLayoutParams(layoutParams);
        int dpToPx = AppLovinSdkUtils.dpToPx(this.f9379c, 60);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(dpToPx, dpToPx);
        layoutParams2.addRule(14);
        layoutParams2.addRule(12);
        ImageButton imageButton = new ImageButton(this.f9379c);
        imageButton.setLayoutParams(layoutParams2);
        imageButton.setImageDrawable(this.f9379c.getResources().getDrawable(R.drawable.applovin_ic_x_mark));
        imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageButton.setColorFilter(-1);
        imageButton.setBackground(null);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.ve
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r.this.a(view);
            }
        });
        RelativeLayout relativeLayout = new RelativeLayout(this.f9379c);
        this.f9380d = relativeLayout;
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f9380d.setBackgroundColor(Integer.MIN_VALUE);
        this.f9380d.addView(imageButton);
        this.f9380d.addView(this.f9377a);
        this.f9380d.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.we
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r.this.b(view);
            }
        });
        setContentView(this.f9380d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        dismiss();
    }
}
