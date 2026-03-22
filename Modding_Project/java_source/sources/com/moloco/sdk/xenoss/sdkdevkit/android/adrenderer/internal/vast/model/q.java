package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class q {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final f f35607a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f35608b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f35609c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f35610d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final u f35611e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final List<p> f35612f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final List<String> f35613g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final List<j> f35614h;

    public q(@Nullable f fVar, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable u uVar, @NotNull List<p> impressions, @NotNull List<String> errorUrls, @NotNull List<j> creatives) {
        Intrinsics.checkNotNullParameter(impressions, "impressions");
        Intrinsics.checkNotNullParameter(errorUrls, "errorUrls");
        Intrinsics.checkNotNullParameter(creatives, "creatives");
        this.f35607a = fVar;
        this.f35608b = str;
        this.f35609c = str2;
        this.f35610d = str3;
        this.f35611e = uVar;
        this.f35612f = impressions;
        this.f35613g = errorUrls;
        this.f35614h = creatives;
    }

    @NotNull
    public final List<j> a() {
        return this.f35614h;
    }

    @NotNull
    public final List<String> b() {
        return this.f35613g;
    }

    @NotNull
    public final List<p> c() {
        return this.f35612f;
    }
}
