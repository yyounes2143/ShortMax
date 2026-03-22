package com.startshorts.androidplayer.bean.campaign;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AFEventUploadInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AFEventUploadInfo {
    private final boolean isMatch;
    @Nullable
    private final String mmpType;
    @Nullable
    private final String utmSource;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TYPE_AJ = "adjust";
    @NotNull
    private static final String TYPE_AF = "af";

    /* compiled from: AFEventUploadInfo.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getTYPE_AF() {
            return AFEventUploadInfo.TYPE_AF;
        }

        @NotNull
        public final String getTYPE_AJ() {
            return AFEventUploadInfo.TYPE_AJ;
        }

        private Companion() {
        }
    }

    public AFEventUploadInfo(boolean z10, @Nullable String str, @Nullable String str2) {
        this.isMatch = z10;
        this.utmSource = str;
        this.mmpType = str2;
    }

    public static /* synthetic */ AFEventUploadInfo copy$default(AFEventUploadInfo aFEventUploadInfo, boolean z10, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = aFEventUploadInfo.isMatch;
        }
        if ((i10 & 2) != 0) {
            str = aFEventUploadInfo.utmSource;
        }
        if ((i10 & 4) != 0) {
            str2 = aFEventUploadInfo.mmpType;
        }
        return aFEventUploadInfo.copy(z10, str, str2);
    }

    public final boolean component1() {
        return this.isMatch;
    }

    @Nullable
    public final String component2() {
        return this.utmSource;
    }

    @Nullable
    public final String component3() {
        return this.mmpType;
    }

    @NotNull
    public final AFEventUploadInfo copy(boolean z10, @Nullable String str, @Nullable String str2) {
        return new AFEventUploadInfo(z10, str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFEventUploadInfo)) {
            return false;
        }
        AFEventUploadInfo aFEventUploadInfo = (AFEventUploadInfo) obj;
        if (this.isMatch == aFEventUploadInfo.isMatch && Intrinsics.areEqual(this.utmSource, aFEventUploadInfo.utmSource) && Intrinsics.areEqual(this.mmpType, aFEventUploadInfo.mmpType)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getMmpType() {
        return this.mmpType;
    }

    @Nullable
    public final String getUtmSource() {
        return this.utmSource;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = Boolean.hashCode(this.isMatch) * 31;
        String str = this.utmSource;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode2 + hashCode) * 31;
        String str2 = this.mmpType;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return i11 + i10;
    }

    public final boolean isMatch() {
        return this.isMatch;
    }

    @NotNull
    public String toString() {
        return "AFEventUploadInfo(isMatch=" + this.isMatch + ", utmSource=" + this.utmSource + ", mmpType=" + this.mmpType + ')';
    }

    public /* synthetic */ AFEventUploadInfo(boolean z10, String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, str, str2);
    }
}
