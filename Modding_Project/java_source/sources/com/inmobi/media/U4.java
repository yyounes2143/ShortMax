package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class U4 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ EnumC3115pa f24253a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U4(EnumC3115pa enumC3115pa) {
        super(1);
        this.f24253a = enumC3115pa;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        GestureDetector$OnGestureListenerC2941ec it = (GestureDetector$OnGestureListenerC2941ec) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        EnumC3115pa orientation = this.f24253a;
        it.getClass();
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        InterfaceC3269z5 interfaceC3269z5 = it.f24680i;
        if (interfaceC3269z5 != null) {
            String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "handle orientationChange " + it + ' ' + orientation);
        }
        int a10 = AbstractC3131qa.a(orientation);
        InterfaceC3269z5 interfaceC3269z52 = it.f24680i;
        if (interfaceC3269z52 != null) {
            String TAG2 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) interfaceC3269z52).a(TAG2, "fireOrientationChange " + it + ' ' + a10);
        }
        it.c("window.imraid.broadcastEvent('orientationChange','" + a10 + "');");
        return Unit.f60915a;
    }
}
