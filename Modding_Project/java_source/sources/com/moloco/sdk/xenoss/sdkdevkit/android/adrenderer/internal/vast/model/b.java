package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f35553a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Boolean f35554b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final f f35555c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final List<p> f35556d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final List<String> f35557e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final List<j> f35558f;

    public b(@NotNull String vastAdTagUrl, @Nullable Boolean bool, @Nullable f fVar, @NotNull List<p> impressions, @NotNull List<String> errorUrls, @NotNull List<j> creatives) {
        Intrinsics.checkNotNullParameter(vastAdTagUrl, "vastAdTagUrl");
        Intrinsics.checkNotNullParameter(impressions, "impressions");
        Intrinsics.checkNotNullParameter(errorUrls, "errorUrls");
        Intrinsics.checkNotNullParameter(creatives, "creatives");
        this.f35553a = vastAdTagUrl;
        this.f35554b = bool;
        this.f35555c = fVar;
        this.f35556d = impressions;
        this.f35557e = errorUrls;
        this.f35558f = creatives;
    }

    @NotNull
    public final List<j> a() {
        return this.f35558f;
    }

    @NotNull
    public final List<String> b() {
        return this.f35557e;
    }

    @Nullable
    public final Boolean c() {
        return this.f35554b;
    }

    @NotNull
    public final List<p> d() {
        return this.f35556d;
    }

    @NotNull
    public final String e() {
        return this.f35553a;
    }
}
