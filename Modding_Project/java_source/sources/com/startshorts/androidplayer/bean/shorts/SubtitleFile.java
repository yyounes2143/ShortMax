package com.startshorts.androidplayer.bean.shorts;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubtitleData.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubtitleFile {
    @Nullable
    private String format;
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private String f38132id;
    @Nullable
    private String language;
    private int language_id;
    private long sub_id;
    @Nullable
    private String url;

    public SubtitleFile() {
        this(null, null, 0, null, null, 0L, 63, null);
    }

    public static /* synthetic */ SubtitleFile copy$default(SubtitleFile subtitleFile, String str, String str2, int i10, String str3, String str4, long j10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = subtitleFile.f38132id;
        }
        if ((i11 & 2) != 0) {
            str2 = subtitleFile.language;
        }
        String str5 = str2;
        if ((i11 & 4) != 0) {
            i10 = subtitleFile.language_id;
        }
        int i12 = i10;
        if ((i11 & 8) != 0) {
            str3 = subtitleFile.url;
        }
        String str6 = str3;
        if ((i11 & 16) != 0) {
            str4 = subtitleFile.format;
        }
        String str7 = str4;
        if ((i11 & 32) != 0) {
            j10 = subtitleFile.sub_id;
        }
        return subtitleFile.copy(str, str5, i12, str6, str7, j10);
    }

    @Nullable
    public final String component1() {
        return this.f38132id;
    }

    @Nullable
    public final String component2() {
        return this.language;
    }

    public final int component3() {
        return this.language_id;
    }

    @Nullable
    public final String component4() {
        return this.url;
    }

    @Nullable
    public final String component5() {
        return this.format;
    }

    public final long component6() {
        return this.sub_id;
    }

    @NotNull
    public final SubtitleFile copy(@Nullable String str, @Nullable String str2, int i10, @Nullable String str3, @Nullable String str4, long j10) {
        return new SubtitleFile(str, str2, i10, str3, str4, j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubtitleFile)) {
            return false;
        }
        SubtitleFile subtitleFile = (SubtitleFile) obj;
        if (Intrinsics.areEqual(this.f38132id, subtitleFile.f38132id) && Intrinsics.areEqual(this.language, subtitleFile.language) && this.language_id == subtitleFile.language_id && Intrinsics.areEqual(this.url, subtitleFile.url) && Intrinsics.areEqual(this.format, subtitleFile.format) && this.sub_id == subtitleFile.sub_id) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getFormat() {
        return this.format;
    }

    @Nullable
    public final String getId() {
        return this.f38132id;
    }

    @Nullable
    public final String getLanguage() {
        return this.language;
    }

    public final int getLanguage_id() {
        return this.language_id;
    }

    public final long getSub_id() {
        return this.sub_id;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        String str = this.f38132id;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        String str2 = this.language;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int hashCode4 = (((i11 + hashCode2) * 31) + Integer.hashCode(this.language_id)) * 31;
        String str3 = this.url;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i12 = (hashCode4 + hashCode3) * 31;
        String str4 = this.format;
        if (str4 != null) {
            i10 = str4.hashCode();
        }
        return ((i12 + i10) * 31) + Long.hashCode(this.sub_id);
    }

    public final boolean isUseful() {
        String str;
        String str2;
        String str3 = this.language;
        if (str3 != null && str3.length() > 0 && (str = this.url) != null && str.length() > 0 && (str2 = this.format) != null && str2.length() > 0 && this.sub_id > 0) {
            return true;
        }
        return false;
    }

    public final void setFormat(@Nullable String str) {
        this.format = str;
    }

    public final void setId(@Nullable String str) {
        this.f38132id = str;
    }

    public final void setLanguage(@Nullable String str) {
        this.language = str;
    }

    public final void setLanguage_id(int i10) {
        this.language_id = i10;
    }

    public final void setSub_id(long j10) {
        this.sub_id = j10;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }

    @NotNull
    public String toString() {
        return "SubtitleFile(id=" + this.f38132id + ", language=" + this.language + ", language_id=" + this.language_id + ", url=" + this.url + ", format=" + this.format + ", sub_id=" + this.sub_id + ')';
    }

    public SubtitleFile(@Nullable String str, @Nullable String str2, int i10, @Nullable String str3, @Nullable String str4, long j10) {
        this.f38132id = str;
        this.language = str2;
        this.language_id = i10;
        this.url = str3;
        this.format = str4;
        this.sub_id = j10;
    }

    public /* synthetic */ SubtitleFile(String str, String str2, int i10, String str3, String str4, long j10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? 0 : i10, (i11 & 8) != 0 ? null : str3, (i11 & 16) == 0 ? str4 : null, (i11 & 32) != 0 ? 0L : j10);
    }
}
