package com.inmobi.media;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.bc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2890bc extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ GestureDetector$OnGestureListenerC2941ec f24521a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2890bc(GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        super(0);
        this.f24521a = gestureDetector$OnGestureListenerC2941ec;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new C2891bd(this.f24521a.getWebViewFactory(), this.f24521a.f24680i);
    }
}
