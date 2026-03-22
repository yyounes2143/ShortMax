package ai.turbolink.sdk.network;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TurboLinkNetworkException.kt */
@Metadata
/* loaded from: classes.dex */
public final class TurboLinkNetworkException extends Exception {
    private int turboLinkErrCode;
    @NotNull
    private String turboLinkErrMessage;

    public TurboLinkNetworkException(int i10, @NotNull String errMessage) {
        Intrinsics.checkNotNullParameter(errMessage, "errMessage");
        this.turboLinkErrCode = i10;
        this.turboLinkErrMessage = errMessage;
    }

    public final int getTurboLinkErrCode() {
        return this.turboLinkErrCode;
    }

    @NotNull
    public final String getTurboLinkErrMessage() {
        return this.turboLinkErrMessage;
    }

    public final void setTurboLinkErrCode(int i10) {
        this.turboLinkErrCode = i10;
    }

    public final void setTurboLinkErrMessage(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.turboLinkErrMessage = str;
    }
}
