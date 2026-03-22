package com.startshorts.androidplayer.bean.campaign;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GoogleEventUploadInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class GoogleEventUploadInfo {
    @NotNull
    private final String adMatchId;
    private final boolean isMatch;

    public GoogleEventUploadInfo(boolean z10, @NotNull String adMatchId) {
        Intrinsics.checkNotNullParameter(adMatchId, "adMatchId");
        this.isMatch = z10;
        this.adMatchId = adMatchId;
    }

    public static /* synthetic */ GoogleEventUploadInfo copy$default(GoogleEventUploadInfo googleEventUploadInfo, boolean z10, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = googleEventUploadInfo.isMatch;
        }
        if ((i10 & 2) != 0) {
            str = googleEventUploadInfo.adMatchId;
        }
        return googleEventUploadInfo.copy(z10, str);
    }

    public final boolean component1() {
        return this.isMatch;
    }

    @NotNull
    public final String component2() {
        return this.adMatchId;
    }

    @NotNull
    public final GoogleEventUploadInfo copy(boolean z10, @NotNull String adMatchId) {
        Intrinsics.checkNotNullParameter(adMatchId, "adMatchId");
        return new GoogleEventUploadInfo(z10, adMatchId);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GoogleEventUploadInfo)) {
            return false;
        }
        GoogleEventUploadInfo googleEventUploadInfo = (GoogleEventUploadInfo) obj;
        if (this.isMatch == googleEventUploadInfo.isMatch && Intrinsics.areEqual(this.adMatchId, googleEventUploadInfo.adMatchId)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getAdMatchId() {
        return this.adMatchId;
    }

    public int hashCode() {
        return (Boolean.hashCode(this.isMatch) * 31) + this.adMatchId.hashCode();
    }

    public final boolean isMatch() {
        return this.isMatch;
    }

    @NotNull
    public String toString() {
        return "GoogleEventUploadInfo(isMatch=" + this.isMatch + ", adMatchId=" + this.adMatchId + ')';
    }

    public /* synthetic */ GoogleEventUploadInfo(boolean z10, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? true : z10, str);
    }
}
