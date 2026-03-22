package com.startshorts.androidplayer.bean.download;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadDrama.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DramaDownload {
    @Nullable
    private final String content;
    @Nullable
    private final Integer currentDownloadEp;
    @Nullable
    private final Float downloadSize;
    @Nullable
    private final Integer epCount;
    @Nullable
    private final String picUrl;
    @Nullable
    private final Integer progress;
    private boolean select;
    private final int shortPlayId;
    @Nullable
    private final String shortPlayName;
    @Nullable
    private final Float speed;
    private int state;
    @Nullable
    private final Float totalSize;

    public DramaDownload(int i10, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Float f10, @Nullable Float f11, @Nullable Float f12, int i11, boolean z10) {
        this.shortPlayId = i10;
        this.shortPlayName = str;
        this.picUrl = str2;
        this.content = str3;
        this.epCount = num;
        this.currentDownloadEp = num2;
        this.progress = num3;
        this.speed = f10;
        this.downloadSize = f11;
        this.totalSize = f12;
        this.state = i11;
        this.select = z10;
    }

    public static /* synthetic */ DramaDownload copy$default(DramaDownload dramaDownload, int i10, String str, String str2, String str3, Integer num, Integer num2, Integer num3, Float f10, Float f11, Float f12, int i11, boolean z10, int i12, Object obj) {
        int i13;
        String str4;
        String str5;
        String str6;
        Integer num4;
        Integer num5;
        Integer num6;
        Float f13;
        Float f14;
        Float f15;
        int i14;
        boolean z11;
        if ((i12 & 1) != 0) {
            i13 = dramaDownload.shortPlayId;
        } else {
            i13 = i10;
        }
        if ((i12 & 2) != 0) {
            str4 = dramaDownload.shortPlayName;
        } else {
            str4 = str;
        }
        if ((i12 & 4) != 0) {
            str5 = dramaDownload.picUrl;
        } else {
            str5 = str2;
        }
        if ((i12 & 8) != 0) {
            str6 = dramaDownload.content;
        } else {
            str6 = str3;
        }
        if ((i12 & 16) != 0) {
            num4 = dramaDownload.epCount;
        } else {
            num4 = num;
        }
        if ((i12 & 32) != 0) {
            num5 = dramaDownload.currentDownloadEp;
        } else {
            num5 = num2;
        }
        if ((i12 & 64) != 0) {
            num6 = dramaDownload.progress;
        } else {
            num6 = num3;
        }
        if ((i12 & 128) != 0) {
            f13 = dramaDownload.speed;
        } else {
            f13 = f10;
        }
        if ((i12 & 256) != 0) {
            f14 = dramaDownload.downloadSize;
        } else {
            f14 = f11;
        }
        if ((i12 & 512) != 0) {
            f15 = dramaDownload.totalSize;
        } else {
            f15 = f12;
        }
        if ((i12 & 1024) != 0) {
            i14 = dramaDownload.state;
        } else {
            i14 = i11;
        }
        if ((i12 & 2048) != 0) {
            z11 = dramaDownload.select;
        } else {
            z11 = z10;
        }
        return dramaDownload.copy(i13, str4, str5, str6, num4, num5, num6, f13, f14, f15, i14, z11);
    }

    public final int component1() {
        return this.shortPlayId;
    }

    @Nullable
    public final Float component10() {
        return this.totalSize;
    }

    public final int component11() {
        return this.state;
    }

    public final boolean component12() {
        return this.select;
    }

    @Nullable
    public final String component2() {
        return this.shortPlayName;
    }

    @Nullable
    public final String component3() {
        return this.picUrl;
    }

    @Nullable
    public final String component4() {
        return this.content;
    }

    @Nullable
    public final Integer component5() {
        return this.epCount;
    }

    @Nullable
    public final Integer component6() {
        return this.currentDownloadEp;
    }

    @Nullable
    public final Integer component7() {
        return this.progress;
    }

    @Nullable
    public final Float component8() {
        return this.speed;
    }

    @Nullable
    public final Float component9() {
        return this.downloadSize;
    }

    @NotNull
    public final DramaDownload copy(int i10, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Float f10, @Nullable Float f11, @Nullable Float f12, int i11, boolean z10) {
        return new DramaDownload(i10, str, str2, str3, num, num2, num3, f10, f11, f12, i11, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DramaDownload)) {
            return false;
        }
        DramaDownload dramaDownload = (DramaDownload) obj;
        if (this.shortPlayId == dramaDownload.shortPlayId && Intrinsics.areEqual(this.shortPlayName, dramaDownload.shortPlayName) && Intrinsics.areEqual(this.picUrl, dramaDownload.picUrl) && Intrinsics.areEqual(this.content, dramaDownload.content) && Intrinsics.areEqual(this.epCount, dramaDownload.epCount) && Intrinsics.areEqual(this.currentDownloadEp, dramaDownload.currentDownloadEp) && Intrinsics.areEqual(this.progress, dramaDownload.progress) && Intrinsics.areEqual((Object) this.speed, (Object) dramaDownload.speed) && Intrinsics.areEqual((Object) this.downloadSize, (Object) dramaDownload.downloadSize) && Intrinsics.areEqual((Object) this.totalSize, (Object) dramaDownload.totalSize) && this.state == dramaDownload.state && this.select == dramaDownload.select) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    @Nullable
    public final Integer getCurrentDownloadEp() {
        return this.currentDownloadEp;
    }

    @Nullable
    public final Float getDownloadSize() {
        return this.downloadSize;
    }

    @Nullable
    public final Integer getEpCount() {
        return this.epCount;
    }

    @Nullable
    public final String getPicUrl() {
        return this.picUrl;
    }

    @Nullable
    public final Integer getProgress() {
        return this.progress;
    }

    public final boolean getSelect() {
        return this.select;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    @Nullable
    public final String getShortPlayName() {
        return this.shortPlayName;
    }

    @Nullable
    public final Float getSpeed() {
        return this.speed;
    }

    public final int getState() {
        return this.state;
    }

    @Nullable
    public final Float getTotalSize() {
        return this.totalSize;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        int hashCode8;
        int hashCode9 = Integer.hashCode(this.shortPlayId) * 31;
        String str = this.shortPlayName;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode9 + hashCode) * 31;
        String str2 = this.picUrl;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str3 = this.content;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        Integer num = this.epCount;
        if (num == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = num.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        Integer num2 = this.currentDownloadEp;
        if (num2 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = num2.hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        Integer num3 = this.progress;
        if (num3 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = num3.hashCode();
        }
        int i16 = (i15 + hashCode6) * 31;
        Float f10 = this.speed;
        if (f10 == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = f10.hashCode();
        }
        int i17 = (i16 + hashCode7) * 31;
        Float f11 = this.downloadSize;
        if (f11 == null) {
            hashCode8 = 0;
        } else {
            hashCode8 = f11.hashCode();
        }
        int i18 = (i17 + hashCode8) * 31;
        Float f12 = this.totalSize;
        if (f12 != null) {
            i10 = f12.hashCode();
        }
        return ((((i18 + i10) * 31) + Integer.hashCode(this.state)) * 31) + Boolean.hashCode(this.select);
    }

    public final void setSelect(boolean z10) {
        this.select = z10;
    }

    public final void setState(int i10) {
        this.state = i10;
    }

    @NotNull
    public String toString() {
        return "DramaDownload(shortPlayId=" + this.shortPlayId + ", shortPlayName=" + this.shortPlayName + ", picUrl=" + this.picUrl + ", content=" + this.content + ", epCount=" + this.epCount + ", currentDownloadEp=" + this.currentDownloadEp + ", progress=" + this.progress + ", speed=" + this.speed + ", downloadSize=" + this.downloadSize + ", totalSize=" + this.totalSize + ", state=" + this.state + ", select=" + this.select + ')';
    }

    public /* synthetic */ DramaDownload(int i10, String str, String str2, String str3, Integer num, Integer num2, Integer num3, Float f10, Float f11, Float f12, int i11, boolean z10, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, str, str2, str3, num, num2, num3, f10, f11, f12, i11, (i12 & 2048) != 0 ? false : z10);
    }
}
