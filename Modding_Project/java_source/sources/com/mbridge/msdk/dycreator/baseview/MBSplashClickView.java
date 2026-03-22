package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.image.b;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.startshorts.androidplayer.bean.shorts.SubtitleDataKt;
/* loaded from: classes5.dex */
public class MBSplashClickView extends MBRelativeLayout {
    public final int TYPE_SPLASH_BTN_CLICK;
    public final int TYPE_SPLASH_BTN_GO;
    public final int TYPE_SPLASH_BTN_OPEN;

    /* renamed from: f  reason: collision with root package name */
    private final String f26192f;

    /* renamed from: g  reason: collision with root package name */
    private final String f26193g;

    /* renamed from: h  reason: collision with root package name */
    private final String f26194h;

    /* renamed from: i  reason: collision with root package name */
    private final String f26195i;

    /* renamed from: j  reason: collision with root package name */
    private final String f26196j;

    /* renamed from: k  reason: collision with root package name */
    private final String f26197k;

    /* renamed from: l  reason: collision with root package name */
    private final String f26198l;

    /* renamed from: m  reason: collision with root package name */
    private final String f26199m;

    /* renamed from: n  reason: collision with root package name */
    private final String f26200n;

    /* renamed from: o  reason: collision with root package name */
    private final String f26201o;

    /* renamed from: p  reason: collision with root package name */
    private final String f26202p;

    /* renamed from: q  reason: collision with root package name */
    private final String f26203q;

    /* renamed from: r  reason: collision with root package name */
    private String f26204r;

    /* renamed from: s  reason: collision with root package name */
    private int f26205s;

    /* renamed from: t  reason: collision with root package name */
    private ImageView f26206t;

    /* renamed from: u  reason: collision with root package name */
    private ImageView f26207u;

    /* renamed from: v  reason: collision with root package name */
    private final RectF f26208v;

    /* renamed from: w  reason: collision with root package name */
    private final Paint f26209w;

    /* renamed from: x  reason: collision with root package name */
    private final Paint f26210x;

    public MBSplashClickView(Context context) {
        super(context);
        this.f26192f = "浏览第三方应用";
        this.f26193g = "View";
        this.f26194h = "打开第三方应用";
        this.f26195i = "Open";
        this.f26196j = "下载第三方应用";
        this.f26197k = "Install";
        this.f26198l = "mbridge_splash_btn_arrow_right";
        this.f26199m = "mbridge_splash_btn_circle";
        this.f26200n = "mbridge_splash_btn_finger";
        this.f26201o = "mbridge_splash_btn_go";
        this.f26202p = "mbridge_splash_btn_light";
        this.f26203q = "mbridge_expand_data";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f26208v = new RectF();
        this.f26209w = new Paint();
        this.f26210x = new Paint();
        a();
    }

    private void c() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(1000L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        final ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.0f, 0.5f, 0.0f, 0.5f, 1, 0.5f, 1, 0.5f);
        scaleAnimation2.setDuration(400L);
        scaleAnimation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.MBSplashClickView.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MBSplashClickView.this.f26207u.setVisibility(4);
                MBSplashClickView.this.f26207u.postDelayed(new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.MBSplashClickView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MBSplashClickView.this.f26207u.startAnimation(scaleAnimation2);
                    }
                }, 1600L);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                MBSplashClickView.this.f26207u.setVisibility(0);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        this.f26207u.setVisibility(4);
        this.f26206t.startAnimation(scaleAnimation);
        this.f26207u.postDelayed(new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.MBSplashClickView.2
            @Override // java.lang.Runnable
            public void run() {
                MBSplashClickView.this.f26207u.startAnimation(scaleAnimation2);
            }
        }, 800L);
    }

    private void d() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(500L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        this.f26206t.startAnimation(scaleAnimation);
    }

    private void e() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0, -100.0f, 0, 1000.0f, 0, 0.0f, 0, 0.0f);
        translateAnimation.setDuration(1000L);
        translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.MBSplashClickView.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(final Animation animation) {
                MBSplashClickView.this.f26206t.setVisibility(4);
                MBSplashClickView.this.f26206t.postDelayed(new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.MBSplashClickView.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MBSplashClickView.this.f26206t.startAnimation(animation);
                    }
                }, 2000L);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                MBSplashClickView.this.f26206t.setVisibility(0);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        this.f26206t.startAnimation(translateAnimation);
    }

    private void setBgDrawable(int i10) {
        int parseColor = Color.parseColor("#666666");
        int parseColor2 = Color.parseColor("#8FC31F");
        int parseColor3 = Color.parseColor(SubtitleDataKt.DEFAULT_SUBTITLE_SHADOW_COLOR);
        GradientDrawable gradientDrawable = new GradientDrawable();
        if (i10 == 2) {
            gradientDrawable.setColor(parseColor2);
        } else {
            gradientDrawable.setColor(parseColor3);
            gradientDrawable.setStroke(2, parseColor);
        }
        gradientDrawable.setCornerRadius(200);
        setBackground(gradientDrawable);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.saveLayer(this.f26208v, this.f26210x, 31);
        canvas.drawRoundRect(this.f26208v, 200.0f, 200.0f, this.f26210x);
        canvas.saveLayer(this.f26208v, this.f26209w, 31);
        super.draw(canvas);
        canvas.restore();
    }

    public void initView(String str) {
        this.f26204r = str;
        b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.dycreator.baseview.MBRelativeLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        int i10 = this.f26205s;
        if (i10 == 2) {
            d();
        } else if (i10 == 1) {
            e();
        } else if (i10 == 3) {
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.dycreator.baseview.MBRelativeLayout, android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.f26208v.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    private void a() {
        this.f26209w.setAntiAlias(true);
        this.f26209w.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f26210x.setAntiAlias(true);
        this.f26210x.setColor(-1);
    }

    private void b() {
        String str;
        RelativeLayout.LayoutParams layoutParams;
        int i10;
        View a10;
        if (!a(this.f26204r)) {
            boolean contains = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh");
            if (TextUtils.isEmpty(this.f26204r)) {
                this.f26204r = contains ? "浏览第三方应用" : "View";
            }
            this.f26205s = 2;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null && (a10 = a(viewGroup, "mbridge_expand_data")) != null && (a10 instanceof TextView)) {
            str = ((TextView) a10).getText().toString();
        } else {
            str = "";
        }
        setBgDrawable(this.f26205s);
        TextView textView = new TextView(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(15);
        textView.setLayoutParams(layoutParams2);
        textView.setGravity(17);
        textView.setTextSize(20.0f);
        textView.setTextColor(-1);
        textView.setText(this.f26204r);
        this.f26206t = new ImageView(getContext());
        int i11 = this.f26205s;
        if (i11 == 2) {
            i10 = getResources().getIdentifier("mbridge_splash_btn_go", "drawable", c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(u0.a(getContext(), 35.0f), u0.a(getContext(), 35.0f));
            layoutParams.addRule(11);
            layoutParams.addRule(15);
            layoutParams.rightMargin = u0.a(getContext(), 10.0f);
        } else if (i11 == 1) {
            i10 = getResources().getIdentifier("mbridge_splash_btn_light", "drawable", c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams.leftMargin = 20;
            layoutParams.rightMargin = 20;
            ImageView imageView = new ImageView(getContext());
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams3.addRule(11);
            layoutParams3.addRule(15);
            layoutParams3.rightMargin = u0.a(getContext(), 50.0f);
            imageView.setImageResource(getResources().getIdentifier("mbridge_splash_btn_arrow_right", "drawable", c.m().h()));
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setLayoutParams(layoutParams3);
            addView(imageView);
        } else if (i11 == 3) {
            i10 = getResources().getIdentifier("mbridge_splash_btn_finger", "drawable", c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(u0.a(getContext(), 25.0f), u0.a(getContext(), 25.0f));
            layoutParams.addRule(11);
            layoutParams.rightMargin = u0.a(getContext(), 50.0f);
            layoutParams.topMargin = u0.a(getContext(), 18.0f);
            this.f26207u = new ImageView(getContext());
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(u0.a(getContext(), 30.0f), u0.a(getContext(), 30.0f));
            layoutParams4.addRule(11);
            layoutParams4.rightMargin = u0.a(getContext(), 50.0f);
            layoutParams4.topMargin = u0.a(getContext(), 5.0f);
            this.f26207u.setLayoutParams(layoutParams4);
            this.f26207u.setImageResource(getResources().getIdentifier("mbridge_splash_btn_circle", "drawable", c.m().h()));
            addView(this.f26207u);
        } else {
            layoutParams = null;
            i10 = 0;
        }
        this.f26206t.setLayoutParams(layoutParams);
        if (TextUtils.isEmpty(str)) {
            this.f26206t.setImageResource(i10);
        } else {
            a(this.f26206t, str, i10);
        }
        addView(textView);
        addView(this.f26206t);
        invalidate();
    }

    private boolean a(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -672744069:
                if (str.equals("Install")) {
                    c10 = 0;
                    break;
                }
                break;
            case 2464362:
                if (str.equals("Open")) {
                    c10 = 1;
                    break;
                }
                break;
            case 2666181:
                if (str.equals("View")) {
                    c10 = 2;
                    break;
                }
                break;
            case 855294846:
                if (str.equals("下载第三方应用")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1383132195:
                if (str.equals("打开第三方应用")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1681333335:
                if (str.equals("浏览第三方应用")) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 3:
                this.f26205s = 3;
                break;
            case 1:
            case 4:
                this.f26205s = 1;
                break;
            case 2:
            case 5:
                this.f26205s = 2;
                break;
            default:
                return false;
        }
        return true;
    }

    private void a(final ImageView imageView, String str, final int i10) {
        if (imageView == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                imageView.setBackgroundResource(i10);
            }
            b.a(c.m().d()).a(str, new com.mbridge.msdk.foundation.same.image.c() { // from class: com.mbridge.msdk.dycreator.baseview.MBSplashClickView.4
                @Override // com.mbridge.msdk.foundation.same.image.c
                public void onFailedLoad(String str2, String str3) {
                    ImageView imageView2 = imageView;
                    if (imageView2 != null) {
                        imageView2.setBackgroundResource(i10);
                    }
                }

                @Override // com.mbridge.msdk.foundation.same.image.c
                public void onSuccessLoad(Bitmap bitmap, String str2) {
                    if (imageView != null) {
                        if (bitmap != null && !bitmap.isRecycled()) {
                            if (MBSplashClickView.this.f26207u != null) {
                                MBSplashClickView mBSplashClickView = MBSplashClickView.this;
                                mBSplashClickView.removeView(mBSplashClickView.f26207u);
                            }
                            imageView.setImageBitmap(bitmap);
                            return;
                        }
                        imageView.setBackgroundResource(i10);
                    }
                }
            });
        } catch (Exception e10) {
            p0.a("MBSplashClickView", e10.getMessage());
            imageView.setBackgroundResource(i10);
        }
    }

    private View a(ViewGroup viewGroup, String str) {
        if (viewGroup != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    if (viewGroup.getId() == str.hashCode()) {
                        return viewGroup;
                    }
                    int childCount = viewGroup.getChildCount();
                    for (int i10 = 0; i10 < childCount; i10++) {
                        View childAt = viewGroup.getChildAt(i10);
                        if (childAt.getId() == str.hashCode()) {
                            return childAt;
                        }
                        if (childAt instanceof ViewGroup) {
                            a((ViewGroup) childAt, str);
                        }
                    }
                    return null;
                }
            } catch (Exception e10) {
                p0.b("MBSplashClickView", e10.getMessage());
            }
        }
        return null;
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26192f = "浏览第三方应用";
        this.f26193g = "View";
        this.f26194h = "打开第三方应用";
        this.f26195i = "Open";
        this.f26196j = "下载第三方应用";
        this.f26197k = "Install";
        this.f26198l = "mbridge_splash_btn_arrow_right";
        this.f26199m = "mbridge_splash_btn_circle";
        this.f26200n = "mbridge_splash_btn_finger";
        this.f26201o = "mbridge_splash_btn_go";
        this.f26202p = "mbridge_splash_btn_light";
        this.f26203q = "mbridge_expand_data";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f26208v = new RectF();
        this.f26209w = new Paint();
        this.f26210x = new Paint();
        a();
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26192f = "浏览第三方应用";
        this.f26193g = "View";
        this.f26194h = "打开第三方应用";
        this.f26195i = "Open";
        this.f26196j = "下载第三方应用";
        this.f26197k = "Install";
        this.f26198l = "mbridge_splash_btn_arrow_right";
        this.f26199m = "mbridge_splash_btn_circle";
        this.f26200n = "mbridge_splash_btn_finger";
        this.f26201o = "mbridge_splash_btn_go";
        this.f26202p = "mbridge_splash_btn_light";
        this.f26203q = "mbridge_expand_data";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f26208v = new RectF();
        this.f26209w = new Paint();
        this.f26210x = new Paint();
        a();
    }
}
