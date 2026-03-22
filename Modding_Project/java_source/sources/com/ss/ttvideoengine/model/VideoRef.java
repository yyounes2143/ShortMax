package com.ss.ttvideoengine.model;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.model.VideoModelPb;
import com.ss.ttvideoengine.utils.TTHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoRef {
    private static final String KEY_VER1_AI_BARRAGE_URL = "effect_barrage_url";
    private static final String KEY_VER1_AUTO_DEFINITION = "auto_definition";
    private static final String KEY_VER1_BARRAGE_MASK_INFO = "barrage_mask_info";
    private static final String KEY_VER1_BARRAGE_MASK_URL = "barrage_mask_url";
    private static final String KEY_VER1_BIG_THUMBS = "big_thumbs";
    private static final String KEY_VER1_CONST_DEPTH = "const_depth";
    private static final String KEY_VER1_DECODING_MODE = "optimal_decoding_mode";
    private static final String KEY_VER1_DEPTH_ESTIMATION = "depth_estimation";
    private static final String KEY_VER1_DNS_INFO = "dns_info";
    private static final String KEY_VER1_DNS_TIME = "dns_time";
    private static final String KEY_VER1_DYNAMIC_AUDIO_LIST = "dynamic_audio_list";
    private static final String KEY_VER1_DYNAMIC_DUBBED_AUDIOS = "dynamic_dubbed_audios";
    private static final String KEY_VER1_DYNAMIC_TYPE = "dynamic_type";
    private static final String KEY_VER1_DYNAMIC_VIDEO = "dynamic_video";
    private static final String KEY_VER1_DYNAMIC_VIDEO_LIST = "dynamic_video_list";
    private static final String KEY_VER1_ENABLE_ADAPTIVE = "enable_adaptive";
    private static final String KEY_VER1_FALLBACK_API = "fallback_api";
    private static final String KEY_VER1_FULL_SCREEN_STRATEGY = "full_screen_strategy";
    private static final String KEY_VER1_HAS_EMBEDDED_SUBTITLE = "has_embedded_subtitle";
    private static final String KEY_VER1_LOUDNESS = "loudness";
    private static final String KEY_VER1_MEDIA_TYPE = "media_type";
    private static final String KEY_VER1_PALLAS_DID_LABELS = "pallas_did_labels";
    private static final String KEY_VER1_PALLAS_VID_LABELS = "pallas_vid_labels";
    private static final String KEY_VER1_PEAK = "peak";
    private static final String KEY_VER1_POPULARITY_LEVEL = "popularity_level";
    private static final String KEY_VER1_SEED = "key_seed";
    private static final String KEY_VER1_SEEK_TS = "seek_ts";
    private static final String KEY_VER1_SUBTITLE_INFO = "subtitle_infos";
    private static final String KEY_VER1_SUBTITLE_LANGS = "subtitle_langs";
    private static final String KEY_VER1_SUBTITLE_POSITION = "subtitle_position";
    private static final String KEY_VER1_SUBTITLE_POSITION_X = "x";
    private static final String KEY_VER1_SUBTITLE_POSITION_Y = "y";
    private static final String KEY_VER1_URL_EXPIRE = "url_expire";
    private static final String KEY_VER1_USER_ID = "user_id";
    private static final String KEY_VER1_VIDEOMODEL_VERSION = "version";
    private static final String KEY_VER1_VIDEO_1 = "video_1";
    private static final String KEY_VER1_VIDEO_2 = "video_2";
    private static final String KEY_VER1_VIDEO_3 = "video_3";
    private static final String KEY_VER1_VIDEO_4 = "video_4";
    private static final String KEY_VER1_VIDEO_5 = "video_5";
    private static final String KEY_VER1_VIDEO_6 = "video_6";
    private static final String KEY_VER1_VIDEO_7 = "video_7";
    private static final String KEY_VER1_VIDEO_8 = "video_8";
    private static final String KEY_VER1_VIDEO_DURATION = "video_duration";
    private static final String KEY_VER1_VIDEO_ENABLE_SSL = "enable_ssl";
    private static final String KEY_VER1_VIDEO_ID = "video_id";
    private static final String KEY_VER1_VIDEO_LIST = "video_list";
    private static final String KEY_VER1_VIDEO_NAME = "video_name";
    private static final String KEY_VER1_VIDEO_STATUS = "status";
    private static final String KEY_VER1_VIDEO_STYLE = "video_style";
    private static final String KEY_VER1_VIDEO_VALIDATE = "validate";
    private static final String KEY_VER1_VOLUME = "volume";
    private static final String KEY_VER1_VOLUME_INFO_JSON = "volume_info_json";
    private static final String KEY_VER1_VOLUME_LOUDNESS_END = "loudness_range_end";
    private static final String KEY_VER1_VOLUME_LOUDNESS_RANGE = "loudness_range";
    private static final String KEY_VER1_VOLUME_LOUDNESS_START = "loudness_range_start";
    private static final String KEY_VER1_VOLUME_MAX_MOM = "maximum_momentary_loudness";
    private static final String KEY_VER1_VOLUME_SHORTERM = "maximum_short_term_loudness";
    private static final String KEY_VER1_VOLUME_VER = "version";
    private static final String KEY_VER2_ADAPTIVE_INFO = "AdaptiveInfo";
    private static final String KEY_VER2_BIG_THUMBS = "BigThumbs";
    private static final String KEY_VER2_ENABLE_ADAPTIVE = "EnableAdaptive";
    private static final String KEY_VER2_MEDIA_TYPE = "MediaType";
    private static final String KEY_VER2_PLAY_INFO_LIST = "PlayInfoList";
    private static final String KEY_VER2_POSTER_URL = "CoverUrl";
    private static final String KEY_VER2_SEEK_TS = "Seekts";
    private static final String KEY_VER2_TOTAL_COUNT = "TotalCount";
    private static final String KEY_VER2_VIDEO_DURATION = "Duration";
    private static final String KEY_VER2_VIDEO_ENABLE_SSL = "EnableSSL";
    private static final String KEY_VER2_VIDEO_ID = "VideoID";
    private static final String KEY_VER2_VIDEO_STATUS = "Status";
    private static final String KEY_VER4_ADAPTIVE_INFO = "AdaptiveInfo";
    private static final String KEY_VER4_BARRAGE_MASK_INFO = "BarrageMaskInfo";
    private static final String KEY_VER4_BARRAGE_MASK_URL = "BarrageMaskUrl";
    private static final String KEY_VER4_ENABLE_ADAPTIVE = "EnableAdaptive";
    private static final String KEY_VER4_FILE_TYPE = "FileType";
    private static final String KEY_VER4_PLAY_INFO_LIST = "PlayInfoList";
    private static final String KEY_VER4_POSTER_URL = "PosterUrl";
    private static final String KEY_VER4_SUBTITLE_INFO = "SubtitleInfoList";
    private static final String KEY_VER4_THUMB_INFO_LIST = "ThumbInfoList";
    private static final String KEY_VER4_TOTAL_COUNT = "TotalCount";
    private static final String KEY_VER4_VIDEOMODEL_VERSION = "Version";
    private static final String KEY_VER4_VIDEO_DURATION = "Duration";
    private static final String KEY_VER4_VIDEO_ENABLE_SSL = "EnableSSL";
    private static final String KEY_VER4_VIDEO_ID = "Vid";
    private static final String KEY_VER4_VIDEO_STATUS = "Status";
    public static int TYPE_AUDIO = 1;
    public static int TYPE_VIDEO = 0;
    public static final int VALUE_VIDEO_REF_AI_BARRAGE_URL = 235;
    public static final int VALUE_VIDEO_REF_AUTO_DEFINITION = 107;
    public static final int VALUE_VIDEO_REF_BARRAGE_MASK_URL = 221;
    public static final int VALUE_VIDEO_REF_BASH_STRING = 8;
    public static final int VALUE_VIDEO_REF_BUSINESS_ID = 246;
    public static final int VALUE_VIDEO_REF_CATEGORY = 232;
    public static final int VALUE_VIDEO_REF_CODEC_HAS_H264 = 203;
    public static final int VALUE_VIDEO_REF_CODEC_HAS_h265 = 204;
    public static final int VALUE_VIDEO_REF_CODEC_HAS_h266 = 228;
    public static final int VALUE_VIDEO_REF_CONST_DEPTH = 236;
    public static final int VALUE_VIDEO_REF_DECODING_MODE = 223;
    public static final int VALUE_VIDEO_REF_DEFAULT_AUDIO_INFO_ID = 230;
    public static final int VALUE_VIDEO_REF_DNS_TIME = 216;
    public static final int VALUE_VIDEO_REF_DUBBED_AUDIO_INFO_LIST = 231;
    public static final int VALUE_VIDEO_REF_DYNAMIC_BACKUP_URL = 109;
    public static final int VALUE_VIDEO_REF_DYNAMIC_MAIN_URL = 108;
    public static final int VALUE_VIDEO_REF_DYNAMIC_TYPE = 215;
    public static final int VALUE_VIDEO_REF_DYNAMIC_URLS = 213;
    public static final int VALUE_VIDEO_REF_DYNAMIC_VIDEO_List = 210;
    public static final int VALUE_VIDEO_REF_ENABLE_ADAPTIVE = 222;
    public static final int VALUE_VIDEO_REF_FALLBACK_API = 217;
    public static final int VALUE_VIDEO_REF_FIRST_SUB_VID = 233;
    public static final int VALUE_VIDEO_REF_FORMAT = 211;
    public static final int VALUE_VIDEO_REF_FORMAT_HAS_DASH = 205;
    public static final int VALUE_VIDEO_REF_FORMAT_HAS_HLS = 208;
    public static final int VALUE_VIDEO_REF_FORMAT_HAS_MP4 = 206;
    public static final int VALUE_VIDEO_REF_FORMAT_HAS_MPD = 207;
    public static final int VALUE_VIDEO_REF_FULL_SCREEN_STRATEGY = 226;
    public static final int VALUE_VIDEO_REF_HAS_EMBEDED_SUBTITLE = 229;
    public static final int VALUE_VIDEO_REF_KEY_SEED = 218;
    public static final int VALUE_VIDEO_REF_KEY_URL_ENCRYPTED = 219;
    public static final int VALUE_VIDEO_REF_LABEL_USAGE = 245;
    public static final int VALUE_VIDEO_REF_LOUDNESS = 224;
    public static final int VALUE_VIDEO_REF_MASK_FILE_HASH = 241;
    public static final int VALUE_VIDEO_REF_MASK_FILE_SIZE = 243;
    public static final int VALUE_VIDEO_REF_MASK_HEAD_LEN = 242;
    public static final int VALUE_VIDEO_REF_MEDIA_TYPE = 7;
    public static final int VALUE_VIDEO_REF_MODEL_VERSION = 9;
    public static final int VALUE_VIDEO_REF_MULTI_BITRATE_REFACTOR = 253;
    public static final int VALUE_VIDEO_REF_ORIGINAL_AUDIO_INFO_LIST = 234;
    public static final int VALUE_VIDEO_REF_PALLAS_DID_LABELS = 244;
    public static final int VALUE_VIDEO_REF_PALLAS_VID_LABELS = 237;
    public static final int VALUE_VIDEO_REF_PEAK = 225;
    public static final int VALUE_VIDEO_REF_PLACEHOLDER = 254;
    public static final int VALUE_VIDEO_REF_POPULARITY_LEVEL = 227;
    public static final int VALUE_VIDEO_REF_POSTER_URL = 201;
    public static final int VALUE_VIDEO_REF_STATUS = 4;
    public static final int VALUE_VIDEO_REF_SUBTITLE_POSITION_X = 239;
    public static final int VALUE_VIDEO_REF_SUBTITLE_POSITION_Y = 240;
    public static final int VALUE_VIDEO_REF_THUMB_INFO_LIST = 212;
    public static final int VALUE_VIDEO_REF_TOTAL_COUNT = 209;
    public static final int VALUE_VIDEO_REF_URL_EXPIRE = 220;
    public static final int VALUE_VIDEO_REF_USER_ID = 1;
    public static final int VALUE_VIDEO_REF_VIDEO_DURATION = 3;
    public static final int VALUE_VIDEO_REF_VIDEO_ENABLE_SSL = 106;
    public static final int VALUE_VIDEO_REF_VIDEO_ID = 2;
    public static final int VALUE_VIDEO_REF_VIDEO_LIST = 5;
    public static final int VALUE_VIDEO_REF_VIDEO_NAME = 104;
    public static final int VALUE_VIDEO_REF_VIDEO_SEEK_TS = 214;
    public static final int VALUE_VIDEO_REF_VIDEO_VALIDATE = 105;
    public static final int VALUE_VIDEO_REF_VOLUME_INFO_JSON = 260;
    public static final int VALUE_VIDEO_REF_VOLUME_LU_END = 248;
    public static final int VALUE_VIDEO_REF_VOLUME_LU_RANGE = 252;
    public static final int VALUE_VIDEO_REF_VOLUME_LU_START = 247;
    public static final int VALUE_VIDEO_REF_VOLUME_MAX_MOM = 249;
    public static final int VALUE_VIDEO_REF_VOLUME_MAX_SHOTERM = 250;
    public static final int VALUE_VIDEO_REF_VOLUME_VER = 251;
    private String mAIBarrageUrl;
    private VideoAdaptiveInfo mAdaptiveInfo;
    private VideoAdaptiveInfo mAdaptiveInfoVer2;
    private String[] mAllQualityInfos;
    private Resolution[] mAllResolutions;
    public String mAutoDefinition;
    public String mBackupURL;
    private String mBarrageMaskUrl;
    private String mBid;
    private int mCategory;
    public String mDecodingMode;
    private JSONObject mDnsInfo;
    private Map<String, VideoModelPb.DNS> mDnsInfoVer3;
    private long mDnsTime;
    public List<VideoInfo> mDubbedAudioInfo;
    public List<VideoInfo> mDynamicVideoList;
    public boolean mEnableAdaptive;
    public boolean mEnableSSL;
    public String mFallbackApi;
    private String mFirstSubVid;
    public String mFullScreen;
    public String mKeyseed;
    public String mLabelUsage;
    public float mLoudness;
    private float mLuEnd;
    private float mLuRange;
    private float mLuStart;
    public String mMainURL;
    private String mMaskFileHash;
    private long mMaskFileSize;
    private int mMaskHeadLen;
    public BarrageMaskInfo mMaskInfo;
    private float mMaxMomLu;
    private float mMaxShortermLu;
    public String mMediaType;
    public int mMediaTypeInt;
    private int mMediaTypeIntVer2;
    private String mMediaTypeVer2;
    public List<VideoInfo> mOriginalAudioInfo;
    private String mPallasDidLabels;
    private String mPallasVidLabels;
    public float mPeak;
    public int mPopularityLevel;
    private String mPosterUrl;
    private String mPosterUrlVer2;
    public VideoSeekTs mSeekTs;
    private VideoSeekTs mSeekTsVer2;
    public int mStatus;
    private int mStatusVer2;
    public List<SubInfo> mSubInfoList;
    public int[] mSubLangs;
    public List<VideoThumbInfo> mThumbInfoList;
    private List<VideoThumbInfo> mThumbInfoListVer2;
    private int mTotalCount;
    private int mTotalCountVer2;
    public String[] mURLs;
    private long mUrlExpire;
    public String mUserId;
    public String mValidate;
    public int mVideoDuration;
    private int mVideoDurationVer2;
    public String mVideoId;
    private String mVideoIdVer2;
    public List<VideoInfo> mVideoList;
    private List<VideoInfo> mVideoListVer2;
    public String mVideoName;
    public VideoStyle mVideoStyle;
    private int mVolumInfoVer;
    private String mVolumeInfoJson;
    private int mVersion = 1;
    private ArrayList<Resolution> mAllResolutionsArray = new ArrayList<>();
    private ArrayList<String> mAllQualityArray = new ArrayList<>();
    private String[] mCodecArray = null;
    private String mDynamicType = "";
    private String mFormat = TTVideoEngineInterface.FORMAT_TYPE_MP4;
    private String mBashString = "";
    private boolean mCodecHash265 = false;
    private boolean mCodecHash266 = false;
    private boolean mCodecHasH264 = false;
    private boolean mFormatHasDASH = false;
    private boolean mFormatHasMPD = false;
    private boolean mFormatHasMP4 = false;
    private boolean mFormatHasHls = false;
    private boolean mHasEmbeddedSubtitle = false;
    public int[] mDefaultInfoId = {-1, -1};
    private boolean mMBRefactor = false;
    public float mConstDepth = 0.0f;
    public float mSubtitlePositionX = 0.0f;
    public float mSubtitlePositionY = 0.0f;
    private boolean mURLEncrypted = false;
    private HashMap<String, Resolution> mVideoResolutionMap = TTHelper.defaultVideoResolutionMap();
    private HashMap<String, Resolution> mAudioResolutionMap = TTHelper.defaultAudioResolutionMap();

    public VideoRef() {
        int i10 = TYPE_VIDEO;
        this.mMediaTypeInt = i10;
        this.mLoudness = 0.0f;
        this.mPeak = 0.0f;
        this.mLuRange = 0.0f;
        this.mLuStart = 0.0f;
        this.mLuEnd = 0.0f;
        this.mMaxMomLu = 0.0f;
        this.mMaxShortermLu = 0.0f;
        this.mVolumInfoVer = 0;
        this.mVolumeInfoJson = "";
        this.mFirstSubVid = null;
        this.mPallasVidLabels = "";
        this.mPallasDidLabels = "";
        this.mBid = "";
        this.mCategory = 0;
        this.mVideoListVer2 = null;
        this.mMediaTypeIntVer2 = i10;
        this.mUrlExpire = 0L;
        this.mMaskFileSize = 0L;
    }

    public static String VideoListToBashString(List<VideoInfo> list) {
        JSONObject VideoListToJsonObject = VideoListToJsonObject(list);
        if (VideoListToJsonObject != null) {
            return VideoListToJsonObject.toString();
        }
        return "";
    }

    public static JSONObject VideoListToJsonObject(List<VideoInfo> list) {
        JSONObject bashJsonObject;
        if (list != null) {
            try {
                if (list.size() > 0) {
                    JSONArray jSONArray = new JSONArray();
                    JSONArray jSONArray2 = new JSONArray();
                    for (VideoInfo videoInfo : list) {
                        if (videoInfo != null && (bashJsonObject = videoInfo.toBashJsonObject()) != null) {
                            if (videoInfo.getMediatype() == TYPE_VIDEO) {
                                jSONArray.put(bashJsonObject);
                            } else if (videoInfo.getMediatype() == TYPE_AUDIO) {
                                jSONArray2.put(bashJsonObject);
                            }
                        }
                    }
                    if (jSONArray.length() > 0 || jSONArray2.length() > 0) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(KEY_VER1_DYNAMIC_VIDEO_LIST, jSONArray);
                        jSONObject.put(KEY_VER1_DYNAMIC_AUDIO_LIST, jSONArray2);
                        return jSONObject;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:93:0x01bb, code lost:
        if (r6.equals(r1.toString(r5)) != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.ss.ttvideoengine.model.VideoInfo _generateVideoInfo(org.json.JSONObject r4, int r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.model.VideoRef._generateVideoInfo(org.json.JSONObject, int, java.lang.String):com.ss.ttvideoengine.model.VideoInfo");
    }

    public String[] allVideoURLs(Resolution resolution, Map<Integer, String> map) {
        String[] strArr = this.mURLs;
        if (strArr != null && strArr.length > 0) {
            return strArr;
        }
        VideoInfo videoInfo = getVideoInfo(resolution, map);
        if (videoInfo == null) {
            return new String[0];
        }
        return videoInfo.getValueStrArr(16);
    }

    /* JADX WARN: Removed duplicated region for block: B:217:0x05d2  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x05d7  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x060e A[LOOP:7: B:228:0x0608->B:230:0x060e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x063f A[LOOP:8: B:238:0x0639->B:240:0x063f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0663  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0675  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x068e  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x06fd  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x075a  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x08ca  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x08d6  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x0930  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0946  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0962 A[LOOP:13: B:373:0x095c->B:375:0x0962, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0984  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x09ad  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x09b9  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x09c6  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x09d3  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x09e2  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x09f1  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0a00  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0a17  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0a30  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0a40  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0a5e  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0aaa  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0a7e A[EDGE_INSN: B:448:0x0a7e->B:428:0x0a7e ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:476:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void extractFields(org.json.JSONObject r25) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 2738
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.model.VideoRef.extractFields(org.json.JSONObject):void");
    }

    public String[] getCodecs() {
        if (this.mCodecArray == null) {
            List<VideoInfo> videoInfoList = getVideoInfoList();
            ArrayList arrayList = new ArrayList();
            if (videoInfoList != null && videoInfoList.size() > 0) {
                for (VideoInfo videoInfo : videoInfoList) {
                    if (videoInfo != null) {
                        String valueStr = videoInfo.getValueStr(8);
                        if (!TextUtils.isEmpty(valueStr) && !arrayList.contains(valueStr)) {
                            arrayList.add(valueStr);
                        }
                    }
                }
            }
            String[] strArr = new String[arrayList.size()];
            this.mCodecArray = strArr;
            arrayList.toArray(strArr);
        }
        return this.mCodecArray;
    }

    public JSONObject getDnsInfo() {
        return this.mDnsInfo;
    }

    public String getResolutionStr(VideoInfo videoInfo) {
        if (videoInfo == null) {
            return resolutionToString(Resolution.Standard);
        }
        int mediatype = videoInfo.getMediatype();
        if (mediatype == TYPE_AUDIO) {
            String valueStr = videoInfo.getValueStr(18);
            if (valueStr == null) {
                return resolutionToString(Resolution.Standard, mediatype);
            }
            return valueStr;
        } else if (mediatype == TYPE_VIDEO) {
            String valueStr2 = videoInfo.getValueStr(7);
            if (valueStr2 == null) {
                return resolutionToString(Resolution.Standard, mediatype);
            }
            return valueStr2;
        } else {
            return resolutionToString(Resolution.Standard);
        }
    }

    public VideoSeekTs getSeekTs() {
        if (this.mVersion == 2) {
            return this.mSeekTsVer2;
        }
        return this.mSeekTs;
    }

    public List<SubInfo> getSubInfoList() {
        return this.mSubInfoList;
    }

    public String[] getSupportQualityInfos() {
        return this.mAllQualityInfos;
    }

    public Resolution[] getSupportResolutions() {
        return this.mAllResolutions;
    }

    @Deprecated
    public int[] getSupportSubtitleLangs() {
        return this.mSubLangs;
    }

    public List<VideoThumbInfo> getThumbInfoList() {
        if (this.mVersion == 2) {
            return this.mThumbInfoListVer2;
        }
        return this.mThumbInfoList;
    }

    public Boolean getValueBool(int i10) {
        if (i10 != 106) {
            if (i10 != 222) {
                if (i10 != 253) {
                    if (i10 != 228) {
                        if (i10 != 229) {
                            switch (i10) {
                                case 203:
                                    return Boolean.valueOf(this.mCodecHasH264);
                                case 204:
                                    return Boolean.valueOf(this.mCodecHash265);
                                case 205:
                                    return Boolean.valueOf(this.mFormatHasDASH);
                                case 206:
                                    return Boolean.valueOf(this.mFormatHasMP4);
                                case 207:
                                    return Boolean.valueOf(this.mFormatHasMPD);
                                case 208:
                                    return Boolean.valueOf(this.mFormatHasHls);
                                default:
                                    return Boolean.FALSE;
                            }
                        }
                        return Boolean.valueOf(this.mHasEmbeddedSubtitle);
                    }
                    return Boolean.valueOf(this.mCodecHash266);
                }
                return Boolean.valueOf(this.mMBRefactor);
            }
            return Boolean.valueOf(this.mEnableAdaptive);
        }
        return Boolean.valueOf(this.mEnableSSL);
    }

    public float getValueFloat(int i10) {
        if (i10 != 224) {
            if (i10 != 225) {
                if (i10 != 236) {
                    if (i10 != 252) {
                        if (i10 != 239) {
                            if (i10 != 240) {
                                switch (i10) {
                                    case 247:
                                        return this.mLuStart;
                                    case 248:
                                        return this.mLuEnd;
                                    case 249:
                                        return this.mMaxMomLu;
                                    case 250:
                                        return this.mMaxShortermLu;
                                    default:
                                        return 0.0f;
                                }
                            }
                            return this.mSubtitlePositionY;
                        }
                        return this.mSubtitlePositionX;
                    }
                    return this.mLuRange;
                }
                return this.mConstDepth;
            }
            return this.mPeak;
        }
        return this.mLoudness;
    }

    public int getValueInt(int i10) {
        int i11 = this.mVersion;
        if (i11 == 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 7) {
                        if (i10 != 209) {
                            if (i10 != 230) {
                                if (i10 != 232) {
                                    if (i10 != 242) {
                                        if (i10 != 251) {
                                            return 0;
                                        }
                                        return this.mVolumInfoVer;
                                    }
                                    return this.mMaskHeadLen;
                                }
                                return this.mCategory;
                            }
                            return this.mDefaultInfoId[TYPE_AUDIO];
                        }
                        return this.mTotalCountVer2;
                    }
                    return this.mMediaTypeIntVer2;
                }
                return this.mStatusVer2;
            }
            return this.mVideoDurationVer2;
        } else if (i10 != 3) {
            if (i10 != 4) {
                if (i10 != 7) {
                    if (i10 != 9) {
                        if (i10 != 209) {
                            if (i10 != 227) {
                                if (i10 != 230) {
                                    if (i10 != 232) {
                                        if (i10 != 242) {
                                            if (i10 != 251) {
                                                return 0;
                                            }
                                            return this.mVolumInfoVer;
                                        }
                                        return this.mMaskHeadLen;
                                    }
                                    return this.mCategory;
                                }
                                return this.mDefaultInfoId[TYPE_AUDIO];
                            }
                            return this.mPopularityLevel;
                        }
                        return this.mTotalCount;
                    }
                    return i11;
                }
                return this.mMediaTypeInt;
            }
            return this.mStatus;
        } else {
            return this.mVideoDuration;
        }
    }

    public List<VideoInfo> getValueList(int i10) {
        if (this.mVersion == 2) {
            if (i10 != 5) {
                return null;
            }
            return this.mVideoListVer2;
        } else if (i10 != 5) {
            if (i10 != 210) {
                if (i10 != 231) {
                    if (i10 != 234) {
                        return null;
                    }
                    return this.mOriginalAudioInfo;
                }
                return this.mDubbedAudioInfo;
            }
            return this.mDynamicVideoList;
        } else {
            return this.mVideoList;
        }
    }

    public long getValueLong(int i10) {
        if (i10 != 216) {
            if (i10 != 220) {
                if (i10 != 243) {
                    return 0L;
                }
                return this.mMaskFileSize;
            }
            return this.mUrlExpire;
        }
        return this.mDnsTime;
    }

    public String getValueStr(int i10) {
        if (i10 == 211) {
            return this.mFormat;
        }
        if (i10 == 215) {
            return this.mDynamicType;
        }
        if (i10 == 8) {
            return this.mBashString;
        }
        if (i10 == 233) {
            return this.mFirstSubVid;
        }
        if (i10 == 237) {
            return this.mPallasVidLabels;
        }
        if (i10 == 244) {
            return this.mPallasDidLabels;
        }
        if (i10 == 245) {
            return this.mLabelUsage;
        }
        if (i10 == 260) {
            return this.mVolumeInfoJson;
        }
        if (this.mVersion == 2) {
            if (i10 != 2) {
                if (i10 != 7) {
                    if (i10 != 201) {
                        return "";
                    }
                    return this.mPosterUrlVer2;
                }
                return this.mMediaTypeVer2;
            }
            return this.mVideoIdVer2;
        } else if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 7) {
                    if (i10 != 201) {
                        if (i10 != 221) {
                            if (i10 != 223) {
                                if (i10 != 226) {
                                    if (i10 != 235) {
                                        if (i10 != 241) {
                                            if (i10 != 246) {
                                                if (i10 != 104) {
                                                    if (i10 != 105) {
                                                        if (i10 != 217) {
                                                            if (i10 != 218) {
                                                                switch (i10) {
                                                                    case 107:
                                                                        return this.mAutoDefinition;
                                                                    case 108:
                                                                        return this.mMainURL;
                                                                    case 109:
                                                                        return this.mBackupURL;
                                                                    default:
                                                                        return "";
                                                                }
                                                            }
                                                            return this.mKeyseed;
                                                        }
                                                        return this.mFallbackApi;
                                                    }
                                                    return this.mValidate;
                                                }
                                                return this.mVideoName;
                                            }
                                            return this.mBid;
                                        }
                                        return this.mMaskFileHash;
                                    }
                                    return this.mAIBarrageUrl;
                                }
                                return this.mFullScreen;
                            }
                            return this.mDecodingMode;
                        }
                        return this.mBarrageMaskUrl;
                    }
                    return this.mPosterUrl;
                }
                return this.mMediaType;
            }
            return this.mVideoId;
        } else {
            return this.mUserId;
        }
    }

    public int getVersion() {
        return this.mVersion;
    }

    @Nullable
    public VideoInfo getVideoInfo(Resolution resolution, Map<Integer, String> map) {
        return getVideoInfo(resolution, getValueInt(7), map);
    }

    public List<VideoInfo> getVideoInfoList() {
        List<VideoInfo> list;
        if (this.mVersion == 2) {
            return this.mVideoListVer2;
        }
        List<VideoInfo> list2 = this.mVideoList;
        if (list2 != null && list2.size() > 0) {
            list = this.mVideoList;
        } else {
            list = null;
        }
        List<VideoInfo> list3 = this.mDynamicVideoList;
        if (list3 != null && list3.size() > 0) {
            return this.mDynamicVideoList;
        }
        return list;
    }

    @Nullable
    @Deprecated
    public VideoInfo getVideoInfoWithClarity(String str) {
        List<VideoInfo> videoInfoList;
        if (TextUtils.isEmpty(str) || (videoInfoList = getVideoInfoList()) == null || videoInfoList.size() == 0) {
            return null;
        }
        for (int i10 = 0; i10 < videoInfoList.size(); i10++) {
            if (videoInfoList.get(i10) != null && getResolutionStr(videoInfoList.get(i10)).equals(str)) {
                return videoInfoList.get(i10);
            }
        }
        return videoInfoList.get(0);
    }

    public String resolutionToString(Resolution resolution) {
        return resolutionToString(resolution, getValueInt(7));
    }

    public void setUpResolution(HashMap<String, Resolution> hashMap) {
        int valueInt = getValueInt(7);
        if (hashMap != null && hashMap.size() > 0) {
            if (valueInt == TYPE_AUDIO) {
                this.mAudioResolutionMap = hashMap;
            } else {
                this.mVideoResolutionMap = hashMap;
            }
        } else if (valueInt == TYPE_AUDIO) {
            hashMap = this.mAudioResolutionMap;
        } else {
            hashMap = this.mVideoResolutionMap;
        }
        Resolution resolution = Resolution.Undefine;
        List<VideoInfo> videoInfoList = getVideoInfoList();
        if (videoInfoList != null) {
            for (int i10 = 0; i10 < videoInfoList.size(); i10++) {
                VideoInfo videoInfo = videoInfoList.get(i10);
                if (videoInfo != null && videoInfo.getMediatype() == valueInt) {
                    videoInfo.setResolutionBaseMap(hashMap);
                    Resolution resolution2 = videoInfo.getResolution();
                    String valueStr = videoInfo.getValueStr(32);
                    if (!this.mAllQualityArray.contains(valueStr)) {
                        this.mAllQualityArray.add(valueStr);
                    }
                    if (!this.mAllResolutionsArray.contains(resolution2)) {
                        this.mAllResolutionsArray.add(resolution2);
                    }
                }
            }
        }
        Resolution[] resolutionArr = new Resolution[this.mAllResolutionsArray.size()];
        this.mAllResolutions = resolutionArr;
        this.mAllResolutionsArray.toArray(resolutionArr);
        String[] strArr = new String[this.mAllQualityArray.size()];
        this.mAllQualityInfos = strArr;
        this.mAllQualityArray.toArray(strArr);
    }

    public void setValue(int i10, String str) {
        if (i10 == 1) {
            this.mUserId = str;
        } else if (i10 == 2) {
            this.mVideoId = str;
            this.mVideoIdVer2 = str;
            if (TextUtils.isEmpty(this.mBid)) {
                this.mBid = str;
            }
        } else if (i10 == 7) {
            this.mMediaTypeVer2 = str;
            this.mMediaType = str;
        } else if (i10 == 201) {
            this.mPosterUrlVer2 = str;
        } else if (i10 == 233) {
            this.mFirstSubVid = str;
        } else if (i10 == 104) {
            this.mVideoName = str;
        } else if (i10 != 105) {
            switch (i10) {
                case 107:
                    this.mAutoDefinition = str;
                    return;
                case 108:
                    this.mMainURL = str;
                    return;
                case 109:
                    this.mBackupURL = str;
                    return;
                default:
                    return;
            }
        } else {
            this.mValidate = str;
        }
    }

    public void setValueStr(int i10, String str) {
        if (i10 != 218) {
            if (i10 != 245) {
                if (i10 == 246) {
                    this.mBid = str;
                    return;
                }
                return;
            } else if (!TextUtils.isEmpty(str)) {
                this.mLabelUsage = str;
                return;
            } else {
                return;
            }
        }
        this.mKeyseed = str;
    }

    public void setVersion(int i10) {
        this.mVersion = i10;
    }

    public JSONObject toBashJsonObject() {
        return VideoListToJsonObject(getVideoInfoList());
    }

    public String toBashString() {
        return VideoListToBashString(getVideoInfoList());
    }

    public String resolutionToString(Resolution resolution, int i10) {
        HashMap<String, Resolution> hashMap;
        String str;
        if (i10 == TYPE_AUDIO) {
            hashMap = this.mAudioResolutionMap;
        } else {
            hashMap = this.mVideoResolutionMap;
        }
        Iterator<Map.Entry<String, Resolution>> it = hashMap.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                str = null;
                break;
            }
            Map.Entry<String, Resolution> next = it.next();
            if (next.getValue().getIndex() == resolution.getIndex()) {
                str = next.getKey();
                break;
            }
        }
        return TextUtils.isEmpty(str) ? resolution.toString(i10) : str;
    }

    @Nullable
    public VideoInfo getVideoInfo(Map<Integer, String> map) {
        List<VideoInfo> videoInfoList = getVideoInfoList();
        if (videoInfoList != null && videoInfoList.size() != 0) {
            for (VideoInfo videoInfo : videoInfoList) {
                if (videoInfo != null) {
                    if (map != null && map.size() != 0) {
                        for (Map.Entry<Integer, String> entry : map.entrySet()) {
                            int intValue = entry.getKey().intValue();
                            String value = entry.getValue();
                            if (TextUtils.isEmpty(value) || value.equals(videoInfo.getValueStr(intValue))) {
                            }
                        }
                    }
                    return videoInfo;
                }
            }
        }
        return null;
    }

    @Nullable
    public VideoInfo getVideoInfo(Resolution resolution, int i10, Map<Integer, String> map) {
        List<VideoInfo> videoInfoList = getVideoInfoList();
        if (videoInfoList != null && videoInfoList.size() != 0) {
            for (VideoInfo videoInfo : videoInfoList) {
                if (videoInfo != null && i10 == videoInfo.getMediatype()) {
                    if (map != null && map.containsKey(42)) {
                        String str = map.get(42);
                        if (!TextUtils.isEmpty(videoInfo.getValueStr(42)) && videoInfo.getValueStr(42).equals(str)) {
                            return videoInfo;
                        }
                    }
                    if (map != null && map.containsKey(32)) {
                        String str2 = map.get(32);
                        if (!TextUtils.isEmpty(videoInfo.getValueStr(32)) && videoInfo.getValueStr(32).equals(str2)) {
                            return videoInfo;
                        }
                    }
                    if (map != null && map.containsKey(18)) {
                        String str3 = map.get(18);
                        if (!TextUtils.isEmpty(videoInfo.getValueStr(18)) && videoInfo.getValueStr(18).equals(str3)) {
                            return videoInfo;
                        }
                    }
                    if (resolution == videoInfo.getResolution()) {
                        if (map != null && map.size() != 0) {
                            for (Map.Entry<Integer, String> entry : map.entrySet()) {
                                int intValue = entry.getKey().intValue();
                                String value = entry.getValue();
                                if (TextUtils.isEmpty(value) || value.equals(videoInfo.getValueStr(intValue))) {
                                }
                            }
                        }
                        return videoInfo;
                    }
                    continue;
                }
            }
        }
        return null;
    }

    public void setValue(int i10, boolean z10) {
        if (i10 == 106) {
            this.mEnableSSL = z10;
        } else if (i10 != 219) {
        } else {
            this.mURLEncrypted = z10;
        }
    }

    public void setValue(int i10, int i11) {
        if (i10 == 3) {
            this.mVideoDuration = i11;
            this.mVideoDurationVer2 = i11;
        } else if (i10 == 4) {
            this.mStatus = i11;
        } else if (i10 == 7) {
            this.mMediaTypeInt = i11;
            this.mMediaTypeIntVer2 = i11;
        } else if (i10 == 209) {
            this.mTotalCountVer2 = i11;
        } else if (i10 != 232) {
        } else {
            this.mCategory = i11;
        }
    }

    public void setValue(int i10, String[] strArr) {
        if (i10 != 213) {
            return;
        }
        this.mURLs = strArr;
    }

    public void parseFromPb(VideoModelPb.VideoInfo videoInfo) {
    }

    public void setValue(int i10, List list) {
        if (i10 == 5) {
            this.mVideoList = list;
            this.mVideoListVer2 = list;
        } else if (i10 == 210) {
            this.mDynamicVideoList = list;
        } else if (i10 != 212) {
        } else {
            this.mThumbInfoListVer2 = list;
            this.mThumbInfoList = list;
        }
    }

    public void setValue(int i10, VideoSeekTs videoSeekTs) {
        if (i10 != 214) {
            return;
        }
        this.mSeekTs = videoSeekTs;
        this.mSeekTsVer2 = videoSeekTs;
    }
}
