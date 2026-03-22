package com.ss.ttvideoengine.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class BareVideoInfo extends VideoInfo {
    private static final String TAG = "TTVideoEngine.BareVideoInfo";
    private List<BareGearInfo> mBareGearInfo;
    private long mBitrate;
    private Builder mBuilder;
    private String mCheckInfo;
    private String mCodecType;
    private long mDuration;
    private long mExpire;
    private String mFileHash;
    private String mFileId;
    private String mFormat;
    private String mGear;
    private int mMediaType;
    private String mQuality;
    private String mQualityDesc;
    private Resolution mResolution;
    private String mSegmentSizeInfo;
    private long mSize;
    private String mSpadea;
    private List<String> mUrlExpires;
    private List<String> mUrls;
    private int mVHeight;
    private int mVWidth;

    /* loaded from: classes6.dex */
    public static class BareGearInfo {
        public int key;
        public GearType mGearType;
        public int value;

        BareGearInfo(GearType gearType, int i10, int i11) {
            this.mGearType = gearType;
            this.key = i10;
            this.value = i11;
        }
    }

    /* loaded from: classes6.dex */
    public static class Builder {
        private int mMediaType = 0;
        private int mVWidth = 0;
        private int mVHeight = 0;
        private long mBitrate = 0;
        private long mDuration = 0;
        private long mSize = 0;
        private long mExpire = -1;
        private String mFileHash = null;
        private String mFileId = null;
        private String mCodecType = null;
        private String mFormat = null;
        private String mCheckInfo = null;
        private Resolution mResolution = null;
        private String mQuality = null;
        private String mQualityDesc = null;
        private String mGear = null;
        private String mSpadea = null;
        private String mSegmentSizeInfo = null;
        private List<String> mUrls = null;
        private List<String> mUrlExpires = null;
        private List<BareGearInfo> mBareGearInfo = null;

        public Builder addUrl(String str) {
            if (this.mUrls == null) {
                this.mUrls = new ArrayList();
            }
            this.mUrls.add(str);
            return this;
        }

        public Builder addUrlExpire(String str) {
            if (this.mUrlExpires == null) {
                this.mUrlExpires = new ArrayList();
            }
            this.mUrlExpires.add(str);
            return this;
        }

        public Builder bitrate(long j10) {
            this.mBitrate = j10;
            return this;
        }

        public BareVideoInfo build() {
            BareVideoInfo bareVideoInfo = new BareVideoInfo();
            bareVideoInfo.mMediaType = this.mMediaType;
            bareVideoInfo.mVWidth = this.mVWidth;
            bareVideoInfo.mVHeight = this.mVHeight;
            bareVideoInfo.mBitrate = this.mBitrate;
            bareVideoInfo.mDuration = this.mDuration;
            bareVideoInfo.mSize = this.mSize;
            bareVideoInfo.mExpire = this.mExpire;
            bareVideoInfo.mFileHash = this.mFileHash;
            bareVideoInfo.mFileId = this.mFileId;
            bareVideoInfo.mCodecType = this.mCodecType;
            bareVideoInfo.mFormat = this.mFormat;
            bareVideoInfo.mCheckInfo = this.mCheckInfo;
            bareVideoInfo.mResolution = this.mResolution;
            bareVideoInfo.mQuality = this.mQuality;
            bareVideoInfo.mQualityDesc = this.mQualityDesc;
            bareVideoInfo.mGear = this.mGear;
            bareVideoInfo.mSpadea = this.mSpadea;
            bareVideoInfo.mUrls = this.mUrls;
            bareVideoInfo.mUrlExpires = this.mUrlExpires;
            bareVideoInfo.mBareGearInfo = this.mBareGearInfo;
            bareVideoInfo.mSegmentSizeInfo = this.mSegmentSizeInfo;
            bareVideoInfo.mBuilder = this;
            return bareVideoInfo;
        }

        public Builder checkInfo(String str) {
            this.mCheckInfo = str;
            return this;
        }

        public Builder codecType(String str) {
            this.mCodecType = str;
            return this;
        }

        public Builder duration(long j10) {
            this.mDuration = j10;
            return this;
        }

        public Builder expire(long j10) {
            this.mExpire = j10;
            return this;
        }

        public Builder fileHash(String str) {
            this.mFileHash = str;
            return this;
        }

        public Builder fileId(String str) {
            this.mFileId = str;
            return this;
        }

        public Builder format(String str) {
            this.mFormat = str;
            return this;
        }

        public Builder gear(String str) {
            this.mGear = str;
            return this;
        }

        public Builder gearInfo(GearType gearType, int i10, int i11) {
            if (this.mBareGearInfo == null) {
                this.mBareGearInfo = new ArrayList();
            }
            this.mBareGearInfo.add(new BareGearInfo(gearType, i10, i11));
            return this;
        }

        public Builder mediaType(int i10) {
            this.mMediaType = i10;
            return this;
        }

        public Builder quality(String str) {
            this.mQuality = str;
            return this;
        }

        public Builder qualityDesc(String str) {
            this.mQualityDesc = str;
            return this;
        }

        public Builder resolution(Resolution resolution) {
            this.mResolution = resolution;
            return this;
        }

        public Builder segmentSizeInfo(String str) {
            this.mSegmentSizeInfo = str;
            return this;
        }

        public Builder size(long j10) {
            this.mSize = j10;
            return this;
        }

        public Builder spadea(String str) {
            this.mSpadea = str;
            return this;
        }

        public Builder urlExpires(List<String> list) {
            this.mUrlExpires = list;
            return this;
        }

        public Builder urls(List<String> list) {
            this.mUrls = list;
            return this;
        }

        public Builder vHeight(int i10) {
            this.mVHeight = i10;
            return this;
        }

        public Builder vWidth(int i10) {
            this.mVWidth = i10;
            return this;
        }
    }

    /* loaded from: classes6.dex */
    public enum GearType {
        Frame(0),
        TimeInSecond(1);
        
        private int gearType;

        GearType(int i10) {
            this.gearType = i10;
        }

        public int getGearType() {
            return this.gearType;
        }

        public void setGearType(int i10) {
            this.gearType = i10;
        }
    }

    @Override // com.ss.ttvideoengine.model.VideoInfo, com.ss.ttvideoengine.model.IVideoInfo
    public int fromMediaInfoJsonObject(JSONObject jSONObject) {
        int i10;
        try {
            this.mFileId = jSONObject.optString("file_id");
            if (jSONObject.optString("media_type").compareTo("audio") == 0) {
                i10 = VideoRef.TYPE_AUDIO;
            } else {
                i10 = VideoRef.TYPE_VIDEO;
            }
            this.mMediaType = i10;
            this.mSize = jSONObject.optLong(BarrageMaskInfo.KEY_MASK_FILE_SIZE);
            this.mBitrate = jSONObject.optInt("bitrate");
            this.mQuality = jSONObject.optString(GearStrategyConsts.EV_QUALITY);
            this.mDefinition = jSONObject.optString("definition");
            this.mResolution = Resolution.valueOf(jSONObject.optInt("resolution", 0));
            this.mVWidth = jSONObject.optInt("width");
            this.mVHeight = jSONObject.optInt("height");
            this.mCodecType = jSONObject.optString("codec");
            JSONArray jSONArray = jSONObject.getJSONArray("urls");
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                String string = jSONArray.getString(i11);
                if (!TextUtils.isEmpty(string)) {
                    if (this.mUrls == null) {
                        this.mUrls = new ArrayList();
                    }
                    this.mUrls.add(string);
                }
            }
            this.mFileHash = jSONObject.optString(BarrageMaskInfo.KEY_MASK_FILE_HASH);
            this.mSegmentSizeInfo = jSONObject.optString("segment_size_info");
            return 0;
        } catch (Exception e10) {
            TTVideoEngineLog.i(TAG, "[GearStrategy]fromMediaInfoJsonObject exception=" + e10);
            return -1;
        }
    }

    @Override // com.ss.ttvideoengine.model.VideoInfo, com.ss.ttvideoengine.model.IVideoInfo
    @Nullable
    public MediaBitrateFitterInfo getBitrateFitterInfo() {
        return null;
    }

    @Override // com.ss.ttvideoengine.model.VideoInfo, com.ss.ttvideoengine.model.IVideoInfo
    public int getMediatype() {
        return this.mMediaType;
    }

    @Override // com.ss.ttvideoengine.model.VideoInfo, com.ss.ttvideoengine.model.IVideoInfo
    public Resolution getResolution() {
        return this.mResolution;
    }

    @Override // com.ss.ttvideoengine.model.VideoInfo, com.ss.ttvideoengine.model.IVideoInfo
    public boolean getValueBool(int i10) {
        return false;
    }

    @Override // com.ss.ttvideoengine.model.VideoInfo, com.ss.ttvideoengine.model.IVideoInfo
    public int getValueInt(int i10) {
        long j10;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 27) {
                        return 0;
                    }
                    j10 = this.mDuration;
                } else {
                    j10 = this.mBitrate;
                }
                return (int) j10;
            }
            return this.mVHeight;
        }
        return this.mVWidth;
    }

    @Override // com.ss.ttvideoengine.model.VideoInfo, com.ss.ttvideoengine.model.IVideoInfo
    public long getValueLong(int i10) {
        if (i10 != 12) {
            if (i10 != 30) {
                return 0L;
            }
            return this.mExpire;
        }
        return this.mSize;
    }

    @Override // com.ss.ttvideoengine.model.VideoInfo, com.ss.ttvideoengine.model.IVideoInfo
    @Nullable
    public String getValueStr(int i10) {
        if (i10 != 5) {
            if (i10 != 6) {
                if (i10 != 7) {
                    if (i10 != 8) {
                        if (i10 != 15) {
                            if (i10 != 18) {
                                if (i10 != 28) {
                                    if (i10 != 53) {
                                        if (i10 != 31) {
                                            if (i10 != 32) {
                                                return null;
                                            }
                                            return this.mQualityDesc;
                                        }
                                        return this.mCheckInfo;
                                    }
                                    return this.mSegmentSizeInfo;
                                }
                                return this.mFileId;
                            }
                            return this.mQuality;
                        }
                        return this.mFileHash;
                    }
                    return this.mCodecType;
                }
                return this.mGear;
            }
            return this.mFormat;
        }
        return this.mSpadea;
    }

    @Override // com.ss.ttvideoengine.model.VideoInfo, com.ss.ttvideoengine.model.IVideoInfo
    @NonNull
    public String[] getValueStrArr(int i10) {
        if (i10 != 16) {
            if (i10 != 51) {
                return new String[0];
            }
            List<String> list = this.mUrlExpires;
            if (list != null) {
                return (String[]) list.toArray(new String[0]);
            }
            return new String[0];
        }
        List<String> list2 = this.mUrls;
        if (list2 != null) {
            return (String[]) list2.toArray(new String[0]);
        }
        return new String[0];
    }

    @Override // com.ss.ttvideoengine.model.VideoInfo
    public void setValue(int i10, String[] strArr) {
        if (i10 != 16) {
            if (i10 != 51) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            this.mUrlExpires = arrayList;
            Collections.addAll(arrayList, strArr);
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        this.mUrls = arrayList2;
        Collections.addAll(arrayList2, strArr);
    }

    @Override // com.ss.ttvideoengine.model.VideoInfo, com.ss.ttvideoengine.model.IVideoInfo
    @Nullable
    public JSONObject toBashJsonObject() {
        return super.toBashJsonObject();
    }

    @Override // com.ss.ttvideoengine.model.VideoInfo, com.ss.ttvideoengine.model.IVideoInfo
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
        hashMap.put("bitrate", Integer.valueOf(getValueInt(3)));
        hashMap.put(GearStrategyConsts.EV_QUALITY, getValueStr(18));
        hashMap.put("definition", getValueStr(7));
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
        hashMap.put(BarrageMaskInfo.KEY_MASK_FILE_HASH, getValueStr(15));
        hashMap.put("segment_size_info", getValueStr(53));
        JSONObject jSONObject = this.mPreloadGear;
        if (jSONObject != null) {
            hashMap.put("preload_gear_data", jSONObject);
        }
        if (this.mBareGearInfo != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                for (BareGearInfo bareGearInfo : this.mBareGearInfo) {
                    GearType gearType = bareGearInfo.mGearType;
                    if (gearType == GearType.Frame) {
                        jSONObject2.put("g_" + bareGearInfo.key, bareGearInfo.value);
                    } else if (gearType == GearType.TimeInSecond) {
                        jSONObject2.put("t_" + bareGearInfo.key, bareGearInfo.value);
                    }
                }
                hashMap.put("preload_gear_data", jSONObject2);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return hashMap;
    }

    private BareVideoInfo() {
        super(null);
        this.mMediaType = -1;
        this.mVWidth = 0;
        this.mVHeight = 0;
        this.mBitrate = 0L;
        this.mDuration = 0L;
        this.mSize = 0L;
        this.mExpire = -1L;
        this.mFileHash = null;
        this.mFileId = null;
        this.mCodecType = null;
        this.mFormat = null;
        this.mCheckInfo = null;
        this.mResolution = null;
        this.mQuality = null;
        this.mGear = null;
        this.mSpadea = null;
        this.mQualityDesc = null;
        this.mSegmentSizeInfo = null;
        this.mUrls = null;
        this.mUrlExpires = null;
        this.mBareGearInfo = null;
    }

    @Override // com.ss.ttvideoengine.model.VideoInfo
    public BareVideoInfo copyInfo() {
        return this.mBuilder.build();
    }
}
