package com.inmobi.media;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.vc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3212vc extends Lambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public static final C3212vc f25376a = new C3212vc();

    public C3212vc() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        C3196uc _request = (C3196uc) obj;
        long longValue = ((Number) obj2).longValue();
        Intrinsics.checkNotNullParameter(_request, "_request");
        AbstractC3228wc.a(_request, longValue);
        return Unit.f60915a;
    }
}
