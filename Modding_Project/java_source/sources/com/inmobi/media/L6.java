package com.inmobi.media;

import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class L6 extends Lambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ M6 f23811a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L6(M6 m62) {
        super(2);
        this.f23811a = m62;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String trackerName = (String) obj;
        Map macros = (Map) obj2;
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        Ub ub2 = this.f23811a.f23842d;
        if (ub2 != null) {
            Intrinsics.checkNotNullParameter(trackerName, "trackerName");
            Intrinsics.checkNotNullParameter(macros, "macros");
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = ub2.f24266a;
            if (!gestureDetector$OnGestureListenerC2941ec.f24672e) {
                gestureDetector$OnGestureListenerC2941ec.a(trackerName, macros);
            }
        }
        return Unit.f60915a;
    }
}
