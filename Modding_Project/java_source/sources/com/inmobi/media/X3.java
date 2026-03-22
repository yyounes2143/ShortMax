package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class X3 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Y3 f24359a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X3(Y3 y32) {
        super(1);
        this.f24359a = y32;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec;
        JSONObject jsonObject = (JSONObject) obj;
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        InterfaceC2882b4 interfaceC2882b4 = this.f24359a.f24392d;
        if (interfaceC2882b4 != null) {
            Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
            InterfaceC3231x interfaceC3231x = ((C2998i5) interfaceC2882b4).f24854a.f24887b;
            if (interfaceC3231x instanceof GestureDetector$OnGestureListenerC2941ec) {
                gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) interfaceC3231x;
            } else {
                gestureDetector$OnGestureListenerC2941ec = null;
            }
            if (gestureDetector$OnGestureListenerC2941ec != null) {
                gestureDetector$OnGestureListenerC2941ec.a(jsonObject);
            }
        }
        return Unit.f60915a;
    }
}
