package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class n {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f35594a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Integer f35595b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Integer f35596c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f35597d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final t f35598e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final Long f35599f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final o f35600g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final List<String> f35601h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final a0 f35602i;

    public n(@Nullable String str, @Nullable Integer num, @Nullable Integer num2, @Nullable String str2, @Nullable t tVar, @Nullable Long l10, @Nullable o oVar, @NotNull List<String> viewTrackingUrlList, @NotNull a0 resource) {
        Intrinsics.checkNotNullParameter(viewTrackingUrlList, "viewTrackingUrlList");
        Intrinsics.checkNotNullParameter(resource, "resource");
        this.f35594a = str;
        this.f35595b = num;
        this.f35596c = num2;
        this.f35597d = str2;
        this.f35598e = tVar;
        this.f35599f = l10;
        this.f35600g = oVar;
        this.f35601h = viewTrackingUrlList;
        this.f35602i = resource;
    }

    @Nullable
    public final String a() {
        return this.f35597d;
    }

    @Nullable
    public final o b() {
        return this.f35600g;
    }

    @Nullable
    public final Long c() {
        return this.f35599f;
    }

    @Nullable
    public final Integer d() {
        return this.f35596c;
    }

    @Nullable
    public final t e() {
        return this.f35598e;
    }

    @NotNull
    public final a0 f() {
        return this.f35602i;
    }

    @NotNull
    public final List<String> g() {
        return this.f35601h;
    }

    @Nullable
    public final Integer h() {
        return this.f35595b;
    }
}
