package com.moloco.sdk.publisher;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes6.dex */
public final class MolocoInitStatus {
    public static final int $stable = 0;
    @NotNull
    private final String description;
    @NotNull
    private final Initialization initialization;

    public MolocoInitStatus(@NotNull Initialization initialization, @NotNull String description) {
        Intrinsics.checkNotNullParameter(initialization, "initialization");
        Intrinsics.checkNotNullParameter(description, "description");
        this.initialization = initialization;
        this.description = description;
    }

    public static /* synthetic */ MolocoInitStatus copy$default(MolocoInitStatus molocoInitStatus, Initialization initialization, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            initialization = molocoInitStatus.initialization;
        }
        if ((i10 & 2) != 0) {
            str = molocoInitStatus.description;
        }
        return molocoInitStatus.copy(initialization, str);
    }

    @NotNull
    public final Initialization component1() {
        return this.initialization;
    }

    @NotNull
    public final String component2() {
        return this.description;
    }

    @NotNull
    public final MolocoInitStatus copy(@NotNull Initialization initialization, @NotNull String description) {
        Intrinsics.checkNotNullParameter(initialization, "initialization");
        Intrinsics.checkNotNullParameter(description, "description");
        return new MolocoInitStatus(initialization, description);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MolocoInitStatus)) {
            return false;
        }
        MolocoInitStatus molocoInitStatus = (MolocoInitStatus) obj;
        if (this.initialization == molocoInitStatus.initialization && Intrinsics.areEqual(this.description, molocoInitStatus.description)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @NotNull
    public final Initialization getInitialization() {
        return this.initialization;
    }

    public int hashCode() {
        return (this.initialization.hashCode() * 31) + this.description.hashCode();
    }

    @NotNull
    public String toString() {
        return "MolocoInitStatus(initialization=" + this.initialization + ", description=" + this.description + ')';
    }
}
