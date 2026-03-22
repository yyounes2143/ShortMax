package com.inmobi.media;

import com.inmobi.commons.core.configs.CrashConfig;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class U5 {

    /* renamed from: a  reason: collision with root package name */
    public final Pc f24254a;

    /* renamed from: b  reason: collision with root package name */
    public final Pc f24255b;

    /* renamed from: c  reason: collision with root package name */
    public final Pc f24256c;

    /* renamed from: d  reason: collision with root package name */
    public final Pc f24257d;

    public U5(CrashConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.f24254a = new Pc(config.getCrashConfig().getSamplingPercent());
        this.f24255b = new Pc(config.getCatchConfig().getSamplingPercent());
        this.f24256c = new Pc(config.getANRConfig().getWatchdog().getSamplingPercent());
        this.f24257d = new Pc(config.getANRConfig().getAppExitReason().getSamplingPercent());
    }
}
