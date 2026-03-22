package com.bytedance.adsdk.ugeno.core;
/* loaded from: classes3.dex */
public enum WcQ {
    UNKNOWN_EVENT("UNKNOWN_EVENT", 0),
    TAP_EVENT("onTap", 1),
    LONG_TAP_EVENT("onLongTap", 2),
    SHAKE_EVENT("onShake", 3),
    TWIST_EVENT("onTwist", 18),
    SLIDE_EVENT("onSlide", 4),
    EXPOSURE_EVENT("onExposure", 5),
    SCROLL_EVENT("onScroll", 6),
    PULL_TO_REFRESH_EVENT("onPullToRefresh", 7),
    LOAD_MORE_EVENT("onLoadMore", 8),
    TIMER("onTimer", 9),
    DELAY("onDelay", 10),
    ANIMATION("onAnimation", 11),
    VIDEO_PROGRESS("onVideoProgress", 12),
    VIDEO_PAUSE("onVideoPause", 13),
    VIDEO_RESUME("onVideoResume", 14),
    VIDEO_FINISH("onVideoFinish", 15),
    VIDEO_PLAY("onVideoPlay", 16),
    DOWN_EVENT("onDown", 17),
    RENDER_SUCCESS("onRenderSuccess", 22);
    
    private int Id;

    /* renamed from: oq  reason: collision with root package name */
    private String f11655oq;

    WcQ(String str, int i10) {
        this.f11655oq = str;
        this.Id = i10;
    }

    public int oJ() {
        return this.Id;
    }

    public static WcQ oJ(String str) {
        WcQ[] values;
        for (WcQ wcQ : values()) {
            if (wcQ.f11655oq.equals(str)) {
                return wcQ;
            }
        }
        return UNKNOWN_EVENT;
    }
}
