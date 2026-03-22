package com.ss.ttvideoengine.log;

import android.text.TextUtils;
import androidx.collection.SieveCacheKt;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class LoggerUtils {
    public static final String KEY_BASE_AUDIO_LENGTH = "bal";
    public static final String KEY_BASE_VIDEO_LENGTH = "bvl";
    public static final String KEY_DECODER_AUDIO_LENGTH = "dal";
    public static final String KEY_DECODER_VIDEO_LENGTH = "dvl";
    public static final String KEY_FORMAT_AUDIO_LENGTH = "fal";
    public static final String KEY_FORMAT_AUDIO_ONLY_LENGTH = "falim";
    public static final String KEY_FORMAT_VIDEO_LENGTH = "fvl";
    public static final String KEY_FORMAT_VIDEO_ONLY_LENGTH = "fvlim";
    public static final int PLAYER_BUFFER_STATE_SIZE = 6;
    private static final int[] caesar_key = {1, 5, -1, 6, -3};

    public static float encryptFloatV1(float f10) {
        if (f10 != Float.MIN_VALUE && f10 != Float.NaN) {
            return -f10;
        }
        return f10;
    }

    public static long encryptIntergerV1(long j10) {
        if (j10 == SieveCacheKt.NodeMetaAndPreviousMask) {
            return j10;
        }
        return (j10 << 60) | (j10 >>> 4);
    }

    public static String encryptStringV1(String str) {
        int i10;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = "";
        for (int i11 = 0; i11 < str.length(); i11++) {
            char charAt = str.charAt(i11);
            int i12 = caesar_key[i11 % 5];
            if (charAt >= 'a' && charAt <= 'z') {
                charAt = (char) (charAt + i12);
                if (charAt < 'a') {
                    charAt = (char) (charAt + 26);
                }
                if (charAt <= 'z') {
                    str2 = str2 + charAt;
                }
                i10 = charAt - 26;
            } else {
                if (charAt >= 'A' && charAt <= 'Z') {
                    charAt = (char) (charAt + i12);
                    if (charAt < 'A') {
                        charAt = (char) (charAt + 26);
                    }
                    if (charAt <= 'Z') {
                    }
                    i10 = charAt - 26;
                } else if (charAt >= '0' && charAt <= '9') {
                    charAt = (char) (charAt + i12);
                    if (charAt < '0') {
                        charAt = (char) (charAt + '\n');
                    }
                    if (charAt > '9') {
                        i10 = charAt - '\n';
                    }
                }
                str2 = str2 + charAt;
            }
            charAt = (char) i10;
            str2 = str2 + charAt;
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, Long> parsePlayerBufferString(String str) {
        HashMap hashMap = new HashMap();
        if (TextUtils.isEmpty(str)) {
            return hashMap;
        }
        String[] split = str.split(";|:");
        if (split != null && split.length != 0) {
            for (int i10 = 0; i10 < split.length - 1; i10 += 2) {
                try {
                    hashMap.put(split[i10], Long.valueOf(Long.parseLong(split[i10 + 1])));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, Long> parsePlayerStringToMap(String str, String str2) {
        HashMap hashMap = new HashMap();
        if (TextUtils.isEmpty(str)) {
            return hashMap;
        }
        String[] split = str.split(str2);
        if (split != null && split.length != 0) {
            for (int i10 = 0; i10 < split.length - 1; i10 += 2) {
                try {
                    hashMap.put(split[i10], Long.valueOf(Long.parseLong(split[i10 + 1])));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putToMap(Map map, String str, String str2) {
        if (map == null || TextUtils.isEmpty(str2)) {
            return;
        }
        map.put(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putToMap(Map map, String str, int i10) {
        if (map == null || i10 == Integer.MIN_VALUE) {
            return;
        }
        map.put(str, Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putToMap(Map map, String str, long j10) {
        if (map == null || j10 == SieveCacheKt.NodeMetaAndPreviousMask) {
            return;
        }
        map.put(str, Long.valueOf(j10));
    }

    static void putToMap(Map map, String str, Map map2) {
        if (map == null || map2 == null || map2.isEmpty()) {
            return;
        }
        map.put(str, map2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putToMap(Map map, String str, ArrayList arrayList) {
        if (map == null || arrayList == null || arrayList.isEmpty()) {
            return;
        }
        map.put(str, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putToMap(Map map, String str, float f10) {
        if (map == null || f10 == Float.MIN_VALUE || f10 == Float.NaN) {
            return;
        }
        map.put(str, Float.valueOf(f10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putToMap(Map map, String str, JSONObject jSONObject) {
        if (map == null || jSONObject == null) {
            return;
        }
        map.put(str, jSONObject);
    }
}
