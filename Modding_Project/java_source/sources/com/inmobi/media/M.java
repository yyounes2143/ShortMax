package com.inmobi.media;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class M extends Z1 {

    /* renamed from: a  reason: collision with root package name */
    public final N f23828a;

    /* renamed from: b  reason: collision with root package name */
    public final Yd f23829b;

    public M(N adImpressionCallbackHandler, Yd yd2) {
        Intrinsics.checkNotNullParameter(adImpressionCallbackHandler, "adImpressionCallbackHandler");
        this.f23828a = adImpressionCallbackHandler;
        this.f23829b = yd2;
    }

    @Override // com.inmobi.media.Z1
    public final void a(C3043l2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        this.f23828a.a(this.f23829b);
    }

    @Override // com.inmobi.media.Z1
    public final void a(C3043l2 click, String reason) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(reason, "error");
        Yd yd2 = this.f23829b;
        Intrinsics.checkNotNullParameter(reason, "reason");
        LinkedHashMap a10 = yd2.a();
        a10.put("networkType", L3.q());
        a10.put("errorCode", (short) 2178);
        a10.put("reason", reason);
        Pd pd2 = Pd.f23988a;
        Pd.b("AdImpressionSuccessful", a10, Td.f24224a);
    }
}
