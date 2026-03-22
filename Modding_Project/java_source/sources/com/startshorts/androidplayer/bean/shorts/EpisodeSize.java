package com.startshorts.androidplayer.bean.shorts;

import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: EpisodeSize.kt */
@Metadata
/* loaded from: classes6.dex */
public final class EpisodeSize {
    @Nullable
    private String video_1080;
    @Nullable
    private String video_480;
    @Nullable
    private String video_720;

    public final long getSize(int i10) {
        String str;
        try {
            if (i10 != 480) {
                if (i10 != 720) {
                    if (i10 != 1080 || (str = this.video_1080) == null) {
                        return 0L;
                    }
                    return Long.parseLong(str);
                }
                String str2 = this.video_720;
                if (str2 == null) {
                    return 0L;
                }
                return Long.parseLong(str2);
            }
            String str3 = this.video_480;
            if (str3 == null) {
                return 0L;
            }
            return Long.parseLong(str3);
        } catch (Exception unused) {
            Logger.f41511a.e("parseException", "string result can not parse to long ");
            return 0L;
        }
    }

    @Nullable
    public final String getVideo_1080() {
        return this.video_1080;
    }

    @Nullable
    public final String getVideo_480() {
        return this.video_480;
    }

    @Nullable
    public final String getVideo_720() {
        return this.video_720;
    }

    public final void setVideo_1080(@Nullable String str) {
        this.video_1080 = str;
    }

    public final void setVideo_480(@Nullable String str) {
        this.video_480 = str;
    }

    public final void setVideo_720(@Nullable String str) {
        this.video_720 = str;
    }
}
