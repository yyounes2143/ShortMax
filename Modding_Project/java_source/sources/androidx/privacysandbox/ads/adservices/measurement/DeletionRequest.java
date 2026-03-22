package androidx.privacysandbox.ads.adservices.measurement;

import android.adservices.measurement.DeletionRequest;
import android.annotation.SuppressLint;
import android.net.Uri;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.time.Instant;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeletionRequest.kt */
@RequiresApi(26)
@Metadata
/* loaded from: classes2.dex */
public final class DeletionRequest {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int DELETION_MODE_ALL = 0;
    public static final int DELETION_MODE_EXCLUDE_INTERNAL_DATA = 1;
    public static final int MATCH_BEHAVIOR_DELETE = 0;
    public static final int MATCH_BEHAVIOR_PRESERVE = 1;
    private final int deletionMode;
    @NotNull
    private final List<Uri> domainUris;
    @NotNull
    private final Instant end;
    private final int matchBehavior;
    @NotNull
    private final List<Uri> originUris;
    @NotNull
    private final Instant start;

    /* compiled from: DeletionRequest.kt */
    @Metadata
    @RequiresApi(26)
    @SourceDebugExtension({"SMAP\nDeletionRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeletionRequest.kt\nandroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,206:1\n1#2:207\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Builder {
        private final int deletionMode;
        @NotNull
        private List<? extends Uri> domainUris;
        @NotNull
        private Instant end;
        private final int matchBehavior;
        @NotNull
        private List<? extends Uri> originUris;
        @NotNull
        private Instant start;

        public Builder(int i10, int i11) {
            Instant MIN;
            Instant MAX;
            this.deletionMode = i10;
            this.matchBehavior = i11;
            MIN = Instant.MIN;
            Intrinsics.checkNotNullExpressionValue(MIN, "MIN");
            this.start = MIN;
            MAX = Instant.MAX;
            Intrinsics.checkNotNullExpressionValue(MAX, "MAX");
            this.end = MAX;
            this.domainUris = CollectionsKt.n();
            this.originUris = CollectionsKt.n();
        }

        @NotNull
        public final DeletionRequest build() {
            return new DeletionRequest(this.deletionMode, this.matchBehavior, this.start, this.end, this.domainUris, this.originUris);
        }

        @NotNull
        public final Builder setDomainUris(@NotNull List<? extends Uri> domainUris) {
            Intrinsics.checkNotNullParameter(domainUris, "domainUris");
            this.domainUris = domainUris;
            return this;
        }

        @NotNull
        public final Builder setEnd(@NotNull Instant end) {
            Intrinsics.checkNotNullParameter(end, "end");
            this.end = end;
            return this;
        }

        @NotNull
        public final Builder setOriginUris(@NotNull List<? extends Uri> originUris) {
            Intrinsics.checkNotNullParameter(originUris, "originUris");
            this.originUris = originUris;
            return this;
        }

        @NotNull
        public final Builder setStart(@NotNull Instant start) {
            Intrinsics.checkNotNullParameter(start, "start");
            this.start = start;
            return this;
        }
    }

    /* compiled from: DeletionRequest.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {

        /* compiled from: DeletionRequest.kt */
        @Metadata
        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        /* loaded from: classes2.dex */
        public @interface DeletionMode {
        }

        /* compiled from: DeletionRequest.kt */
        @Metadata
        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        /* loaded from: classes2.dex */
        public @interface MatchBehavior {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DeletionRequest(int i10, int i11, @NotNull Instant start, @NotNull Instant end, @NotNull List<? extends Uri> domainUris, @NotNull List<? extends Uri> originUris) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        Intrinsics.checkNotNullParameter(domainUris, "domainUris");
        Intrinsics.checkNotNullParameter(originUris, "originUris");
        this.deletionMode = i10;
        this.matchBehavior = i11;
        this.start = start;
        this.end = end;
        this.domainUris = domainUris;
        this.originUris = originUris;
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
    @SuppressLint({"ClassVerificationFailure", "NewApi"})
    @NotNull
    public final android.adservices.measurement.DeletionRequest convertToAdServices$ads_adservices_release() {
        DeletionRequest.Builder deletionMode;
        DeletionRequest.Builder matchBehavior;
        DeletionRequest.Builder start;
        DeletionRequest.Builder end;
        DeletionRequest.Builder domainUris;
        DeletionRequest.Builder originUris;
        android.adservices.measurement.DeletionRequest build;
        deletionMode = b.a().setDeletionMode(this.deletionMode);
        matchBehavior = deletionMode.setMatchBehavior(this.matchBehavior);
        start = matchBehavior.setStart(this.start);
        end = start.setEnd(this.end);
        domainUris = end.setDomainUris(this.domainUris);
        originUris = domainUris.setOriginUris(this.originUris);
        build = originUris.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .s…ris)\n            .build()");
        return build;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeletionRequest)) {
            return false;
        }
        DeletionRequest deletionRequest = (DeletionRequest) obj;
        if (this.deletionMode == deletionRequest.deletionMode && Intrinsics.areEqual(new HashSet(this.domainUris), new HashSet(deletionRequest.domainUris)) && Intrinsics.areEqual(new HashSet(this.originUris), new HashSet(deletionRequest.originUris)) && Intrinsics.areEqual(this.start, deletionRequest.start) && Intrinsics.areEqual(this.end, deletionRequest.end) && this.matchBehavior == deletionRequest.matchBehavior) {
            return true;
        }
        return false;
    }

    public final int getDeletionMode() {
        return this.deletionMode;
    }

    @NotNull
    public final List<Uri> getDomainUris() {
        return this.domainUris;
    }

    @NotNull
    public final Instant getEnd() {
        return this.end;
    }

    public final int getMatchBehavior() {
        return this.matchBehavior;
    }

    @NotNull
    public final List<Uri> getOriginUris() {
        return this.originUris;
    }

    @NotNull
    public final Instant getStart() {
        return this.start;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        hashCode = this.start.hashCode();
        hashCode2 = this.end.hashCode();
        return (((((((((Integer.hashCode(this.deletionMode) * 31) + this.domainUris.hashCode()) * 31) + this.originUris.hashCode()) * 31) + hashCode) * 31) + hashCode2) * 31) + Integer.hashCode(this.matchBehavior);
    }

    @NotNull
    public String toString() {
        String str;
        String str2;
        if (this.deletionMode == 0) {
            str = "DELETION_MODE_ALL";
        } else {
            str = "DELETION_MODE_EXCLUDE_INTERNAL_DATA";
        }
        if (this.matchBehavior == 0) {
            str2 = "MATCH_BEHAVIOR_DELETE";
        } else {
            str2 = "MATCH_BEHAVIOR_PRESERVE";
        }
        return "DeletionRequest { DeletionMode=" + str + ", MatchBehavior=" + str2 + ", Start=" + this.start + ", End=" + this.end + ", DomainUris=" + this.domainUris + ", OriginUris=" + this.originUris + " }";
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ DeletionRequest(int r8, int r9, java.time.Instant r10, java.time.Instant r11, java.util.List r12, java.util.List r13, int r14, kotlin.jvm.internal.DefaultConstructorMarker r15) {
        /*
            r7 = this;
            r15 = r14 & 4
            if (r15 == 0) goto Ld
            java.time.Instant r10 = androidx.privacysandbox.ads.adservices.measurement.i.a()
            java.lang.String r15 = "MIN"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r15)
        Ld:
            r3 = r10
            r10 = r14 & 8
            if (r10 == 0) goto L1b
            java.time.Instant r11 = androidx.privacysandbox.ads.adservices.measurement.j.a()
            java.lang.String r10 = "MAX"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r10)
        L1b:
            r4 = r11
            r10 = r14 & 16
            if (r10 == 0) goto L24
            java.util.List r12 = kotlin.collections.CollectionsKt.n()
        L24:
            r5 = r12
            r10 = r14 & 32
            if (r10 == 0) goto L2d
            java.util.List r13 = kotlin.collections.CollectionsKt.n()
        L2d:
            r6 = r13
            r0 = r7
            r1 = r8
            r2 = r9
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.measurement.DeletionRequest.<init>(int, int, java.time.Instant, java.time.Instant, java.util.List, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
