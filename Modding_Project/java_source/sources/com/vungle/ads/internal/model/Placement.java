package com.vungle.ads.internal.model;

import com.vungle.ads.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import vt.c2;
import vt.r2;
import vt.w2;
/* compiled from: ConfigPayload.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class Placement {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final boolean headerBidding;
    @NotNull
    private final String referenceId;
    @Nullable
    private final String type;
    @Nullable
    private Long wakeupTime;

    /* compiled from: ConfigPayload.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<Placement> serializer() {
            return Placement$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    @c
    public /* synthetic */ Placement(int i10, String str, boolean z10, String str2, r2 r2Var) {
        if (1 != (i10 & 1)) {
            c2.a(i10, 1, Placement$$serializer.INSTANCE.getDescriptor());
        }
        this.referenceId = str;
        if ((i10 & 2) == 0) {
            this.headerBidding = false;
        } else {
            this.headerBidding = z10;
        }
        if ((i10 & 4) == 0) {
            this.type = null;
        } else {
            this.type = str2;
        }
        this.wakeupTime = null;
    }

    public static /* synthetic */ Placement copy$default(Placement placement, String str, boolean z10, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = placement.referenceId;
        }
        if ((i10 & 2) != 0) {
            z10 = placement.headerBidding;
        }
        if ((i10 & 4) != 0) {
            str2 = placement.type;
        }
        return placement.copy(str, z10, str2);
    }

    public static final void write$Self(@NotNull Placement self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        output.encodeStringElement(serialDesc, 0, self.referenceId);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.headerBidding) {
            output.encodeBooleanElement(serialDesc, 1, self.headerBidding);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.type != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, w2.f69539a, self.type);
        }
    }

    @NotNull
    public final String component1() {
        return this.referenceId;
    }

    public final boolean component2() {
        return this.headerBidding;
    }

    @Nullable
    public final String component3() {
        return this.type;
    }

    @NotNull
    public final Placement copy(@NotNull String referenceId, boolean z10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(referenceId, "referenceId");
        return new Placement(referenceId, z10, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Placement)) {
            return false;
        }
        Placement placement = (Placement) obj;
        if (Intrinsics.areEqual(this.referenceId, placement.referenceId) && this.headerBidding == placement.headerBidding && Intrinsics.areEqual(this.type, placement.type)) {
            return true;
        }
        return false;
    }

    public final boolean getHeaderBidding() {
        return this.headerBidding;
    }

    @NotNull
    public final String getReferenceId() {
        return this.referenceId;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    @Nullable
    public final Long getWakeupTime() {
        return this.wakeupTime;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode;
        int hashCode2 = this.referenceId.hashCode() * 31;
        boolean z10 = this.headerBidding;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        int i11 = (hashCode2 + i10) * 31;
        String str = this.type;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return i11 + hashCode;
    }

    public final boolean isAppOpen() {
        return Intrinsics.areEqual(this.type, Constants.PLACEMENT_TYPE_APP_OPEN);
    }

    public final boolean isBanner() {
        return Intrinsics.areEqual(this.type, "banner");
    }

    public final boolean isInline() {
        return Intrinsics.areEqual(this.type, "in_line");
    }

    public final boolean isInterstitial() {
        return Intrinsics.areEqual(this.type, Constants.PLACEMENT_TYPE_INTERSTITIAL);
    }

    public final boolean isMREC() {
        return Intrinsics.areEqual(this.type, "mrec");
    }

    public final boolean isNative() {
        return Intrinsics.areEqual(this.type, "native");
    }

    public final boolean isRewardedVideo() {
        return Intrinsics.areEqual(this.type, Constants.PLACEMENT_TYPE_REWARDED);
    }

    public final void setWakeupTime(@Nullable Long l10) {
        this.wakeupTime = l10;
    }

    public final void snooze(long j10) {
        this.wakeupTime = Long.valueOf(System.currentTimeMillis() + (j10 * 1000));
    }

    @NotNull
    public String toString() {
        return "Placement(referenceId=" + this.referenceId + ", headerBidding=" + this.headerBidding + ", type=" + this.type + ')';
    }

    public Placement(@NotNull String referenceId, boolean z10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(referenceId, "referenceId");
        this.referenceId = referenceId;
        this.headerBidding = z10;
        this.type = str;
    }

    public /* synthetic */ Placement(String str, boolean z10, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? false : z10, (i10 & 4) != 0 ? null : str2);
    }

    public static /* synthetic */ void getHeaderBidding$annotations() {
    }

    public static /* synthetic */ void getReferenceId$annotations() {
    }

    public static /* synthetic */ void getType$annotations() {
    }

    public static /* synthetic */ void getWakeupTime$annotations() {
    }
}
