package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Ea implements N2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Fa f23623a;

    public Ea(Fa fa2) {
        this.f23623a = fa2;
    }

    @Override // com.inmobi.media.N2
    public final void a(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof AdConfig) {
            AdConfig.PingsV2Config pingsV2Config = ((AdConfig) config).getPingsV2Config();
            Fa fa2 = this.f23623a;
            fa2.getClass();
            Intrinsics.checkNotNullParameter(pingsV2Config, "<set-?>");
            fa2.f23659f = pingsV2Config;
        }
    }
}
