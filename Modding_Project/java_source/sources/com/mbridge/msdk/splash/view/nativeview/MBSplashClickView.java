package com.mbridge.msdk.splash.view.nativeview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import com.mbridge.msdk.foundation.tools.u0;
import com.startshorts.androidplayer.bean.shorts.SubtitleDataKt;
/* loaded from: classes6.dex */
public class MBSplashClickView extends RelativeLayout {
    public final int TYPE_SPLASH_BTN_CLICK;
    public final int TYPE_SPLASH_BTN_GO;
    public final int TYPE_SPLASH_BTN_OPEN;

    /* renamed from: a  reason: collision with root package name */
    private final String f29420a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29421b;

    /* renamed from: c  reason: collision with root package name */
    private final String f29422c;

    /* renamed from: d  reason: collision with root package name */
    private final String f29423d;

    /* renamed from: e  reason: collision with root package name */
    private final String f29424e;

    /* renamed from: f  reason: collision with root package name */
    private final String f29425f;

    /* renamed from: g  reason: collision with root package name */
    private final String f29426g;

    /* renamed from: h  reason: collision with root package name */
    private final String f29427h;

    /* renamed from: i  reason: collision with root package name */
    private final String f29428i;

    /* renamed from: j  reason: collision with root package name */
    private final String f29429j;

    /* renamed from: k  reason: collision with root package name */
    private final String f29430k;

    /* renamed from: l  reason: collision with root package name */
    private String f29431l;

    /* renamed from: m  reason: collision with root package name */
    private int f29432m;

    /* renamed from: n  reason: collision with root package name */
    private ImageView f29433n;

    /* renamed from: o  reason: collision with root package name */
    private ImageView f29434o;

    /* renamed from: p  reason: collision with root package name */
    private final RectF f29435p;

    /* renamed from: q  reason: collision with root package name */
    private final Paint f29436q;

    /* renamed from: r  reason: collision with root package name */
    private final Paint f29437r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ScaleAnimation f29441a;

        b(ScaleAnimation scaleAnimation) {
            this.f29441a = scaleAnimation;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBSplashClickView.this.f29434o.startAnimation(this.f29441a);
        }
    }

    public MBSplashClickView(Context context) {
        super(context);
        this.f29420a = "浏览第三方应用";
        this.f29421b = "View";
        this.f29422c = "打开第三方应用";
        this.f29423d = "Open";
        this.f29424e = "下载第三方应用";
        this.f29425f = "Install";
        this.f29426g = "mbridge_splash_btn_arrow_right";
        this.f29427h = "mbridge_splash_btn_circle";
        this.f29428i = "mbridge_splash_btn_finger";
        this.f29429j = "mbridge_splash_btn_go";
        this.f29430k = "mbridge_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f29435p = new RectF();
        this.f29436q = new Paint();
        this.f29437r = new Paint();
        a();
    }

    private void c() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(400L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.0f, 0.5f, 0.0f, 0.5f, 1, 0.5f, 1, 0.5f);
        scaleAnimation2.setDuration(200L);
        scaleAnimation2.setAnimationListener(new a(scaleAnimation2));
        this.f29434o.setVisibility(4);
        this.f29433n.startAnimation(scaleAnimation);
        this.f29434o.postDelayed(new b(scaleAnimation2), 500L);
    }

    private void d() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(500L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        this.f29433n.startAnimation(scaleAnimation);
    }

    private void e() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0, -100.0f, 0, 1000.0f, 0, 0.0f, 0, 0.0f);
        translateAnimation.setDuration(1000L);
        translateAnimation.setAnimationListener(new c());
        this.f29433n.startAnimation(translateAnimation);
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
        canvas.saveLayer(this.f29435p, this.f29437r, 31);
        canvas.drawRoundRect(this.f29435p, 200.0f, 200.0f, this.f29437r);
        canvas.saveLayer(this.f29435p, this.f29436q, 31);
        super.draw(canvas);
        canvas.restore();
    }

    public void initView(String str) {
        this.f29431l = str;
        b();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        int i10 = this.f29432m;
        if (i10 == 2) {
            d();
        } else if (i10 == 1) {
            e();
        } else if (i10 == 3) {
            c();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.f29435p.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    private void a() {
        this.f29436q.setAntiAlias(true);
        this.f29436q.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f29437r.setAntiAlias(true);
        this.f29437r.setColor(-1);
    }

    private void b() {
        RelativeLayout.LayoutParams layoutParams;
        int i10;
        if (!a(this.f29431l)) {
            boolean contains = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh");
            if (TextUtils.isEmpty(this.f29431l)) {
                this.f29431l = contains ? "浏览第三方应用" : "View";
            }
            this.f29432m = 2;
        }
        setBgDrawable(this.f29432m);
        TextView textView = new TextView(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(15);
        textView.setLayoutParams(layoutParams2);
        textView.setGravity(17);
        textView.setTextSize(20.0f);
        textView.setTextColor(-1);
        textView.setText(this.f29431l);
        this.f29433n = new ImageView(getContext());
        int i11 = this.f29432m;
        if (i11 == 2) {
            i10 = getResources().getIdentifier("mbridge_splash_btn_go", "drawable", com.mbridge.msdk.foundation.controller.c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(u0.a(getContext(), 35.0f), u0.a(getContext(), 35.0f));
            layoutParams.addRule(11);
            layoutParams.addRule(15);
            layoutParams.rightMargin = u0.a(getContext(), 10.0f);
        } else if (i11 == 1) {
            i10 = getResources().getIdentifier("mbridge_splash_btn_light", "drawable", com.mbridge.msdk.foundation.controller.c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams.leftMargin = 20;
            layoutParams.rightMargin = 20;
            ImageView imageView = new ImageView(getContext());
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams3.addRule(11);
            layoutParams3.addRule(15);
            layoutParams3.rightMargin = u0.a(getContext(), 50.0f);
            imageView.setImageResource(getResources().getIdentifier("mbridge_splash_btn_arrow_right", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setLayoutParams(layoutParams3);
            addView(imageView);
        } else if (i11 == 3) {
            i10 = getResources().getIdentifier("mbridge_splash_btn_finger", "drawable", com.mbridge.msdk.foundation.controller.c.m().h());
            layoutParams = new RelativeLayout.LayoutParams(u0.a(getContext(), 25.0f), u0.a(getContext(), 25.0f));
            layoutParams.addRule(11);
            layoutParams.rightMargin = u0.a(getContext(), 50.0f);
            layoutParams.topMargin = u0.a(getContext(), 18.0f);
            this.f29434o = new ImageView(getContext());
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(u0.a(getContext(), 30.0f), u0.a(getContext(), 30.0f));
            layoutParams4.addRule(11);
            layoutParams4.rightMargin = u0.a(getContext(), 50.0f);
            layoutParams4.topMargin = u0.a(getContext(), 5.0f);
            this.f29434o.setLayoutParams(layoutParams4);
            this.f29434o.setImageResource(getResources().getIdentifier("mbridge_splash_btn_circle", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            addView(this.f29434o);
        } else {
            layoutParams = null;
            i10 = 0;
        }
        this.f29433n.setLayoutParams(layoutParams);
        this.f29433n.setImageResource(i10);
        addView(textView);
        addView(this.f29433n);
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
                this.f29432m = 3;
                break;
            case 1:
            case 4:
                this.f29432m = 1;
                break;
            case 2:
            case 5:
                this.f29432m = 2;
                break;
            default:
                return false;
        }
        return true;
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f29420a = "浏览第三方应用";
        this.f29421b = "View";
        this.f29422c = "打开第三方应用";
        this.f29423d = "Open";
        this.f29424e = "下载第三方应用";
        this.f29425f = "Install";
        this.f29426g = "mbridge_splash_btn_arrow_right";
        this.f29427h = "mbridge_splash_btn_circle";
        this.f29428i = "mbridge_splash_btn_finger";
        this.f29429j = "mbridge_splash_btn_go";
        this.f29430k = "mbridge_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f29435p = new RectF();
        this.f29436q = new Paint();
        this.f29437r = new Paint();
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ScaleAnimation f29438a;

        /* renamed from: com.mbridge.msdk.splash.view.nativeview.MBSplashClickView$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        class RunnableC0430a implements Runnable {
            RunnableC0430a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MBSplashClickView.this.f29434o.startAnimation(a.this.f29438a);
            }
        }

        a(ScaleAnimation scaleAnimation) {
            this.f29438a = scaleAnimation;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            MBSplashClickView.this.f29434o.setVisibility(4);
            MBSplashClickView.this.f29434o.postDelayed(new RunnableC0430a(), 700L);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            MBSplashClickView.this.f29434o.setVisibility(0);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c implements Animation.AnimationListener {

        /* loaded from: classes6.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Animation f29444a;

            a(Animation animation) {
                this.f29444a = animation;
            }

            @Override // java.lang.Runnable
            public void run() {
                MBSplashClickView.this.f29433n.startAnimation(this.f29444a);
            }
        }

        c() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            MBSplashClickView.this.f29433n.setVisibility(4);
            MBSplashClickView.this.f29433n.postDelayed(new a(animation), 2000L);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            MBSplashClickView.this.f29433n.setVisibility(0);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f29420a = "浏览第三方应用";
        this.f29421b = "View";
        this.f29422c = "打开第三方应用";
        this.f29423d = "Open";
        this.f29424e = "下载第三方应用";
        this.f29425f = "Install";
        this.f29426g = "mbridge_splash_btn_arrow_right";
        this.f29427h = "mbridge_splash_btn_circle";
        this.f29428i = "mbridge_splash_btn_finger";
        this.f29429j = "mbridge_splash_btn_go";
        this.f29430k = "mbridge_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f29435p = new RectF();
        this.f29436q = new Paint();
        this.f29437r = new Paint();
        a();
    }

    @RequiresApi(api = 21)
    public MBSplashClickView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f29420a = "浏览第三方应用";
        this.f29421b = "View";
        this.f29422c = "打开第三方应用";
        this.f29423d = "Open";
        this.f29424e = "下载第三方应用";
        this.f29425f = "Install";
        this.f29426g = "mbridge_splash_btn_arrow_right";
        this.f29427h = "mbridge_splash_btn_circle";
        this.f29428i = "mbridge_splash_btn_finger";
        this.f29429j = "mbridge_splash_btn_go";
        this.f29430k = "mbridge_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.f29435p = new RectF();
        this.f29436q = new Paint();
        this.f29437r = new Paint();
    }
}
