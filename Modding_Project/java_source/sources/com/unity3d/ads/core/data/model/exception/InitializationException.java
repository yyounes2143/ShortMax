package com.unity3d.ads.core.data.model.exception;

import com.unity3d.ads.core.domain.AndroidInitializeBoldSDK;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutCancellationException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InitializationException.kt */
@Metadata
/* loaded from: classes7.dex */
public final class InitializationException extends Exception {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final String message;
    @NotNull
    private final String reason;
    @Nullable
    private final String reasonDebug;
    @Nullable
    private final Throwable throwable;

    /* compiled from: InitializationException.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final InitializationException parseFrom(@NotNull Exception e10) {
            boolean z10;
            String str;
            Intrinsics.checkNotNullParameter(e10, "e");
            if (e10 instanceof TimeoutCancellationException) {
                z10 = true;
            } else {
                z10 = e10 instanceof NetworkTimeoutException;
            }
            if (z10) {
                return new InitializationException(AndroidInitializeBoldSDK.MSG_TIMEOUT, e10, "timeout", e10.getMessage());
            }
            if (e10 instanceof GatewayException) {
                GatewayException gatewayException = (GatewayException) e10;
                return new InitializationException(AndroidInitializeBoldSDK.MSG_UNKNOWN, gatewayException.getThrowable(), gatewayException.getReason(), gatewayException.getReasonDebug());
            } else if (e10 instanceof UnityAdsNetworkException) {
                UnityAdsNetworkException unityAdsNetworkException = (UnityAdsNetworkException) e10;
                if (unityAdsNetworkException.getCode() == null) {
                    str = "network";
                } else {
                    str = "network." + unityAdsNetworkException.getCode();
                }
                return new InitializationException(AndroidInitializeBoldSDK.MSG_NETWORK, e10, str, unityAdsNetworkException.getMessage());
            } else if (e10 instanceof InitializationException) {
                return (InitializationException) e10;
            } else {
                return new InitializationException(AndroidInitializeBoldSDK.MSG_UNKNOWN, e10, "unknown", e10.getMessage());
            }
        }

        private Companion() {
        }
    }

    public /* synthetic */ InitializationException(String str, Throwable th2, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : th2, (i10 & 4) != 0 ? "gateway" : str2, (i10 & 8) != 0 ? null : str3);
    }

    public static /* synthetic */ InitializationException copy$default(InitializationException initializationException, String str, Throwable th2, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = initializationException.getMessage();
        }
        if ((i10 & 2) != 0) {
            th2 = initializationException.throwable;
        }
        if ((i10 & 4) != 0) {
            str2 = initializationException.reason;
        }
        if ((i10 & 8) != 0) {
            str3 = initializationException.reasonDebug;
        }
        return initializationException.copy(str, th2, str2, str3);
    }

    @NotNull
    public final String component1() {
        return getMessage();
    }

    @Nullable
    public final Throwable component2() {
        return this.throwable;
    }

    @NotNull
    public final String component3() {
        return this.reason;
    }

    @Nullable
    public final String component4() {
        return this.reasonDebug;
    }

    @NotNull
    public final InitializationException copy(@NotNull String message, @Nullable Throwable th2, @NotNull String reason, @Nullable String str) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(reason, "reason");
        return new InitializationException(message, th2, reason, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InitializationException)) {
            return false;
        }
        InitializationException initializationException = (InitializationException) obj;
        if (Intrinsics.areEqual(getMessage(), initializationException.getMessage()) && Intrinsics.areEqual(this.throwable, initializationException.throwable) && Intrinsics.areEqual(this.reason, initializationException.reason) && Intrinsics.areEqual(this.reasonDebug, initializationException.reasonDebug)) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String getMessage() {
        return this.message;
    }

    @NotNull
    public final String getReason() {
        return this.reason;
    }

    @Nullable
    public final String getReasonDebug() {
        return this.reasonDebug;
    }

    @Nullable
    public final Throwable getThrowable() {
        return this.throwable;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = getMessage().hashCode() * 31;
        Throwable th2 = this.throwable;
        int i10 = 0;
        if (th2 == null) {
            hashCode = 0;
        } else {
            hashCode = th2.hashCode();
        }
        int hashCode3 = (((hashCode2 + hashCode) * 31) + this.reason.hashCode()) * 31;
        String str = this.reasonDebug;
        if (str != null) {
            i10 = str.hashCode();
        }
        return hashCode3 + i10;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String toString() {
        return "InitializationException(message=" + getMessage() + ", throwable=" + this.throwable + ", reason=" + this.reason + ", reasonDebug=" + this.reasonDebug + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializationException(@NotNull String message, @Nullable Throwable th2, @NotNull String reason, @Nullable String str) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.message = message;
        this.throwable = th2;
        this.reason = reason;
        this.reasonDebug = str;
    }
}
