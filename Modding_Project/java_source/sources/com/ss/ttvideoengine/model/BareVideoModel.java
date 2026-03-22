package com.ss.ttvideoengine.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.model.BareVideoInfo;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class BareVideoModel implements IVideoModel {
    private static final String TAG = "TTVideoEngine.BareVideoModel";
    private boolean mAdaptive;
    private String mBashString;
    private String mBid;
    private int mCategory;
    private long mDuration;
    private String mDynamicType;
    private List<VideoInfo> mInfos;
    private float mLoudness;
    private float mPeak;
    private int mPlaceHolder;
    private String mVid;

    /* loaded from: classes6.dex */
    public static class Builder {
        private String mVid = null;
        private long mDuration = 0;
        private boolean mAdaptive = false;
        private String mDynamicType = null;
        private float mLoudness = 0.0f;
        private float mPeak = 0.0f;
        private int mCategory = 0;
        private String mFirstSubVid = null;
        private int mSubListIndex = -1;
        private List<VideoInfo> mInfos = null;
        private String mBid = "";
        private int mPlaceHolder = 0;

        public Builder adaptive(boolean z10) {
            this.mAdaptive = z10;
            return this;
        }

        public Builder addVideoInfo(VideoInfo videoInfo) {
            if (this.mInfos == null) {
                this.mInfos = new ArrayList();
            }
            this.mInfos.add(videoInfo);
            return this;
        }

        public Builder bid(String str) {
            this.mBid = str;
            return this;
        }

        public BareVideoModel build() {
            BareVideoModel bareVideoModel = new BareVideoModel();
            bareVideoModel.mVid = this.mVid;
            bareVideoModel.mBid = this.mBid;
            bareVideoModel.mDuration = this.mDuration;
            bareVideoModel.mAdaptive = this.mAdaptive;
            bareVideoModel.mDynamicType = this.mDynamicType;
            bareVideoModel.mLoudness = this.mLoudness;
            bareVideoModel.mPeak = this.mPeak;
            bareVideoModel.mCategory = this.mCategory;
            if (this.mInfos == null) {
                this.mInfos = new ArrayList();
            }
            bareVideoModel.mInfos = this.mInfos;
            bareVideoModel.mPlaceHolder = this.mPlaceHolder;
            bareVideoModel.mBashString = bareVideoModel.toBashString();
            return bareVideoModel;
        }

        public Builder category(int i10) {
            this.mCategory = i10;
            return this;
        }

        public Builder duration(long j10) {
            this.mDuration = j10;
            return this;
        }

        public Builder dynamicType(String str) {
            this.mDynamicType = str;
            return this;
        }

        public Builder firstSubVideoId(String str) {
            this.mFirstSubVid = str;
            return this;
        }

        public Builder loudness(float f10) {
            this.mLoudness = f10;
            return this;
        }

        public Builder peak(float f10) {
            this.mPeak = f10;
            return this;
        }

        public Builder placeHolder(int i10) {
            this.mPlaceHolder = i10;
            return this;
        }

        public Builder setVideoInfos(List<? extends VideoInfo> list) {
            if (this.mInfos == null) {
                this.mInfos = new ArrayList();
            }
            this.mInfos.clear();
            this.mInfos.addAll(list);
            return this;
        }

        public Builder vid(String str) {
            this.mVid = str;
            if (TextUtils.isEmpty(this.mBid)) {
                this.mBid = str;
            }
            return this;
        }

        public Builder firstSubVideoId(String str, int i10) {
            this.mFirstSubVid = str;
            this.mSubListIndex = i10;
            return this;
        }
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String[] allVideoURLs(Resolution resolution) {
        return allVideoURLs(resolution, null);
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public int fromMediaInfoJsonObject(JSONObject jSONObject) {
        try {
            this.mVid = jSONObject.optString("vid");
            String optString = jSONObject.optString(BidResponsed.KEY_BID_ID);
            this.mBid = optString;
            if (TextUtils.isEmpty(optString)) {
                this.mBid = this.mVid;
            }
            this.mCategory = jSONObject.optInt("category");
            this.mDuration = jSONObject.optLong("duration");
            JSONArray jSONArray = jSONObject.getJSONArray("infos");
            if (jSONArray != null) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    BareVideoInfo build = new BareVideoInfo.Builder().build();
                    build.fromMediaInfoJsonObject(jSONArray.getJSONObject(i10));
                    if (this.mInfos == null) {
                        this.mInfos = new ArrayList();
                    }
                    this.mInfos.add(build);
                }
            }
            return 0;
        } catch (Exception e10) {
            TTVideoEngineLog.i(TAG, "[GearStrategy]fromMediaInfoJsonObject exception=" + e10);
            return -1;
        }
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public int fromMediaInfoJsonString(String str) {
        try {
            return fromMediaInfoJsonObject(new JSONObject(str));
        } catch (Exception e10) {
            TTVideoEngineLog.i(TAG, "[GearStrategy]fromMediaInfoJsonString exception=" + e10);
            return -1;
        }
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String[] getCodecs() {
        HashSet hashSet = new HashSet();
        List<VideoInfo> list = this.mInfos;
        if (list != null) {
            for (VideoInfo videoInfo : list) {
                String valueStr = videoInfo.getValueStr(8);
                if (!TextUtils.isEmpty(valueStr)) {
                    hashSet.add(valueStr);
                }
            }
        }
        return (String[]) hashSet.toArray(new String[0]);
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public JSONObject getDnsInfo() {
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String getDynamicType() {
        return this.mDynamicType;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @NonNull
    public Set<IVideoModel.Format> getFormats() {
        String valueStr;
        HashSet hashSet = new HashSet();
        List<VideoInfo> list = this.mInfos;
        if (list != null) {
            for (VideoInfo videoInfo : list) {
                if (videoInfo != null && (valueStr = videoInfo.getValueStr(6)) != null) {
                    if (valueStr.equals(TTVideoEngineInterface.FORMAT_TYPE_MP3)) {
                        hashSet.add(IVideoModel.Format.MP3);
                    } else if (valueStr.equals("dash")) {
                        hashSet.add(IVideoModel.Format.DASH);
                    } else if (valueStr.equals(TTVideoEngineInterface.FORMAT_TYPE_HLS)) {
                        hashSet.add(IVideoModel.Format.HLS);
                    } else if (valueStr.equals(TTVideoEngineInterface.FORMAT_TYPE_MP4)) {
                        hashSet.add(IVideoModel.Format.MP4);
                    } else {
                        hashSet.add(IVideoModel.Format.MP4);
                    }
                }
            }
        }
        return hashSet;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public JSONObject getMediaInfo() {
        String str;
        if (hasFormat(IVideoModel.Format.MP3)) {
            str = TTVideoEngineInterface.FORMAT_TYPE_MP3;
        } else if (hasFormat(IVideoModel.Format.DASH)) {
            str = "dash";
        } else if (hasFormat(IVideoModel.Format.HLS)) {
            str = TTVideoEngineInterface.FORMAT_TYPE_HLS;
        } else if (hasFormat(IVideoModel.Format.MP4)) {
            str = TTVideoEngineInterface.FORMAT_TYPE_MP4;
        } else {
            str = "";
        }
        String videoRefStr = getVideoRefStr(2);
        long j10 = this.mDuration;
        List<VideoInfo> videoInfoList = getVideoInfoList();
        try {
            HashMap hashMap = new HashMap();
            if (videoInfoList != null) {
                ArrayList arrayList = new ArrayList();
                for (VideoInfo videoInfo : videoInfoList) {
                    arrayList.add(videoInfo.toMediaInfo());
                }
                hashMap.put("infos", arrayList);
            }
            hashMap.put("format", str);
            hashMap.put("vid", videoRefStr);
            hashMap.put(BidResponsed.KEY_BID_ID, this.mBid);
            hashMap.put("category", Integer.valueOf(getVideoRefInt(VideoRef.VALUE_VIDEO_REF_CATEGORY)));
            hashMap.put("placeholder", Integer.valueOf(getVideoRefInt(254)));
            hashMap.put("duration", Long.valueOf(j10));
            return new JSONObject(hashMap);
        } catch (Throwable th2) {
            TTVideoEngineLog.d(th2);
            return null;
        }
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public List<Integer> getOriginalAudioInfo() {
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public IVideoModel.Source getSource() {
        return IVideoModel.Source.BARE;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String getSpadea() {
        for (VideoInfo videoInfo : this.mInfos) {
            String valueStr = videoInfo.getValueStr(5);
            if (!TextUtils.isEmpty(valueStr)) {
                return valueStr;
            }
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public List<SubInfo> getSubInfoList() {
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public List<Integer> getSupportInfoId(int i10) {
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String[] getSupportQualityInfos() {
        HashSet hashSet = new HashSet();
        for (VideoInfo videoInfo : this.mInfos) {
            String valueStr = videoInfo.getValueStr(32);
            if (!TextUtils.isEmpty(valueStr)) {
                hashSet.add(valueStr);
            }
        }
        return (String[]) hashSet.toArray(new String[0]);
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public Resolution[] getSupportResolutions() {
        HashSet hashSet = new HashSet();
        List<VideoInfo> list = this.mInfos;
        if (list != null) {
            for (VideoInfo videoInfo : list) {
                hashSet.add(videoInfo.getResolution());
            }
        }
        return (Resolution[]) hashSet.toArray(new Resolution[0]);
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public int[] getSupportSubtitleLangs() {
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public List<Integer> getSupportedTTSAudioInfo() {
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String getVType() {
        return TTVideoEngineInterface.FORMAT_TYPE_MP4;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public VideoInfo getVideoInfo(Resolution resolution) {
        return getVideoInfo(resolution, (Map<Integer, String>) null);
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public VideoInfo getVideoInfoByInfoId(int i10) {
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public List<VideoInfo> getVideoInfoList() {
        return this.mInfos;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public boolean getVideoRefBool(int i10) {
        if (i10 != 208) {
            if (i10 != 222) {
                return false;
            }
            return this.mAdaptive;
        }
        List<VideoInfo> list = this.mInfos;
        if (list == null) {
            return false;
        }
        for (VideoInfo videoInfo : list) {
            if (videoInfo.getValueStr(6).equals(TTVideoEngineInterface.FORMAT_TYPE_HLS)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public float getVideoRefFloat(int i10) {
        if (i10 != 224) {
            if (i10 != 225) {
                return 0.0f;
            }
            return this.mPeak;
        }
        return this.mLoudness;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public int getVideoRefInt(int i10) {
        if (i10 != 3) {
            if (i10 != 7) {
                if (i10 != 232) {
                    if (i10 != 254) {
                        return 0;
                    }
                    return this.mPlaceHolder;
                }
                return this.mCategory;
            }
            return VideoRef.TYPE_VIDEO;
        }
        return (int) this.mDuration;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public long getVideoRefLong(int i10) {
        return 0L;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String getVideoRefStr(int i10) {
        if (i10 != 2) {
            if (i10 != 8) {
                if (i10 != 246) {
                    return null;
                }
                return this.mBid;
            }
            return this.mBashString;
        }
        return this.mVid;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public VideoStyle getVideoStyle() {
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public boolean hasData() {
        List<VideoInfo> list = this.mInfos;
        if (list != null && !list.isEmpty()) {
            return true;
        }
        return false;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public boolean hasFormat(IVideoModel.Format format) {
        return getFormats().contains(format);
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public boolean isSupportBash() {
        if (TextUtils.isEmpty(getVideoRefStr(8))) {
            return false;
        }
        if (hasFormat(IVideoModel.Format.DASH)) {
            String dynamicType = getDynamicType();
            if (!TextUtils.isEmpty(dynamicType) && dynamicType.equals(TTVideoEngineInterface.DYNAMIC_TYPE_SEGMENTBASE)) {
                return true;
            }
        } else if (hasFormat(IVideoModel.Format.MP4) && getVideoRefBool(222) && TextUtils.isEmpty(getSpadea())) {
            return true;
        }
        return false;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public boolean isSupportHLSSeamlessSwitch() {
        if (TextUtils.isEmpty(getVideoRefStr(8)) || !hasFormat(IVideoModel.Format.HLS) || !getVideoRefBool(222)) {
            return false;
        }
        return true;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String resolutionToString(Resolution resolution) {
        return resolution.toString(VideoRef.TYPE_VIDEO);
    }

    @Nullable
    public JSONObject toBashJsonObject() {
        List<VideoInfo> videoInfoList;
        JSONObject bashJsonObject;
        try {
            videoInfoList = getVideoInfoList();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (videoInfoList != null && videoInfoList.size() > 0) {
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArray2 = new JSONArray();
            for (VideoInfo videoInfo : videoInfoList) {
                if (videoInfo != null && (bashJsonObject = videoInfo.toBashJsonObject()) != null) {
                    if (videoInfo.getMediatype() == VideoRef.TYPE_VIDEO) {
                        jSONArray.put(bashJsonObject);
                    } else if (videoInfo.getMediatype() == VideoRef.TYPE_AUDIO) {
                        jSONArray2.put(bashJsonObject);
                    }
                }
            }
            if (jSONArray.length() > 0 || jSONArray2.length() > 0) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("dynamic_video_list", jSONArray);
                jSONObject.put("dynamic_audio_list", jSONArray2);
                return jSONObject;
            }
            return null;
        }
        return null;
    }

    public String toBashString() {
        JSONObject bashJsonObject = toBashJsonObject();
        if (bashJsonObject != null) {
            return bashJsonObject.toString();
        }
        return "";
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String toMediaInfoJsonString() {
        JSONObject mediaInfo = getMediaInfo();
        if (mediaInfo != null) {
            return mediaInfo.toString();
        }
        return null;
    }

    private BareVideoModel() {
        this.mCategory = 0;
        this.mBid = "";
        this.mBashString = "";
        this.mPlaceHolder = 0;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String[] allVideoURLs(Resolution resolution, Map<Integer, String> map) {
        VideoInfo videoInfo = getVideoInfo(resolution, map);
        if (videoInfo == null) {
            return new String[0];
        }
        return videoInfo.getValueStrArr(16);
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public VideoInfo getVideoInfo(Map<Integer, String> map) {
        Iterator<VideoInfo> it = this.mInfos.iterator();
        while (it.hasNext()) {
            VideoInfo next = it.next();
            if (next != null) {
                if (map == null || map.isEmpty()) {
                    return next;
                }
                for (Map.Entry<Integer, String> entry : map.entrySet()) {
                    int intValue = entry.getKey().intValue();
                    String value = entry.getValue();
                    if (TextUtils.isEmpty(value) || value.equals(next.getValueStr(intValue))) {
                    }
                }
                return next;
            }
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    public VideoInfo getVideoInfo(Resolution resolution, Map<Integer, String> map) {
        return getVideoInfo(resolution, getVideoRefInt(7), map);
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    public VideoInfo getVideoInfo(Resolution resolution, int i10, Map<Integer, String> map) {
        List<VideoInfo> list = this.mInfos;
        if (list == null) {
            return null;
        }
        for (VideoInfo videoInfo : list) {
            if (videoInfo != null && resolution == videoInfo.getResolution() && i10 == videoInfo.getMediatype()) {
                if (map != null && !map.isEmpty()) {
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
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public VideoInfo getVideoInfo(Resolution resolution, boolean z10) {
        return getVideoInfo(resolution, getVideoRefInt(7), null, z10);
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public VideoInfo getVideoInfo(Resolution resolution, Map<Integer, String> map, boolean z10) {
        return getVideoInfo(resolution, getVideoRefInt(7), map, z10);
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public VideoInfo getVideoInfo(Resolution resolution, int i10, boolean z10) {
        return getVideoInfo(resolution, i10, null, z10);
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public VideoInfo getVideoInfo(Resolution resolution, int i10, Map<Integer, String> map, boolean z10) {
        VideoInfo videoInfo = getVideoInfo(resolution, i10, map);
        if (z10) {
            String[] allQualityInfos = TTVideoEngine.getAllQualityInfos();
            int i11 = 0;
            if (allQualityInfos.length > 0 && map != null && map.containsKey(32)) {
                int length = allQualityInfos.length - 1;
                while (videoInfo == null) {
                    String str = map.get(32);
                    if (str != null) {
                        int i12 = 0;
                        while (true) {
                            if (i12 >= allQualityInfos.length) {
                                break;
                            } else if (allQualityInfos[i12].equals(str)) {
                                length = i12;
                                break;
                            } else {
                                i12++;
                            }
                        }
                        int i13 = length;
                        while (videoInfo == null) {
                            map.put(32, allQualityInfos[i13]);
                            videoInfo = getVideoInfo(resolution, i10, map);
                            if (videoInfo == null) {
                                i13 = ((i13 + allQualityInfos.length) - 1) % allQualityInfos.length;
                                if (i13 == length) {
                                    break;
                                }
                            } else {
                                return videoInfo;
                            }
                        }
                        length = i13;
                    }
                }
            }
            Resolution[] allResolutions = Resolution.getAllResolutions();
            if (allResolutions.length <= 0) {
                return videoInfo;
            }
            int length2 = allResolutions.length - 1;
            if (resolution != null) {
                while (true) {
                    if (i11 >= allResolutions.length) {
                        break;
                    } else if (allResolutions[i11].getIndex() == resolution.getIndex()) {
                        length2 = i11;
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            int i14 = length2;
            while (videoInfo == null) {
                videoInfo = getVideoInfo(allResolutions[i14], i10, (Map<Integer, String>) null);
                if (videoInfo != null) {
                    break;
                }
                i14 = ((i14 + allResolutions.length) - 1) % allResolutions.length;
                if (i14 == length2) {
                    break;
                }
            }
            return videoInfo;
        }
        return videoInfo;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public void setUpResolution(HashMap<String, Resolution> hashMap) {
    }
}
