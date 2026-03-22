package com.moloco.sdk.internal.services;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class w {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f33538a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f33539b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final String f33540c;

    public w(@NotNull String applicationName, @NotNull String packageName, @NotNull String version) {
        Intrinsics.checkNotNullParameter(applicationName, "applicationName");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(version, "version");
        this.f33538a = applicationName;
        this.f33539b = packageName;
        this.f33540c = version;
    }

    @NotNull
    public final String a() {
        return this.f33539b;
    }

    @NotNull
    public final String b() {
        return this.f33540c;
    }
}
