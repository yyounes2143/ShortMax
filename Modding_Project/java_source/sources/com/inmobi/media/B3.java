package com.inmobi.media;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import com.inmobi.media.B3;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class B3 extends lf {

    /* renamed from: n  reason: collision with root package name */
    public final InterfaceC3269z5 f23503n;

    /* renamed from: o  reason: collision with root package name */
    public final String f23504o;

    /* renamed from: p  reason: collision with root package name */
    public final ViewTreeObserver.OnPreDrawListener f23505p;

    /* renamed from: q  reason: collision with root package name */
    public final WeakReference f23506q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B3(ff visibilityChecker, Activity activity, InterfaceC3269z5 interfaceC3269z5) {
        super(visibilityChecker, (byte) 1, interfaceC3269z5);
        Intrinsics.checkNotNullParameter(visibilityChecker, "visibilityChecker");
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f23503n = interfaceC3269z5;
        String TAG = B3.class.getSimpleName();
        this.f23504o = TAG;
        View decorView = activity.getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        this.f23506q = new WeakReference(decorView);
        ViewTreeObserver viewTreeObserver = decorView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: ub.j
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    return B3.a(B3.this);
                }
            };
            this.f23505p = onPreDrawListener;
            viewTreeObserver.addOnPreDrawListener(onPreDrawListener);
        } else if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).b(TAG, "Visibility Tracker was unable to track views because the  root view tree observer was not alive");
        }
    }

    public static final boolean a(B3 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.g();
        return true;
    }

    @Override // com.inmobi.media.lf
    public final void b() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23503n;
        if (interfaceC3269z5 != null) {
            String TAG = this.f23504o;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "unregisterPreDrawListener");
        }
        View view = (View) this.f23506q.get();
        if (view != null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f23505p);
            }
        }
        super.b();
    }

    @Override // com.inmobi.media.lf
    public final int c() {
        return 100;
    }

    @Override // com.inmobi.media.lf
    public final void e() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23503n;
        if (interfaceC3269z5 != null) {
            String TAG = this.f23504o;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
        }
        if (!this.f25008i.get()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23503n;
            if (interfaceC3269z52 != null) {
                String TAG2 = this.f23504o;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).c(TAG2, "unregisterPreDrawListener");
            }
            View view = (View) this.f23506q.get();
            if (view != null) {
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnPreDrawListener(this.f23505p);
                }
            }
            super.e();
        }
    }

    @Override // com.inmobi.media.lf
    public final void f() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23503n;
        if (interfaceC3269z5 != null) {
            String TAG = this.f23504o;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, CampaignEx.JSON_NATIVE_VIDEO_RESUME);
        }
        if (this.f25008i.get()) {
            View view = (View) this.f23506q.get();
            if (view != null) {
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnPreDrawListener(this.f23505p);
                } else {
                    InterfaceC3269z5 interfaceC3269z52 = this.f23503n;
                    if (interfaceC3269z52 != null) {
                        String TAG2 = this.f23504o;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((A5) interfaceC3269z52).b(TAG2, "Visibility Tracker was unable to track views because the root view tree observer was not alive");
                    }
                }
            }
            super.f();
        }
    }

    @Override // com.inmobi.media.lf
    public final void d() {
    }
}
