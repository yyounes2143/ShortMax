package com.bytedance.vodsetting;
/* loaded from: classes3.dex */
public class Module {
    public static final String ALL = "all";
    public static final String BIZ_PORTRAIT = "biz_portrait";
    public static final String COMMON = "common";
    public static final String CustomSettings = "custom_settings";
    public static final String GeneralSettings = "general_settings";
    public static final String MDL = "mdl";
    public static final int MODULE_BIZ_PORTRAIT = 16;
    public static final int MODULE_COMMON = 8;
    public static final int MODULE_MDL = 2;
    public static final int MODULE_UPLOAD = 4;
    public static final int MODULE_VOD = 1;
    public static final String UPLOAD = "upload";
    public static final String VOD = "vod";

    /* loaded from: classes3.dex */
    public static class CommonKey {
        public static final String ConfigVersion = "config_version";
        public static final String FetchInterval = "fetch_interval";
        public static final String LocalCacheDuration = "local_cache_expire";
        public static final String MaxFetchTimes = "max_fetch_times";
        public static final String UseLocalCache = "use_local_cache";
    }

    /* loaded from: classes3.dex */
    public static class MdlKey {
        public static final String CdnType_Int = "cdn_type";
        public static final String LoaderType_Int = "loader_type";
    }

    /* loaded from: classes3.dex */
    public static class ResponseKey {
        public static final String Code = "code";
        public static final String Data = "data";
        public static final String Msg = "msg";
    }

    /* loaded from: classes3.dex */
    public static class UploadKey {
    }

    /* loaded from: classes3.dex */
    public static class VodKey {
        public static final String ByteVC1_Int = "bytevc1";
        public static final String EngineEnableLooper_Int = "engine_enable_looper";
        public static final String HardDecode_Int = "hardware_decode";
        public static final String NativeRenderRotationAdapt_Int = "native_render_rotation_adapt";
        public static final String NativeYV12_Int = "native_yv12_render";
    }
}
