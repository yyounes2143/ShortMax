package com.bykv.vk.openvk.preload.geckox.model;

import com.adjust.sdk.Constants;
import com.appsflyer.AppsFlyerProperties;
import com.bykv.vk.openvk.preload.a.a.b;
import com.bytedance.vodsetting.Module;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class CheckRequestBodyModel {
    @b(a = Module.COMMON)
    private Common common;
    @b(a = "custom")
    private Map<String, Map<String, Object>> custom;
    @b(a = "deployment")
    private Map<String, List<ChannelInfo>> deployment;
    @b(a = "deployments")
    private Map<String, Object> deployments;
    @b(a = "local")
    private Map<String, Map<String, LocalChannel>> local;

    /* loaded from: classes3.dex */
    public static class Channel {
        @b(a = "c")
        String channelName;
        @b(a = "l_v")
        public String localVersion;

        public Channel(String str) {
            this.channelName = str;
        }
    }

    /* loaded from: classes3.dex */
    public static class ChannelInfo {
        @b(a = AppsFlyerProperties.CHANNEL)
        private String channel;
        @b(a = "local_version")
        private long localVersion;

        public ChannelInfo(String str, long j10) {
            this.channel = str;
            this.localVersion = j10;
        }
    }

    /* loaded from: classes3.dex */
    public static class Channels {
        @b(a = "channels")
        public List<Channel> channels = new ArrayList();
    }

    /* loaded from: classes3.dex */
    public static class Group {
        @b(a = "group_name")
        public String groupName;
        @b(a = "target_channels")
        public List<TargetChannel> targetChannels;
    }

    /* loaded from: classes3.dex */
    public enum GroupType {
        NORMAL(Constants.NORMAL),
        HIGHPRIORITY("high_priority");
        
        private String value;

        GroupType(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    /* loaded from: classes3.dex */
    public static class LocalChannel {
        @b(a = "l_v")
        public Long localVersion;
    }

    /* loaded from: classes3.dex */
    public static class ProcessorParams {
        @b(a = "domain")
        public String domain;
    }

    /* loaded from: classes3.dex */
    public static class TargetChannel {
        @b(a = "c")
        public String channelName;
        @b(a = "t_v")
        public Long targetVersion;

        public TargetChannel() {
        }

        public TargetChannel(String str) {
            this.channelName = str;
        }

        public TargetChannel(String str, Long l10) {
            this.channelName = str;
            this.targetVersion = l10;
        }
    }

    public void putChannelInfo(String str, List<ChannelInfo> list) {
        if (this.deployment == null) {
            this.deployment = new HashMap();
        }
        this.deployment.put(str, list);
    }

    public void setCommon(Common common) {
        this.common = common;
    }

    public void setCustom(Map<String, Map<String, Object>> map) {
        this.custom = map;
    }

    public void setDeployments(Map<String, Object> map) {
        this.deployments = map;
    }

    public void setLocal(Map<String, Map<String, LocalChannel>> map) {
        this.local = map;
    }
}
