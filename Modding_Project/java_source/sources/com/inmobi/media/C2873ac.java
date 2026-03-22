package com.inmobi.media;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.ac  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2873ac extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ GestureDetector$OnGestureListenerC2941ec f24505a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2873ac(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        super(0);
        this.f24505a = gestureDetector$OnGestureListenerC2941ec;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new C2926de(this.f24505a.getAdConfig().getRendering().getScrollThrottleInterval());
    }
}
