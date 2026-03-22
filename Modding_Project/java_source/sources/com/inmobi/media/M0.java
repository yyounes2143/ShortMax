package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class M0 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ S0 f23830a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M0(S0 s02) {
        super(1);
        this.f23830a = s02;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        short s10;
        EnumC3093o4 errorCode = (EnumC3093o4) obj;
        Intrinsics.checkNotNullParameter(errorCode, "it");
        S0 s02 = this.f23830a;
        InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE);
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        int ordinal = errorCode.ordinal();
        if (ordinal != 0) {
            if (ordinal != 18) {
                switch (ordinal) {
                    case 12:
                        s10 = 2101;
                        break;
                    case 13:
                        s10 = 2102;
                        break;
                    case 14:
                        s10 = 2103;
                        break;
                    case 15:
                        s10 = 2104;
                        break;
                    case 16:
                        s10 = 2105;
                        break;
                }
            } else {
                s10 = 2228;
            }
            s02.a(inMobiAdRequestStatus, true, s10);
            return Unit.f60915a;
        }
        s10 = 2100;
        s02.a(inMobiAdRequestStatus, true, s10);
        return Unit.f60915a;
    }
}
