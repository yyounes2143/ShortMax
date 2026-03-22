package com.ss.ttm.player;

import android.util.Log;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes6.dex */
public final class MediaCodecUtil {
    private static final Map<String, Integer> DOLBY_VISION_STRING_TO_LEVEL;
    private static final Map<String, Integer> DOLBY_VISION_STRING_TO_PROFILE;
    private static final Pattern PROFILE_PATTERN = Pattern.compile("^\\D?(\\d+)$");
    private static final String TAG = "MediaCodecUtil";

    static {
        HashMap hashMap = new HashMap();
        DOLBY_VISION_STRING_TO_LEVEL = hashMap;
        hashMap.put(HiAnalyticsConstant.KeyAndValue.NUMBER_01, 1);
        hashMap.put("02", 2);
        hashMap.put("03", 4);
        hashMap.put("04", 8);
        hashMap.put("05", 16);
        hashMap.put("06", 32);
        hashMap.put("07", 64);
        hashMap.put("08", 128);
        hashMap.put("09", 256);
        HashMap hashMap2 = new HashMap();
        DOLBY_VISION_STRING_TO_PROFILE = hashMap2;
        hashMap2.put("00", 1);
        hashMap2.put(HiAnalyticsConstant.KeyAndValue.NUMBER_01, 2);
        hashMap2.put("02", 4);
        hashMap2.put("03", 8);
        hashMap2.put("04", 16);
        hashMap2.put("05", 32);
        hashMap2.put("06", 64);
        hashMap2.put("07", 128);
        hashMap2.put("08", 256);
        hashMap2.put("09", 512);
    }

    @Nullable
    public static String getDolbyCodecs(int i10, int i11) {
        String str;
        if (i10 != 4 && i10 != 5 && i10 != 7) {
            if (i10 == 8) {
                str = "hev1";
            } else if (i10 == 9) {
                str = "avc3";
            } else {
                return null;
            }
        } else {
            str = "dvhe";
        }
        return str + ".0" + i10 + ".0" + i11;
    }

    @Nullable
    public static Pair<Integer, Integer> getDolbyVisionProfileAndLevel(String str, String[] strArr) {
        if (strArr != null && strArr.length >= 3) {
            Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
            if (!matcher.matches()) {
                Log.w(TAG, "Ignoring malformed Dolby Vision codec string: " + str);
                return null;
            }
            String group = matcher.group(1);
            Integer num = DOLBY_VISION_STRING_TO_PROFILE.get(group);
            if (num == null) {
                Log.w(TAG, "Unknown Dolby Vision profile string: " + group);
                return null;
            }
            String str2 = strArr[2];
            Integer num2 = DOLBY_VISION_STRING_TO_LEVEL.get(str2);
            if (num2 == null) {
                Log.w(TAG, "Unknown Dolby Vision level string: " + str2);
                return null;
            }
            return new Pair<>(num, num2);
        }
        Log.w(TAG, "Ignoring malformed Dolby Vision codec string: " + str);
        return null;
    }
}
