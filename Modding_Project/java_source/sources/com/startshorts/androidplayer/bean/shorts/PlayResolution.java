package com.startshorts.androidplayer.bean.shorts;

import android.content.Context;
import androidx.core.content.ContextCompat;
import com.ss.ttvideoengine.Resolution;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlayResolution.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PlayResolution extends SelectableItem {
    public static final int RESOLUTION_1080 = 1080;
    public static final int RESOLUTION_480 = 480;
    public static final int RESOLUTION_720 = 720;
    public static final int RESOLUTION_AUTO = 0;
    @NotNull
    private final Resolution resolution;
    private final int resolutionValue;
    @NotNull
    private String url;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final PlayResolution PLAY_RESOLUTION_480P = new PlayResolution(480, Resolution.High, null, 4, null);
    @NotNull
    private static final PlayResolution PLAY_RESOLUTION_720P = new PlayResolution(720, Resolution.SuperHigh, null, 4, null);
    @NotNull
    private static final PlayResolution PLAY_RESOLUTION_1080P = new PlayResolution(1080, Resolution.ExtremelyHigh, null, 4, null);
    @NotNull
    private static final PlayResolution PLAY_RESOLUTION_AUTO = new PlayResolution(0, Resolution.Auto, null, 4, null);

    /* compiled from: PlayResolution.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PlayResolution create(int i10) {
            if (i10 != 480) {
                if (i10 != 720) {
                    if (i10 != 1080) {
                        return getPLAY_RESOLUTION_AUTO();
                    }
                    return getPLAY_RESOLUTION_1080P();
                }
                return getPLAY_RESOLUTION_720P();
            }
            return getPLAY_RESOLUTION_480P();
        }

        @NotNull
        public final PlayResolution getPLAY_RESOLUTION_1080P() {
            return PlayResolution.PLAY_RESOLUTION_1080P;
        }

        @NotNull
        public final PlayResolution getPLAY_RESOLUTION_480P() {
            return PlayResolution.PLAY_RESOLUTION_480P;
        }

        @NotNull
        public final PlayResolution getPLAY_RESOLUTION_720P() {
            return PlayResolution.PLAY_RESOLUTION_720P;
        }

        @NotNull
        public final PlayResolution getPLAY_RESOLUTION_AUTO() {
            return PlayResolution.PLAY_RESOLUTION_AUTO;
        }

        private Companion() {
        }
    }

    public PlayResolution(int i10, @NotNull Resolution resolution, @NotNull String url) {
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        Intrinsics.checkNotNullParameter(url, "url");
        this.resolutionValue = i10;
        this.resolution = resolution;
        this.url = url;
    }

    public static /* synthetic */ PlayResolution copy$default(PlayResolution playResolution, int i10, Resolution resolution, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = playResolution.resolutionValue;
        }
        if ((i11 & 2) != 0) {
            resolution = playResolution.resolution;
        }
        if ((i11 & 4) != 0) {
            str = playResolution.url;
        }
        return playResolution.copy(i10, resolution, str);
    }

    public final int component1() {
        return this.resolutionValue;
    }

    @NotNull
    public final Resolution component2() {
        return this.resolution;
    }

    @NotNull
    public final String component3() {
        return this.url;
    }

    @NotNull
    public final PlayResolution copy(int i10, @NotNull Resolution resolution, @NotNull String url) {
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        Intrinsics.checkNotNullParameter(url, "url");
        return new PlayResolution(i10, resolution, url);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlayResolution)) {
            return false;
        }
        PlayResolution playResolution = (PlayResolution) obj;
        if (this.resolutionValue == playResolution.resolutionValue && this.resolution == playResolution.resolution && Intrinsics.areEqual(this.url, playResolution.url)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getLabel(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (isAuto()) {
            String string = context.getString(R$string.immersion_activity_resolution_auto);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.resolutionValue);
        sb2.append('p');
        return sb2.toString();
    }

    @NotNull
    public final Resolution getResolution() {
        return this.resolution;
    }

    public final int getResolutionValue() {
        return this.resolutionValue;
    }

    public final int getSelectedColor(boolean z10, @NotNull Context context) {
        int i10;
        Intrinsics.checkNotNullParameter(context, "context");
        if (isSelected()) {
            i10 = R$color.colorPrimary;
        } else {
            i10 = 17170443;
        }
        return ContextCompat.getColor(context, i10);
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.resolutionValue) * 31) + this.resolution.hashCode()) * 31) + this.url.hashCode();
    }

    public final int iconDrawable() {
        return R$drawable.ic_subscribe_vip_no;
    }

    public final boolean isAuto() {
        if (this.resolutionValue == 0) {
            return true;
        }
        return false;
    }

    public final void setUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.url = str;
    }

    @Override // com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String toString() {
        if (this.url.length() == 0) {
            if (isAuto()) {
                return "auto";
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.resolutionValue);
            sb2.append('p');
            return sb2.toString();
        } else if (isAuto()) {
            return "auto," + this.url;
        } else {
            return this.resolutionValue + "p," + this.url;
        }
    }

    public /* synthetic */ PlayResolution(int i10, Resolution resolution, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, resolution, (i11 & 4) != 0 ? "" : str);
    }
}
