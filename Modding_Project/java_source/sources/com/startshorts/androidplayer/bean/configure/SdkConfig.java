package com.startshorts.androidplayer.bean.configure;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SdkConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SdkConfig {
    @NotNull
    public static final String AF = "SDK1";
    @NotNull
    public static final String AJ = "SDK_ADJUST";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final String name;
    private final boolean status;
    @NotNull
    private final String value;

    /* compiled from: SdkConfig.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public SdkConfig(@NotNull String name, boolean z10, @NotNull String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        this.name = name;
        this.status = z10;
        this.value = value;
    }

    public static /* synthetic */ SdkConfig copy$default(SdkConfig sdkConfig, String str, boolean z10, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = sdkConfig.name;
        }
        if ((i10 & 2) != 0) {
            z10 = sdkConfig.status;
        }
        if ((i10 & 4) != 0) {
            str2 = sdkConfig.value;
        }
        return sdkConfig.copy(str, z10, str2);
    }

    @NotNull
    public final String component1() {
        return this.name;
    }

    public final boolean component2() {
        return this.status;
    }

    @NotNull
    public final String component3() {
        return this.value;
    }

    @NotNull
    public final SdkConfig copy(@NotNull String name, boolean z10, @NotNull String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        return new SdkConfig(name, z10, value);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SdkConfig)) {
            return false;
        }
        SdkConfig sdkConfig = (SdkConfig) obj;
        if (Intrinsics.areEqual(this.name, sdkConfig.name) && this.status == sdkConfig.status && Intrinsics.areEqual(this.value, sdkConfig.value)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final boolean getStatus() {
        return this.status;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + Boolean.hashCode(this.status)) * 31) + this.value.hashCode();
    }

    @NotNull
    public String toString() {
        return "SdkConfig(name=" + this.name + ", status=" + this.status + ", value=" + this.value + ')';
    }
}
