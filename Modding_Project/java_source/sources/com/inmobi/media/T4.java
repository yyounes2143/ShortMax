package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class T4 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public static final T4 f24173a = new T4();

    public T4() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        GestureDetector$OnGestureListenerC2941ec it = (GestureDetector$OnGestureListenerC2941ec) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        InterfaceC3269z5 interfaceC3269z5 = it.f24680i;
        if (interfaceC3269z5 != null) {
            String str = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            ((A5) interfaceC3269z5).a(str, Ob.a(it, str, "TAG", "fireBackButtonPressedEvent "));
        }
        String str2 = it.I;
        if (str2 != null) {
            it.a(str2, "broadcastEvent('backButtonPressed')");
        }
        return Unit.f60915a;
    }
}
