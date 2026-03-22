package com.inmobi.media;

import androidx.webkit.Profile;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Vb implements InterfaceC3215w {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ GestureDetector$OnGestureListenerC2941ec f24315a;

    public Vb(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        this.f24315a = gestureDetector$OnGestureListenerC2941ec;
    }

    @Override // com.inmobi.media.InterfaceC3215w
    public final void a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24315a.f24680i;
        if (interfaceC3269z5 != null) {
            String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((A5) interfaceC3269z5).a(str, "onAdScreenDisplayFailed");
        }
        this.f24315a.getListener().c();
    }

    @Override // com.inmobi.media.InterfaceC3215w
    public final void b(Object obj) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24315a.f24680i;
        if (interfaceC3269z5 != null) {
            String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((A5) interfaceC3269z5).a(str, "onAdScreenDismissed");
        }
        if (Intrinsics.areEqual(Profile.DEFAULT_PROFILE_NAME, this.f24315a.getViewState())) {
            this.f24315a.setAndUpdateViewState("Hidden");
        }
        this.f24315a.z();
    }

    @Override // com.inmobi.media.InterfaceC3215w
    public final void a(Object obj) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24315a.f24680i;
        if (interfaceC3269z5 != null) {
            String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((A5) interfaceC3269z5).a(str, "onAdScreenDisplayed");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f24315a;
        if (gestureDetector$OnGestureListenerC2941ec.f24666b == 0) {
            gestureDetector$OnGestureListenerC2941ec.M = false;
        }
        gestureDetector$OnGestureListenerC2941ec.getListener().e(this.f24315a);
    }
}
