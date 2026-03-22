package com.startshorts.androidplayer.bean.search;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EpisodeSearchResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class EpisodeSearchResult {
    private final long collectNum;
    @Nullable
    private final String coverId;
    private int index;
    @Nullable
    private List<LabelWithId> labelList;
    private final long playNum;
    @NotNull
    private final String shortPlayCode;
    private final int shortPlayId;
    @Nullable
    private final String shortPlayName;
    @Nullable
    private final String summary;
    @Nullable
    private final String titleHighlight;
    @Nullable
    private String upack;

    public EpisodeSearchResult(@NotNull String shortPlayCode, @Nullable String str, int i10, @Nullable String str2, @Nullable String str3, long j10, int i11, @Nullable String str4, @Nullable String str5, long j11, @Nullable List<LabelWithId> list) {
        Intrinsics.checkNotNullParameter(shortPlayCode, "shortPlayCode");
        this.shortPlayCode = shortPlayCode;
        this.shortPlayName = str;
        this.shortPlayId = i10;
        this.summary = str2;
        this.coverId = str3;
        this.collectNum = j10;
        this.index = i11;
        this.titleHighlight = str4;
        this.upack = str5;
        this.playNum = j11;
        this.labelList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EpisodeSearchResult copy$default(EpisodeSearchResult episodeSearchResult, String str, String str2, int i10, String str3, String str4, long j10, int i11, String str5, String str6, long j11, List list, int i12, Object obj) {
        String str7;
        String str8;
        int i13;
        String str9;
        String str10;
        long j12;
        int i14;
        String str11;
        String str12;
        long j13;
        List<LabelWithId> list2;
        if ((i12 & 1) != 0) {
            str7 = episodeSearchResult.shortPlayCode;
        } else {
            str7 = str;
        }
        if ((i12 & 2) != 0) {
            str8 = episodeSearchResult.shortPlayName;
        } else {
            str8 = str2;
        }
        if ((i12 & 4) != 0) {
            i13 = episodeSearchResult.shortPlayId;
        } else {
            i13 = i10;
        }
        if ((i12 & 8) != 0) {
            str9 = episodeSearchResult.summary;
        } else {
            str9 = str3;
        }
        if ((i12 & 16) != 0) {
            str10 = episodeSearchResult.coverId;
        } else {
            str10 = str4;
        }
        if ((i12 & 32) != 0) {
            j12 = episodeSearchResult.collectNum;
        } else {
            j12 = j10;
        }
        if ((i12 & 64) != 0) {
            i14 = episodeSearchResult.index;
        } else {
            i14 = i11;
        }
        if ((i12 & 128) != 0) {
            str11 = episodeSearchResult.titleHighlight;
        } else {
            str11 = str5;
        }
        if ((i12 & 256) != 0) {
            str12 = episodeSearchResult.upack;
        } else {
            str12 = str6;
        }
        if ((i12 & 512) != 0) {
            j13 = episodeSearchResult.playNum;
        } else {
            j13 = j11;
        }
        if ((i12 & 1024) != 0) {
            list2 = episodeSearchResult.labelList;
        } else {
            list2 = list;
        }
        return episodeSearchResult.copy(str7, str8, i13, str9, str10, j12, i14, str11, str12, j13, list2);
    }

    @NotNull
    public final String component1() {
        return this.shortPlayCode;
    }

    public final long component10() {
        return this.playNum;
    }

    @Nullable
    public final List<LabelWithId> component11() {
        return this.labelList;
    }

    @Nullable
    public final String component2() {
        return this.shortPlayName;
    }

    public final int component3() {
        return this.shortPlayId;
    }

    @Nullable
    public final String component4() {
        return this.summary;
    }

    @Nullable
    public final String component5() {
        return this.coverId;
    }

    public final long component6() {
        return this.collectNum;
    }

    public final int component7() {
        return this.index;
    }

    @Nullable
    public final String component8() {
        return this.titleHighlight;
    }

    @Nullable
    public final String component9() {
        return this.upack;
    }

    @NotNull
    public final EpisodeSearchResult copy(@NotNull String shortPlayCode, @Nullable String str, int i10, @Nullable String str2, @Nullable String str3, long j10, int i11, @Nullable String str4, @Nullable String str5, long j11, @Nullable List<LabelWithId> list) {
        Intrinsics.checkNotNullParameter(shortPlayCode, "shortPlayCode");
        return new EpisodeSearchResult(shortPlayCode, str, i10, str2, str3, j10, i11, str4, str5, j11, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EpisodeSearchResult)) {
            return false;
        }
        EpisodeSearchResult episodeSearchResult = (EpisodeSearchResult) obj;
        if (Intrinsics.areEqual(this.shortPlayCode, episodeSearchResult.shortPlayCode) && Intrinsics.areEqual(this.shortPlayName, episodeSearchResult.shortPlayName) && this.shortPlayId == episodeSearchResult.shortPlayId && Intrinsics.areEqual(this.summary, episodeSearchResult.summary) && Intrinsics.areEqual(this.coverId, episodeSearchResult.coverId) && this.collectNum == episodeSearchResult.collectNum && this.index == episodeSearchResult.index && Intrinsics.areEqual(this.titleHighlight, episodeSearchResult.titleHighlight) && Intrinsics.areEqual(this.upack, episodeSearchResult.upack) && this.playNum == episodeSearchResult.playNum && Intrinsics.areEqual(this.labelList, episodeSearchResult.labelList)) {
            return true;
        }
        return false;
    }

    public final long getCollectNum() {
        return this.collectNum;
    }

    @Nullable
    public final String getCoverId() {
        return this.coverId;
    }

    public final int getIndex() {
        return this.index;
    }

    @Nullable
    public final List<LabelWithId> getLabelList() {
        return this.labelList;
    }

    public final long getPlayNum() {
        return this.playNum;
    }

    @NotNull
    public final String getShortPlayCode() {
        return this.shortPlayCode;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    @Nullable
    public final String getShortPlayName() {
        return this.shortPlayName;
    }

    @Nullable
    public final String getSummary() {
        return this.summary;
    }

    @Nullable
    public final String getTitleHighlight() {
        return this.titleHighlight;
    }

    @Nullable
    public final String getUpack() {
        return this.upack;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6 = this.shortPlayCode.hashCode() * 31;
        String str = this.shortPlayName;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode7 = (((hashCode6 + hashCode) * 31) + Integer.hashCode(this.shortPlayId)) * 31;
        String str2 = this.summary;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i11 = (hashCode7 + hashCode2) * 31;
        String str3 = this.coverId;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int hashCode8 = (((((i11 + hashCode3) * 31) + Long.hashCode(this.collectNum)) * 31) + Integer.hashCode(this.index)) * 31;
        String str4 = this.titleHighlight;
        if (str4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str4.hashCode();
        }
        int i12 = (hashCode8 + hashCode4) * 31;
        String str5 = this.upack;
        if (str5 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str5.hashCode();
        }
        int hashCode9 = (((i12 + hashCode5) * 31) + Long.hashCode(this.playNum)) * 31;
        List<LabelWithId> list = this.labelList;
        if (list != null) {
            i10 = list.hashCode();
        }
        return hashCode9 + i10;
    }

    public final void setIndex(int i10) {
        this.index = i10;
    }

    public final void setLabelList(@Nullable List<LabelWithId> list) {
        this.labelList = list;
    }

    public final void setUpack(@Nullable String str) {
        this.upack = str;
    }

    @NotNull
    public String toString() {
        return "EpisodeSearchResult(shortPlayCode=" + this.shortPlayCode + ", shortPlayName=" + this.shortPlayName + ", shortPlayId=" + this.shortPlayId + ", summary=" + this.summary + ", coverId=" + this.coverId + ", collectNum=" + this.collectNum + ", index=" + this.index + ", titleHighlight=" + this.titleHighlight + ", upack=" + this.upack + ", playNum=" + this.playNum + ", labelList=" + this.labelList + ')';
    }

    public /* synthetic */ EpisodeSearchResult(String str, String str2, int i10, String str3, String str4, long j10, int i11, String str5, String str6, long j11, List list, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i10, str3, str4, j10, (i12 & 64) != 0 ? 0 : i11, (i12 & 128) != 0 ? "" : str5, (i12 & 256) != 0 ? "" : str6, (i12 & 512) != 0 ? 0L : j11, list);
    }
}
