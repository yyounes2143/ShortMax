package com.inmobi.media;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class L7 extends Z1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ T7 f23812a;

    public L7(T7 t72) {
        this.f23812a = t72;
    }

    @Override // com.inmobi.media.Z1
    public final void a(C3043l2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        T7 t72 = this.f23812a;
        LinkedHashMap linkedHashMap = t72.R;
        Yd telemetryOnAdImpression = new Yd(linkedHashMap != null ? (U0) linkedHashMap.get("AdImpressionSuccessful") : null, t72.f24184i.f24141f, t72.getCreativeId(), "inmobiJson");
        Intrinsics.checkNotNullParameter("nativeBeacon", "<set-?>");
        telemetryOnAdImpression.f24415e = "nativeBeacon";
        P0 p02 = this.f23812a.f24198w;
        if (p02 != null) {
            Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
            Intrinsics.checkNotNullParameter("nativeBeacon", "<set-?>");
            telemetryOnAdImpression.f24415e = "nativeBeacon";
            if (p02.f23966a.Z()) {
                telemetryOnAdImpression.b();
            } else {
                p02.f23966a.D.a(telemetryOnAdImpression);
            }
        }
    }

    @Override // com.inmobi.media.Z1
    public final void a(C3043l2 click, String reason) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(reason, "error");
        T7 t72 = this.f23812a;
        LinkedHashMap linkedHashMap = t72.R;
        Yd yd2 = new Yd(linkedHashMap != null ? (U0) linkedHashMap.get("AdImpressionSuccessful") : null, t72.f24184i.f24141f, t72.getCreativeId(), "inmobiJson");
        Intrinsics.checkNotNullParameter("nativeBeacon", "<set-?>");
        yd2.f24415e = "nativeBeacon";
        Intrinsics.checkNotNullParameter(reason, "reason");
        LinkedHashMap a10 = yd2.a();
        a10.put("networkType", L3.q());
        a10.put("errorCode", (short) 2178);
        a10.put("reason", reason);
        Pd pd2 = Pd.f23988a;
        Pd.b("AdImpressionSuccessful", a10, Td.f24224a);
    }
}
