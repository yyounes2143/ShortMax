package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.inmobi.media.Y3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public final class Y3 extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    public final Activity f24389a;

    /* renamed from: b  reason: collision with root package name */
    public int f24390b;

    /* renamed from: c  reason: collision with root package name */
    public C2981h4 f24391c;

    /* renamed from: d  reason: collision with root package name */
    public InterfaceC2882b4 f24392d;

    /* renamed from: e  reason: collision with root package name */
    public Fe f24393e;

    /* renamed from: f  reason: collision with root package name */
    public InterfaceC3269z5 f24394f;

    /* renamed from: g  reason: collision with root package name */
    public Df f24395g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Y3(Activity activity) {
        super(activity);
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f24389a = activity;
        this.f24390b = -1;
    }

    public final void a(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        C3251y3 c3251y3 = new C3251y3(context, (byte) 4, this.f24394f);
        c3251y3.setId(65503);
        c3251y3.setOnTouchListener(new View.OnTouchListener() { // from class: ub.h3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return Y3.a(Y3.this, view, motionEvent);
            }
        });
        linearLayout.addView(c3251y3, layoutParams);
    }

    public final void b(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        C3251y3 c3251y3 = new C3251y3(context, (byte) 2, this.f24394f);
        c3251y3.setId(65516);
        c3251y3.setOnTouchListener(new View.OnTouchListener() { // from class: ub.j3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return Y3.b(Y3.this, view, motionEvent);
            }
        });
        linearLayout.addView(c3251y3, layoutParams);
    }

    public final void c(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        C3251y3 c3251y3 = new C3251y3(context, (byte) 6, this.f24394f);
        c3251y3.setId(1048283);
        c3251y3.setOnTouchListener(new View.OnTouchListener() { // from class: ub.k3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return Y3.c(Y3.this, view, motionEvent);
            }
        });
        linearLayout.addView(c3251y3, layoutParams);
    }

    public final void d(LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        C3251y3 c3251y3 = new C3251y3(context, (byte) 3, this.f24394f);
        c3251y3.setId(65502);
        c3251y3.setOnTouchListener(new View.OnTouchListener() { // from class: ub.i3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return Y3.d(Y3.this, view, motionEvent);
            }
        });
        linearLayout.addView(c3251y3, layoutParams);
    }

    @Nullable
    public final Fe getUserLeftApplicationListener() {
        return this.f24393e;
    }

    public final void setEmbeddedBrowserUpdateListener(@NotNull InterfaceC2882b4 browserUpdateListener) {
        Intrinsics.checkNotNullParameter(browserUpdateListener, "browserUpdateListener");
        this.f24392d = browserUpdateListener;
    }

    public final void setLogger(@NotNull InterfaceC3269z5 logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.f24394f = logger;
    }

    public final void setUserLeftApplicationListener(@Nullable Fe fe2) {
        this.f24393e = fe2;
    }

    public static final boolean a(Y3 this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C2981h4 c2981h4 = this$0.f24391c;
        if (c2981h4 == null) {
            InterfaceC2882b4 interfaceC2882b4 = this$0.f24392d;
            if (interfaceC2882b4 != null) {
                C3014j5.a(((C2998i5) interfaceC2882b4).f24854a);
            }
            return true;
        } else if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            if (c2981h4.canGoBack()) {
                c2981h4.goBack();
            } else {
                InterfaceC2882b4 interfaceC2882b42 = this$0.f24392d;
                if (interfaceC2882b42 != null) {
                    C3014j5.a(((C2998i5) interfaceC2882b42).f24854a);
                }
            }
            return true;
        } else {
            if (motionEvent.getAction() == 0) {
                view.setBackgroundColor(-16711681);
            }
            return true;
        }
    }

    public static final boolean b(Y3 this$0, View view, MotionEvent motionEvent) {
        C2899c4 c2899c4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            C2981h4 c2981h4 = this$0.f24391c;
            if (c2981h4 != null && (c2899c4 = c2981h4.f24800h) != null) {
                C2899c4.a(c2899c4, 5, true, null, 12);
            }
            InterfaceC2882b4 interfaceC2882b4 = this$0.f24392d;
            if (interfaceC2882b4 != null) {
                C3014j5.a(((C2998i5) interfaceC2882b4).f24854a);
            }
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }

    public static final boolean c(Y3 this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C2981h4 c2981h4 = this$0.f24391c;
        if (c2981h4 == null) {
            return true;
        }
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            if (c2981h4.canGoForward()) {
                c2981h4.goForward();
            }
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }

    public static final boolean d(Y3 this$0, View view, MotionEvent motionEvent) {
        C2899c4 c2899c4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (motionEvent.getAction() == 1) {
            view.setBackgroundColor(-7829368);
            C2981h4 c2981h4 = this$0.f24391c;
            if (c2981h4 != null && (c2899c4 = c2981h4.f24800h) != null) {
                C2899c4.a(c2899c4, 6, true, null, 12);
            }
            C2981h4 c2981h42 = this$0.f24391c;
            if (c2981h42 != null) {
                c2981h42.reload();
            }
            return true;
        }
        if (motionEvent.getAction() == 0) {
            view.setBackgroundColor(-16711681);
        }
        return true;
    }
}
