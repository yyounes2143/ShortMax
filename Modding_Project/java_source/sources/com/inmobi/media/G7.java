package com.inmobi.media;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class G7 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int[] f23678a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public G7(int[] iArr) {
        super(1);
        this.f23678a = iArr;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C2914d2 event = (C2914d2) obj;
        Intrinsics.checkNotNullParameter(event, "event");
        return Boolean.valueOf(kotlin.collections.n.d0(this.f23678a, event.f24572a));
    }
}
