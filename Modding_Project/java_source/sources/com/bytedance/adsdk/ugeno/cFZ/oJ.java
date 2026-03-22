package com.bytedance.adsdk.ugeno.cFZ;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.view.ViewCompat;
/* loaded from: classes3.dex */
public class oJ {

    /* renamed from: com.bytedance.adsdk.ugeno.cFZ.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0143oJ {
        public int[] ZYk;
        public GradientDrawable.Orientation oJ;
        public float[] tB;
    }

    public static C0143oJ ZYk(String str) {
        int indexOf;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String substring = str.substring(str.indexOf("(") + 1, str.lastIndexOf(")"));
            if (TextUtils.isEmpty(substring)) {
                return null;
            }
            int oJ = oJ(substring, '%');
            int indexOf2 = substring.indexOf(",");
            String substring2 = substring.substring(0, indexOf2);
            C0143oJ c0143oJ = new C0143oJ();
            c0143oJ.oJ = ex(substring2);
            String substring3 = substring.substring(indexOf2 + 1);
            int[] iArr = new int[oJ];
            float[] fArr = new float[oJ];
            for (int i10 = 0; i10 < oJ; i10++) {
                int indexOf3 = substring3.indexOf("%");
                String trim = substring3.substring(0, indexOf3 + 1).trim();
                if (trim.contains("rgba")) {
                    indexOf = trim.indexOf(")");
                } else {
                    indexOf = trim.indexOf(" ");
                }
                int i11 = indexOf + 1;
                iArr[i10] = oJ(trim.substring(0, i11).trim());
                fArr[i10] = tB.oJ(trim.substring(i11, trim.indexOf("%")).trim(), 0.0f) / 100.0f;
                int i12 = indexOf3 + 2;
                if (substring3.length() <= i12) {
                    break;
                }
                substring3 = substring3.substring(i12);
            }
            if (oJ < 2) {
                return null;
            }
            c0143oJ.ZYk = iArr;
            c0143oJ.tB = fArr;
            return c0143oJ;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static GradientDrawable.Orientation ex(String str) {
        int parseInt;
        try {
            if (str.contains("deg")) {
                parseInt = Integer.parseInt(str.substring(0, str.length() - 3).trim());
            } else {
                parseInt = Integer.parseInt(str);
            }
            if (parseInt == 90) {
                return GradientDrawable.Orientation.LEFT_RIGHT;
            }
            if (parseInt == 180) {
                return GradientDrawable.Orientation.TOP_BOTTOM;
            }
            if (parseInt == 270) {
                return GradientDrawable.Orientation.RIGHT_LEFT;
            }
            if (parseInt == 135) {
                return GradientDrawable.Orientation.TL_BR;
            }
            if (parseInt == 45) {
                return GradientDrawable.Orientation.BL_TR;
            }
            return GradientDrawable.Orientation.BOTTOM_TOP;
        } catch (Exception unused) {
            return GradientDrawable.Orientation.LEFT_RIGHT;
        }
    }

    public static int oJ(String str) {
        return oJ(str, (int) ViewCompat.MEASURED_STATE_MASK);
    }

    public static boolean tB(String str) {
        if (TextUtils.isEmpty(str) || !str.startsWith("linear-gradient")) {
            return false;
        }
        return true;
    }

    public static int oJ(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return i10;
        }
        if (str.equals("transparent")) {
            return 0;
        }
        if (str.charAt(0) == '#' && str.length() == 4) {
            StringBuilder sb2 = new StringBuilder("#");
            char[] charArray = str.toCharArray();
            for (int i11 = 1; i11 < charArray.length; i11++) {
                sb2.append(charArray[i11]);
                sb2.append(charArray[i11]);
            }
            return Color.parseColor(sb2.toString());
        } else if (str.charAt(0) == '#' && str.length() == 7) {
            return Color.parseColor(str);
        } else {
            if (str.charAt(0) == '#' && str.length() == 9) {
                return Color.parseColor(str);
            }
            if (str.startsWith("rgba")) {
                String[] split = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",");
                if (split == null || split.length != 4) {
                    return i10;
                }
                return (((int) ((Float.parseFloat(split[3]) * 255.0f) + 0.5f)) << 24) | (((int) Float.parseFloat(split[0])) << 16) | (((int) Float.parseFloat(split[1])) << 8) | ((int) Float.parseFloat(split[2]));
            }
            return ViewCompat.MEASURED_STATE_MASK;
        }
    }

    public static int oJ(String str, char c10) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < str.length(); i11++) {
            if (str.charAt(i11) == c10) {
                i10++;
            }
        }
        return i10;
    }

    public static int oJ(int i10, int i11) {
        if (i11 < 0 || i11 > 255) {
            Log.e("ColorUtils", "alpha must be between 0 and 255. ");
            i11 = 255;
        }
        return (i10 & ViewCompat.MEASURED_SIZE_MASK) | (i11 << 24);
    }
}
