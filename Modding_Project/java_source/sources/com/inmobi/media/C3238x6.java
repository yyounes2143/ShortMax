package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.x6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3238x6 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2895c0 f25427a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3238x6(C2895c0 c2895c0) {
        super(1);
        this.f25427a = c2895c0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        P9 it = (P9) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        this.f25427a.invoke(it.f23982d);
        return Unit.f60915a;
    }
}
