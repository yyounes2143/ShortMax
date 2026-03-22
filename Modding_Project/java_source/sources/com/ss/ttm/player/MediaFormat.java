package com.ss.ttm.player;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public final class MediaFormat {
    public static final String KEY_AUDIO = "audio";
    public static final String KEY_BIT_RATE = "bitrate";
    public static final String KEY_CHANNEL_COUNT = "channel-count";
    public static final String KEY_CODEC_NAME = "codec-name";
    public static final String KEY_DURATION = "duration";
    public static final String KEY_FRAME_RATE = "frame-rate";
    public static final String KEY_HEIGHT = "height";
    public static final String KEY_LANGUAGE = "language";
    public static final String KEY_ROTATION = "rotation";
    public static final String KEY_SAMPLE_RATE = "sample-rate";
    public static final String KEY_SUBTITLE = "subtitle";
    public static final String KEY_TRACK_ID = "track-id";
    public static final String KEY_VIDEO = "video";
    public static final String KEY_WIDTH = "width";
    private Map<String, Object> mMap;

    public MediaFormat() {
        this.mMap = new HashMap();
    }

    public static final MediaFormat createAudioFormat(int i10, int i11, int i12) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setInteger(KEY_TRACK_ID, i10);
        mediaFormat.setInteger(KEY_SAMPLE_RATE, i11);
        mediaFormat.setInteger(KEY_CHANNEL_COUNT, i12);
        return mediaFormat;
    }

    public static final MediaFormat createSubtitleFormat(int i10, String str) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setInteger(KEY_TRACK_ID, i10);
        mediaFormat.setString(KEY_LANGUAGE, str);
        return mediaFormat;
    }

    public static final MediaFormat createVideoFormat(int i10, int i11, int i12, int i13) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setInteger(KEY_TRACK_ID, i10);
        mediaFormat.setInteger("width", i11);
        mediaFormat.setInteger("height", i12);
        mediaFormat.setInteger("bitrate", i13);
        return mediaFormat;
    }

    public final float getFloat(String str) {
        Object obj = this.mMap.get(str);
        if (obj != null) {
            return ((Float) obj).floatValue();
        }
        return 0.0f;
    }

    public final int getInteger(String str) {
        Object obj = this.mMap.get(str);
        if (obj != null) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    public final long getLong(String str) {
        Object obj = this.mMap.get(str);
        if (obj != null) {
            return ((Long) obj).longValue();
        }
        return 0L;
    }

    public final String getString(String str) {
        return (String) this.mMap.get(str);
    }

    public Map<String, Object> getValues() {
        return this.mMap;
    }

    public final void setFloat(String str, float f10) {
        this.mMap.put(str, Float.valueOf(f10));
    }

    public final void setInteger(String str, int i10) {
        this.mMap.put(str, Integer.valueOf(i10));
    }

    public final void setLong(String str, long j10) {
        this.mMap.put(str, Long.valueOf(j10));
    }

    public final void setString(String str, String str2) {
        this.mMap.put(str, str2);
    }

    public String toString() {
        return this.mMap.toString();
    }

    public MediaFormat(Map<String, Object> map) {
        this.mMap = map;
    }

    public static final MediaFormat createSubtitleFormat(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return createSubtitleFormat(jSONObject.optInt(KEY_TRACK_ID), jSONObject.optString(KEY_LANGUAGE));
    }

    public static final MediaFormat createAudioFormat(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return createAudioFormat(jSONObject.optInt(KEY_TRACK_ID), jSONObject.optInt(KEY_SAMPLE_RATE), jSONObject.optInt(KEY_CHANNEL_COUNT));
    }

    public static final MediaFormat createVideoFormat(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return createVideoFormat(jSONObject.optInt(KEY_TRACK_ID), jSONObject.optInt("width"), jSONObject.optInt("height"), jSONObject.optInt("bitrate"));
    }

    public static final MediaFormat createSubtitleFormat(android.media.MediaFormat mediaFormat) {
        if (mediaFormat == null) {
            return null;
        }
        return createSubtitleFormat(mediaFormat.getInteger(KEY_TRACK_ID), mediaFormat.getString(KEY_LANGUAGE));
    }

    public static final MediaFormat createAudioFormat(android.media.MediaFormat mediaFormat) {
        if (mediaFormat == null) {
            return null;
        }
        return createAudioFormat(mediaFormat.getInteger(KEY_TRACK_ID), mediaFormat.getInteger(KEY_SAMPLE_RATE), mediaFormat.getInteger(KEY_CHANNEL_COUNT));
    }

    public static final MediaFormat createVideoFormat(android.media.MediaFormat mediaFormat) {
        if (mediaFormat == null) {
            return null;
        }
        return createVideoFormat(mediaFormat.getInteger(KEY_TRACK_ID), mediaFormat.getInteger("width"), mediaFormat.getInteger("height"), mediaFormat.getInteger("bitrate"));
    }
}
