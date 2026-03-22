package androidx.privacysandbox.ads.adservices.adselection;

import android.annotation.SuppressLint;
import android.net.Uri;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdSelectionOutcome.kt */
@Metadata
@SuppressLint({"ClassVerificationFailure"})
/* loaded from: classes2.dex */
public final class AdSelectionOutcome {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final AdSelectionOutcome NO_OUTCOME;
    private final long adSelectionId;
    @NotNull
    private final Uri renderUri;

    /* compiled from: AdSelectionOutcome.kt */
    @ExperimentalFeatures.Ext10OptIn
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @ExperimentalFeatures.Ext10OptIn
        public static /* synthetic */ void getNO_OUTCOME$annotations() {
        }
    }

    static {
        Uri EMPTY = Uri.EMPTY;
        Intrinsics.checkNotNullExpressionValue(EMPTY, "EMPTY");
        NO_OUTCOME = new AdSelectionOutcome(0L, EMPTY);
    }

    public AdSelectionOutcome(long j10, @NotNull Uri renderUri) {
        Intrinsics.checkNotNullParameter(renderUri, "renderUri");
        this.adSelectionId = j10;
        this.renderUri = renderUri;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdSelectionOutcome)) {
            return false;
        }
        AdSelectionOutcome adSelectionOutcome = (AdSelectionOutcome) obj;
        if (this.adSelectionId == adSelectionOutcome.adSelectionId && Intrinsics.areEqual(this.renderUri, adSelectionOutcome.renderUri)) {
            return true;
        }
        return false;
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    @NotNull
    public final Uri getRenderUri() {
        return this.renderUri;
    }

    @ExperimentalFeatures.Ext10OptIn
    public final boolean hasOutcome() {
        return !Intrinsics.areEqual(this, NO_OUTCOME);
    }

    public int hashCode() {
        return (Long.hashCode(this.adSelectionId) * 31) + this.renderUri.hashCode();
    }

    @NotNull
    public String toString() {
        return "AdSelectionOutcome: adSelectionId=" + this.adSelectionId + ", renderUri=" + this.renderUri;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @androidx.annotation.RequiresExtension.Container({@androidx.annotation.RequiresExtension(extension = com.ss.ttvideoengine.TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @androidx.annotation.RequiresExtension(extension = 31, version = 9)})
    @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.Scope.LIBRARY})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AdSelectionOutcome(@org.jetbrains.annotations.NotNull android.adservices.adselection.AdSelectionOutcome r4) {
        /*
            r3 = this;
            java.lang.String r0 = "response"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            long r0 = androidx.privacysandbox.ads.adservices.adselection.b0.a(r4)
            android.net.Uri r4 = androidx.privacysandbox.ads.adservices.adselection.c0.a(r4)
            java.lang.String r2 = "response.renderUri"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r2)
            r3.<init>(r0, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome.<init>(android.adservices.adselection.AdSelectionOutcome):void");
    }
}
