package com.unity3d.ads.core.domain.offerwall;

import com.unity3d.services.ads.offerwall.OfferwallEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OfferwallEventData.kt */
@Metadata
/* loaded from: classes7.dex */
public final class OfferwallEventData {
    @Nullable
    private final Integer errorCode;
    @Nullable
    private final String errorMessage;
    @NotNull
    private final OfferwallEvent offerwallEvent;
    @Nullable
    private final String placementName;

    public OfferwallEventData(@NotNull OfferwallEvent offerwallEvent, @Nullable String str, @Nullable String str2, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(offerwallEvent, "offerwallEvent");
        this.offerwallEvent = offerwallEvent;
        this.placementName = str;
        this.errorMessage = str2;
        this.errorCode = num;
    }

    public static /* synthetic */ OfferwallEventData copy$default(OfferwallEventData offerwallEventData, OfferwallEvent offerwallEvent, String str, String str2, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            offerwallEvent = offerwallEventData.offerwallEvent;
        }
        if ((i10 & 2) != 0) {
            str = offerwallEventData.placementName;
        }
        if ((i10 & 4) != 0) {
            str2 = offerwallEventData.errorMessage;
        }
        if ((i10 & 8) != 0) {
            num = offerwallEventData.errorCode;
        }
        return offerwallEventData.copy(offerwallEvent, str, str2, num);
    }

    @NotNull
    public final OfferwallEvent component1() {
        return this.offerwallEvent;
    }

    @Nullable
    public final String component2() {
        return this.placementName;
    }

    @Nullable
    public final String component3() {
        return this.errorMessage;
    }

    @Nullable
    public final Integer component4() {
        return this.errorCode;
    }

    @NotNull
    public final OfferwallEventData copy(@NotNull OfferwallEvent offerwallEvent, @Nullable String str, @Nullable String str2, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(offerwallEvent, "offerwallEvent");
        return new OfferwallEventData(offerwallEvent, str, str2, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OfferwallEventData)) {
            return false;
        }
        OfferwallEventData offerwallEventData = (OfferwallEventData) obj;
        if (this.offerwallEvent == offerwallEventData.offerwallEvent && Intrinsics.areEqual(this.placementName, offerwallEventData.placementName) && Intrinsics.areEqual(this.errorMessage, offerwallEventData.errorMessage) && Intrinsics.areEqual(this.errorCode, offerwallEventData.errorCode)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Integer getErrorCode() {
        return this.errorCode;
    }

    @Nullable
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    @NotNull
    public final OfferwallEvent getOfferwallEvent() {
        return this.offerwallEvent;
    }

    @Nullable
    public final String getPlacementName() {
        return this.placementName;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = this.offerwallEvent.hashCode() * 31;
        String str = this.placementName;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode3 + hashCode) * 31;
        String str2 = this.errorMessage;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Integer num = this.errorCode;
        if (num != null) {
            i10 = num.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "OfferwallEventData(offerwallEvent=" + this.offerwallEvent + ", placementName=" + this.placementName + ", errorMessage=" + this.errorMessage + ", errorCode=" + this.errorCode + ')';
    }

    public /* synthetic */ OfferwallEventData(OfferwallEvent offerwallEvent, String str, String str2, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(offerwallEvent, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : str2, (i10 & 8) != 0 ? null : num);
    }
}
