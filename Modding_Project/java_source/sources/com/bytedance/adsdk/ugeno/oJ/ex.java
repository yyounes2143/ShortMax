package com.bytedance.adsdk.ugeno.oJ;

import android.text.TextUtils;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.adjust.sdk.Constants;
import com.bytedance.adsdk.ugeno.oJ.tB;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Interpolator ZYk(String str) {
        char c10;
        switch (str.hashCode()) {
            case -1965072618:
                if (str.equals("ease_in")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -1102672091:
                if (str.equals("linear")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -787702915:
                if (str.equals("ease_out")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 1065009829:
                if (str.equals("ease_in_out")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        if (c10 != 0) {
            if (c10 != 1) {
                if (c10 != 2) {
                    return new LinearInterpolator();
                }
                return new DecelerateInterpolator();
            }
            return new AccelerateDecelerateInterpolator();
        }
        return new AccelerateInterpolator();
    }

    public static int oJ(int i10) {
        if (i10 < 0) {
            return -1;
        }
        if (i10 == 0) {
            return Integer.MIN_VALUE;
        }
        return i10 - 1;
    }

    public static float[] tB(String str) {
        float[] fArr = {0.0f, 0.0f};
        JSONArray oJ = com.bytedance.adsdk.ugeno.cFZ.ZYk.oJ(str, (JSONArray) null);
        if (oJ != null && oJ.length() == 2) {
            fArr[0] = (float) oJ.optDouble(0);
            fArr[1] = (float) oJ.optDouble(1);
        }
        return fArr;
    }

    public static List<tB> oJ(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() <= 0) {
                return null;
            }
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                if (optJSONObject != null) {
                    arrayList.add(oJ(optJSONObject, jSONObject));
                }
            }
            return arrayList;
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static tB.oJ ZYk(String str, JSONObject jSONObject) {
        JSONArray oJ;
        if (TextUtils.isEmpty(str) || (oJ = com.bytedance.adsdk.ugeno.cFZ.ZYk.oJ(str, (JSONArray) null)) == null || oJ.length() != 2) {
            return null;
        }
        tB.oJ oJVar = new tB.oJ();
        oJVar.oJ = com.bytedance.adsdk.ugeno.tB.ZYk.oJ(oJ.optString(0), jSONObject);
        oJVar.ZYk = com.bytedance.adsdk.ugeno.tB.ZYk.oJ(oJ.optString(1), jSONObject);
        return oJVar;
    }

    public static tB oJ(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null) {
            return null;
        }
        tB tBVar = new tB();
        tBVar.ZYk(com.bytedance.adsdk.ugeno.cFZ.tB.oJ(com.bytedance.adsdk.ugeno.tB.ZYk.oJ(jSONObject.optString("delay"), jSONObject2), 0L));
        tBVar.tB(com.bytedance.adsdk.ugeno.tB.ZYk.oJ(jSONObject.optString("name"), jSONObject2));
        tBVar.ZYk(com.bytedance.adsdk.ugeno.cFZ.tB.oJ(com.bytedance.adsdk.ugeno.tB.ZYk.oJ(jSONObject.optString("playState"), jSONObject2), 1));
        tBVar.oJ(Math.max(com.bytedance.adsdk.ugeno.cFZ.tB.oJ(com.bytedance.adsdk.ugeno.tB.ZYk.oJ(jSONObject.optString("duration"), jSONObject2), 0L), 0L));
        tBVar.oJ(com.bytedance.adsdk.ugeno.cFZ.tB.oJ(com.bytedance.adsdk.ugeno.tB.ZYk.oJ(jSONObject.optString("playCount"), jSONObject2), 1));
        tBVar.oJ(com.bytedance.adsdk.ugeno.tB.ZYk.oJ(jSONObject.optString("playDirection"), jSONObject2));
        tBVar.oJ(ZYk(jSONObject.optString("transformOrigin"), jSONObject2));
        tBVar.ZYk(com.bytedance.adsdk.ugeno.tB.ZYk.oJ(jSONObject.optString("timingFunction", "linear"), jSONObject2));
        tBVar.oJ(jSONObject.optJSONObject("effect"));
        tBVar.oJ(oJ(jSONObject.optJSONArray("keyframes"), jSONObject2));
        return tBVar;
    }

    public static Map<String, TreeMap<Float, String>> oJ(JSONArray jSONArray, JSONObject jSONObject) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i10);
            if (optJSONObject != null) {
                float optDouble = (float) optJSONObject.optDouble(TypedValues.CycleType.S_WAVE_OFFSET);
                Iterator<String> keys = optJSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    TreeMap treeMap = (TreeMap) hashMap.get(next);
                    if (!TextUtils.equals(next, TypedValues.CycleType.S_WAVE_OFFSET)) {
                        if (hashMap.containsKey(next) && treeMap != null) {
                            treeMap.put(Float.valueOf(optDouble), com.bytedance.adsdk.ugeno.tB.ZYk.oJ(optJSONObject.optString(next), jSONObject));
                        } else {
                            TreeMap treeMap2 = new TreeMap();
                            treeMap2.put(Float.valueOf(optDouble), com.bytedance.adsdk.ugeno.tB.ZYk.oJ(optJSONObject.optString(next), jSONObject));
                            hashMap.put(next, treeMap2);
                        }
                    }
                }
            }
        }
        return hashMap;
    }

    public static int oJ(String str) {
        int hashCode = str.hashCode();
        if (hashCode == -1408024454) {
            return str.equals("alternate") ? 2 : 1;
        } else if (hashCode != -1039745817) {
            return 1;
        } else {
            str.equals(Constants.NORMAL);
            return 1;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
        if (r6.equals("top") == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int oJ(java.lang.String r6, int r7) {
        /*
            r0 = 1
            r1 = 0
            r2 = 2
            int r3 = r7 / 2
            boolean r4 = android.text.TextUtils.isEmpty(r6)
            if (r4 == 0) goto Lc
            return r3
        Lc:
            r6.hashCode()
            r4 = -1
            int r5 = r6.hashCode()
            switch(r5) {
                case -1383228885: goto L43;
                case -1364013995: goto L38;
                case 115029: goto L2f;
                case 3317767: goto L24;
                case 108511772: goto L19;
                default: goto L17;
            }
        L17:
            r2 = r4
            goto L4d
        L19:
            java.lang.String r2 = "right"
            boolean r2 = r6.equals(r2)
            if (r2 != 0) goto L22
            goto L17
        L22:
            r2 = 4
            goto L4d
        L24:
            java.lang.String r2 = "left"
            boolean r2 = r6.equals(r2)
            if (r2 != 0) goto L2d
            goto L17
        L2d:
            r2 = 3
            goto L4d
        L2f:
            java.lang.String r5 = "top"
            boolean r5 = r6.equals(r5)
            if (r5 != 0) goto L4d
            goto L17
        L38:
            java.lang.String r2 = "center"
            boolean r2 = r6.equals(r2)
            if (r2 != 0) goto L41
            goto L17
        L41:
            r2 = r0
            goto L4d
        L43:
            java.lang.String r2 = "bottom"
            boolean r2 = r6.equals(r2)
            if (r2 != 0) goto L4c
            goto L17
        L4c:
            r2 = r1
        L4d:
            switch(r2) {
                case 0: goto L75;
                case 1: goto L74;
                case 2: goto L73;
                case 3: goto L73;
                case 4: goto L75;
                default: goto L50;
            }
        L50:
            java.lang.String r2 = "%"
            boolean r2 = r6.endsWith(r2)
            if (r2 == 0) goto L6d
            int r2 = r6.length()     // Catch: java.lang.NumberFormatException -> L6c
            int r2 = r2 - r0
            java.lang.String r6 = r6.substring(r1, r2)     // Catch: java.lang.NumberFormatException -> L6c
            float r6 = java.lang.Float.parseFloat(r6)     // Catch: java.lang.NumberFormatException -> L6c
            float r7 = (float) r7
            float r7 = r7 * r6
            r6 = 1120403456(0x42c80000, float:100.0)
            float r7 = r7 / r6
            int r6 = (int) r7
            return r6
        L6c:
            return r3
        L6d:
            int r6 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.NumberFormatException -> L72
            return r6
        L72:
            return r3
        L73:
            return r1
        L74:
            return r3
        L75:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.oJ.ex.oJ(java.lang.String, int):int");
    }
}
