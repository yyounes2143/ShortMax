package androidx.privacysandbox.ads.adservices.topics;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetTopicsRequest.kt */
@Metadata
/* loaded from: classes2.dex */
public final class GetTopicsRequest {
    @NotNull
    private final String adsSdkName;
    private final boolean shouldRecordObservation;

    /* compiled from: GetTopicsRequest.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nGetTopicsRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetTopicsRequest.kt\nandroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Builder {
        @NotNull
        private String adsSdkName = "";
        private boolean shouldRecordObservation = true;

        @NotNull
        public final GetTopicsRequest build() {
            return new GetTopicsRequest(this.adsSdkName, this.shouldRecordObservation);
        }

        @NotNull
        public final Builder setAdsSdkName(@NotNull String adsSdkName) {
            Intrinsics.checkNotNullParameter(adsSdkName, "adsSdkName");
            if (adsSdkName.length() > 0) {
                this.adsSdkName = adsSdkName;
                return this;
            }
            throw new IllegalStateException("adsSdkName must be set");
        }

        @NotNull
        public final Builder setShouldRecordObservation(boolean z10) {
            this.shouldRecordObservation = z10;
            return this;
        }
    }

    public GetTopicsRequest() {
        this(null, false, 3, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetTopicsRequest)) {
            return false;
        }
        GetTopicsRequest getTopicsRequest = (GetTopicsRequest) obj;
        if (Intrinsics.areEqual(this.adsSdkName, getTopicsRequest.adsSdkName) && this.shouldRecordObservation == getTopicsRequest.shouldRecordObservation) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getAdsSdkName() {
        return this.adsSdkName;
    }

    public int hashCode() {
        return (this.adsSdkName.hashCode() * 31) + Boolean.hashCode(this.shouldRecordObservation);
    }

    public final boolean shouldRecordObservation() {
        return this.shouldRecordObservation;
    }

    @NotNull
    public String toString() {
        return "GetTopicsRequest: adsSdkName=" + this.adsSdkName + ", shouldRecordObservation=" + this.shouldRecordObservation;
    }

    public GetTopicsRequest(@NotNull String adsSdkName, boolean z10) {
        Intrinsics.checkNotNullParameter(adsSdkName, "adsSdkName");
        this.adsSdkName = adsSdkName;
        this.shouldRecordObservation = z10;
    }

    public /* synthetic */ GetTopicsRequest(String str, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? false : z10);
    }
}
