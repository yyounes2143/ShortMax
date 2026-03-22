package com.ss.ttvideoengine;
/* loaded from: classes6.dex */
public class TTVideoEngineMasterPlaylist {
    public TTVideoEngineVariantStream[] variantStreams = null;
    public TTVideoEngineRendition[] renditions = null;
    public TTVideoEngineSessionKey[] sessionKeys = null;
    public TTVideoEngineSessionData[] sessionDatas = null;
    public TTVideoEngineIFrameStream[] iFrameStreams = null;

    /* loaded from: classes6.dex */
    public static class TTVideoEngineIFrameStream {
        public String codecs = null;
        public String resolution = null;
        public String HDCPLevel = null;
        public String uri = null;
        public long bandWidth = 0;
        public long averageBandWidth = 0;
        public long programId = 0;
    }

    /* loaded from: classes6.dex */
    public static class TTVideoEngineRendition {
        public String assocLanguage;
        public boolean autoSelect;
        public String channels;
        public String characteristics;
        public boolean forced;
        public String groupId;
        public String inStreamId;
        public int infoId;
        public boolean isDefault;
        public String language;
        public String name;
        public int trackType;
        public String type;
        public String uri;
        public int variantIndex;
    }

    /* loaded from: classes6.dex */
    public static class TTVideoEngineSessionData {
        public String dataId = null;
        public String value = null;
        public String uri = null;
        public String language = null;
    }

    /* loaded from: classes6.dex */
    public static class TTVideoEngineSessionKey {
        public String method = null;
        public String uri = null;
        public String keyFormat = null;
        public String keyFormatVersions = null;
        public String IV = null;
    }

    /* loaded from: classes6.dex */
    public static class TTVideoEngineVariantStream {
        public String audioGroupId;
        public int averageBandwidth;
        public int bandwidth;
        public String closedCaptionsGroupId;
        public String codecs;
        public float frameRate;
        public String hdcpLevel;
        public int programId;
        public String resolution;
        public String subtitleGroupId;
        public String uri;
        public String videoGroupId;
    }
}
