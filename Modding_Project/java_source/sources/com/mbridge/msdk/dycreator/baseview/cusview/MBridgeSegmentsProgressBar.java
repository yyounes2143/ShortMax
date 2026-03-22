package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class MBridgeSegmentsProgressBar extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private final String f26318a;

    /* renamed from: b  reason: collision with root package name */
    private int f26319b;

    /* renamed from: c  reason: collision with root package name */
    private int f26320c;

    /* renamed from: d  reason: collision with root package name */
    private int f26321d;

    /* renamed from: e  reason: collision with root package name */
    private int f26322e;

    /* renamed from: f  reason: collision with root package name */
    private int f26323f;

    /* renamed from: g  reason: collision with root package name */
    private int f26324g;

    /* renamed from: h  reason: collision with root package name */
    private int f26325h;

    /* renamed from: i  reason: collision with root package name */
    private List<ProgressBar> f26326i;

    /* renamed from: j  reason: collision with root package name */
    private TextView f26327j;

    /* renamed from: k  reason: collision with root package name */
    private String f26328k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f26329l;

    public MBridgeSegmentsProgressBar(Context context) {
        super(context);
        this.f26318a = "MBridgeSegmentsProgressBar";
        this.f26320c = 1;
        this.f26321d = 20;
        this.f26322e = 10;
        this.f26323f = 1;
        this.f26324g = -1711276033;
        this.f26325h = -1;
        this.f26326i = new ArrayList();
        this.f26329l = false;
    }

    private void a() {
        Drawable drawable;
        try {
            this.f26329l = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh");
        } catch (Throwable th2) {
            p0.b("MBridgeSegmentsProgressBar", th2.getMessage());
        }
        try {
            if (this.f26320c == 1) {
                setOrientation(1);
                if (TextUtils.isEmpty(this.f26328k)) {
                    this.f26328k = this.f26329l ? "正在播放第%s个，共%s个视频" : "The %s is playing, %s videos.";
                }
            }
            if (this.f26320c == 2) {
                setOrientation(0);
                if (TextUtils.isEmpty(this.f26328k)) {
                    this.f26328k = this.f26329l ? "广告 %s/%s" : "ADS %s/%s";
                }
            }
            this.f26326i.clear();
            removeAllViews();
            setBackground(getBackgroundDrawable());
            TextView textView = new TextView(getContext());
            this.f26327j = textView;
            textView.setTextColor(-1);
            this.f26327j.setTextSize(12.0f);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            this.f26327j.setLayoutParams(layoutParams);
            if (this.f26320c == 1) {
                layoutParams.gravity = 5;
                TextView textView2 = this.f26327j;
                int i10 = this.f26321d;
                textView2.setPadding(i10 / 2, 15, i10 / 2, 5);
            }
            if (this.f26320c == 2) {
                this.f26327j.setGravity(16);
                TextView textView3 = this.f26327j;
                int i11 = this.f26321d;
                textView3.setPadding(i11 / 2, 0, i11 / 2, 0);
            }
            int a10 = h0.a(getContext(), "mbridge_reward_video_icon", "drawable");
            if (h0.a(a10) && (drawable = getContext().getResources().getDrawable(a10)) != null) {
                drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                this.f26327j.setCompoundDrawables(drawable, null, null, null);
                this.f26327j.setCompoundDrawablePadding(5);
            }
            this.f26327j.setText(a(this.f26323f));
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setOrientation(0);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 25);
            linearLayout.setLayoutParams(layoutParams2);
            for (int i12 = 0; i12 < this.f26319b; i12++) {
                ProgressBar progressBar = new ProgressBar(getContext(), null, 16842872);
                progressBar.setMax(100);
                progressBar.setProgress(0);
                progressBar.setProgressDrawable(getSegmentLayerDrawable());
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, 20, 1.0f);
                int i13 = this.f26321d;
                layoutParams3.leftMargin = i13 / 2;
                layoutParams3.rightMargin = i13 / 2;
                progressBar.setLayoutParams(layoutParams3);
                linearLayout.addView(progressBar);
                this.f26326i.add(progressBar);
            }
            int i14 = this.f26320c;
            if (i14 == 1) {
                setPadding(15, 10, 15, 25);
                addView(this.f26327j);
                addView(linearLayout);
            } else if (i14 == 2) {
                setPadding(15, 0, 15, 25);
                layoutParams2.gravity = 16;
                layoutParams2.weight = 1.0f;
                addView(linearLayout);
                addView(this.f26327j);
            } else {
                addView(linearLayout);
            }
        } catch (Throwable th3) {
            p0.b("MBridgeSegmentsProgressBar", th3.getMessage());
        }
    }

    private GradientDrawable getBackgroundDrawable() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setGradientType(0);
        gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        gradientDrawable.setDither(true);
        gradientDrawable.setColors(new int[]{0, 1291845632});
        return gradientDrawable;
    }

    private LayerDrawable getSegmentLayerDrawable() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(this.f26322e);
        gradientDrawable.setColor(this.f26324g);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(0);
        gradientDrawable2.setCornerRadius(this.f26322e);
        gradientDrawable2.setColor(this.f26325h);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, new ScaleDrawable(gradientDrawable2, 3, 1.0f, -1.0f)});
        layerDrawable.setId(0, 16908288);
        layerDrawable.setId(1, 16908301);
        return layerDrawable;
    }

    public void dismiss() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(1000L);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeSegmentsProgressBar.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MBridgeSegmentsProgressBar.this.setVisibility(8);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        startAnimation(alphaAnimation);
    }

    public void init(int i10, int i11) {
        this.f26319b = i10;
        this.f26320c = i11;
        a();
    }

    public void setIndicatorText(String str) {
        this.f26328k = str;
    }

    public void setProgress(int i10, int i11) {
        try {
            if (this.f26326i.size() == 0) {
                return;
            }
            if (i11 < this.f26326i.size()) {
                this.f26326i.get(i11).setProgress(i10);
            }
            int i12 = i11 + 1;
            if (i12 > this.f26323f) {
                this.f26323f = i12;
                TextView textView = this.f26327j;
                if (textView != null) {
                    textView.setText(a(i12));
                }
            }
        } catch (Throwable th2) {
            p0.b("MBridgeSegmentsProgressBar", th2.getMessage());
        }
    }

    public void init(int i10, int i11, int i12, int i13) {
        this.f26319b = i10;
        this.f26320c = i11;
        this.f26325h = i12;
        this.f26324g = i13;
        a();
    }

    public void init(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f26319b = i10;
        this.f26320c = i11;
        this.f26325h = i12;
        this.f26324g = i13;
        this.f26321d = i14;
        this.f26322e = i15;
        a();
    }

    public MBridgeSegmentsProgressBar(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26318a = "MBridgeSegmentsProgressBar";
        this.f26320c = 1;
        this.f26321d = 20;
        this.f26322e = 10;
        this.f26323f = 1;
        this.f26324g = -1711276033;
        this.f26325h = -1;
        this.f26326i = new ArrayList();
        this.f26329l = false;
    }

    public MBridgeSegmentsProgressBar(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26318a = "MBridgeSegmentsProgressBar";
        this.f26320c = 1;
        this.f26321d = 20;
        this.f26322e = 10;
        this.f26323f = 1;
        this.f26324g = -1711276033;
        this.f26325h = -1;
        this.f26326i = new ArrayList();
        this.f26329l = false;
    }

    @RequiresApi(api = 21)
    public MBridgeSegmentsProgressBar(Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f26318a = "MBridgeSegmentsProgressBar";
        this.f26320c = 1;
        this.f26321d = 20;
        this.f26322e = 10;
        this.f26323f = 1;
        this.f26324g = -1711276033;
        this.f26325h = -1;
        this.f26326i = new ArrayList();
        this.f26329l = false;
    }

    private StringBuilder a(int i10) {
        StringBuilder sb2 = new StringBuilder();
        try {
            sb2.append(String.format(this.f26328k, Integer.valueOf(i10), Integer.valueOf(this.f26319b)));
        } catch (Throwable th2) {
            sb2.append(this.f26319b);
            sb2.append("videos, the");
            sb2.append(i10);
            sb2.append(" is playing.");
            p0.b("MBridgeSegmentsProgressBar", th2.getMessage());
        }
        return sb2;
    }
}
