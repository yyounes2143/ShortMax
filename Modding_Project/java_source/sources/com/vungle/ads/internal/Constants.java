package com.vungle.ads.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Constants.kt */
@Metadata
/* loaded from: classes7.dex */
public final class Constants {
    @NotNull
    public static final String AD_CLOSE = "ad.close";
    @NotNull
    public static final String AD_DURATION_KEY = "{{{dur}}}";
    @NotNull
    public static final String AD_INDEX_FILE_NAME = "index.html";
    @NotNull
    public static final String AD_LOAD_DURATION = "ad.loadDuration";
    @NotNull
    public static final String AD_LOAD_DURATION_KEY = "{{{time_dl}}}";
    @NotNull
    public static final String AD_MRAID_JS_FILE_NAME = "mraid.js";
    public static final long AD_VIEWED_NOT_FIRED = 2;
    @NotNull
    public static final String AD_VISIBILITY_INVISIBLE = "1";
    @NotNull
    public static final String AD_VISIBILITY_VISIBLE = "2";
    @NotNull
    public static final String AD_VISIBILITY_VISIBLE_LATER = "3";
    public static final long BOTH_NOT_FIRED = 3;
    @NotNull
    public static final String CHECKPOINT_0 = "checkpoint.0";
    @NotNull
    public static final String CLICK_URL = "clickUrl";
    @NotNull
    public static final String COORDINATE = "coordinate";
    public static final long CP_0_NOT_FIRED = 1;
    @NotNull
    public static final String CTA_URL = "cta_url";
    @NotNull
    public static final String DEEPLINK_CLICK = "deeplink.click";
    @NotNull
    public static final String DEEPLINK_SUCCESS_KEY = "{{{is_success}}}";
    @NotNull
    public static final String DEVICE_VOLUME_KEY = "{{{vol}}}";
    @NotNull
    public static final String IMPRESSION = "impression";
    @NotNull
    public static final String KEY_MAIN_VIDEO = "MAIN_VIDEO";
    @NotNull
    public static final String LOAD_AD = "load_ad";
    @NotNull
    public static final String MRAID_JS_FILE_NAME = "mraid.min.js";
    @NotNull
    public static final String NETWORK_OPERATOR_KEY = "{{{carrier}}}";
    @NotNull
    public static final String PLACEMENT_TYPE_APP_OPEN = "appopen";
    @NotNull
    public static final String PLACEMENT_TYPE_BANNER = "banner";
    @NotNull
    public static final String PLACEMENT_TYPE_INTERSTITIAL = "interstitial";
    @NotNull
    public static final String PLACEMENT_TYPE_IN_LINE = "in_line";
    @NotNull
    public static final String PLACEMENT_TYPE_MREC = "mrec";
    @NotNull
    public static final String PLACEMENT_TYPE_NATIVE = "native";
    @NotNull
    public static final String PLACEMENT_TYPE_REWARDED = "rewarded";
    @NotNull
    public static final String REMOTE_PLAY_KEY = "{{{remote_play}}}";
    @NotNull
    public static final String SESSION_ID = "{{{session_id}}}";
    @NotNull
    public static final String TEMPLATE_TYPE_BANNER = "banner";
    @NotNull
    public static final String TEMPLATE_TYPE_FULLSCREEN = "fullscreen";
    @NotNull
    public static final String TEMPLATE_TYPE_IN_LINE = "in_line";
    @NotNull
    public static final String TEMPLATE_TYPE_MREC = "mrec";
    @NotNull
    public static final String TEMPLATE_TYPE_NATIVE = "native";
    public static final int TIMEOUT = 60;
    @NotNull
    public static final String VIDEO_LENGTH_KEY = "{{{vlen}}}";
    @NotNull
    public static final String VIDEO_LENGTH_TPAT = "video.length";
    @NotNull
    public static final String WIN_NOTIFICATION = "win-notification";
    @NotNull
    public static final Constants INSTANCE = new Constants();
    @NotNull
    public static final String DEFAULT_ADS_ENDPOINT = "https://adx.ads.vungle.com/api/ads";
    @NotNull
    public static final String DEFAULT_ERROR_LOGS_ENDPOINT = "https://logs.ads.vungle.com/sdk/error_logs";
    @NotNull
    public static final String DEFAULT_METRICS_ENDPOINT = "https://logs.ads.vungle.com/sdk/metrics";

    private Constants() {
    }
}
