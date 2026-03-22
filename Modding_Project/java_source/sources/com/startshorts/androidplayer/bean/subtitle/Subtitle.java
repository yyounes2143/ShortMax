package com.startshorts.androidplayer.bean.subtitle;

import com.google.gson.annotations.SerializedName;
import com.ss.ttm.player.MediaFormat;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Subtitle.kt */
@Metadata
/* loaded from: classes6.dex */
public final class Subtitle {
    @SerializedName("expire")
    private long expire;
    @SerializedName("format")
    @Nullable
    private String format;
    @SerializedName("id")
    private int index;
    @SerializedName(MediaFormat.KEY_LANGUAGE)
    @Nullable
    private String language;
    @SerializedName("language_id")
    private int languageId;
    @Nullable
    private String subtitleDesc;
    @SerializedName("sub_id")
    private int subtitleId;
    @SerializedName("url")
    @Nullable
    private String url;

    public Subtitle(int i10, int i11, @Nullable String str, int i12, @Nullable String str2, long j10, @Nullable String str3, @Nullable String str4) {
        this.index = i10;
        this.subtitleId = i11;
        this.language = str;
        this.languageId = i12;
        this.url = str2;
        this.expire = j10;
        this.format = str3;
        this.subtitleDesc = str4;
    }

    public static /* synthetic */ Subtitle copy$default(Subtitle subtitle, int i10, int i11, String str, int i12, String str2, long j10, String str3, String str4, int i13, Object obj) {
        int i14;
        int i15;
        String str5;
        int i16;
        String str6;
        long j11;
        String str7;
        String str8;
        if ((i13 & 1) != 0) {
            i14 = subtitle.index;
        } else {
            i14 = i10;
        }
        if ((i13 & 2) != 0) {
            i15 = subtitle.subtitleId;
        } else {
            i15 = i11;
        }
        if ((i13 & 4) != 0) {
            str5 = subtitle.language;
        } else {
            str5 = str;
        }
        if ((i13 & 8) != 0) {
            i16 = subtitle.languageId;
        } else {
            i16 = i12;
        }
        if ((i13 & 16) != 0) {
            str6 = subtitle.url;
        } else {
            str6 = str2;
        }
        if ((i13 & 32) != 0) {
            j11 = subtitle.expire;
        } else {
            j11 = j10;
        }
        if ((i13 & 64) != 0) {
            str7 = subtitle.format;
        } else {
            str7 = str3;
        }
        if ((i13 & 128) != 0) {
            str8 = subtitle.subtitleDesc;
        } else {
            str8 = str4;
        }
        return subtitle.copy(i14, i15, str5, i16, str6, j11, str7, str8);
    }

    public final int component1() {
        return this.index;
    }

    public final int component2() {
        return this.subtitleId;
    }

    @Nullable
    public final String component3() {
        return this.language;
    }

    public final int component4() {
        return this.languageId;
    }

    @Nullable
    public final String component5() {
        return this.url;
    }

    public final long component6() {
        return this.expire;
    }

    @Nullable
    public final String component7() {
        return this.format;
    }

    @Nullable
    public final String component8() {
        return this.subtitleDesc;
    }

    @NotNull
    public final Subtitle copy(int i10, int i11, @Nullable String str, int i12, @Nullable String str2, long j10, @Nullable String str3, @Nullable String str4) {
        return new Subtitle(i10, i11, str, i12, str2, j10, str3, str4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Subtitle)) {
            return false;
        }
        Subtitle subtitle = (Subtitle) obj;
        if (this.index == subtitle.index && this.subtitleId == subtitle.subtitleId && Intrinsics.areEqual(this.language, subtitle.language) && this.languageId == subtitle.languageId && Intrinsics.areEqual(this.url, subtitle.url) && this.expire == subtitle.expire && Intrinsics.areEqual(this.format, subtitle.format) && Intrinsics.areEqual(this.subtitleDesc, subtitle.subtitleDesc)) {
            return true;
        }
        return false;
    }

    public final long getExpire() {
        return this.expire;
    }

    @Nullable
    public final String getFormat() {
        return this.format;
    }

    public final int getIndex() {
        return this.index;
    }

    @Nullable
    public final String getLanguage() {
        return this.language;
    }

    public final int getLanguageId() {
        return this.languageId;
    }

    @Nullable
    public final String getSubtitleDesc() {
        return this.subtitleDesc;
    }

    public final int getSubtitleId() {
        return this.subtitleId;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4 = ((Integer.hashCode(this.index) * 31) + Integer.hashCode(this.subtitleId)) * 31;
        String str = this.language;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode5 = (((hashCode4 + hashCode) * 31) + Integer.hashCode(this.languageId)) * 31;
        String str2 = this.url;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int hashCode6 = (((hashCode5 + hashCode2) * 31) + Long.hashCode(this.expire)) * 31;
        String str3 = this.format;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i11 = (hashCode6 + hashCode3) * 31;
        String str4 = this.subtitleDesc;
        if (str4 != null) {
            i10 = str4.hashCode();
        }
        return i11 + i10;
    }

    public final void setExpire(long j10) {
        this.expire = j10;
    }

    public final void setFormat(@Nullable String str) {
        this.format = str;
    }

    public final void setIndex(int i10) {
        this.index = i10;
    }

    public final void setLanguage(@Nullable String str) {
        this.language = str;
    }

    public final void setLanguageId(int i10) {
        this.languageId = i10;
    }

    public final void setSubtitleDesc(@Nullable String str) {
        this.subtitleDesc = str;
    }

    public final void setSubtitleId(int i10) {
        this.subtitleId = i10;
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }

    @NotNull
    public String toString() {
        return "Subtitle(index=" + this.index + ", subtitleId=" + this.subtitleId + ", language=" + this.language + ", languageId=" + this.languageId + ", url=" + this.url + ", expire=" + this.expire + ", format=" + this.format + ", subtitleDesc=" + this.subtitleDesc + ')';
    }

    public /* synthetic */ Subtitle(int i10, int i11, String str, int i12, String str2, long j10, String str3, String str4, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, str, i12, str2, j10, str3, (i13 & 128) != 0 ? null : str4);
    }
}
