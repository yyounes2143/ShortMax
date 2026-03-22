package com.ss.ttvideoengine.source;
/* loaded from: classes6.dex */
public interface Source {
    public static final int KEY_COST_SAVING_FIRST = 1;
    public static final int KEY_HARDWARE_DECODE_FIRST = 2;

    /* loaded from: classes6.dex */
    public static final class EncodeType {
        public static final String H264 = "h264";
        public static final String h265 = "h265";
        public static final String h266 = "h266";
    }

    /* loaded from: classes6.dex */
    public enum Type {
        DIRECT_URL_SOURCE,
        VID_PLAY_AUTH_TOKEN_SOURCE,
        VIDEO_MODEL_SOURCE
    }

    static boolean isCodecStrategyValid(int i10) {
        return i10 == 1 || i10 == 2;
    }

    int codecStrategy();

    Object tag();

    Type type();

    String vid();

    default boolean isCodecStrategyValid() {
        return isCodecStrategyValid(codecStrategy());
    }
}
