package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class Nb extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ GestureDetector$OnGestureListenerC2941ec f23909a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Nb(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        super(1);
        this.f23909a = gestureDetector$OnGestureListenerC2941ec;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f23909a;
        InterfaceC3269z5 interfaceC3269z5 = gestureDetector$OnGestureListenerC2941ec.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onRenderProcessGone");
        }
        gestureDetector$OnGestureListenerC2941ec.getListener().a(gestureDetector$OnGestureListenerC2941ec, booleanValue);
        return Unit.f60915a;
    }
}
