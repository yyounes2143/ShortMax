package com.inmobi.media;

import android.os.Bundle;
import androidx.browser.customtabs.EngagementSignalsCallback;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.j2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3011j2 implements EngagementSignalsCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3027k2 f24884a;

    public C3011j2(C3027k2 c3027k2) {
        this.f24884a = c3027k2;
    }

    @Override // androidx.browser.customtabs.EngagementSignalsCallback
    public final void onGreatestScrollPercentageIncreased(int i10, Bundle extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
    }

    @Override // androidx.browser.customtabs.EngagementSignalsCallback
    public final void onSessionEnded(boolean z10, Bundle extras) {
        InterfaceC2931e2 interfaceC2931e2;
        Intrinsics.checkNotNullParameter(extras, "extras");
        if (z10 && (interfaceC2931e2 = (InterfaceC2931e2) this.f24884a.f24927i.get()) != null) {
            GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
            interfaceC2931e2.a(Gb.a("IN_NATIVE_BROWSER", "onInteraction"));
        }
        InterfaceC2931e2 interfaceC2931e22 = (InterfaceC2931e2) this.f24884a.f24927i.get();
        if (interfaceC2931e22 != null) {
            GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
            interfaceC2931e22.a(Gb.a("IN_NATIVE_BROWSER", "onClose"));
        }
    }

    @Override // androidx.browser.customtabs.EngagementSignalsCallback
    public final void onVerticalScrollEvent(boolean z10, Bundle extras) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        C3027k2 c3027k2 = this.f24884a;
        if (!c3027k2.f24926h) {
            c3027k2.f24926h = true;
            InterfaceC2931e2 interfaceC2931e2 = (InterfaceC2931e2) c3027k2.f24927i.get();
            if (interfaceC2931e2 != null) {
                GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
                interfaceC2931e2.a(Gb.a("IN_NATIVE_BROWSER", "onScroll"));
            }
        }
    }
}
