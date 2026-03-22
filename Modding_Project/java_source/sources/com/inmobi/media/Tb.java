package com.inmobi.media;

import com.inmobi.commons.core.configs.TelemetryConfig;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class Tb extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Tb f24222a = new Tb();

    public Tb() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        LinkedHashMap linkedHashMap = O2.f23923a;
        return ((TelemetryConfig) AbstractC3110p5.a("telemetry", "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig", null)).getLpConfig();
    }
}
