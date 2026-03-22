package com.ss.ttvideoengine.model;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.EngineGlobalConfig;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.model.VideoModelPb;
import com.ss.ttvideoengine.utils.TTHelper;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoInfo implements IVideoInfo {
    public static final String KEY_LOGO_TYPE = "logo_type";
    private static final String KEY_VER1_AI_BARRAGE_URL = "effect_barrage_url";
    private static final String KEY_VER1_ATYPE = "atype";
    private static final String KEY_VER1_AVG_BITRATE = "avg_bitrate";
    private static final String KEY_VER1_BACKUP_URL = "backup_url";
    private static final String KEY_VER1_BACKUP_URL_1 = "backup_url_1";
    private static final String KEY_VER1_BACKUP_URL_2 = "backup_url_2";
    private static final String KEY_VER1_BACKUP_URL_3 = "backup_url_3";
    private static final String KEY_VER1_BARRAGE_MASK_OFFSET = "barrage_mask_offset";
    private static final String KEY_VER1_BARRAGE_MASK_URL = "barrage_mask_url";
    private static final String KEY_VER1_BITRATE = "bitrate";
    private static final String KEY_VER1_CHECK_INFO = "check_info";
    private static final String KEY_VER1_CODEC_TYPE = "codec_type";
    private static final String KEY_VER1_DEFINITION = "definition";
    private static final String KEY_VER1_DUB_VERSION = "dub_version";
    private static final String KEY_VER1_ENCRYPT = "encrypt";
    private static final String KEY_VER1_FILEID = "file_id";
    private static final String KEY_VER1_FILE_HASH = "file_hash";
    private static final String KEY_VER1_FIRST_MOOF_RANGE = "first_moof_range";
    private static final String KEY_VER1_FITTER_INFO = "fitter_info";
    private static final String KEY_VER1_GBR = "gbr";
    private static final String KEY_VER1_INDEX_RANGE = "index_range";
    private static final String KEY_VER1_INIT_RANGE = "init_range";
    private static final String KEY_VER1_KID = "kid";
    private static final String KEY_VER1_LANGUAGE_CODE = "language_code";
    private static final String KEY_VER1_LANGUAGE_ID = "language_id";
    private static final String KEY_VER1_LOUDNESS = "loudness";
    private static final String KEY_VER1_MAIN_URL = "main_url";
    private static final String KEY_VER1_P2PVERIFYURL = "p2p_verify_url";
    private static final String KEY_VER1_PACKET_OFFSET = "pkt_offset";
    private static final String KEY_VER1_PALLAS_FID_LABELS = "pallas_fid_labels";
    private static final String KEY_VER1_PEAK = "peak";
    private static final String KEY_VER1_PLAY_LOAD_MAX_STEP = "play_load_max_step";
    private static final String KEY_VER1_PLAY_LOAD_MIN_STEP = "play_load_min_step";
    private static final String KEY_VER1_PRELOAD_INTERVAL = "preload_interval";
    private static final String KEY_VER1_PRELOAD_SIZE = "preload_size";
    private static final String KEY_VER1_QUALITY = "quality";
    private static final String KEY_VER1_QUALITY_DESC = "quality_desc";
    private static final String KEY_VER1_QUALITY_TYPE = "quality_type";
    private static final String KEY_VER1_REAL_BITRATE = "real_bitrate";
    private static final String KEY_VER1_SEGMENT_SIZE_INFO = "segment_size_info";
    private static final String KEY_VER1_SIZE = "size";
    private static final String KEY_VER1_SOCKET_BUFFER = "socket_buffer";
    private static final String KEY_VER1_SPADEA = "spade_a";
    private static final String KEY_VER1_STOREPATH = "storePath";
    private static final String KEY_VER1_URL_EXPIRED = "url_expire";
    private static final String KEY_VER1_USE_VIDEO_PROXY = "use_video_proxy";
    private static final String KEY_VER1_VHEIGHT = "vheight";
    private static final String KEY_VER1_VOLUME = "volume";
    private static final String KEY_VER1_VTYPE = "vtype";
    private static final String KEY_VER1_VWIDTH = "vwidth";
    private static final String KEY_VER2_AVG_BITRATE = "AvgBitrate";
    private static final String KEY_VER2_BACKUP_URL = "BackupPlayUrl";
    private static final String KEY_VER2_BITRATE = "Bitrate";
    private static final String KEY_VER2_CHECK_INFO = "CheckInfo";
    private static final String KEY_VER2_CODEC_TYPE = "Codec";
    private static final String KEY_VER2_DEFINITION = "Definition";
    private static final String KEY_VER2_DUB_VERSION = "DubVersion";
    private static final String KEY_VER2_FILEID = "FileID";
    private static final String KEY_VER2_FILE_HASH = "FileHash";
    private static final String KEY_VER2_FIRST_MOOF_RANGE = "FirstMoofRange";
    private static final String KEY_VER2_INDEX_RANGE = "IndexRange";
    private static final String KEY_VER2_INIT_RANGE = "InitRange";
    private static final String KEY_VER2_KID = "PlayAuthID";
    private static final String KEY_VER2_LANGUAGE_CODE = "LanguageCode";
    private static final String KEY_VER2_LANGUAGE_ID = "LanguageId";
    private static final String KEY_VER2_LOGO_TYPE = "Logo";
    private static final String KEY_VER2_MAIN_URL = "MainPlayUrl";
    private static final String KEY_VER2_MEDIA_TYPE = "MediaType";
    private static final String KEY_VER2_P2PVERIFYURL = "P2pVerifyURL";
    private static final String KEY_VER2_PLAY_LOAD_MAX_STEP = "PreloadMaxStep";
    private static final String KEY_VER2_PLAY_LOAD_MIN_STEP = "PreloadMinStep";
    private static final String KEY_VER2_PRELOAD_INTERVAL = "PreloadInterval";
    private static final String KEY_VER2_PRELOAD_SIZE = "PreloadSize";
    private static final String KEY_VER2_QUALITY = "Quality";
    private static final String KEY_VER2_QUALITY_TYPE = "QualityType";
    private static final String KEY_VER2_REAL_BITRATE = "RealBitrate";
    private static final String KEY_VER2_SEGMENT_SIZE_INFO = "SegmentSizeInfo";
    private static final String KEY_VER2_SIZE = "Size";
    private static final String KEY_VER2_SPADEA = "PlayAuth";
    private static final String KEY_VER2_VHEIGHT = "Height";
    private static final String KEY_VER2_VTYPE = "Format";
    private static final String KEY_VER2_VWIDTH = "Width";
    private static final String KEY_VER4_AVG_BITRATE = "AvgBitrate";
    private static final String KEY_VER4_BACKUP_URL = "BackupPlayUrl";
    private static final String KEY_VER4_BACKUP_URL_EXPIRE = "BackupUrlExpire";
    private static final String KEY_VER4_BITRATE = "Bitrate";
    private static final String KEY_VER4_CHECK_INFO = "CheckInfo";
    private static final String KEY_VER4_CODEC_TYPE = "Codec";
    private static final String KEY_VER4_DEFINITION = "Definition";
    private static final String KEY_VER4_FILEID = "FileId";
    private static final String KEY_VER4_FILE_TYPE = "FileType";
    private static final String KEY_VER4_FIRST_MOOF_RANGE = "FirstMoofRange";
    private static final String KEY_VER4_INDEX_RANGE = "IndexRange";
    private static final String KEY_VER4_INIT_RANGE = "InitRange";
    private static final String KEY_VER4_LOGO_TYPE = "LogoType";
    private static final String KEY_VER4_LOUDNESS = "Loudness";
    private static final String KEY_VER4_MAIN_URL = "MainPlayUrl";
    private static final String KEY_VER4_MAIN_URL_EXPIRE = "MainUrlExpire";
    private static final String KEY_VER4_MD5 = "Md5";
    private static final String KEY_VER4_PEAK = "Peak";
    private static final String KEY_VER4_PLAYAUTH = "PlayAuth";
    private static final String KEY_VER4_PLAYAUTHID = "PlayAuthId";
    private static final String KEY_VER4_QUALITY = "Quality";
    private static final String KEY_VER4_QUALITY_TYPE = "QualityType";
    private static final String KEY_VER4_REAL_BITRATE = "RealBitrate";
    private static final String KEY_VER4_SEGMENT_SIZE_INFO = "SegmentSizeInfo";
    private static final String KEY_VER4_SIZE = "Size";
    private static final String KEY_VER4_VHEIGHT = "Height";
    private static final String KEY_VER4_VOLUME = "Volume";
    private static final String KEY_VER4_VTYPE = "Format";
    private static final String KEY_VER4_VWIDTH = "Width";
    public static final int VALUE_VIDEO_HEAD_SIZE = 38;
    public static final int VALUE_VIDEO_INFO_AI_BARRAGE_URL = 43;
    public static final int VALUE_VIDEO_INFO_AVG_BITRATE = 52;
    public static final int VALUE_VIDEO_INFO_BACKUP_URL_1 = 17;
    public static final int VALUE_VIDEO_INFO_BACKUP_URL_2 = 23;
    public static final int VALUE_VIDEO_INFO_BACKUP_URL_3 = 24;
    public static final int VALUE_VIDEO_INFO_BACKUP_URL_EXPIRE = 50;
    public static final int VALUE_VIDEO_INFO_BARRAGE_OFFSET = 33;
    public static final int VALUE_VIDEO_INFO_BARRAGE_URL = 37;
    public static final int VALUE_VIDEO_INFO_BITRATE = 3;
    public static final int VALUE_VIDEO_INFO_CHECK_INFO = 31;
    public static final int VALUE_VIDEO_INFO_CODEC_TYPE = 8;
    public static final int VALUE_VIDEO_INFO_DEFINITION = 7;
    public static final int VALUE_VIDEO_INFO_DURATION = 27;
    public static final int VALUE_VIDEO_INFO_ENCRYPT = 4;
    public static final int VALUE_VIDEO_INFO_FILEID = 28;
    public static final int VALUE_VIDEO_INFO_FILE_HASH = 15;
    public static final int VALUE_VIDEO_INFO_FIRST_MOOF_RANGE = 47;
    public static final int VALUE_VIDEO_INFO_FORMAT_TYPE = 6;
    public static final int VALUE_VIDEO_INFO_GBR = 20;
    public static final int VALUE_VIDEO_INFO_INDEX_RANGE = 35;
    public static final int VALUE_VIDEO_INFO_INFO_ID = 42;
    public static final int VALUE_VIDEO_INFO_INIT_RANGE = 34;
    public static final int VALUE_VIDEO_INFO_KID = 36;
    public static final int VALUE_VIDEO_INFO_LOGO_TYPE = 19;
    public static final int VALUE_VIDEO_INFO_LOUDNESS = 39;
    public static final int VALUE_VIDEO_INFO_MAIN_URL = 0;
    public static final int VALUE_VIDEO_INFO_MAIN_URL_EXPIRE = 49;
    public static final int VALUE_VIDEO_INFO_P2PVERIFYURL = 29;
    public static final int VALUE_VIDEO_INFO_PEAK = 40;
    public static final int VALUE_VIDEO_INFO_PLAY_AUTH = 5;
    public static final int VALUE_VIDEO_INFO_PRELOAD_INTERVAL = 13;
    public static final int VALUE_VIDEO_INFO_PRELOAD_MAX_STEP = 11;
    public static final int VALUE_VIDEO_INFO_PRELOAD_MIN_STEP = 10;
    public static final int VALUE_VIDEO_INFO_PRELOAD_SIZE = 9;
    public static final int VALUE_VIDEO_INFO_QUALITY = 18;
    public static final int VALUE_VIDEO_INFO_QUALITY_DESC = 32;
    public static final int VALUE_VIDEO_INFO_QUALITY_TYPE = 41;
    public static final int VALUE_VIDEO_INFO_REAL_BITRATE = 44;
    public static final int VALUE_VIDEO_INFO_RESOLUTION = 48;
    public static final int VALUE_VIDEO_INFO_RESOLUTION_FILEID = 46;
    public static final int VALUE_VIDEO_INFO_RESOLUTION_STR = 26;
    public static final int VALUE_VIDEO_INFO_SEGMENT_SIZE_INFO = 53;
    public static final int VALUE_VIDEO_INFO_SIZE = 12;
    public static final int VALUE_VIDEO_INFO_SOCKET_BUFFER = 22;
    public static final int VALUE_VIDEO_INFO_STORE_PATH = 25;
    public static final int VALUE_VIDEO_INFO_URLEXPIRED = 30;
    public static final int VALUE_VIDEO_INFO_URLS = 16;
    public static final int VALUE_VIDEO_INFO_URL_EXPIRES = 51;
    public static final int VALUE_VIDEO_INFO_USE_VIDEO_PROXY = 21;
    public static final int VALUE_VIDEO_INFO_VHEIGHT = 2;
    public static final int VALUE_VIDEO_INFO_VWIDTH = 1;
    public static final int VALUE_VIDEO_VIEWPORT = 45;
    public boolean isAutoDefinition;
    private String mAIBarrageUrl;
    private int mAvgBitrate;
    public String mBackupUrl1;
    private String mBackupUrl1Ver2;
    public String mBackupUrl2;
    public String mBackupUrl3;
    public String mBackupUrlExpire;
    private String mBarrageMaskOffset;
    private String mBarrageMaskUrl;
    public int mBitrate;
    private MediaBitrateFitterInfo mBitrateFitterInfo;
    private int mBitrateVer2;
    private String mCheckInfo;
    public String mCodecType;
    private String mCodecTypeVer2;
    public String mDefinition;
    private String mDefinitionVer2;
    public String mDubVersion;
    public boolean mEncrypt;
    public String mFileHash;
    private String mFileHashVer2;
    private String mFileId;
    private String mFirstMoofRange;
    public int mGbr;
    private String mIndexRange;
    public int mInfoId;
    private String mInitRange;
    private String mKeyseed;
    private String mKid;
    public String mLanguageCode;
    public int mLanguageId;
    private String mLogoType;
    private String mLogoTypeVer2;
    public float mLoudness;
    public String mMainUrl;
    public String mMainUrlExpire;
    private String mMainUrlVer2;
    private int mMediaType;
    private String mP2pVerifyUrl;
    public HashMap<Double, Long> mPacketOffset;
    public float mPeak;
    protected JSONObject mPreloadGear;
    public String mQuality;
    private String mQualityDesc;
    private int mQualityType;
    private String mQualityVer2;
    public int mRealBitrate;
    private Resolution mResolution;
    private String mResolutionStr;
    private String mSegmentSizeInfo;
    public long mSize;
    private long mSizeVer2;
    private int mSocketBuffer;
    public String mSpadea;
    private String mSpadeaVer2;
    public String mStorePath;
    public String[] mURLExpires;
    public String[] mURLs;
    private String[] mURLsVer2;
    private long mUrlExpiredT;
    public int mVHeight;
    private int mVHeightVer2;
    public String mVType;
    private String mVTypeVer2;
    public int mVWidth;
    private int mVWidthVer2;
    private int mVersion = 1;
    public int mVideoDuration;
    public int playLoadMaxStep;
    public int playLoadMinStep;
    private int preLoadIntervalVer2;
    private int preLoadMaxStepVer2;
    private int preLoadMinStepVer2;
    private int preLoadSizeVer2;
    public int preloadInterval;
    public int preloadSize;
    public int useVideoProxy;

    @Deprecated
    public VideoInfo(String str) {
        Resolution resolution = Resolution.Standard;
        this.mResolution = resolution;
        this.mResolutionStr = resolution.toString(VideoRef.TYPE_VIDEO);
        this.mFileId = null;
        this.mP2pVerifyUrl = null;
        this.mUrlExpiredT = 0L;
        this.mEncrypt = false;
        this.mSpadea = null;
        this.mSize = 0L;
        this.mVideoDuration = 0;
        this.preloadInterval = 0;
        this.useVideoProxy = 1;
        this.mSocketBuffer = 0;
        this.isAutoDefinition = false;
        this.mMediaType = 0;
        this.mPreloadGear = null;
        this.mLoudness = 0.0f;
        this.mPeak = 0.0f;
        this.mQualityType = 0;
        this.mInfoId = -1;
        this.mLanguageId = -1;
        this.mLanguageCode = "";
        this.mDubVersion = "";
        this.mURLsVer2 = null;
        this.mSpadeaVer2 = null;
        this.mCodecTypeVer2 = null;
        this.preLoadIntervalVer2 = 0;
        this.mSizeVer2 = 0L;
        this.mLogoTypeVer2 = null;
        this.mQualityVer2 = null;
        this.mBackupUrl1Ver2 = null;
        this.mQualityDesc = null;
        this.mBarrageMaskOffset = null;
        this.mBitrateFitterInfo = null;
        this.mMainUrlExpire = "";
        this.mBackupUrlExpire = "";
        this.mURLExpires = null;
        this.mKeyseed = str;
    }

    private void externalizablePallasLabels(String str) {
        String optString;
        if (str != null && !TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("preloadsize") && (optString = jSONObject.optString("preloadsize")) != null && !TextUtils.isEmpty(optString)) {
                    this.mPreloadGear = new JSONObject(optString);
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
    }

    public VideoInfo copyInfo() {
        VideoInfo videoInfo = new VideoInfo(this.mKeyseed);
        videoInfo.mVersion = this.mVersion;
        videoInfo.mURLs = this.mURLs;
        videoInfo.mURLExpires = this.mURLExpires;
        videoInfo.mMainUrlExpire = this.mMainUrlExpire;
        videoInfo.mBackupUrlExpire = this.mBackupUrlExpire;
        videoInfo.mMainUrl = this.mMainUrl;
        videoInfo.mBackupUrl1 = this.mBackupUrl1;
        videoInfo.mBackupUrl2 = this.mBackupUrl2;
        videoInfo.mBackupUrl3 = this.mBackupUrl3;
        videoInfo.mVWidth = this.mVWidth;
        videoInfo.mVHeight = this.mVHeight;
        videoInfo.mEncrypt = this.mEncrypt;
        videoInfo.mSpadea = this.mSpadea;
        videoInfo.mGbr = this.mGbr;
        videoInfo.mStorePath = this.mStorePath;
        videoInfo.mVType = this.mVType;
        videoInfo.mCodecType = this.mCodecType;
        videoInfo.mFileHash = this.mFileHash;
        videoInfo.mDefinition = this.mDefinition;
        videoInfo.preloadSize = this.preloadSize;
        videoInfo.playLoadMinStep = this.playLoadMinStep;
        videoInfo.playLoadMaxStep = this.playLoadMaxStep;
        videoInfo.mSize = this.mSize;
        videoInfo.mVideoDuration = this.mVideoDuration;
        videoInfo.preloadInterval = this.preloadInterval;
        videoInfo.useVideoProxy = this.useVideoProxy;
        videoInfo.mSocketBuffer = this.mSocketBuffer;
        videoInfo.isAutoDefinition = this.isAutoDefinition;
        videoInfo.mQuality = this.mQuality;
        videoInfo.mLogoType = this.mLogoType;
        videoInfo.mFileHash = this.mFileHash;
        videoInfo.mCheckInfo = this.mCheckInfo;
        videoInfo.mInitRange = this.mInitRange;
        videoInfo.mIndexRange = this.mIndexRange;
        videoInfo.mFirstMoofRange = this.mFirstMoofRange;
        videoInfo.mSegmentSizeInfo = this.mSegmentSizeInfo;
        videoInfo.mKid = this.mKid;
        videoInfo.mQualityType = this.mQualityType;
        videoInfo.mBitrateFitterInfo = this.mBitrateFitterInfo;
        videoInfo.mURLsVer2 = this.mURLsVer2;
        videoInfo.mMainUrlVer2 = this.mMainUrlVer2;
        videoInfo.mVWidthVer2 = this.mVWidthVer2;
        videoInfo.mVHeightVer2 = this.mVHeightVer2;
        videoInfo.mSpadeaVer2 = this.mSpadeaVer2;
        videoInfo.mVTypeVer2 = this.mVTypeVer2;
        videoInfo.mCodecTypeVer2 = this.mCodecTypeVer2;
        videoInfo.mDefinitionVer2 = this.mDefinitionVer2;
        videoInfo.preLoadSizeVer2 = this.preLoadSizeVer2;
        videoInfo.preLoadMinStepVer2 = this.preLoadMinStepVer2;
        videoInfo.preLoadMaxStepVer2 = this.preLoadMaxStepVer2;
        videoInfo.mSizeVer2 = this.mSizeVer2;
        videoInfo.preLoadIntervalVer2 = this.preLoadIntervalVer2;
        videoInfo.mLogoTypeVer2 = this.mLogoTypeVer2;
        videoInfo.mFileId = this.mFileId;
        videoInfo.mP2pVerifyUrl = this.mP2pVerifyUrl;
        videoInfo.mMediaType = this.mMediaType;
        videoInfo.mFileHashVer2 = this.mFileHashVer2;
        videoInfo.mRealBitrate = this.mRealBitrate;
        videoInfo.mInfoId = this.mInfoId;
        videoInfo.mBitrate = this.mBitrate;
        videoInfo.mQualityVer2 = this.mQualityVer2;
        videoInfo.mBackupUrl1Ver2 = this.mBackupUrl1Ver2;
        videoInfo.mBitrateVer2 = this.mBitrateVer2;
        videoInfo.mAvgBitrate = this.mAvgBitrate;
        return videoInfo;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:53:0x0167
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public void extractFields(org.json.JSONObject r24) {
        /*
            Method dump skipped, instructions count: 2779
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.model.VideoInfo.extractFields(org.json.JSONObject):void");
    }

    @Override // com.ss.ttvideoengine.model.IVideoInfo
    public int fromMediaInfoJsonObject(JSONObject jSONObject) {
        return -1;
    }

    @Override // com.ss.ttvideoengine.model.IVideoInfo
    @Nullable
    public MediaBitrateFitterInfo getBitrateFitterInfo() {
        return this.mBitrateFitterInfo;
    }

    @Override // com.ss.ttvideoengine.model.IVideoInfo
    public int getMediatype() {
        return this.mMediaType;
    }

    public int getPreloadInterval() {
        int i10 = this.mVersion;
        if (i10 != 2 && i10 != 4) {
            return this.preloadInterval;
        }
        return this.preLoadIntervalVer2;
    }

    @Override // com.ss.ttvideoengine.model.IVideoInfo
    public Resolution getResolution() {
        return this.mResolution;
    }

    public int getSocketBuffer() {
        int i10 = this.mVersion;
        if (i10 != 2 && i10 != 4) {
            return this.mSocketBuffer;
        }
        return 0;
    }

    @Override // com.ss.ttvideoengine.model.IVideoInfo
    public boolean getValueBool(int i10) {
        if (this.mVersion != 1 || i10 != 4) {
            return false;
        }
        return this.mEncrypt;
    }

    @Override // com.ss.ttvideoengine.model.IVideoInfo
    public float getValueFloat(int i10) {
        if (i10 != 39) {
            if (i10 != 40) {
                return 0.0f;
            }
            return this.mPeak;
        }
        return this.mLoudness;
    }

    @Override // com.ss.ttvideoengine.model.IVideoInfo
    public int getValueInt(int i10) {
        if (i10 == 38) {
            MediaBitrateFitterInfo mediaBitrateFitterInfo = this.mBitrateFitterInfo;
            if (mediaBitrateFitterInfo != null) {
                return mediaBitrateFitterInfo.getHeaderSize();
            }
            return 0;
        } else if (this.mVersion == 2) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 13) {
                            if (i10 != 44) {
                                if (i10 != 52) {
                                    if (i10 != 41) {
                                        if (i10 != 42) {
                                            switch (i10) {
                                                case 9:
                                                    return this.preLoadSizeVer2;
                                                case 10:
                                                    return this.preLoadMinStepVer2;
                                                case 11:
                                                    return this.preLoadMaxStepVer2;
                                                default:
                                                    return -1;
                                            }
                                        }
                                        return this.mInfoId;
                                    }
                                    return this.mQualityType;
                                }
                                return this.mAvgBitrate;
                            }
                            return this.mRealBitrate;
                        }
                        return this.preLoadIntervalVer2;
                    }
                    return this.mBitrateVer2;
                }
                return this.mVHeightVer2;
            }
            return this.mVWidthVer2;
        } else if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 13) {
                        if (i10 != 27) {
                            if (i10 != 44) {
                                if (i10 != 52) {
                                    if (i10 != 41) {
                                        if (i10 != 42) {
                                            switch (i10) {
                                                case 9:
                                                    return this.preloadSize;
                                                case 10:
                                                    return this.playLoadMinStep;
                                                case 11:
                                                    return this.playLoadMaxStep;
                                                default:
                                                    switch (i10) {
                                                        case 20:
                                                            return this.mGbr;
                                                        case 21:
                                                            return this.useVideoProxy;
                                                        case 22:
                                                            return this.mSocketBuffer;
                                                        default:
                                                            return -1;
                                                    }
                                            }
                                        }
                                        return this.mInfoId;
                                    }
                                    return this.mQualityType;
                                }
                                return this.mAvgBitrate;
                            }
                            return this.mRealBitrate;
                        }
                        return this.mVideoDuration;
                    }
                    return this.preloadInterval;
                }
                return this.mBitrate;
            }
            return this.mVHeight;
        } else {
            return this.mVWidth;
        }
    }

    @Override // com.ss.ttvideoengine.model.IVideoInfo
    public long getValueLong(int i10) {
        if (this.mVersion == 2) {
            if (i10 != 12) {
                return -1L;
            }
            return this.mSizeVer2;
        } else if (i10 != 12) {
            if (i10 != 30) {
                return -1L;
            }
            return this.mUrlExpiredT;
        } else {
            return this.mSize;
        }
    }

    @Override // com.ss.ttvideoengine.model.IVideoInfo
    public String getValueStr(int i10) {
        if (i10 != 26) {
            if (i10 != 31) {
                if (i10 != 42) {
                    if (i10 != 53) {
                        if (i10 != 28) {
                            if (i10 != 29) {
                                if (i10 != 47) {
                                    if (i10 != 48) {
                                        switch (i10) {
                                            case 34:
                                                return this.mInitRange;
                                            case 35:
                                                return this.mIndexRange;
                                            case 36:
                                                return this.mKid;
                                            default:
                                                if (this.mVersion == 2) {
                                                    if (i10 != 0) {
                                                        if (i10 != 15) {
                                                            if (i10 != 5) {
                                                                if (i10 != 6) {
                                                                    if (i10 != 7) {
                                                                        if (i10 != 8) {
                                                                            switch (i10) {
                                                                                case 17:
                                                                                    return this.mBackupUrl1Ver2;
                                                                                case 18:
                                                                                    return this.mQualityVer2;
                                                                                case 19:
                                                                                    return this.mLogoTypeVer2;
                                                                                default:
                                                                                    return "";
                                                                            }
                                                                        }
                                                                        return this.mCodecTypeVer2;
                                                                    }
                                                                    return this.mDefinitionVer2;
                                                                }
                                                                return this.mVTypeVer2;
                                                            }
                                                            return this.mSpadeaVer2;
                                                        }
                                                        return this.mFileHashVer2;
                                                    }
                                                    return this.mMainUrlVer2;
                                                } else if (i10 != 0) {
                                                    if (i10 != 15) {
                                                        if (i10 != 37) {
                                                            if (i10 != 43) {
                                                                if (i10 != 5) {
                                                                    if (i10 != 6) {
                                                                        if (i10 != 7) {
                                                                            if (i10 != 8) {
                                                                                if (i10 != 32) {
                                                                                    if (i10 != 33) {
                                                                                        if (i10 != 49) {
                                                                                            if (i10 != 50) {
                                                                                                switch (i10) {
                                                                                                    case 17:
                                                                                                        return this.mBackupUrl1;
                                                                                                    case 18:
                                                                                                        return this.mQuality;
                                                                                                    case 19:
                                                                                                        return this.mLogoType;
                                                                                                    default:
                                                                                                        switch (i10) {
                                                                                                            case 23:
                                                                                                                return this.mBackupUrl2;
                                                                                                            case 24:
                                                                                                                return this.mBackupUrl3;
                                                                                                            case 25:
                                                                                                                return this.mStorePath;
                                                                                                            default:
                                                                                                                return "";
                                                                                                        }
                                                                                                }
                                                                                            }
                                                                                            return this.mBackupUrlExpire;
                                                                                        }
                                                                                        return this.mMainUrlExpire;
                                                                                    }
                                                                                    return this.mBarrageMaskOffset;
                                                                                }
                                                                                return this.mQualityDesc;
                                                                            }
                                                                            return this.mCodecType;
                                                                        }
                                                                        return this.mDefinition;
                                                                    }
                                                                    return this.mVType;
                                                                }
                                                                return this.mSpadea;
                                                            }
                                                            return this.mAIBarrageUrl;
                                                        }
                                                        return this.mBarrageMaskUrl;
                                                    }
                                                    return this.mFileHash;
                                                } else {
                                                    return this.mMainUrl;
                                                }
                                        }
                                    }
                                    return this.mResolution.toString(VideoRef.TYPE_VIDEO);
                                }
                                return this.mFirstMoofRange;
                            }
                            return this.mP2pVerifyUrl;
                        }
                        return this.mFileId;
                    }
                    return this.mSegmentSizeInfo;
                }
                return "" + this.mInfoId;
            }
            return this.mCheckInfo;
        }
        return this.mResolutionStr;
    }

    @Override // com.ss.ttvideoengine.model.IVideoInfo
    public String[] getValueStrArr(int i10) {
        if (this.mVersion == 2) {
            if (i10 != 16) {
                return new String[0];
            }
            return this.mURLsVer2;
        } else if (i10 != 16) {
            if (i10 != 51) {
                return new String[0];
            }
            return this.mURLExpires;
        } else {
            return this.mURLs;
        }
    }

    public int getVersion() {
        return this.mVersion;
    }

    public boolean isUseVideoProxy() {
        int i10 = this.mVersion;
        if (i10 == 2 || i10 == 4 || this.useVideoProxy != 1) {
            return false;
        }
        return true;
    }

    public void parseFromPb(VideoModelPb.Audio audio) {
    }

    public void setMediaType(int i10) {
        this.mMediaType = i10;
    }

    public void setResolution(Resolution resolution) {
        this.mResolution = resolution;
    }

    public void setResolutionBaseMap(HashMap<String, Resolution> hashMap) {
        String str;
        if (hashMap != null && hashMap.size() > 0) {
            int i10 = this.mMediaType;
            if (i10 == VideoRef.TYPE_AUDIO) {
                str = getValueStr(18);
                if (TextUtils.isEmpty(str)) {
                    str = Resolution.Standard.toString(this.mMediaType);
                }
            } else if (i10 == VideoRef.TYPE_VIDEO) {
                str = getValueStr(7);
                if (TextUtils.isEmpty(str)) {
                    str = Resolution.Standard.toString(this.mMediaType);
                }
            } else {
                str = null;
            }
            Resolution resolution = hashMap.get(str);
            this.mResolution = resolution;
            if (resolution == null) {
                this.mResolution = Resolution.Standard;
            }
        }
    }

    public void setValue(int i10, String[] strArr) {
        if (i10 != 16) {
            return;
        }
        this.mURLs = strArr;
        this.mURLsVer2 = strArr;
    }

    public void setVersion(int i10) {
        this.mVersion = i10;
    }

    @Override // com.ss.ttvideoengine.model.IVideoInfo
    @Nullable
    public JSONObject toBashJsonObject() {
        String str;
        int valueInt;
        try {
            JSONObject jSONObject = new JSONObject();
            String[] valueStrArr = getValueStrArr(16);
            if (valueStrArr != null && valueStrArr.length > 0) {
                String valueStr = getValueStr(34);
                String valueStr2 = getValueStr(6);
                if (!TextUtils.isEmpty(valueStr2) && valueStr2.equals(TTVideoEngineInterface.FORMAT_TYPE_MP4) && (valueInt = getValueInt(38)) > 0) {
                    valueStr = "0-" + (valueInt - 1);
                }
                jSONObject.put(KEY_VER1_MAIN_URL, valueStrArr[0]);
                if (valueStrArr.length > 1) {
                    str = valueStrArr[1];
                } else {
                    str = "";
                }
                jSONObject.put(KEY_VER1_BACKUP_URL_1, str);
                jSONObject.put("bitrate", getValueInt(3));
                jSONObject.put(KEY_VER1_VWIDTH, getValueInt(1));
                jSONObject.put(KEY_VER1_VHEIGHT, getValueInt(2));
                jSONObject.put(KEY_VER1_INIT_RANGE, valueStr);
                jSONObject.put(KEY_VER1_INDEX_RANGE, getValueStr(35));
                jSONObject.put(KEY_VER1_FIRST_MOOF_RANGE, getValueStr(47));
                jSONObject.put(KEY_VER1_SEGMENT_SIZE_INFO, getValueStr(53));
                jSONObject.put(KEY_VER1_CHECK_INFO, getValueStr(31));
                jSONObject.put(KEY_VER1_KID, getValueStr(36));
                jSONObject.put("file_hash", TTHelper.encodeUrl(getValueStr(15)));
                jSONObject.put(KEY_VER1_LOUDNESS, getValueFloat(39));
                jSONObject.put(KEY_VER1_PEAK, getValueFloat(40));
                jSONObject.put("info_id", getValueInt(42));
                return jSONObject;
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.ttvideoengine.model.IVideoInfo
    public Map<String, Object> toMediaInfo() {
        String str;
        int i10;
        HashMap hashMap = new HashMap();
        hashMap.put("file_id", getValueStr(28));
        if (getMediatype() == VideoRef.TYPE_VIDEO) {
            str = "video";
        } else {
            str = "audio";
        }
        hashMap.put("media_type", str);
        hashMap.put(BarrageMaskInfo.KEY_MASK_FILE_SIZE, Long.valueOf(getValueLong(12)));
        if (1 == EngineGlobalConfig.getInstance().getEnableUseRealBitrate()) {
            if (getValueInt(44) > 0) {
                hashMap.put("bitrate", Integer.valueOf(getValueInt(44)));
            } else {
                hashMap.put("bitrate", Integer.valueOf(getValueInt(3)));
            }
        } else {
            hashMap.put("bitrate", Integer.valueOf(getValueInt(3)));
        }
        hashMap.put(KEY_VER1_REAL_BITRATE, Integer.valueOf(getValueInt(44)));
        hashMap.put(KEY_VER1_AVG_BITRATE, Integer.valueOf(getValueInt(52)));
        hashMap.put("quality", getValueStr(18));
        hashMap.put(KEY_VER1_DEFINITION, getValueStr(7));
        hashMap.put("video_resolution", getValueStr(48));
        Resolution resolution = this.mResolution;
        if (resolution != null) {
            i10 = resolution.getIndex();
        } else {
            i10 = 0;
        }
        hashMap.put("resolution", Integer.valueOf(i10));
        hashMap.put("width", Integer.valueOf(getValueInt(1)));
        hashMap.put("height", Integer.valueOf(getValueInt(2)));
        hashMap.put("codec", getValueStr(8));
        hashMap.put("urls", getValueStrArr(16));
        hashMap.put("file_hash", getValueStr(15));
        hashMap.put(MediaBitrateFitterInfo.KEY_FITTER_HEADER_SIZE, Integer.valueOf(getValueInt(38)));
        hashMap.put("quality_desc", getValueStr(32));
        hashMap.put(KEY_VER1_FIRST_MOOF_RANGE, getValueStr(47));
        hashMap.put(KEY_VER1_SEGMENT_SIZE_INFO, getValueStr(53));
        JSONObject jSONObject = this.mPreloadGear;
        if (jSONObject != null) {
            hashMap.put("preload_gear_data", jSONObject);
        }
        String valueStr = getValueStr(29);
        if (valueStr == null) {
            valueStr = "";
        }
        hashMap.put("p2p_crc", TTHelper.encodeUrl(valueStr));
        return hashMap;
    }

    public void parseFromPb(VideoModelPb.Video video) {
    }

    public void setValue(int i10, float f10) {
        if (i10 == 39) {
            this.mLoudness = f10;
        } else if (i10 != 40) {
        } else {
            this.mPeak = f10;
        }
    }

    public void setValue(int i10, boolean z10) {
        if (i10 != 4) {
            return;
        }
        this.mEncrypt = z10;
    }

    public void setValue(int i10, long j10) {
        if (i10 != 12) {
            return;
        }
        this.mSize = j10;
        this.mSizeVer2 = j10;
    }

    public void setValue(int i10, String str) {
        if (i10 == 0) {
            this.mMainUrlVer2 = str;
            this.mMainUrl = str;
        } else if (i10 == 15) {
            this.mFileHashVer2 = str;
            this.mFileHash = str;
        } else if (i10 == 5) {
            this.mSpadeaVer2 = str;
            this.mSpadea = str;
        } else if (i10 == 6) {
            this.mVTypeVer2 = str;
            this.mVType = str;
        } else if (i10 == 7) {
            this.mDefinitionVer2 = str;
            this.mDefinition = str;
        } else if (i10 == 8) {
            this.mCodecTypeVer2 = str;
            this.mCodecType = str;
        } else if (i10 == 49) {
            this.mMainUrlExpire = str;
        } else if (i10 != 50) {
            switch (i10) {
                case 17:
                    this.mBackupUrl1Ver2 = str;
                    this.mBackupUrl1 = str;
                    return;
                case 18:
                    this.mQualityVer2 = str;
                    this.mQuality = str;
                    return;
                case 19:
                    this.mLogoTypeVer2 = str;
                    this.mLogoType = str;
                    return;
                default:
                    switch (i10) {
                        case 23:
                            this.mBackupUrl2 = str;
                            return;
                        case 24:
                            this.mBackupUrl3 = str;
                            return;
                        case 25:
                            this.mStorePath = str;
                            return;
                        case 26:
                            this.mResolutionStr = str;
                            return;
                        default:
                            return;
                    }
            }
        } else {
            this.mBackupUrlExpire = str;
        }
    }

    public void setValue(int i10, int i11) {
        if (i10 == 1) {
            this.mVWidth = i11;
            this.mVWidthVer2 = i11;
        } else if (i10 == 2) {
            this.mVHeight = i11;
            this.mVHeightVer2 = i11;
        } else if (i10 == 3) {
            this.mBitrate = i11;
            this.mBitrateVer2 = i11;
        } else if (i10 == 13) {
            this.preloadInterval = i11;
            this.preLoadIntervalVer2 = i11;
        } else if (i10 != 27) {
            switch (i10) {
                case 9:
                    this.preloadSize = i11;
                    this.preLoadSizeVer2 = i11;
                    return;
                case 10:
                    this.playLoadMinStep = i11;
                    return;
                case 11:
                    this.playLoadMaxStep = i11;
                    return;
                default:
                    switch (i10) {
                        case 20:
                            this.mGbr = i11;
                            return;
                        case 21:
                            this.useVideoProxy = i11;
                            return;
                        case 22:
                            this.mSocketBuffer = i11;
                            return;
                        default:
                            return;
                    }
            }
        } else {
            this.mVideoDuration = i11;
        }
    }
}
