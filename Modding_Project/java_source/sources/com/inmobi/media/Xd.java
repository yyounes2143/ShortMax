package com.inmobi.media;

import android.os.Build;
import com.inmobi.commons.core.configs.TelemetryConfig;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Xd {

    /* renamed from: a  reason: collision with root package name */
    public TelemetryConfig f24373a;

    public Xd(TelemetryConfig telemetryConfig) {
        Intrinsics.checkNotNullParameter(telemetryConfig, "telemetryConfig");
        this.f24373a = telemetryConfig;
    }

    public final void a(C2913d1 c2913d1) {
        if (Build.VERSION.SDK_INT < 30 || c2913d1 == null || c2913d1.f24570g != 6) {
            return;
        }
        a("ANREvent", c2913d1);
    }

    public final void a(String str, T5 t52) {
        if (this.f24373a.getPriorityEventsList().contains(str) && t52 != null && Ie.a(t52)) {
            Pd.b(str, new LinkedHashMap(), Td.f24224a);
        }
    }
}
