package com.startshorts.androidplayer.bean.auth;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OTPSendResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class OTPSendResult {
    private final boolean isSuccess;
    @NotNull
    private final String message;
    private final int sendTimes;
    private final boolean useFireBaseMessage;

    public OTPSendResult(@NotNull String message, int i10, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.message = message;
        this.sendTimes = i10;
        this.isSuccess = z10;
        this.useFireBaseMessage = z11;
    }

    public static /* synthetic */ OTPSendResult copy$default(OTPSendResult oTPSendResult, String str, int i10, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = oTPSendResult.message;
        }
        if ((i11 & 2) != 0) {
            i10 = oTPSendResult.sendTimes;
        }
        if ((i11 & 4) != 0) {
            z10 = oTPSendResult.isSuccess;
        }
        if ((i11 & 8) != 0) {
            z11 = oTPSendResult.useFireBaseMessage;
        }
        return oTPSendResult.copy(str, i10, z10, z11);
    }

    @NotNull
    public final String component1() {
        return this.message;
    }

    public final int component2() {
        return this.sendTimes;
    }

    public final boolean component3() {
        return this.isSuccess;
    }

    public final boolean component4() {
        return this.useFireBaseMessage;
    }

    @NotNull
    public final OTPSendResult copy(@NotNull String message, int i10, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(message, "message");
        return new OTPSendResult(message, i10, z10, z11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OTPSendResult)) {
            return false;
        }
        OTPSendResult oTPSendResult = (OTPSendResult) obj;
        if (Intrinsics.areEqual(this.message, oTPSendResult.message) && this.sendTimes == oTPSendResult.sendTimes && this.isSuccess == oTPSendResult.isSuccess && this.useFireBaseMessage == oTPSendResult.useFireBaseMessage) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getMessage() {
        return this.message;
    }

    public final int getSendTimes() {
        return this.sendTimes;
    }

    public final boolean getUseFireBaseMessage() {
        return this.useFireBaseMessage;
    }

    public int hashCode() {
        return (((((this.message.hashCode() * 31) + Integer.hashCode(this.sendTimes)) * 31) + Boolean.hashCode(this.isSuccess)) * 31) + Boolean.hashCode(this.useFireBaseMessage);
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    @NotNull
    public String toString() {
        return "OTPSendResult(message=" + this.message + ", sendTimes=" + this.sendTimes + ", isSuccess=" + this.isSuccess + ", useFireBaseMessage=" + this.useFireBaseMessage + ')';
    }
}
