package com.unity3d.ads.beta;

import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TokenConfiguration.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TokenConfiguration {
    @NotNull
    private final AdFormat adFormat;
    @NotNull
    private final Map<String, String> extras;

    public TokenConfiguration(@NotNull AdFormat adFormat, @NotNull Map<String, String> extras) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.adFormat = adFormat;
        this.extras = extras;
    }

    @NotNull
    public final AdFormat getAdFormat() {
        return this.adFormat;
    }

    @NotNull
    public final Map<String, String> getExtras() {
        return this.extras;
    }

    public /* synthetic */ TokenConfiguration(AdFormat adFormat, Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(adFormat, (i10 & 2) != 0 ? p0.i() : map);
    }
}
