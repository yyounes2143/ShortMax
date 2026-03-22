package com.ss.ttvideoengine.model;

import androidx.annotation.NonNull;
import com.ss.ttvideoengine.Resolution;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public interface IVideoModel {

    /* loaded from: classes6.dex */
    public enum Format {
        NONE,
        MP4,
        DASH,
        HLS,
        MP3
    }

    /* loaded from: classes6.dex */
    public enum Source {
        None,
        LIVE,
        VOD,
        BARE
    }

    String[] allVideoURLs(Resolution resolution);

    String[] allVideoURLs(Resolution resolution, Map<Integer, String> map);

    int fromMediaInfoJsonObject(JSONObject jSONObject);

    int fromMediaInfoJsonString(String str);

    String[] getCodecs();

    JSONObject getDnsInfo();

    String getDynamicType();

    @NonNull
    Set<Format> getFormats();

    JSONObject getMediaInfo();

    List<Integer> getOriginalAudioInfo();

    Source getSource();

    String getSpadea();

    List<SubInfo> getSubInfoList();

    List<Integer> getSupportInfoId(int i10);

    String[] getSupportQualityInfos();

    Resolution[] getSupportResolutions();

    @Deprecated
    int[] getSupportSubtitleLangs();

    List<Integer> getSupportedTTSAudioInfo();

    String getVType();

    VideoInfo getVideoInfo(Resolution resolution);

    VideoInfo getVideoInfo(Resolution resolution, int i10, Map<Integer, String> map);

    VideoInfo getVideoInfo(Resolution resolution, int i10, Map<Integer, String> map, boolean z10);

    VideoInfo getVideoInfo(Resolution resolution, int i10, boolean z10);

    VideoInfo getVideoInfo(Resolution resolution, Map<Integer, String> map);

    VideoInfo getVideoInfo(Resolution resolution, Map<Integer, String> map, boolean z10);

    VideoInfo getVideoInfo(Resolution resolution, boolean z10);

    VideoInfo getVideoInfo(Map<Integer, String> map);

    VideoInfo getVideoInfoByInfoId(int i10);

    List<VideoInfo> getVideoInfoList();

    boolean getVideoRefBool(int i10);

    float getVideoRefFloat(int i10);

    int getVideoRefInt(int i10);

    long getVideoRefLong(int i10);

    String getVideoRefStr(int i10);

    VideoStyle getVideoStyle();

    boolean hasData();

    boolean hasFormat(Format format);

    boolean isSupportBash();

    boolean isSupportHLSSeamlessSwitch();

    String resolutionToString(Resolution resolution);

    void setUpResolution(HashMap<String, Resolution> hashMap);

    String toMediaInfoJsonString();
}
