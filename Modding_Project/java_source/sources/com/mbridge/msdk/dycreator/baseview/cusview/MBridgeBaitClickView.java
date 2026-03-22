package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.image.b;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
/* loaded from: classes5.dex */
public class MBridgeBaitClickView extends RelativeLayout {
    public static final int ANIMATION_TYPE_DOUBLE_CLICK = 4;
    public static final int ANIMATION_TYPE_FAST_SCALE = 1;
    public static final int ANIMATION_TYPE_ROTATE = 5;
    public static final int ANIMATION_TYPE_SLOW_SCALE = 2;
    public static final int ANIMATION_TYPE_SLOW_SCALE_WITH_PAUSE = 3;

    /* renamed from: a  reason: collision with root package name */
    private MBridgeDyImageView f26276a;

    /* renamed from: b  reason: collision with root package name */
    private MBridgeDyImageView f26277b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f26278c;

    /* renamed from: d  reason: collision with root package name */
    private String f26279d;

    /* renamed from: e  reason: collision with root package name */
    private String f26280e;

    /* renamed from: f  reason: collision with root package name */
    private String f26281f;

    /* renamed from: g  reason: collision with root package name */
    private int f26282g;

    /* renamed from: h  reason: collision with root package name */
    private int f26283h;

    /* renamed from: i  reason: collision with root package name */
    private Animation f26284i;

    /* renamed from: j  reason: collision with root package name */
    private Animation f26285j;

    /* renamed from: k  reason: collision with root package name */
    private Animation f26286k;

    /* renamed from: l  reason: collision with root package name */
    private Animation f26287l;

    public MBridgeBaitClickView(@NonNull Context context) {
        super(context);
        this.f26279d = "";
        this.f26280e = "";
        this.f26281f = "Click now for details";
        this.f26282g = 1;
        this.f26283h = 1342177280;
    }

    private void d() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
        this.f26284i = scaleAnimation;
        scaleAnimation.setDuration(500L);
        this.f26284i.setRepeatCount(-1);
        this.f26284i.setRepeatMode(2);
        MBridgeDyImageView mBridgeDyImageView = this.f26276a;
        if (mBridgeDyImageView != null) {
            mBridgeDyImageView.startAnimation(this.f26284i);
        }
    }

    private void e() {
        MBridgeDyImageView mBridgeDyImageView = this.f26277b;
        if (mBridgeDyImageView != null) {
            mBridgeDyImageView.setVisibility(4);
        }
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
        this.f26284i = scaleAnimation;
        scaleAnimation.setDuration(500L);
        this.f26284i.setRepeatCount(1);
        this.f26284i.setRepeatMode(2);
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.0f, 1.5f, 0.0f, 1.5f, 1, 0.5f, 1, 0.5f);
        this.f26285j = scaleAnimation2;
        scaleAnimation2.setDuration(1000L);
        this.f26285j.setRepeatCount(0);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        this.f26286k = alphaAnimation;
        alphaAnimation.setDuration(1000L);
        this.f26286k.setRepeatCount(0);
        final AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(this.f26285j);
        animationSet.addAnimation(this.f26286k);
        this.f26285j.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (MBridgeBaitClickView.this.f26277b != null) {
                    MBridgeBaitClickView.this.f26277b.setVisibility(4);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                if (MBridgeBaitClickView.this.f26277b != null) {
                    MBridgeBaitClickView.this.f26277b.setVisibility(0);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        this.f26284i.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MBridgeBaitClickView.this.postDelayed(new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.4.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MBridgeBaitClickView.this.f26276a != null) {
                            MBridgeBaitClickView.this.f26276a.startAnimation(MBridgeBaitClickView.this.f26284i);
                        }
                    }
                }, 1000L);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                MBridgeBaitClickView.this.postDelayed(new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MBridgeBaitClickView.this.f26277b != null) {
                            MBridgeBaitClickView.this.f26277b.startAnimation(animationSet);
                        }
                    }
                }, 550L);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        MBridgeDyImageView mBridgeDyImageView2 = this.f26276a;
        if (mBridgeDyImageView2 != null) {
            mBridgeDyImageView2.startAnimation(this.f26284i);
        }
    }

    private void getDefaultClickText() {
        String str;
        try {
            if (getContext().getResources().getConfiguration().locale.getLanguage().contains("zh")) {
                str = "点击查看详情";
            } else {
                str = "Click now for details";
            }
            this.f26281f = str;
        } catch (Throwable th2) {
            p0.b("MBridgeAnimationClickView", th2.getMessage());
        }
    }

    public void init(int i10) {
        this.f26282g = i10;
        init();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearAnimation();
        Animation animation = this.f26284i;
        if (animation != null) {
            animation.cancel();
        }
        Animation animation2 = this.f26285j;
        if (animation2 != null) {
            animation2.cancel();
        }
        Animation animation3 = this.f26286k;
        if (animation3 != null) {
            animation3.cancel();
        }
        Animation animation4 = this.f26287l;
        if (animation4 != null) {
            animation4.cancel();
        }
    }

    public void startAnimation() {
        int i10 = this.f26282g;
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        b();
                        return;
                    } else {
                        c();
                        return;
                    }
                }
                this.f26277b.setVisibility(4);
                a();
                return;
            }
            e();
            return;
        }
        this.f26277b.setVisibility(4);
        d();
    }

    private void a() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
        this.f26284i = scaleAnimation;
        scaleAnimation.setDuration(200L);
        this.f26284i.setRepeatCount(1);
        this.f26284i.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.5
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MBridgeBaitClickView.this.postDelayed(new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MBridgeBaitClickView.this.f26276a != null) {
                            MBridgeBaitClickView.this.f26276a.startAnimation(MBridgeBaitClickView.this.f26284i);
                        }
                    }
                }, 1000L);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        MBridgeDyImageView mBridgeDyImageView = this.f26276a;
        if (mBridgeDyImageView != null) {
            mBridgeDyImageView.startAnimation(this.f26284i);
        }
    }

    private void b() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
        this.f26284i = scaleAnimation;
        scaleAnimation.setDuration(200L);
        this.f26284i.setRepeatCount(-1);
        this.f26284i.setRepeatMode(2);
        MBridgeDyImageView mBridgeDyImageView = this.f26276a;
        if (mBridgeDyImageView != null) {
            mBridgeDyImageView.startAnimation(this.f26284i);
        }
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.0f, 1.2f, 0.0f, 1.2f, 1, 0.5f, 1, 0.5f);
        this.f26285j = scaleAnimation2;
        scaleAnimation2.setDuration(400L);
        this.f26285j.setRepeatCount(-1);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.3f);
        this.f26286k = alphaAnimation;
        alphaAnimation.setDuration(400L);
        this.f26286k.setRepeatCount(-1);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(this.f26285j);
        animationSet.addAnimation(this.f26286k);
        MBridgeDyImageView mBridgeDyImageView2 = this.f26277b;
        if (mBridgeDyImageView2 != null) {
            mBridgeDyImageView2.startAnimation(animationSet);
        }
    }

    private void c() {
        RotateAnimation rotateAnimation = new RotateAnimation(-10.0f, 30.0f, 1, 0.5f, 1, 0.5f);
        this.f26287l = rotateAnimation;
        rotateAnimation.setDuration(300L);
        this.f26287l.setRepeatMode(2);
        this.f26287l.setRepeatCount(-1);
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.0f, 1.2f, 0.0f, 1.2f, 1, 0.5f, 1, 0.5f);
        this.f26285j = scaleAnimation;
        scaleAnimation.setDuration(600L);
        this.f26285j.setRepeatCount(-1);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        this.f26286k = alphaAnimation;
        alphaAnimation.setDuration(600L);
        this.f26286k.setRepeatCount(-1);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(this.f26285j);
        animationSet.addAnimation(this.f26286k);
        MBridgeDyImageView mBridgeDyImageView = this.f26276a;
        if (mBridgeDyImageView != null) {
            mBridgeDyImageView.startAnimation(this.f26287l);
        }
        MBridgeDyImageView mBridgeDyImageView2 = this.f26277b;
        if (mBridgeDyImageView2 != null) {
            mBridgeDyImageView2.startAnimation(animationSet);
        }
    }

    public void init(int i10, int i11) {
        this.f26283h = i10;
        this.f26282g = i11;
        init();
    }

    public void init(int i10, int i11, String str, String str2, String str3) {
        this.f26283h = i10;
        this.f26282g = i11;
        this.f26279d = str;
        this.f26280e = str2;
        this.f26281f = str3;
        init();
    }

    public MBridgeBaitClickView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26279d = "";
        this.f26280e = "";
        this.f26281f = "Click now for details";
        this.f26282g = 1;
        this.f26283h = 1342177280;
    }

    public void init() {
        try {
            setBackgroundColor(this.f26283h);
            getDefaultClickText();
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
            int a10 = u0.a(getContext(), 55.0f);
            int a11 = u0.a(getContext(), 33.0f);
            this.f26277b = new MBridgeDyImageView(getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a10, a10);
            layoutParams.setMargins(a11, a11, 0, 0);
            this.f26277b.setLayoutParams(layoutParams);
            final int a12 = h0.a(getContext(), "mbridge_icon_click_circle", "drawable");
            if (TextUtils.isEmpty(this.f26280e)) {
                this.f26277b.setImageResource(a12);
            } else {
                b.a(c.m().d()).a(this.f26279d, new com.mbridge.msdk.foundation.same.image.c() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.1
                    @Override // com.mbridge.msdk.foundation.same.image.c
                    public void onFailedLoad(String str, String str2) {
                        MBridgeBaitClickView.this.f26277b.setImageResource(a12);
                    }

                    @Override // com.mbridge.msdk.foundation.same.image.c
                    public void onSuccessLoad(Bitmap bitmap, String str) {
                        if (!bitmap.isRecycled()) {
                            MBridgeBaitClickView.this.f26277b.setImageBitmap(bitmap);
                        }
                    }
                });
            }
            int a13 = u0.a(getContext(), 108.0f);
            int a14 = u0.a(getContext(), 35.0f);
            int a15 = u0.a(getContext(), 43.0f);
            this.f26276a = new MBridgeDyImageView(getContext());
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(a13, a13);
            layoutParams2.setMargins(a14, a15, 0, 0);
            this.f26276a.setLayoutParams(layoutParams2);
            final int a16 = h0.a(getContext(), "mbridge_icon_click_hand", "drawable");
            if (TextUtils.isEmpty(this.f26279d)) {
                this.f26276a.setImageResource(a16);
            } else {
                b.a(c.m().d()).a(this.f26279d, new com.mbridge.msdk.foundation.same.image.c() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView.2
                    @Override // com.mbridge.msdk.foundation.same.image.c
                    public void onFailedLoad(String str, String str2) {
                        MBridgeBaitClickView.this.f26276a.setImageResource(a16);
                    }

                    @Override // com.mbridge.msdk.foundation.same.image.c
                    public void onSuccessLoad(Bitmap bitmap, String str) {
                        if (!bitmap.isRecycled()) {
                            MBridgeBaitClickView.this.f26276a.setImageBitmap(bitmap);
                        }
                    }
                });
            }
            relativeLayout.addView(this.f26277b);
            relativeLayout.addView(this.f26276a);
            LinearLayout linearLayout = new LinearLayout(getContext());
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(13);
            linearLayout.setLayoutParams(layoutParams3);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(1);
            linearLayout.addView(relativeLayout);
            this.f26278c = new TextView(getContext());
            this.f26278c.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
            this.f26278c.setText(this.f26281f);
            this.f26278c.setTextColor(-1);
            this.f26278c.setGravity(14);
            linearLayout.addView(this.f26278c);
            addView(linearLayout);
        } catch (Throwable th2) {
            p0.b("MBridgeAnimationClickView", th2.getMessage());
        }
    }

    public MBridgeBaitClickView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26279d = "";
        this.f26280e = "";
        this.f26281f = "Click now for details";
        this.f26282g = 1;
        this.f26283h = 1342177280;
    }

    @RequiresApi(api = 21)
    public MBridgeBaitClickView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f26279d = "";
        this.f26280e = "";
        this.f26281f = "Click now for details";
        this.f26282g = 1;
        this.f26283h = 1342177280;
    }
}
