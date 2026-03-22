package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.t6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3174t6 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ boolean f25306a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3174t6(boolean z10) {
        super(1);
        this.f25306a = z10;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        GestureDetector$OnGestureListenerC2941ec it = (GestureDetector$OnGestureListenerC2941ec) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        it.setDisableBackButton(this.f25306a);
        return Unit.f60915a;
    }
}
