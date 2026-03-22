package com.inmobi.media;

import android.view.ViewParent;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.e4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2933e4 extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2981h4 f24629a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2933e4(C2981h4 c2981h4) {
        super(0);
        this.f24629a = c2981h4;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Y3 y32;
        InterfaceC2882b4 interfaceC2882b4;
        ViewParent parent = this.f24629a.getParent();
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = null;
        if (parent instanceof Y3) {
            y32 = (Y3) parent;
        } else {
            y32 = null;
        }
        if (y32 != null && (interfaceC2882b4 = y32.f24392d) != null) {
            InterfaceC3231x interfaceC3231x = ((C2998i5) interfaceC2882b4).f24854a.f24887b;
            if (interfaceC3231x instanceof GestureDetector$OnGestureListenerC2941ec) {
                gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) interfaceC3231x;
            }
            if (gestureDetector$OnGestureListenerC2941ec != null) {
                gestureDetector$OnGestureListenerC2941ec.p();
            }
        }
        return Unit.f60915a;
    }
}
