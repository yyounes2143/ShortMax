package com.ss.ttvideoengine.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoModel implements IVideoModel {
    public static final int IS_LIVE_SOURCE = 0;
    public static final int IS_VOD_SOURCE = 1;
    public static final int VIDEO_MODEL_VER1 = 1;
    public static final int VIDEO_MODEL_VER2 = 2;
    public static final int VIDEO_MODEL_VER3 = 3;
    public static final int VIDEO_MODEL_VER4 = 4;
    @Deprecated
    public VideoRef videoRef = null;
    public List<VideoAdRef> videoAdRefList = null;
    public LiveVideoRef liveVideoRef = null;
    private VideoRef vodVideoRef = null;
    private int mSourceType = 1;
    private int mVersion = 1;
    private HashMap<String, Resolution> mResolutionMap = null;
    private JSONObject mJsonInfo = null;
    private boolean mURLEncrypted = false;
    private String mKeyseed = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ss.ttvideoengine.model.VideoModel$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$ss$ttvideoengine$model$IVideoModel$Format;

        static {
            int[] iArr = new int[IVideoModel.Format.values().length];
            $SwitchMap$com$ss$ttvideoengine$model$IVideoModel$Format = iArr;
            try {
                iArr[IVideoModel.Format.HLS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$model$IVideoModel$Format[IVideoModel.Format.MP4.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$model$IVideoModel$Format[IVideoModel.Format.DASH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$model$IVideoModel$Format[IVideoModel.Format.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Deprecated
    public String[] allVideoURLs(Resolution resolution) {
        return allVideoURLs(resolution, null);
    }

    public void extractFields(JSONObject jSONObject) throws Throwable {
        if (jSONObject == null) {
            return;
        }
        try {
            this.mJsonInfo = new JSONObject(jSONObject.toString());
        } catch (Throwable unused) {
            TTVideoEngineLog.e("VideoModel", "generate mJsonInfo error");
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("video_info");
        if (optJSONObject != null && optJSONObject.length() > 0) {
            this.mVersion = 1;
            VideoRef videoRef = new VideoRef();
            videoRef.setVersion(this.mVersion);
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("data");
            videoRef.setValue(219, this.mURLEncrypted);
            videoRef.setValueStr(218, this.mKeyseed);
            videoRef.extractFields(optJSONObject2);
            this.videoRef = videoRef;
            this.vodVideoRef = videoRef;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("video_ad_list");
        if (optJSONArray != null && optJSONArray.length() > 0) {
            this.videoAdRefList = new ArrayList();
            for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                try {
                    VideoAdRef videoAdRef = new VideoAdRef();
                    videoAdRef.extractFields(optJSONArray.getJSONObject(i10));
                    this.videoAdRefList.add(videoAdRef);
                } catch (Exception unused2) {
                }
            }
        }
        JSONObject optJSONObject3 = jSONObject.optJSONObject("live_info");
        if (optJSONObject3 != null) {
            this.mSourceType = 0;
            this.liveVideoRef = new LiveVideoRef();
            this.liveVideoRef.extractFields(optJSONObject3.optJSONObject("data"));
        }
        JSONArray optJSONArray2 = jSONObject.optJSONArray("PlayInfoList");
        if ((optJSONArray2 != null && optJSONArray2.length() > 0) || !TextUtils.isEmpty(jSONObject.optString("VideoID")) || !TextUtils.isEmpty(jSONObject.optString("Vid"))) {
            if (jSONObject.optInt("Version") == 4) {
                this.mVersion = 4;
            } else {
                this.mVersion = 2;
            }
            VideoRef videoRef2 = new VideoRef();
            this.vodVideoRef = videoRef2;
            videoRef2.setVersion(this.mVersion);
            this.vodVideoRef.extractFields(jSONObject);
        }
        setUpResolution(this.mResolutionMap);
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public int fromMediaInfoJsonObject(JSONObject jSONObject) {
        return -1;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public int fromMediaInfoJsonString(String str) {
        return -1;
    }

    @Deprecated
    public String getCodec() {
        VideoInfo videoInfo;
        String[] codecs;
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            if (this.mVersion == 2) {
                boolean z10 = false;
                for (String str : videoRef.getCodecs()) {
                    if (str.equals("h266")) {
                        return "h266";
                    }
                    if (str.equals("h265")) {
                        z10 = true;
                    }
                }
                if (!z10) {
                    return "h264";
                }
                return "h265";
            }
            List<VideoInfo> videoInfoList = videoRef.getVideoInfoList();
            if (videoInfoList != null && videoInfoList.size() != 0 && (videoInfo = videoInfoList.get(0)) != null) {
                String str2 = videoInfo.mCodecType;
                if (!TextUtils.isEmpty(str2)) {
                    return str2;
                }
            }
        }
        return "h264";
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String[] getCodecs() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getCodecs();
        }
        return new String[0];
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    public JSONObject getDnsInfo() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getDnsInfo();
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String getDynamicType() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getValueStr(215);
        }
        return "";
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @NonNull
    public Set<IVideoModel.Format> getFormats() {
        HashSet hashSet = new HashSet();
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            if (videoRef.getValueBool(206).booleanValue()) {
                hashSet.add(IVideoModel.Format.MP4);
            } else if (this.vodVideoRef.getValueBool(208).booleanValue()) {
                hashSet.add(IVideoModel.Format.HLS);
            } else if (this.vodVideoRef.getValueBool(205).booleanValue() || this.vodVideoRef.getValueBool(207).booleanValue()) {
                hashSet.add(IVideoModel.Format.DASH);
            }
        }
        return hashSet;
    }

    @Nullable
    public JSONObject getJsonInfo() {
        return this.mJsonInfo;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public JSONObject getMediaInfo() {
        BarrageMaskInfo barrageMaskInfo;
        String videoRefStr = getVideoRefStr(211);
        String videoRefStr2 = getVideoRefStr(2);
        int videoRefInt = getVideoRefInt(3);
        List<VideoInfo> videoInfoList = getVideoInfoList();
        if (videoInfoList != null) {
            try {
                HashMap hashMap = new HashMap();
                ArrayList arrayList = new ArrayList();
                for (VideoInfo videoInfo : videoInfoList) {
                    arrayList.add(videoInfo.toMediaInfo());
                }
                VideoRef videoRef = this.vodVideoRef;
                if (videoRef != null && (barrageMaskInfo = videoRef.mMaskInfo) != null) {
                    arrayList.add(barrageMaskInfo.getMediaInfo());
                }
                hashMap.put("format", videoRefStr);
                hashMap.put("vid", videoRefStr2);
                hashMap.put(BidResponsed.KEY_BID_ID, getVideoRefStr(246));
                hashMap.put("category", Integer.valueOf(getVideoRefInt(VideoRef.VALUE_VIDEO_REF_CATEGORY)));
                hashMap.put("duration", Integer.valueOf(videoRefInt));
                hashMap.put("infos", arrayList);
                VideoRef videoRef2 = this.vodVideoRef;
                if (videoRef2 != null) {
                    hashMap.put("pallas_vid_labels", videoRef2.getValueStr(VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS));
                }
                return new JSONObject(hashMap);
            } catch (Throwable th2) {
                TTVideoEngineLog.d(th2);
                return null;
            }
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public List<Integer> getOriginalAudioInfo() {
        VideoRef videoRef = this.vodVideoRef;
        ArrayList arrayList = null;
        if (videoRef == null) {
            return null;
        }
        List<VideoInfo> valueList = videoRef.getValueList(VideoRef.VALUE_VIDEO_REF_ORIGINAL_AUDIO_INFO_LIST);
        if (valueList != null && valueList.size() != 0) {
            arrayList = new ArrayList();
            for (VideoInfo videoInfo : valueList) {
                arrayList.add(Integer.valueOf(videoInfo.getValueInt(42)));
            }
        }
        return arrayList;
    }

    @Deprecated
    public int getPreloadInterval(Resolution resolution) {
        VideoInfo videoInfo;
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef == null || (videoInfo = videoRef.getVideoInfo(resolution, null)) == null) {
            return 0;
        }
        return videoInfo.getValueInt(13);
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public IVideoModel.Source getSource() {
        IVideoModel.Source source = IVideoModel.Source.None;
        int i10 = this.mSourceType;
        if (i10 != 0) {
            if (i10 == 1) {
                return IVideoModel.Source.VOD;
            }
            return source;
        }
        return IVideoModel.Source.LIVE;
    }

    public int getSourceType() {
        return this.mSourceType;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    public String getSpadea() {
        List<VideoInfo> videoInfoList;
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null && (videoInfoList = videoRef.getVideoInfoList()) != null && videoInfoList.size() != 0) {
            for (VideoInfo videoInfo : videoInfoList) {
                String valueStr = videoInfo.getValueStr(5);
                if (!TextUtils.isEmpty(valueStr)) {
                    return valueStr;
                }
            }
            return null;
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    public List<SubInfo> getSubInfoList() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.mSubInfoList;
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public List<Integer> getSupportInfoId(int i10) {
        VideoRef videoRef = this.vodVideoRef;
        ArrayList arrayList = null;
        if (videoRef == null) {
            return null;
        }
        List<VideoInfo> videoInfoList = videoRef.getVideoInfoList();
        if (videoInfoList != null && videoInfoList.size() != 0) {
            arrayList = new ArrayList();
            for (VideoInfo videoInfo : videoInfoList) {
                if (videoInfo.getMediatype() == i10) {
                    arrayList.add(Integer.valueOf(videoInfo.mInfoId));
                }
            }
        }
        return arrayList;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    public String[] getSupportQualityInfos() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getSupportQualityInfos();
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public Resolution[] getSupportResolutions() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getSupportResolutions();
        }
        return new Resolution[0];
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    public int[] getSupportSubtitleLangs() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getSupportSubtitleLangs();
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public List<Integer> getSupportedTTSAudioInfo() {
        VideoRef videoRef = this.vodVideoRef;
        ArrayList arrayList = null;
        if (videoRef == null) {
            return null;
        }
        List<VideoInfo> valueList = videoRef.getValueList(231);
        if (valueList != null && valueList.size() != 0) {
            arrayList = new ArrayList();
            for (VideoInfo videoInfo : valueList) {
                arrayList.add(Integer.valueOf(videoInfo.getValueInt(42)));
            }
        }
        return arrayList;
    }

    @Nullable
    public List<VideoThumbInfo> getThumbInfoList() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.mThumbInfoList;
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String getVType() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getValueStr(211);
        }
        return TTVideoEngineInterface.FORMAT_TYPE_MP4;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    @Deprecated
    public VideoInfo getVideoInfo(Resolution resolution) {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getVideoInfo(resolution, null);
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public VideoInfo getVideoInfoByInfoId(int i10) {
        VideoRef videoRef;
        List<VideoInfo> videoInfoList;
        if (i10 >= 0 && (videoRef = this.vodVideoRef) != null && (videoInfoList = videoRef.getVideoInfoList()) != null && videoInfoList.size() != 0) {
            for (VideoInfo videoInfo : videoInfoList) {
                if (videoInfo.mInfoId == i10) {
                    return videoInfo;
                }
            }
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public List<VideoInfo> getVideoInfoList() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef == null) {
            return Collections.emptyList();
        }
        return videoRef.getVideoInfoList();
    }

    @Deprecated
    public VideoRef getVideoRef() {
        return this.vodVideoRef;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public boolean getVideoRefBool(int i10) {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getValueBool(i10).booleanValue();
        }
        return false;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public float getVideoRefFloat(int i10) {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getValueFloat(i10);
        }
        return 0.0f;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public int getVideoRefInt(int i10) {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getValueInt(i10);
        }
        return -1;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public long getVideoRefLong(int i10) {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getValueLong(i10);
        }
        return 0L;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String getVideoRefStr(int i10) {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getValueStr(i10);
        }
        return "";
    }

    @Nullable
    public VideoSeekTs getVideoSeekTS() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.mSeekTs;
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public VideoStyle getVideoStyle() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.mVideoStyle;
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public boolean hasData() {
        if (this.vodVideoRef == null && this.liveVideoRef == null) {
            return false;
        }
        return true;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public boolean hasFormat(IVideoModel.Format format) {
        if (this.vodVideoRef == null) {
            return false;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$ss$ttvideoengine$model$IVideoModel$Format[format.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return false;
                }
                return this.vodVideoRef.getValueBool(205).booleanValue();
            }
            return this.vodVideoRef.getValueBool(206).booleanValue();
        }
        return this.vodVideoRef.getValueBool(208).booleanValue();
    }

    public void initWithJson(JSONObject jSONObject) throws Throwable {
        if (jSONObject == null) {
            return;
        }
        jSONObject.put(IVideoEventLogger.FEATURE_KEY_MULTI_BITRATE_REFACTOR, true);
        extractFields(new JSONObject().put("video_info", new JSONObject().put("data", jSONObject)));
    }

    public boolean isDashSource() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null && videoRef.getValueBool(205).booleanValue()) {
            return true;
        }
        return false;
    }

    public boolean isHlsSource() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null && videoRef.getValueBool(208).booleanValue()) {
            return true;
        }
        return false;
    }

    public boolean isLiveSource() {
        if (getSource() == IVideoModel.Source.LIVE) {
            return true;
        }
        return false;
    }

    public boolean isMp4Source() {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null && videoRef.getValueBool(206).booleanValue()) {
            return true;
        }
        return false;
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
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.resolutionToString(resolution);
        }
        return resolution.toString(VideoRef.TYPE_VIDEO);
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public void setUpResolution(HashMap<String, Resolution> hashMap) {
        this.mResolutionMap = hashMap;
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            videoRef.setUpResolution(hashMap);
        }
    }

    public void setVideoRef(VideoRef videoRef) {
        this.vodVideoRef = videoRef;
        setUpResolution(this.mResolutionMap);
    }

    public void setVideoRefBool(int i10, boolean z10) {
        if (i10 == 219) {
            this.mURLEncrypted = z10;
        }
    }

    public void setVideoRefStr(int i10, String str) {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            videoRef.setValueStr(i10, str);
        }
        if (i10 == 218) {
            this.mKeyseed = str;
        }
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String toMediaInfoJsonString() {
        JSONObject mediaInfo = getMediaInfo();
        if (mediaInfo != null) {
            return mediaInfo.toString();
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    public String[] allVideoURLs(Resolution resolution, Map<Integer, String> map) {
        LiveVideoInfo liveVideoInfo;
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.allVideoURLs(resolution, map);
        }
        LiveVideoRef liveVideoRef = this.liveVideoRef;
        if (liveVideoRef != null && (liveVideoInfo = liveVideoRef.getLiveVideoInfo()) != null) {
            return liveVideoInfo.mURLs;
        }
        return new String[0];
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    public VideoInfo getVideoInfo(Map<Integer, String> map) {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getVideoInfo(map);
        }
        return null;
    }

    public int getPreloadInterval(Resolution resolution, Map<Integer, String> map) {
        VideoInfo videoInfo;
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef == null || (videoInfo = videoRef.getVideoInfo(resolution, map)) == null) {
            return 0;
        }
        videoInfo.getValueInt(13);
        return 0;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    public VideoInfo getVideoInfo(Resolution resolution, Map<Integer, String> map) {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getVideoInfo(resolution, map);
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    public VideoInfo getVideoInfo(Resolution resolution, int i10, Map<Integer, String> map) {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return videoRef.getVideoInfo(resolution, i10, map);
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    public VideoInfo getVideoInfo(Resolution resolution, boolean z10) {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return getVideoInfo(resolution, videoRef.getValueInt(7), null, z10);
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    public VideoInfo getVideoInfo(Resolution resolution, Map<Integer, String> map, boolean z10) {
        VideoRef videoRef = this.vodVideoRef;
        if (videoRef != null) {
            return getVideoInfo(resolution, videoRef.getValueInt(7), map, z10);
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    public VideoInfo getVideoInfo(Resolution resolution, int i10, boolean z10) {
        if (this.vodVideoRef != null) {
            return getVideoInfo(resolution, i10, null, z10);
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.model.IVideoModel
    @Nullable
    public VideoInfo getVideoInfo(Resolution resolution, int i10, Map<Integer, String> map, boolean z10) {
        String str;
        VideoInfo videoInfo = getVideoInfo(resolution, i10, map);
        if (z10) {
            String[] allQualityInfos = TTVideoEngine.getAllQualityInfos();
            int i11 = 0;
            if (allQualityInfos.length > 0 && map != null && map.containsKey(32)) {
                int length = allQualityInfos.length - 1;
                if (videoInfo == null && (str = map.get(32)) != null) {
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
}
