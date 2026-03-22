package com.unity3d.ads.beta;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MediationInfo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MediationInfo {
    @NotNull
    private final String adapterVersion;
    @NotNull
    private final String name;
    @NotNull
    private final String version;

    public MediationInfo(@NotNull String name, @NotNull String version, @NotNull String adapterVersion) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(adapterVersion, "adapterVersion");
        this.name = name;
        this.version = version;
        this.adapterVersion = adapterVersion;
    }

    @NotNull
    public final String getAdapterVersion() {
        return this.adapterVersion;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getVersion() {
        return this.version;
    }
}
