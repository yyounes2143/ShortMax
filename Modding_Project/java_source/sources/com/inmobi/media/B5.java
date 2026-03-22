package com.inmobi.media;

import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class B5 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ArrayList f23511a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B5(ArrayList arrayList) {
        super(1);
        this.f23511a = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Z5 it = (Z5) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        this.f23511a.add(new C2918d6(it));
        return Unit.f60915a;
    }
}
