package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final a0 f36193a;

    /* renamed from: b  reason: collision with root package name */
    public final int f36194b;

    /* renamed from: c  reason: collision with root package name */
    public final int f36195c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f36196d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final List<String> f36197e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final List<String> f36198f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final Long f36199g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t f36200h;

    public e(@NotNull a0 resource, int i10, int i11, @Nullable String str, @NotNull List<String> clickTracking, @NotNull List<String> viewTracking, @Nullable Long l10, @Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t tVar) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        Intrinsics.checkNotNullParameter(clickTracking, "clickTracking");
        Intrinsics.checkNotNullParameter(viewTracking, "viewTracking");
        this.f36193a = resource;
        this.f36194b = i10;
        this.f36195c = i11;
        this.f36196d = str;
        this.f36197e = clickTracking;
        this.f36198f = viewTracking;
        this.f36199g = l10;
        this.f36200h = tVar;
    }

    @Nullable
    public final String a() {
        return this.f36196d;
    }

    @NotNull
    public final List<String> b() {
        return this.f36197e;
    }

    @Nullable
    public final Long c() {
        return this.f36199g;
    }

    public final int d() {
        return this.f36195c;
    }

    @Nullable
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t e() {
        return this.f36200h;
    }

    @NotNull
    public final a0 f() {
        return this.f36193a;
    }

    @NotNull
    public final List<String> g() {
        return this.f36198f;
    }

    public final int h() {
        return this.f36194b;
    }
}
