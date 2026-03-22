package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.b8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2886b8 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2903c8 f24519a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2886b8(C2903c8 c2903c8) {
        super(1);
        this.f24519a = c2903c8;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        EnumC3093o4 it = (EnumC3093o4) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        this.f24519a.a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE), true, AbstractC2875ae.a(it));
        return Unit.f60915a;
    }
}
