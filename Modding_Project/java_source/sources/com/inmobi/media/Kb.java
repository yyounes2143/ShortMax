package com.inmobi.media;

import com.inmobi.ads.rendering.InMobiAdActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class Kb extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Kb f23786a = new Kb();

    public Kb() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = InMobiAdActivity.f23427l;
        if (gestureDetector$OnGestureListenerC2941ec != null) {
            gestureDetector$OnGestureListenerC2941ec.p();
        }
        return Unit.f60915a;
    }
}
