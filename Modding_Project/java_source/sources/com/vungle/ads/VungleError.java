package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.LogEntry;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VungleError.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class VungleError extends Exception {
    private final int code;
    @NotNull
    private final String errorMessage;
    @Nullable
    private LogEntry logEntry;
    @NotNull
    private final Sdk.SDKError.Reason loggableReason;

    public /* synthetic */ VungleError(Sdk.SDKError.Reason reason, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(reason, str);
    }

    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        Class<?> cls2 = getClass();
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(cls2, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.vungle.ads.VungleError");
        VungleError vungleError = (VungleError) obj;
        if (this.loggableReason == vungleError.loggableReason && Intrinsics.areEqual(this.errorMessage, vungleError.errorMessage) && Intrinsics.areEqual(this.logEntry, vungleError.logEntry)) {
            return true;
        }
        return false;
    }

    public final int getCode() {
        return this.code;
    }

    @NotNull
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    @Override // java.lang.Throwable
    @Nullable
    public String getLocalizedMessage() {
        return this.errorMessage;
    }

    public int hashCode() {
        int i10;
        int hashCode = ((this.loggableReason.hashCode() * 31) + this.errorMessage.hashCode()) * 31;
        LogEntry logEntry = this.logEntry;
        if (logEntry != null) {
            i10 = logEntry.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @NotNull
    public final VungleError logError$vungle_ads_release() {
        logErrorNoReturnValue$vungle_ads_release();
        return this;
    }

    public final void logErrorNoReturnValue$vungle_ads_release() {
        AnalyticsClient.INSTANCE.logError$vungle_ads_release(this.loggableReason, this.errorMessage, this.logEntry);
    }

    @NotNull
    public final VungleError setLogEntry$vungle_ads_release(@Nullable LogEntry logEntry) {
        this.logEntry = logEntry;
        return this;
    }

    private VungleError(Sdk.SDKError.Reason reason, String str) {
        super(str);
        this.loggableReason = reason;
        this.errorMessage = str;
        this.code = reason.getNumber();
    }
}
