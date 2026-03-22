package com.inmobi.media;

import android.view.ViewParent;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.g4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2965g4 extends Lambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2981h4 f24757a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2965g4(C2981h4 c2981h4) {
        super(2);
        this.f24757a = c2981h4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Y3 y32;
        String trackerName = (String) obj;
        Map macros = (Map) obj2;
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        ViewParent parent = this.f24757a.getParent();
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = null;
        if (parent instanceof Y3) {
            y32 = (Y3) parent;
        } else {
            y32 = null;
        }
        if (y32 != null) {
            Intrinsics.checkNotNullParameter(trackerName, "trackerName");
            Intrinsics.checkNotNullParameter(macros, "macros");
            InterfaceC2882b4 interfaceC2882b4 = y32.f24392d;
            if (interfaceC2882b4 != null) {
                Intrinsics.checkNotNullParameter(trackerName, "trackerName");
                Intrinsics.checkNotNullParameter(macros, "macros");
                InterfaceC3231x interfaceC3231x = ((C2998i5) interfaceC2882b4).f24854a.f24887b;
                if (interfaceC3231x instanceof GestureDetector$OnGestureListenerC2941ec) {
                    gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) interfaceC3231x;
                }
                if (gestureDetector$OnGestureListenerC2941ec != null) {
                    gestureDetector$OnGestureListenerC2941ec.a(trackerName, macros);
                }
            }
        }
        return Unit.f60915a;
    }
}
