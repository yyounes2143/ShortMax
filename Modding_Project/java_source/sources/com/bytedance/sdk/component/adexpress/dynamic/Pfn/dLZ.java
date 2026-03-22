package com.bytedance.sdk.component.adexpress.dynamic.Pfn;

import android.text.TextUtils;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class dLZ {
    private static String ZYk;
    private static final Set<String> oJ = Collections.unmodifiableSet(new HashSet(Arrays.asList("dislike", "close", "close-fill", "webview-close")));

    public static double ZYk(String str) {
        try {
            return Double.parseDouble(new JSONObject(str).optString(TtmlNode.ATTR_TTS_FONT_SIZE));
        } catch (Throwable unused) {
            return 0.0d;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:(3:185|(1:188)|189)(2:214|(1:216)(5:217|191|(5:201|202|203|(3:205|(1:211)(1:208)|209)|212)|199|200))|190|191|(3:193|195|197)|201|202|203|(0)|212) */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0445 A[Catch: Exception -> 0x0456, TryCatch #5 {Exception -> 0x0456, blocks: (B:220:0x043b, B:222:0x0445, B:227:0x044f), top: B:282:0x043b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk.tB oJ(java.lang.String r23, java.lang.String r24, java.lang.String r25, boolean r26, boolean r27, int r28, com.bytedance.sdk.component.adexpress.dynamic.ex.so r29, double r30, int r32, double r33, java.lang.String r35, com.bytedance.sdk.component.adexpress.ZYk.PiB r36) {
        /*
            Method dump skipped, instructions count: 1280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.dynamic.Pfn.dLZ.oJ(java.lang.String, java.lang.String, java.lang.String, boolean, boolean, int, com.bytedance.sdk.component.adexpress.dynamic.ex.so, double, int, double, java.lang.String, com.bytedance.sdk.component.adexpress.ZYk.PiB):com.bytedance.sdk.component.adexpress.dynamic.Pfn.ZYk$tB");
    }

    public static int[] ZYk(String str, float f10, boolean z10) {
        try {
            TextView textView = new TextView(com.bytedance.sdk.component.adexpress.ex.oJ());
            textView.setTextSize(f10);
            textView.setText(str);
            textView.setIncludeFontPadding(false);
            if (z10) {
                textView.setSingleLine();
            }
            textView.measure(-2, -2);
            return new int[]{textView.getMeasuredWidth() + 2, textView.getMeasuredHeight() + 2};
        } catch (Exception unused) {
            return new int[]{0, 0};
        }
    }

    public static boolean ZYk() {
        return !TextUtils.isEmpty(ZYk);
    }

    public static String oJ(String str) {
        String[] split;
        return (TextUtils.isEmpty(str) || (split = str.split("adx:")) == null || split.length < 2) ? "" : split[1];
    }

    private static ZYk.tB oJ(ZYk.tB tBVar, String str, String str2, String str3) {
        if (str.contains("union")) {
            tBVar.oJ = 0.0f;
            tBVar.ZYk = 0.0f;
        } else {
            if (TextUtils.isEmpty(str3)) {
                str3 = oJ(str);
            }
            if (TextUtils.isEmpty(str3)) {
                tBVar.oJ = 0.0f;
                tBVar.ZYk = 0.0f;
            } else {
                return oJ(str3, str2);
            }
        }
        return tBVar;
    }

    public static ZYk.tB oJ(String str, String str2) {
        return oJ(str, str2, false);
    }

    public static ZYk.tB oJ(String str, String str2, boolean z10) {
        ZYk.tB tBVar = new ZYk.tB();
        try {
            JSONObject jSONObject = new JSONObject(str2);
            int[] oJ2 = oJ(str, (float) ZYk(str2), z10);
            tBVar.oJ = oJ2[0];
            tBVar.ZYk = oJ2[1];
            if (jSONObject.optDouble("lineHeight", 1.0d) == 0.0d) {
                tBVar.ZYk = 0.0f;
            }
        } catch (Exception unused) {
        }
        return tBVar;
    }

    public static int[] oJ(String str, float f10, boolean z10) {
        int[] ZYk2 = ZYk(str, f10, z10);
        return new int[]{com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(com.bytedance.sdk.component.adexpress.ex.oJ(), ZYk2[0]), com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(com.bytedance.sdk.component.adexpress.ex.oJ(), ZYk2[1])};
    }

    public static String oJ() {
        return ZYk;
    }
}
