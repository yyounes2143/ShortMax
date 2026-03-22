package com.startshorts.androidplayer.bean.subtitle;

import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: SubtitleText.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubtitleText {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "SubtitleText";
    private long duration;
    private long pts;
    @Nullable
    private String text;

    /* compiled from: SubtitleText.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final SubtitleText mapSubtitleFrameInfo2SubtitleText(@Nullable String str) {
            if (str != null && str.length() != 0) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    return new SubtitleText(jSONObject.optLong("pts"), jSONObject.optLong("duration"), jSONObject.optString("info"));
                } catch (Exception e10) {
                    Logger logger = Logger.f41511a;
                    logger.e(SubtitleText.TAG, "mapSubtitleFrameInfo2SubtitleText exception -> " + e10.getMessage());
                }
            }
            return null;
        }

        private Companion() {
        }
    }

    public SubtitleText(long j10, long j11, @Nullable String str) {
        this.pts = j10;
        this.duration = j11;
        this.text = str;
    }

    public static /* synthetic */ SubtitleText copy$default(SubtitleText subtitleText, long j10, long j11, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = subtitleText.pts;
        }
        long j12 = j10;
        if ((i10 & 2) != 0) {
            j11 = subtitleText.duration;
        }
        long j13 = j11;
        if ((i10 & 4) != 0) {
            str = subtitleText.text;
        }
        return subtitleText.copy(j12, j13, str);
    }

    public final long component1() {
        return this.pts;
    }

    public final long component2() {
        return this.duration;
    }

    @Nullable
    public final String component3() {
        return this.text;
    }

    @NotNull
    public final SubtitleText copy(long j10, long j11, @Nullable String str) {
        return new SubtitleText(j10, j11, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubtitleText)) {
            return false;
        }
        SubtitleText subtitleText = (SubtitleText) obj;
        if (this.pts == subtitleText.pts && this.duration == subtitleText.duration && Intrinsics.areEqual(this.text, subtitleText.text)) {
            return true;
        }
        return false;
    }

    public final long getDuration() {
        return this.duration;
    }

    public final long getPts() {
        return this.pts;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((Long.hashCode(this.pts) * 31) + Long.hashCode(this.duration)) * 31;
        String str = this.text;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final void setDuration(long j10) {
        this.duration = j10;
    }

    public final void setPts(long j10) {
        this.pts = j10;
    }

    public final void setText(@Nullable String str) {
        this.text = str;
    }

    @NotNull
    public String toString() {
        return "SubtitleText(pts=" + this.pts + ", duration=" + this.duration + ", text=" + this.text + ')';
    }

    public /* synthetic */ SubtitleText(long j10, long j11, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, (i10 & 4) != 0 ? null : str);
    }
}
