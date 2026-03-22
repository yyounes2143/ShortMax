package com.inmobi.media;

import android.view.View;
/* loaded from: classes5.dex */
public final class Q4 implements InterfaceC2917d5 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ S4 f24033a;

    public Q4(S4 s42) {
        this.f24033a = s42;
    }

    @Override // com.inmobi.media.InterfaceC2917d5
    public final void a(View view, Object obj) {
        if (view instanceof GestureDetector$OnGestureListenerC2941ec) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24033a.f24127f;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).a("HtmlAdTracker", "fireImpression");
            }
            ((GestureDetector$OnGestureListenerC2941ec) view).m();
        }
    }
}
