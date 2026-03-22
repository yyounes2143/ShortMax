package com.ss.ttm.player;

import android.text.TextUtils;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.ss.texturerender.TextureRenderKeys;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public abstract class HLSChooseStreamInterface extends TraitObject {
    private static final int Version0 = 0;

    /* loaded from: classes6.dex */
    public static class Playlist {
        public int mIndex = 0;
        public Rendition[] mRenditions = null;
    }

    /* loaded from: classes6.dex */
    public static class Rendition {
        public int mMediaTrackType = 0;
        public int mInfoId = -1;
        public String mGroupId = null;
        public String mLanguage = null;
        public String mName = null;
    }

    /* loaded from: classes6.dex */
    public static class Variant {
        public int mAverageBandwidth;
        public String mClosedCaptions;
        public String mCodecs;
        public float mFrameRate;
        public String mHDCPLevel;
        public int mHeight;
        public int mWidth;
        public int mBandWidth = 0;
        public String mAudioGroup = null;
        public String mVideoGroup = null;
        public String mSubtitlesGroup = null;
        public Playlist[] mPlaylists = null;
    }

    public HLSChooseStreamInterface() {
        super(7, 0, 0L);
    }

    private static int covertMediaType(int i10) {
        if (i10 == 0) {
            return 1;
        }
        if (i10 != 1) {
            if (i10 != 3) {
                return 0;
            }
            return 4;
        }
        return 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.ss.ttm.player.HLSChooseStreamInterface$Playlist[]] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.ss.ttm.player.HLSChooseStreamInterface$Rendition[]] */
    private Variant[] parseVariant(String str) {
        JSONArray jSONArray;
        ?? r12;
        JSONArray jSONArray2;
        Variant[] variantArr = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONArray jSONArray3 = new JSONArray(str);
            int length = jSONArray3.length();
            Variant[] variantArr2 = new Variant[length];
            int i10 = 0;
            int i11 = 0;
            while (i11 < length) {
                try {
                    JSONObject jSONObject = jSONArray3.getJSONObject(i11);
                    Variant variant = new Variant();
                    variant.mBandWidth = jSONObject.optInt("bandwidth", i10);
                    variant.mAverageBandwidth = jSONObject.optInt("average_bandwidth", i10);
                    variant.mCodecs = jSONObject.optString("codecs", "");
                    variant.mWidth = jSONObject.optInt("width", i10);
                    variant.mHeight = jSONObject.optInt("height", i10);
                    variant.mFrameRate = (float) jSONObject.optDouble("frame_rate", 0.0d);
                    variant.mHDCPLevel = jSONObject.optString("HDCP_level", "");
                    variant.mClosedCaptions = jSONObject.optString("closed_captions", "");
                    variant.mAudioGroup = jSONObject.optString("audio_group", "");
                    variant.mVideoGroup = jSONObject.optString("video_group", "");
                    variant.mSubtitlesGroup = jSONObject.optString("subtitles_group", "");
                    int optInt = jSONObject.optInt("n_playlists", i10);
                    JSONArray optJSONArray = jSONObject.optJSONArray("playlists");
                    if (optJSONArray == null || optInt <= 0) {
                        jSONArray = jSONArray3;
                        r12 = variantArr;
                        variant.mPlaylists = r12;
                        variantArr2[i11] = variant;
                    } else {
                        variant.mPlaylists = new Playlist[optInt];
                        int i12 = i10;
                        while (i12 < optInt) {
                            JSONObject jSONObject2 = optJSONArray.getJSONObject(i12);
                            Playlist playlist = new Playlist();
                            playlist.mIndex = jSONObject2.optInt(TextureRenderKeys.KEY_IS_INDEX, i10);
                            int optInt2 = jSONObject2.optInt("n_renditions", i10);
                            JSONArray optJSONArray2 = jSONObject2.optJSONArray("renditions");
                            if (optInt2 <= 0 || optJSONArray2 == null) {
                                jSONArray2 = jSONArray3;
                                playlist.mRenditions = variantArr;
                                variant.mPlaylists[i12] = playlist;
                            } else {
                                playlist.mRenditions = new Rendition[optInt2];
                                int i13 = i10;
                                while (i13 < optInt2) {
                                    JSONObject jSONObject3 = optJSONArray2.getJSONObject(i13);
                                    Rendition rendition = new Rendition();
                                    rendition.mMediaTrackType = covertMediaType(jSONObject3.optInt("type", -1));
                                    rendition.mName = jSONObject3.optString("name", "");
                                    rendition.mInfoId = jSONObject3.optInt("info_id", -1);
                                    rendition.mGroupId = jSONObject3.optString(MetricsSQLiteCacheKt.METRICS_GROUP_ID, "");
                                    rendition.mLanguage = jSONObject3.optString(MediaFormat.KEY_LANGUAGE, "");
                                    playlist.mRenditions[i13] = rendition;
                                    i13++;
                                    jSONArray3 = jSONArray3;
                                }
                                jSONArray2 = jSONArray3;
                                variant.mPlaylists[i12] = playlist;
                            }
                            i12++;
                            jSONArray3 = jSONArray2;
                            variantArr = null;
                            i10 = 0;
                        }
                        jSONArray = jSONArray3;
                        variantArr2[i11] = variant;
                        r12 = 0;
                    }
                    i11++;
                    variantArr = r12;
                    jSONArray3 = jSONArray;
                    i10 = 0;
                } catch (JSONException e10) {
                    e = e10;
                    variantArr = variantArr2;
                    e.printStackTrace();
                    return variantArr;
                }
            }
            return variantArr2;
        } catch (JSONException e11) {
            e = e11;
        }
    }

    public abstract int chooseRenditionInfoId(int i10);

    public abstract int chooseVariantBandWidth();

    @CalledByNative
    protected int choose_rendition_infoId(int i10) {
        return chooseRenditionInfoId(i10);
    }

    @CalledByNative
    protected int choose_variant_bandWidth() {
        return chooseVariantBandWidth();
    }

    public abstract void streamInfos(Variant[] variantArr);

    @CalledByNative
    protected void stream_info(String str) {
        Variant[] parseVariant = parseVariant(str);
        if (parseVariant == null) {
            return;
        }
        streamInfos(parseVariant);
    }
}
