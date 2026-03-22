package com.inmobi.media;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Hb implements ef {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ GestureDetector$OnGestureListenerC2941ec f23705a;

    public Hb(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        this.f23705a = gestureDetector$OnGestureListenerC2941ec;
    }

    @Override // com.inmobi.media.ef
    public final void a(View view, boolean z10) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!(view instanceof GestureDetector$OnGestureListenerC2941ec)) {
            return;
        }
        if (this.f23705a.hasWindowFocus()) {
            this.f23705a.c(z10);
        } else {
            this.f23705a.c(false);
        }
    }
}
