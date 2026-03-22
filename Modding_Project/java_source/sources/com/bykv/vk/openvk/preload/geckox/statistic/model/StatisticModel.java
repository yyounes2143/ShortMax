package com.bykv.vk.openvk.preload.geckox.statistic.model;

import com.appsflyer.AppsFlyerProperties;
import com.bykv.vk.openvk.preload.a.a.b;
import com.bykv.vk.openvk.preload.geckox.model.Common;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.ss.texturerender.TextureRenderKeys;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class StatisticModel {
    @b(a = Module.COMMON)
    public Common common;
    @b(a = "packages")
    public List<PackageStatisticModel> packages = new ArrayList();

    /* loaded from: classes3.dex */
    public static class PackageStatisticModel {
        @b(a = "ac")

        /* renamed from: ac  reason: collision with root package name */
        public String f11441ac;
        @b(a = TextureRenderKeys.KEY_IS_BMF_VQSCORE_ACCESS_KEY)
        public String accessKey;
        @b(a = "active_check_duration")
        public Long activeCheckDuration;
        @b(a = "apply_duration")
        public Long applyDuration;
        @b(a = AppsFlyerProperties.CHANNEL)
        public String channel;
        @b(a = "clean_duration")
        public Long cleanDuration;
        @b(a = "clean_strategy")
        public Integer cleanStrategy;
        @b(a = "clean_type")
        public Integer cleanType;
        @b(a = "download_duration")
        public Long downloadDuration;
        @b(a = "download_fail_records")
        public List<DownloadFailRecords> downloadFailRecords;
        @b(a = "download_retry_times")
        public Integer downloadRetryTimes;
        @b(a = DownloadModel.DOWNLOAD_URL)
        public String downloadUrl;
        @b(a = "err_code")
        public String errCode;
        @b(a = "err_msg")
        public String errMsg;
        @b(a = "group_name")
        public String groupName;
        @b(a = "id")

        /* renamed from: id  reason: collision with root package name */
        public Long f11442id;
        @b(a = "log_id")
        public String logId;
        @b(a = "patch_id")
        public Long patchId;
        @b(a = "stats_type")
        public Integer statsType;

        /* loaded from: classes3.dex */
        public static class DownloadFailRecords {
            @b(a = "domain")
            public String domain;
            @b(a = "reason")
            public String reason;

            public DownloadFailRecords(String str, String str2) {
                this.domain = str;
                this.reason = str2;
            }
        }
    }
}
