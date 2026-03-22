package com.unity3d.ads.core.data.model;

import com.unity3d.ads.UnityAds;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoadResult.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class LoadResult {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String MSG_AD_MARKUP_PARSING = "[UnityAds] Could not parse Ad Markup";
    @NotNull
    public static final String MSG_AD_OBJECT = "[UnityAds] Ad not found";
    @NotNull
    public static final String MSG_COMMUNICATION_FAILURE = "[UnityAds] Internal communication failure";
    @NotNull
    public static final String MSG_COMMUNICATION_FAILURE_WITH_DETAILS = "[UnityAds] Internal communication failure: %s";
    @NotNull
    public static final String MSG_COMMUNICATION_TIMEOUT = "[UnityAds] Internal communication timeout";
    @NotNull
    public static final String MSG_CREATE_REQUEST = "[UnityAds] Failed to create load request";
    @NotNull
    public static final String MSG_INIT_FAILED = "[UnityAds] SDK Initialization Failed";
    @NotNull
    public static final String MSG_INIT_FAILURE = "[UnityAds] SDK Initialization Failure";
    @NotNull
    public static final String MSG_NOT_INITIALIZED = "[UnityAds] SDK not initialized";
    @NotNull
    public static final String MSG_NO_FILL = "[UnityAds] No fill";
    @NotNull
    public static final String MSG_OPPORTUNITY_ID_USED = "[UnityAds] Object ID already used";
    @NotNull
    public static final String MSG_PLACEMENT_NULL = "[UnityAds] Placement ID cannot be null";
    @NotNull
    public static final String MSG_TIMEOUT = "[UnityAds] Timeout while loading ";

    /* compiled from: LoadResult.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: LoadResult.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Failure extends LoadResult {
        @NotNull
        private final UnityAds.UnityAdsLoadError error;
        private final boolean isScarAd;
        @Nullable
        private final String message;
        @NotNull
        private final String reason;
        @Nullable
        private final String reasonDebug;
        @Nullable
        private final Throwable throwable;

        public /* synthetic */ Failure(UnityAds.UnityAdsLoadError unityAdsLoadError, String str, Throwable th2, String str2, String str3, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(unityAdsLoadError, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : th2, str2, (i10 & 16) != 0 ? null : str3, (i10 & 32) != 0 ? false : z10);
        }

        public static /* synthetic */ Failure copy$default(Failure failure, UnityAds.UnityAdsLoadError unityAdsLoadError, String str, Throwable th2, String str2, String str3, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                unityAdsLoadError = failure.error;
            }
            if ((i10 & 2) != 0) {
                str = failure.message;
            }
            String str4 = str;
            if ((i10 & 4) != 0) {
                th2 = failure.throwable;
            }
            Throwable th3 = th2;
            if ((i10 & 8) != 0) {
                str2 = failure.reason;
            }
            String str5 = str2;
            if ((i10 & 16) != 0) {
                str3 = failure.reasonDebug;
            }
            String str6 = str3;
            if ((i10 & 32) != 0) {
                z10 = failure.isScarAd;
            }
            return failure.copy(unityAdsLoadError, str4, th3, str5, str6, z10);
        }

        @NotNull
        public final UnityAds.UnityAdsLoadError component1() {
            return this.error;
        }

        @Nullable
        public final String component2() {
            return this.message;
        }

        @Nullable
        public final Throwable component3() {
            return this.throwable;
        }

        @NotNull
        public final String component4() {
            return this.reason;
        }

        @Nullable
        public final String component5() {
            return this.reasonDebug;
        }

        public final boolean component6() {
            return this.isScarAd;
        }

        @NotNull
        public final Failure copy(@NotNull UnityAds.UnityAdsLoadError error, @Nullable String str, @Nullable Throwable th2, @NotNull String reason, @Nullable String str2, boolean z10) {
            Intrinsics.checkNotNullParameter(error, "error");
            Intrinsics.checkNotNullParameter(reason, "reason");
            return new Failure(error, str, th2, reason, str2, z10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Failure)) {
                return false;
            }
            Failure failure = (Failure) obj;
            if (this.error == failure.error && Intrinsics.areEqual(this.message, failure.message) && Intrinsics.areEqual(this.throwable, failure.throwable) && Intrinsics.areEqual(this.reason, failure.reason) && Intrinsics.areEqual(this.reasonDebug, failure.reasonDebug) && this.isScarAd == failure.isScarAd) {
                return true;
            }
            return false;
        }

        @NotNull
        public final UnityAds.UnityAdsLoadError getError() {
            return this.error;
        }

        @Nullable
        public final String getMessage() {
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

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3 = this.error.hashCode() * 31;
            String str = this.message;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = (hashCode3 + hashCode) * 31;
            Throwable th2 = this.throwable;
            if (th2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = th2.hashCode();
            }
            int hashCode4 = (((i11 + hashCode2) * 31) + this.reason.hashCode()) * 31;
            String str2 = this.reasonDebug;
            if (str2 != null) {
                i10 = str2.hashCode();
            }
            int i12 = (hashCode4 + i10) * 31;
            boolean z10 = this.isScarAd;
            int i13 = z10;
            if (z10 != 0) {
                i13 = 1;
            }
            return i12 + i13;
        }

        public final boolean isScarAd() {
            return this.isScarAd;
        }

        @NotNull
        public String toString() {
            return "Failure(error=" + this.error + ", message=" + this.message + ", throwable=" + this.throwable + ", reason=" + this.reason + ", reasonDebug=" + this.reasonDebug + ", isScarAd=" + this.isScarAd + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failure(@NotNull UnityAds.UnityAdsLoadError error, @Nullable String str, @Nullable Throwable th2, @NotNull String reason, @Nullable String str2, boolean z10) {
            super(null);
            Intrinsics.checkNotNullParameter(error, "error");
            Intrinsics.checkNotNullParameter(reason, "reason");
            this.error = error;
            this.message = str;
            this.throwable = th2;
            this.reason = reason;
            this.reasonDebug = str2;
            this.isScarAd = z10;
        }
    }

    /* compiled from: LoadResult.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Success extends LoadResult {
        @NotNull
        private final AdObject adObject;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(@NotNull AdObject adObject) {
            super(null);
            Intrinsics.checkNotNullParameter(adObject, "adObject");
            this.adObject = adObject;
        }

        public static /* synthetic */ Success copy$default(Success success, AdObject adObject, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                adObject = success.adObject;
            }
            return success.copy(adObject);
        }

        @NotNull
        public final AdObject component1() {
            return this.adObject;
        }

        @NotNull
        public final Success copy(@NotNull AdObject adObject) {
            Intrinsics.checkNotNullParameter(adObject, "adObject");
            return new Success(adObject);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Success) && Intrinsics.areEqual(this.adObject, ((Success) obj).adObject)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final AdObject getAdObject() {
            return this.adObject;
        }

        public int hashCode() {
            return this.adObject.hashCode();
        }

        @NotNull
        public String toString() {
            return "Success(adObject=" + this.adObject + ')';
        }
    }

    public /* synthetic */ LoadResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private LoadResult() {
    }
}
