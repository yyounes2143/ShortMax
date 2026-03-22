package com.inmobi.media;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.kb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3036kb {
    public static final void a(AbstractC3020jb telemetryType) {
        Intrinsics.checkNotNullParameter(telemetryType, "telemetryType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (telemetryType instanceof C2956fb) {
            linkedHashMap.put("trigger", ((C2956fb) telemetryType).f24744a);
            Pd pd2 = Pd.f23988a;
            Pd.b("BillingClientConnectionError", linkedHashMap, Td.f24224a);
        } else if (telemetryType instanceof C2972gb) {
            linkedHashMap.put("errorCode", Short.valueOf(((C2972gb) telemetryType).f24778a));
            Pd pd3 = Pd.f23988a;
            Pd.b("IAPFetchFailed", linkedHashMap, Td.f24224a);
        } else if (telemetryType instanceof C3004ib) {
            String str = ((C3004ib) telemetryType).f24859a;
            if (str != null) {
                linkedHashMap.put("trigger", str);
            }
            Pd pd4 = Pd.f23988a;
            Pd.b("BillingClientNotCompatible", linkedHashMap, Td.f24224a);
        } else if (telemetryType instanceof C2988hb) {
            Pd pd5 = Pd.f23988a;
            Pd.b("IAPFetchSuccess", linkedHashMap, Td.f24224a);
        }
    }
}
