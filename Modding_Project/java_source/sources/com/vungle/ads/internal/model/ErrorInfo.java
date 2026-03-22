package com.vungle.ads.internal.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ErrorInfo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ErrorInfo {
    @NotNull
    private final String description;
    private final boolean errorIsTerminal;
    private final boolean isRetryCode;

    public ErrorInfo(@NotNull String description, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(description, "description");
        this.description = description;
        this.errorIsTerminal = z10;
        this.isRetryCode = z11;
    }

    public static /* synthetic */ ErrorInfo copy$default(ErrorInfo errorInfo, String str, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = errorInfo.description;
        }
        if ((i10 & 2) != 0) {
            z10 = errorInfo.errorIsTerminal;
        }
        if ((i10 & 4) != 0) {
            z11 = errorInfo.isRetryCode;
        }
        return errorInfo.copy(str, z10, z11);
    }

    @NotNull
    public final String component1() {
        return this.description;
    }

    public final boolean component2() {
        return this.errorIsTerminal;
    }

    public final boolean component3() {
        return this.isRetryCode;
    }

    @NotNull
    public final ErrorInfo copy(@NotNull String description, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(description, "description");
        return new ErrorInfo(description, z10, z11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ErrorInfo)) {
            return false;
        }
        ErrorInfo errorInfo = (ErrorInfo) obj;
        if (Intrinsics.areEqual(this.description, errorInfo.description) && this.errorIsTerminal == errorInfo.errorIsTerminal && this.isRetryCode == errorInfo.isRetryCode) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    public final boolean getErrorIsTerminal() {
        return this.errorIsTerminal;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.description.hashCode() * 31;
        boolean z10 = this.errorIsTerminal;
        int i10 = 1;
        int i11 = z10;
        if (z10 != 0) {
            i11 = 1;
        }
        int i12 = (hashCode + i11) * 31;
        boolean z11 = this.isRetryCode;
        if (!z11) {
            i10 = z11 ? 1 : 0;
        }
        return i12 + i10;
    }

    public final boolean isRetryCode() {
        return this.isRetryCode;
    }

    @NotNull
    public String toString() {
        return "ErrorInfo(description=" + this.description + ", errorIsTerminal=" + this.errorIsTerminal + ", isRetryCode=" + this.isRetryCode + ')';
    }

    public /* synthetic */ ErrorInfo(String str, boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? false : z10, (i10 & 4) != 0 ? false : z11);
    }
}
