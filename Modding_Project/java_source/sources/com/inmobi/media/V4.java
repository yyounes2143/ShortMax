package com.inmobi.media;

import android.app.Activity;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.inmobi.ads.rendering.InMobiAdActivity;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class V4 extends P {

    /* renamed from: e  reason: collision with root package name */
    public final WeakReference f24300e;

    /* renamed from: f  reason: collision with root package name */
    public final InterfaceC3231x f24301f;

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f24302g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f24303h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V4(WeakReference activityRef, InterfaceC3231x adContainer, RelativeLayout adBackgroundView) {
        super(adBackgroundView);
        Intrinsics.checkNotNullParameter(activityRef, "activityRef");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(adBackgroundView, "adBackgroundView");
        this.f24300e = activityRef;
        this.f24301f = adContainer;
        this.f24302g = adBackgroundView;
    }

    @Override // com.inmobi.media.P
    public final void a(EnumC3115pa orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        this.f23963b = orientation;
        InterfaceC3231x interfaceC3231x = this.f24301f;
        Intrinsics.checkNotNull(interfaceC3231x, "null cannot be cast to non-null type com.inmobi.ads.containers.RenderView");
        ((GestureDetector$OnGestureListenerC2941ec) interfaceC3231x).getWebViewFactory().a(new U4(orientation));
    }

    @Override // com.inmobi.media.P
    public final void b() {
        boolean z10;
        Activity activity = (Activity) this.f24300e.get();
        if (!(activity instanceof InMobiAdActivity)) {
            z10 = false;
        } else {
            z10 = ((InMobiAdActivity) activity).f23433e;
        }
        if (z10) {
            try {
                InterfaceC3215w fullScreenEventsListener = this.f24301f.getFullScreenEventsListener();
                if (fullScreenEventsListener != null) {
                    fullScreenEventsListener.b(null);
                }
            } catch (Exception unused) {
                AbstractC2984h7.a((byte) 2, "InMobi", "SDK encountered unexpected error while finishing fullscreen view");
            }
        } else {
            InterfaceC3231x interfaceC3231x = this.f24301f;
            Intrinsics.checkNotNull(interfaceC3231x, "null cannot be cast to non-null type com.inmobi.ads.containers.RenderView");
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) interfaceC3231x;
            gestureDetector$OnGestureListenerC2941ec.setFullScreenActivityContext(null);
            try {
                gestureDetector$OnGestureListenerC2941ec.i();
            } catch (Exception unused2) {
                AbstractC2984h7.a((byte) 2, "InMobi", "SDK encountered unexpected error in processing close request");
            }
            SparseArray sparseArray = InMobiAdActivity.f23426k;
            InterfaceC3231x container = this.f24301f;
            Intrinsics.checkNotNullParameter(container, "container");
            InMobiAdActivity.f23426k.remove(container.hashCode());
        }
        this.f24301f.b();
    }

    @Override // com.inmobi.media.P
    public final void c() {
        if (this.f24303h) {
            return;
        }
        try {
            this.f24303h = true;
            InterfaceC3215w fullScreenEventsListener = this.f24301f.getFullScreenEventsListener();
            if (fullScreenEventsListener != null) {
                fullScreenEventsListener.a(null);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.inmobi.media.P
    public final void f() {
        View view;
        this.f24302g.setBackgroundColor(0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(10);
        Xe viewableAd = this.f24301f.getViewableAd();
        ViewGroup viewGroup = null;
        if (viewableAd != null) {
            view = viewableAd.d();
        } else {
            view = null;
        }
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                viewGroup = (ViewGroup) parent;
            }
            if (viewGroup != null) {
                viewGroup.removeView(view);
            }
            this.f24302g.addView(view, layoutParams);
        }
    }

    @Override // com.inmobi.media.P
    public final void g() {
        if (1 == this.f24301f.getPlacementType()) {
            try {
                HashMap hashMap = new HashMap();
                Xe viewableAd = this.f24301f.getViewableAd();
                if (viewableAd != null) {
                    viewableAd.a(hashMap);
                }
            } catch (Exception unused) {
                InterfaceC3215w fullScreenEventsListener = this.f24301f.getFullScreenEventsListener();
                if (fullScreenEventsListener != null) {
                    fullScreenEventsListener.a();
                }
            }
        }
    }

    @Override // com.inmobi.media.P
    public final void a() {
        InterfaceC3231x interfaceC3231x = this.f24301f;
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = interfaceC3231x instanceof GestureDetector$OnGestureListenerC2941ec ? (GestureDetector$OnGestureListenerC2941ec) interfaceC3231x : null;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            return;
        }
        gestureDetector$OnGestureListenerC2941ec.getWebViewFactory().a(T4.f24173a);
        if (gestureDetector$OnGestureListenerC2941ec.H) {
            return;
        }
        try {
            gestureDetector$OnGestureListenerC2941ec.i();
        } catch (Exception unused) {
            AbstractC2984h7.a((byte) 2, "InMobi", "SDK encountered unexpected error in processing close request");
        }
    }

    @Override // com.inmobi.media.P
    public final void d() {
    }
}
