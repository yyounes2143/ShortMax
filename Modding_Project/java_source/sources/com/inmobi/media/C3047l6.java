package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.l6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3047l6 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3063m6 f24957a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3047l6(C3063m6 c3063m6) {
        super(1);
        this.f24957a = c3063m6;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        EnumC3093o4 it = (EnumC3093o4) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        this.f24957a.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE), true, AbstractC2875ae.a(it));
        return Unit.f60915a;
    }
}
