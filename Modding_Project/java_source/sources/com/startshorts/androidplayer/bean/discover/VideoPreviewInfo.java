package com.startshorts.androidplayer.bean.discover;

import com.startshorts.androidplayer.ui.view.discover.VideoPreview;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VideoPreviewInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class VideoPreviewInfo {
    @NotNull
    private final DiscoverModule discoverModule;
    private final int displayMode;
    private final boolean isAuto;
    private final boolean isShowDefaultBg;
    private final boolean needDecrypt;
    @NotNull
    private final DiscoverShorts shorts;
    @NotNull
    private final String url;
    @NotNull
    private final VideoPreview videoPreview;

    public VideoPreviewInfo(@NotNull VideoPreview videoPreview, boolean z10, @NotNull String url, @NotNull DiscoverModule discoverModule, @NotNull DiscoverShorts shorts, boolean z11, int i10, boolean z12) {
        Intrinsics.checkNotNullParameter(videoPreview, "videoPreview");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
        Intrinsics.checkNotNullParameter(shorts, "shorts");
        this.videoPreview = videoPreview;
        this.needDecrypt = z10;
        this.url = url;
        this.discoverModule = discoverModule;
        this.shorts = shorts;
        this.isAuto = z11;
        this.displayMode = i10;
        this.isShowDefaultBg = z12;
    }

    public static /* synthetic */ VideoPreviewInfo copy$default(VideoPreviewInfo videoPreviewInfo, VideoPreview videoPreview, boolean z10, String str, DiscoverModule discoverModule, DiscoverShorts discoverShorts, boolean z11, int i10, boolean z12, int i11, Object obj) {
        VideoPreview videoPreview2;
        boolean z13;
        String str2;
        DiscoverModule discoverModule2;
        DiscoverShorts discoverShorts2;
        boolean z14;
        int i12;
        boolean z15;
        if ((i11 & 1) != 0) {
            videoPreview2 = videoPreviewInfo.videoPreview;
        } else {
            videoPreview2 = videoPreview;
        }
        if ((i11 & 2) != 0) {
            z13 = videoPreviewInfo.needDecrypt;
        } else {
            z13 = z10;
        }
        if ((i11 & 4) != 0) {
            str2 = videoPreviewInfo.url;
        } else {
            str2 = str;
        }
        if ((i11 & 8) != 0) {
            discoverModule2 = videoPreviewInfo.discoverModule;
        } else {
            discoverModule2 = discoverModule;
        }
        if ((i11 & 16) != 0) {
            discoverShorts2 = videoPreviewInfo.shorts;
        } else {
            discoverShorts2 = discoverShorts;
        }
        if ((i11 & 32) != 0) {
            z14 = videoPreviewInfo.isAuto;
        } else {
            z14 = z11;
        }
        if ((i11 & 64) != 0) {
            i12 = videoPreviewInfo.displayMode;
        } else {
            i12 = i10;
        }
        if ((i11 & 128) != 0) {
            z15 = videoPreviewInfo.isShowDefaultBg;
        } else {
            z15 = z12;
        }
        return videoPreviewInfo.copy(videoPreview2, z13, str2, discoverModule2, discoverShorts2, z14, i12, z15);
    }

    @NotNull
    public final VideoPreview component1() {
        return this.videoPreview;
    }

    public final boolean component2() {
        return this.needDecrypt;
    }

    @NotNull
    public final String component3() {
        return this.url;
    }

    @NotNull
    public final DiscoverModule component4() {
        return this.discoverModule;
    }

    @NotNull
    public final DiscoverShorts component5() {
        return this.shorts;
    }

    public final boolean component6() {
        return this.isAuto;
    }

    public final int component7() {
        return this.displayMode;
    }

    public final boolean component8() {
        return this.isShowDefaultBg;
    }

    @NotNull
    public final VideoPreviewInfo copy(@NotNull VideoPreview videoPreview, boolean z10, @NotNull String url, @NotNull DiscoverModule discoverModule, @NotNull DiscoverShorts shorts, boolean z11, int i10, boolean z12) {
        Intrinsics.checkNotNullParameter(videoPreview, "videoPreview");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
        Intrinsics.checkNotNullParameter(shorts, "shorts");
        return new VideoPreviewInfo(videoPreview, z10, url, discoverModule, shorts, z11, i10, z12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoPreviewInfo)) {
            return false;
        }
        VideoPreviewInfo videoPreviewInfo = (VideoPreviewInfo) obj;
        if (Intrinsics.areEqual(this.videoPreview, videoPreviewInfo.videoPreview) && this.needDecrypt == videoPreviewInfo.needDecrypt && Intrinsics.areEqual(this.url, videoPreviewInfo.url) && Intrinsics.areEqual(this.discoverModule, videoPreviewInfo.discoverModule) && Intrinsics.areEqual(this.shorts, videoPreviewInfo.shorts) && this.isAuto == videoPreviewInfo.isAuto && this.displayMode == videoPreviewInfo.displayMode && this.isShowDefaultBg == videoPreviewInfo.isShowDefaultBg) {
            return true;
        }
        return false;
    }

    @NotNull
    public final DiscoverModule getDiscoverModule() {
        return this.discoverModule;
    }

    public final int getDisplayMode() {
        return this.displayMode;
    }

    public final boolean getNeedDecrypt() {
        return this.needDecrypt;
    }

    @NotNull
    public final DiscoverShorts getShorts() {
        return this.shorts;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    @NotNull
    public final VideoPreview getVideoPreview() {
        return this.videoPreview;
    }

    public int hashCode() {
        return (((((((((((((this.videoPreview.hashCode() * 31) + Boolean.hashCode(this.needDecrypt)) * 31) + this.url.hashCode()) * 31) + this.discoverModule.hashCode()) * 31) + this.shorts.hashCode()) * 31) + Boolean.hashCode(this.isAuto)) * 31) + Integer.hashCode(this.displayMode)) * 31) + Boolean.hashCode(this.isShowDefaultBg);
    }

    public final boolean isAuto() {
        return this.isAuto;
    }

    public final boolean isShowDefaultBg() {
        return this.isShowDefaultBg;
    }

    @NotNull
    public String toString() {
        return "VideoPreviewInfo(videoPreview=" + this.videoPreview + ", needDecrypt=" + this.needDecrypt + ", url=" + this.url + ", discoverModule=" + this.discoverModule + ", shorts=" + this.shorts + ", isAuto=" + this.isAuto + ", displayMode=" + this.displayMode + ", isShowDefaultBg=" + this.isShowDefaultBg + ')';
    }

    public /* synthetic */ VideoPreviewInfo(VideoPreview videoPreview, boolean z10, String str, DiscoverModule discoverModule, DiscoverShorts discoverShorts, boolean z11, int i10, boolean z12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(videoPreview, z10, str, discoverModule, discoverShorts, z11, (i11 & 64) != 0 ? 4 : i10, (i11 & 128) != 0 ? true : z12);
    }
}
