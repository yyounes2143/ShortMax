package com.inmobi.media;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.inmobi.media.C2938e9;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* renamed from: com.inmobi.media.e9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2938e9 extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public final String f24648a;

    /* renamed from: b  reason: collision with root package name */
    public C2870a9 f24649b;

    /* renamed from: c  reason: collision with root package name */
    public final HandlerC2921d9 f24650c;

    /* renamed from: d  reason: collision with root package name */
    public C3050l9 f24651d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f24652e;

    /* renamed from: f  reason: collision with root package name */
    public final C3251y3 f24653f;

    /* renamed from: g  reason: collision with root package name */
    public final C3251y3 f24654g;

    /* renamed from: h  reason: collision with root package name */
    public final ProgressBar f24655h;

    /* renamed from: i  reason: collision with root package name */
    public final RelativeLayout f24656i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f24657j;

    /* renamed from: k  reason: collision with root package name */
    public final float f24658k;

    /* renamed from: l  reason: collision with root package name */
    public final View.OnClickListener f24659l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2938e9(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f24648a = C2938e9.class.getSimpleName();
        this.f24658k = U3.d().f24299c;
        RelativeLayout relativeLayout = new RelativeLayout(context);
        this.f24656i = relativeLayout;
        this.f24653f = new C3251y3(context, (byte) 9, null);
        this.f24654g = new C3251y3(context, (byte) 10, null);
        ProgressBar progressBar = new ProgressBar(context, null, 16842872);
        this.f24655h = progressBar;
        progressBar.setScaleY(0.8f);
        addView(relativeLayout, new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.setPadding(0, 0, 0, 0);
        a();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12, -1);
        float f10 = U3.d().f24299c;
        layoutParams.setMargins(0, (int) ((-6) * f10), 0, (int) ((-8) * f10));
        Drawable progressDrawable = progressBar.getProgressDrawable();
        LayerDrawable layerDrawable = progressDrawable instanceof LayerDrawable ? (LayerDrawable) progressDrawable : null;
        if (layerDrawable != null) {
            Drawable drawable = layerDrawable.getDrawable(0);
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
            drawable.setColorFilter(new PorterDuffColorFilter(-1, mode));
            layerDrawable.getDrawable(2).setColorFilter(new PorterDuffColorFilter(-327674, mode));
        }
        relativeLayout.addView(progressBar, layoutParams);
        this.f24650c = new HandlerC2921d9(this);
        this.f24659l = new View.OnClickListener() { // from class: ub.z3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C2938e9.a(C2938e9.this, view);
            }
        };
    }

    public final void a() {
        int i10 = (int) (30 * this.f24658k);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i10, i10);
        layoutParams.addRule(9, -1);
        layoutParams.addRule(12, -1);
        this.f24656i.addView(this.f24653f, layoutParams);
        this.f24653f.setOnClickListener(this.f24659l);
    }

    public final void b() {
        int i10 = (int) (30 * this.f24658k);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i10, i10);
        layoutParams.addRule(9, -1);
        layoutParams.addRule(12, -1);
        this.f24656i.addView(this.f24654g, layoutParams);
        this.f24654g.setOnClickListener(this.f24659l);
    }

    public final void c() {
        if (this.f24652e) {
            try {
                HandlerC2921d9 handlerC2921d9 = this.f24650c;
                if (handlerC2921d9 != null) {
                    handlerC2921d9.removeMessages(2);
                }
                setVisibility(8);
            } catch (IllegalArgumentException e10) {
                String TAG = this.f24648a;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                S5 s52 = S5.f24132a;
                C2947f2 event = new C2947f2(e10);
                Intrinsics.checkNotNullParameter(event, "event");
                S5.f24135d.a(event);
            }
            this.f24652e = false;
        }
    }

    public final void d() {
        Object obj;
        int i10;
        if (!this.f24652e) {
            C3050l9 c3050l9 = this.f24651d;
            if (c3050l9 != null) {
                int currentPosition = c3050l9.getCurrentPosition();
                int duration = c3050l9.getDuration();
                if (duration != 0) {
                    this.f24655h.setProgress((currentPosition * 100) / duration);
                }
            }
            this.f24652e = true;
            C3050l9 c3050l92 = this.f24651d;
            C2904c9 c2904c9 = null;
            if (c3050l92 != null) {
                obj = c3050l92.getTag();
            } else {
                obj = null;
            }
            if (obj instanceof C2904c9) {
                c2904c9 = (C2904c9) obj;
            }
            if (c2904c9 != null) {
                C3251y3 c3251y3 = this.f24653f;
                int i11 = 4;
                if (c2904c9.A) {
                    i10 = 0;
                } else {
                    i10 = 4;
                }
                c3251y3.setVisibility(i10);
                ProgressBar progressBar = this.f24655h;
                if (c2904c9.C) {
                    i11 = 0;
                }
                progressBar.setVisibility(i11);
            }
            setVisibility(0);
        }
        HandlerC2921d9 handlerC2921d9 = this.f24650c;
        if (handlerC2921d9 != null) {
            handlerC2921d9.sendEmptyMessage(2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent event) {
        boolean z10;
        C3050l9 c3050l9;
        C3050l9 c3050l92;
        Intrinsics.checkNotNullParameter(event, "event");
        int keyCode = event.getKeyCode();
        if (event.getRepeatCount() == 0 && event.getAction() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (keyCode != 24 && keyCode != 25 && keyCode != 27) {
            if (keyCode != 62 && keyCode != 79) {
                if (keyCode != 164) {
                    if (keyCode != 85) {
                        if (keyCode != 86) {
                            if (keyCode != 126) {
                                if (keyCode != 127) {
                                    d();
                                    return super.dispatchKeyEvent(event);
                                }
                            } else {
                                if (z10 && (c3050l92 = this.f24651d) != null && !c3050l92.isPlaying()) {
                                    C3050l9 c3050l93 = this.f24651d;
                                    if (c3050l93 != null) {
                                        c3050l93.start();
                                    }
                                    d();
                                }
                                return true;
                            }
                        }
                        if (z10 && (c3050l9 = this.f24651d) != null && c3050l9.isPlaying()) {
                            C3050l9 c3050l94 = this.f24651d;
                            if (c3050l94 != null) {
                                c3050l94.pause();
                            }
                            d();
                        }
                        return true;
                    }
                }
            }
            if (z10) {
                C3050l9 c3050l95 = this.f24651d;
                if (c3050l95 != null) {
                    if (c3050l95.isPlaying()) {
                        c3050l95.pause();
                    } else {
                        c3050l95.start();
                    }
                }
                d();
            }
            return true;
        }
        return super.dispatchKeyEvent(event);
    }

    @NotNull
    public final Map<View, FriendlyObstructionPurpose> getFriendlyViews() {
        ProgressBar progressBar = this.f24655h;
        FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.VIDEO_CONTROLS;
        return kotlin.collections.p0.k(ms.k.a(progressBar, friendlyObstructionPurpose), ms.k.a(this.f24653f, friendlyObstructionPurpose), ms.k.a(this.f24654g, friendlyObstructionPurpose));
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        super.onInitializeAccessibilityEvent(event);
        event.setClassName(C2938e9.class.getName());
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClassName(C2938e9.class.getName());
    }

    @Override // android.view.View
    public final boolean onTrackballEvent(MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        C3050l9 c3050l9 = this.f24651d;
        if (c3050l9 != null && c3050l9.a()) {
            if (this.f24652e) {
                c();
                return false;
            }
            d();
            return false;
        }
        return false;
    }

    public final void setMediaPlayer(@NotNull C3050l9 videoView) {
        Object obj;
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        this.f24651d = videoView;
        C2904c9 c2904c9 = null;
        if (videoView != null) {
            obj = videoView.getTag();
        } else {
            obj = null;
        }
        if (obj instanceof C2904c9) {
            c2904c9 = (C2904c9) obj;
        }
        if (c2904c9 != null && c2904c9.A && !c2904c9.c()) {
            this.f24657j = true;
            this.f24656i.removeView(this.f24654g);
            this.f24656i.removeView(this.f24653f);
            b();
        }
    }

    public final void setVideoAd(@Nullable C2870a9 c2870a9) {
        this.f24649b = c2870a9;
    }

    public static final void a(C2938e9 this$0, View view) {
        C2870a9 c2870a9;
        C2870a9 c2870a92;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C3050l9 c3050l9 = this$0.f24651d;
        if (c3050l9 != null) {
            Object tag = c3050l9.getTag();
            C2904c9 c2904c9 = tag instanceof C2904c9 ? (C2904c9) tag : null;
            if (this$0.f24657j) {
                C3050l9 c3050l92 = this$0.f24651d;
                if (c3050l92 != null) {
                    c3050l92.k();
                }
                this$0.f24657j = false;
                this$0.f24656i.removeView(this$0.f24654g);
                this$0.f24656i.removeView(this$0.f24653f);
                this$0.a();
                if (c2904c9 == null || (c2870a92 = this$0.f24649b) == null) {
                    return;
                }
                try {
                    c2870a92.i(c2904c9);
                    c2904c9.f24553z = true;
                    return;
                } catch (Exception e10) {
                    String TAG = this$0.f24648a;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    S5 s52 = S5.f24132a;
                    S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                    return;
                }
            }
            C3050l9 c3050l93 = this$0.f24651d;
            if (c3050l93 != null) {
                c3050l93.c();
            }
            this$0.f24657j = true;
            this$0.f24656i.removeView(this$0.f24653f);
            this$0.f24656i.removeView(this$0.f24654g);
            this$0.b();
            if (c2904c9 == null || (c2870a9 = this$0.f24649b) == null) {
                return;
            }
            try {
                c2870a9.e(c2904c9);
                c2904c9.f24553z = false;
            } catch (Exception e11) {
                String TAG2 = this$0.f24648a;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                S5 s53 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e11, NotificationCompat.CATEGORY_EVENT));
            }
        }
    }
}
