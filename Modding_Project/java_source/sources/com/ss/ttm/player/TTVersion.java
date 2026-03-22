package com.ss.ttm.player;
@Keep
/* loaded from: classes6.dex */
public class TTVersion {
    public static final boolean ENABLE_AUDIO_EFFECT = false;
    public static final boolean ENABLE_BORINGSSL = true;
    public static final boolean ENABLE_EXT_LIBYUV = false;
    public static final boolean ENABLE_EXT_SSL = false;
    public static final boolean ENABLE_SHARED_FFMPEG = true;
    @Keep
    public static final int VERSION = 1;
    public static final String VERSION_INFO = "2025-02-06 03:30:28";
    public static final String VERSION_NAME = "2.10.172.321-tob-drm";

    public static void saveVersionInfo() {
        TTPlayerConfiger.setValue(15, "2025-02-06 03:30:28");
        TTPlayerConfiger.setValue(13, 1);
        TTPlayerConfiger.setValue(14, "2.10.172.321-tob-drm");
    }
}
