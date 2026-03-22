package com.ss.ttvideoengine.model;

import java.util.Map;
/* loaded from: classes6.dex */
public interface VideoModelPb {

    /* loaded from: classes6.dex */
    public static final class Audio {
        public AudioMeta audioMeta;
        public String backupUrl;
        public BaseRangeInfo baseRangeInfo;
        public CheckInfo checkInfo;
        public EncryptInfo encryptInfo;
        public String mainUrl;
        public P2PInfo p2PInfo;
    }

    /* loaded from: classes6.dex */
    public static final class AudioMeta {
        public String atype;
        public long bitrate;
        public String codecType;
        public String definition;
        public String fileHash;
        public String fileId;
        public String quality;
        public String qualityDesc;
        public long size;
    }

    /* loaded from: classes6.dex */
    public static final class BarrageInfo {
        public String barrageMaskOffset;
    }

    /* loaded from: classes6.dex */
    public static final class BaseRangeInfo {
        public String indexRange;
        public String initRange;
    }

    /* loaded from: classes6.dex */
    public static final class BigThumb {
        public double duration;
        public String fext;
        public long imgNum;
        public String imgUri;
        public String imgUrl;
        public long imgXLen;
        public long imgXSize;
        public long imgYLen;
        public long imgYSize;
        public double interval;
    }

    /* loaded from: classes6.dex */
    public static final class CheckInfo {
        public String checkInfo;
    }

    /* loaded from: classes6.dex */
    public static final class DNS {
        public String[] dns;
    }

    /* loaded from: classes6.dex */
    public static final class DNSInfo {
        public Map<String, DNS> dnsInfo;
        public long dnsTime;
    }

    /* loaded from: classes6.dex */
    public static final class DynamicVideo {
        public String backupUrl;
        public Audio[] dynamicAudioList;
        public String dynamicType;
        public Video[] dynamicVideoList;
        public String mainUrl;
    }

    /* loaded from: classes6.dex */
    public static final class EncryptInfo {
        public boolean encrypt;
        public String kid;
        public String spadeA;
    }

    /* loaded from: classes6.dex */
    public static final class FallBackAPI {
        private static volatile FallBackAPI[] _emptyArray;
        public String fallbackApi;
        public String keySeed;

        public static FallBackAPI[] emptyArray() {
            return _emptyArray;
        }
    }

    /* loaded from: classes6.dex */
    public static final class P2PInfo {
        public String p2PVerifyUrl;
    }

    /* loaded from: classes6.dex */
    public static final class SeekOffSet {
        public double ending;
        public double opening;
    }

    /* loaded from: classes6.dex */
    public static final class Video {
        public String backupUrl;
        public BarrageInfo barrageInfo;
        public BaseRangeInfo baseRangeInfo;
        public CheckInfo checkInfo;
        public EncryptInfo encryptInfo;
        public String mainUrl;
        public P2PInfo p2PInfo;
        public VideoMeta videoMeta;
    }

    /* loaded from: classes6.dex */
    public static final class VideoInfo {
        public String barrageMaskUrl;
        public BigThumb[] bigThumbs;
        public DNSInfo dnsInfo;
        public DynamicVideo dynamicVideo;
        public boolean enableSsl;
        public FallBackAPI fallbackApi;
        public String mediaType;
        public String message;
        public SeekOffSet seekTs;
        public long status;
        public long urlExpire;
        public long version;
        public double videoDuration;
        public String videoId;
        public Video[] videoList;
    }

    /* loaded from: classes6.dex */
    public static final class VideoMeta {
        public long bitrate;
        public String codecType;
        public String definition;
        public String fileHash;
        public String fileId;
        public long fps;
        public String quality;
        public String qualityDesc;
        public long size;
        public long vheight;
        public String vtype;
        public long vwidth;

        public VideoMeta() {
            clear();
        }

        public VideoMeta clear() {
            return this;
        }
    }
}
