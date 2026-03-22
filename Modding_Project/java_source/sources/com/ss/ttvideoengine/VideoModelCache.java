package com.ss.ttvideoengine;

import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.ss.ttvideoengine.model.SubInfo;
import com.ss.ttvideoengine.model.VideoModel;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.HttpUrl;
/* loaded from: classes6.dex */
public class VideoModelCache {
    public static final int CACHE_NB = 100;
    private static final int TIME_OUT = 3600;
    private static final List<String> TOB_VIDEO_MODEL_KEYS = Arrays.asList(TTVideoEngineInterface.PLAY_API_KEY_ACTION, "Version", "Vid", SubInfo.KEY_FORMAT, "Codec", "Definition", "Quality", "FileType", "Ssl", "NeedThumbs", "NeedBarrageMask", "HDRDefinition", "UnionInfo", "DrmExpireTimestamp", "PlayScene");
    private static int mCacheNB = 100;
    private static VideoModelCache mInstance = null;
    private static int mTimeOutSetByUser = -1;
    private ConcurrentHashMap<String, VideoModelCacheInfo> mVideoModelCache = new ConcurrentHashMap<>();

    /* loaded from: classes6.dex */
    public static class VideoModelCacheInfo {
        public VideoModel model = null;
        public long modelGotTime = 0;
        public boolean isExpired = false;
    }

    public static VideoModelCache getInstance() {
        if (mInstance == null) {
            synchronized (VideoModelCache.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new VideoModelCache();
                    }
                } finally {
                }
            }
        }
        return mInstance;
    }

    private String getVideoModelCacheKey(String str, String str2) {
        if (VodSettings.getVodInt(VodSettingsKey.KEY_VIDEO_MODEL_CACHE_ENABLE_KEY_OPT, 1) == 1) {
            return getVideoModelCacheKeyForTob(str, str2);
        }
        return getVideoModelCacheKeyForInner(str, str2);
    }

    private String getVideoModelCacheKeyForInner(String str, String str2) {
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String[] split;
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        String str10 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        String[] split2 = str2.split("[?]");
        if (split2.length >= 2) {
            str4 = null;
            str5 = null;
            str6 = null;
            str7 = null;
            str8 = null;
            str9 = null;
            str3 = null;
            for (String str11 : split2[1].split(ContainerUtils.FIELD_DELIMITER)) {
                int indexOf = str11.indexOf(TTVideoEngineInterface.PLAY_API_KEY_CODEC);
                if (indexOf == 0) {
                    str10 = str11.substring(indexOf + 11);
                } else {
                    int indexOf2 = str11.indexOf("CodecType");
                    if (indexOf2 == 0) {
                        str10 = str11.substring(indexOf2 + 10);
                    } else {
                        int indexOf3 = str11.indexOf("Codec");
                        if (indexOf3 == 0) {
                            str10 = str11.substring(indexOf3 + 6);
                        } else {
                            int indexOf4 = str11.indexOf("format_type");
                            if (indexOf4 == 0) {
                                str3 = str11.substring(indexOf4 + 12);
                            } else {
                                int indexOf5 = str11.indexOf("FormatType");
                                if (indexOf5 == 0) {
                                    str3 = str11.substring(indexOf5 + 11);
                                } else {
                                    int indexOf6 = str11.indexOf(SubInfo.KEY_FORMAT);
                                    if (indexOf6 == 0) {
                                        str3 = str11.substring(indexOf6 + 7);
                                    } else {
                                        int indexOf7 = str11.indexOf(TTVideoEngineInterface.PLAY_API_KEY_PTOKEN);
                                        if (indexOf7 == 0) {
                                            str4 = str11.substring(indexOf7 + 7);
                                        } else {
                                            int indexOf8 = str11.indexOf("PToken");
                                            if (indexOf8 == 0) {
                                                str4 = str11.substring(indexOf8 + 7);
                                            } else {
                                                int indexOf9 = str11.indexOf(TTVideoEngineInterface.PLAY_API_KEY_SSL);
                                                if (indexOf9 == 0) {
                                                    str5 = str11.substring(indexOf9 + 4);
                                                } else {
                                                    int indexOf10 = str11.indexOf("Ssl");
                                                    if (indexOf10 == 0) {
                                                        str5 = str11.substring(indexOf10 + 4);
                                                    } else {
                                                        int indexOf11 = str11.indexOf("HDRDefinition");
                                                        if (indexOf11 == 0) {
                                                            str6 = str11.substring(indexOf11 + 14);
                                                        } else {
                                                            int indexOf12 = str11.indexOf("FileType");
                                                            if (indexOf12 == 0) {
                                                                str7 = str11.substring(indexOf12 + 9);
                                                            } else if (str11.indexOf("UnionInfo") == 0) {
                                                                str8 = str11.substring(10);
                                                            } else if (str11.indexOf("DrmExpireTimestamp") == 0) {
                                                                str9 = str11.substring(19);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            str3 = null;
            str4 = null;
            str5 = null;
            str6 = null;
            str7 = null;
            str8 = null;
            str9 = null;
        }
        sb2.append(str);
        if (!TextUtils.isEmpty(str10)) {
            sb2.append(String.format("/%s", str10));
        }
        if (!TextUtils.isEmpty(str3)) {
            sb2.append(String.format("/%s", str3));
        }
        if (!TextUtils.isEmpty(str4)) {
            sb2.append(String.format("/%s", str4));
        }
        if (!TextUtils.isEmpty(str5)) {
            sb2.append(String.format("/%s", str5));
        }
        if (!TextUtils.isEmpty(str6)) {
            sb2.append(String.format("/%s", "hdr_" + str6));
        }
        if (!TextUtils.isEmpty(str7)) {
            sb2.append(String.format("/%s", str7));
        }
        if (!TextUtils.isEmpty(str8)) {
            sb2.append(String.format("/%s", str8));
        }
        if (!TextUtils.isEmpty(str9)) {
            sb2.append(String.format("/%s", str9));
        }
        return sb2.toString();
    }

    private String getVideoModelCacheKeyForTob(String str, String str2) {
        HttpUrl m10;
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        if (TextUtils.isEmpty(str) || (m10 = HttpUrl.m(str2)) == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str3 : TOB_VIDEO_MODEL_KEYS) {
            String q10 = m10.q(str3);
            if (!TextUtils.isEmpty(q10)) {
                sb2.append(str3);
                sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb2.append(q10);
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            }
        }
        return sb2.toString();
    }

    public synchronized void clear() {
        mTimeOutSetByUser = -1;
        mCacheNB = 100;
        ConcurrentHashMap<String, VideoModelCacheInfo> concurrentHashMap = this.mVideoModelCache;
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
        }
    }

    public synchronized VideoModelCacheInfo get(String str, String str2) {
        try {
            if (this.mVideoModelCache != null) {
                String videoModelCacheKey = getVideoModelCacheKey(str, str2);
                if (TextUtils.isEmpty(videoModelCacheKey)) {
                    return null;
                }
                VideoModelCacheInfo videoModelCacheInfo = this.mVideoModelCache.get(videoModelCacheKey);
                if (videoModelCacheInfo != null) {
                    int i10 = mTimeOutSetByUser;
                    if (i10 <= 0) {
                        VideoModel videoModel = videoModelCacheInfo.model;
                        if (videoModel != null) {
                            i10 = videoModel.getVideoRefInt(3) + 3300;
                        } else {
                            i10 = 3600;
                        }
                    }
                    if (SystemClock.elapsedRealtime() - videoModelCacheInfo.modelGotTime > i10 * 1000) {
                        videoModelCacheInfo.isExpired = true;
                    } else {
                        videoModelCacheInfo.isExpired = false;
                    }
                    return videoModelCacheInfo;
                }
            }
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void put(String str, String str2, VideoModel videoModel) {
        if (this.mVideoModelCache != null && str != null && str2 != null) {
            VideoModelCacheInfo videoModelCacheInfo = new VideoModelCacheInfo();
            videoModelCacheInfo.model = videoModel;
            videoModelCacheInfo.modelGotTime = SystemClock.elapsedRealtime();
            put(str, str2, videoModelCacheInfo);
        }
    }

    public synchronized void remove(String str, String str2) {
        if (this.mVideoModelCache != null) {
            String videoModelCacheKey = getVideoModelCacheKey(str, str2);
            if (TextUtils.isEmpty(videoModelCacheKey)) {
                return;
            }
            this.mVideoModelCache.remove(videoModelCacheKey);
        }
    }

    public void setCacheNb(int i10) {
        mCacheNB = i10;
    }

    public void setTimeOutInSec(int i10) {
        mTimeOutSetByUser = i10;
    }

    public synchronized void put(String str, String str2, VideoModelCacheInfo videoModelCacheInfo) {
        try {
            String videoModelCacheKey = getVideoModelCacheKey(str, str2);
            if (TextUtils.isEmpty(videoModelCacheKey)) {
                return;
            }
            this.mVideoModelCache.put(videoModelCacheKey, videoModelCacheInfo);
            if (this.mVideoModelCache.size() > mCacheNB) {
                long j10 = Long.MAX_VALUE;
                String str3 = null;
                for (Map.Entry<String, VideoModelCacheInfo> entry : this.mVideoModelCache.entrySet()) {
                    long j11 = entry.getValue().modelGotTime;
                    if (j11 < j10) {
                        str3 = entry.getKey();
                        j10 = j11;
                    }
                }
                if (str3 != null) {
                    this.mVideoModelCache.remove(str3);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
