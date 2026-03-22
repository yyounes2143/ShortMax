package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final a0 f35766a;

    /* renamed from: b  reason: collision with root package name */
    public final int f35767b;

    /* renamed from: c  reason: collision with root package name */
    public final int f35768c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f35769d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final List<String> f35770e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final List<String> f35771f;

    public c(@NotNull a0 resource, int i10, int i11, @Nullable String str, @NotNull List<String> clickTracking, @NotNull List<String> creativeViewTracking) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        Intrinsics.checkNotNullParameter(clickTracking, "clickTracking");
        Intrinsics.checkNotNullParameter(creativeViewTracking, "creativeViewTracking");
        this.f35766a = resource;
        this.f35767b = i10;
        this.f35768c = i11;
        this.f35769d = str;
        this.f35770e = clickTracking;
        this.f35771f = creativeViewTracking;
    }

    @Nullable
    public final String a() {
        return this.f35769d;
    }

    @NotNull
    public final List<String> b() {
        return this.f35770e;
    }

    @NotNull
    public final List<String> c() {
        return this.f35771f;
    }

    public final int d() {
        return this.f35768c;
    }

    @NotNull
    public final a0 e() {
        return this.f35766a;
    }

    public final int f() {
        return this.f35767b;
    }
}
