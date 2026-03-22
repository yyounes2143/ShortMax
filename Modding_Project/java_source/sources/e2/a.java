package e2;

import android.util.Patterns;
import androidx.autofill.HintConstants;
import com.applovin.sdk.AppLovinEventTypes;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.io.File;
import java.io.FileInputStream;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: FeatureExtractor.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f50751a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static Map<String, String> f50752b;

    /* renamed from: c  reason: collision with root package name */
    private static Map<String, String> f50753c;

    /* renamed from: d  reason: collision with root package name */
    private static Map<String, String> f50754d;

    /* renamed from: e  reason: collision with root package name */
    private static JSONObject f50755e;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f50756f;

    private a() {
    }

    @Nullable
    public static final float[] a(@NotNull JSONObject viewHierarchy, @NotNull String appName) {
        String lowerCase;
        JSONObject jSONObject;
        String screenName;
        JSONArray jSONArray;
        a aVar;
        JSONObject b10;
        if (o4.a.d(a.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(viewHierarchy, "viewHierarchy");
            Intrinsics.checkNotNullParameter(appName, "appName");
            if (!f50756f) {
                return null;
            }
            float[] fArr = new float[30];
            for (int i10 = 0; i10 < 30; i10++) {
                fArr[i10] = 0.0f;
            }
            try {
                lowerCase = appName.toLowerCase();
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
                jSONObject = new JSONObject(viewHierarchy.optJSONObject(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW).toString());
                screenName = viewHierarchy.optString("screenname");
                jSONArray = new JSONArray();
                aVar = f50751a;
                aVar.j(jSONObject, jSONArray);
                aVar.m(fArr, aVar.i(jSONObject));
                b10 = aVar.b(jSONObject);
            } catch (JSONException unused) {
            }
            if (b10 == null) {
                return null;
            }
            Intrinsics.checkNotNullExpressionValue(screenName, "screenName");
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "viewTree.toString()");
            aVar.m(fArr, aVar.h(b10, jSONArray, screenName, jSONObject2, lowerCase));
            return fArr;
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
            return null;
        }
    }

    private final JSONObject b(JSONObject jSONObject) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
        } catch (JSONException unused) {
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
        if (jSONObject.optBoolean("is_interacted")) {
            return jSONObject;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
        if (optJSONArray == null) {
            return null;
        }
        int length = optJSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObject2 = optJSONArray.getJSONObject(i10);
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "children.getJSONObject(i)");
            JSONObject b10 = b(jSONObject2);
            if (b10 != null) {
                return b10;
            }
        }
        return null;
    }

    @NotNull
    public static final String c(@NotNull String buttonText, @NotNull String activityName, @NotNull String appName) {
        if (o4.a.d(a.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(buttonText, "buttonText");
            Intrinsics.checkNotNullParameter(activityName, "activityName");
            Intrinsics.checkNotNullParameter(appName, "appName");
            String lowerCase = (appName + " | " + activityName + ", " + buttonText).toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
            return lowerCase;
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
            return null;
        }
    }

    public static final void d(@Nullable File file) {
        if (o4.a.d(a.class)) {
            return;
        }
        try {
            try {
                f50755e = new JSONObject();
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[fileInputStream.available()];
                fileInputStream.read(bArr);
                fileInputStream.close();
                f50755e = new JSONObject(new String(bArr, Charsets.UTF_8));
                f50752b = p0.m(k.a("ENGLISH", "1"), k.a("GERMAN", "2"), k.a("SPANISH", "3"), k.a("JAPANESE", "4"));
                f50753c = p0.m(k.a("VIEW_CONTENT", MBridgeConstans.ENDCARD_URL_TYPE_PL), k.a("SEARCH", "1"), k.a("ADD_TO_CART", "2"), k.a("ADD_TO_WISHLIST", "3"), k.a("INITIATE_CHECKOUT", "4"), k.a("ADD_PAYMENT_INFO", "5"), k.a("PURCHASE", SubsSku.SCENE_AD_2_PAY), k.a("LEAD", "7"), k.a("COMPLETE_REGISTRATION", "8"));
                f50754d = p0.m(k.a("BUTTON_TEXT", "1"), k.a("PAGE_TITLE", "2"), k.a("RESOLVED_DOCUMENT_LINK", "3"), k.a("BUTTON_ID", "4"));
                f50756f = true;
            } catch (Exception unused) {
            }
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
        }
    }

    private final boolean e(JSONObject jSONObject) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            if (((jSONObject.optInt("classtypebitmask") & 1) << 5) <= 0) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    public static final boolean f() {
        if (o4.a.d(a.class)) {
            return false;
        }
        try {
            return f50756f;
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
            return false;
        }
    }

    private final boolean g(String[] strArr, String[] strArr2) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (StringsKt.b0(str2, str, false, 2, null)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final float[] h(JSONObject jSONObject, JSONArray jSONArray, String str, String str2, String str3) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        float f22;
        float f23;
        if (o4.a.d(this)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            for (int i10 = 0; i10 < 30; i10++) {
                fArr[i10] = 0.0f;
            }
            int length = jSONArray.length();
            if (length > 1) {
                f10 = length - 1.0f;
            } else {
                f10 = 0.0f;
            }
            fArr[3] = f10;
            try {
                int length2 = jSONArray.length();
                for (int i11 = 0; i11 < length2; i11++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i11);
                    Intrinsics.checkNotNullExpressionValue(jSONObject2, "siblings.getJSONObject(i)");
                    if (e(jSONObject2)) {
                        fArr[9] = fArr[9] + 1.0f;
                    }
                }
            } catch (JSONException unused) {
            }
            fArr[13] = -1.0f;
            fArr[14] = -1.0f;
            String str4 = str + '|' + str3;
            StringBuilder sb2 = new StringBuilder();
            StringBuilder sb3 = new StringBuilder();
            n(jSONObject, sb3, sb2);
            String sb4 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(sb4, "hintSB.toString()");
            String sb5 = sb3.toString();
            Intrinsics.checkNotNullExpressionValue(sb5, "textSB.toString()");
            if (l("ENGLISH", "COMPLETE_REGISTRATION", "BUTTON_TEXT", sb5)) {
                f11 = 1.0f;
            } else {
                f11 = 0.0f;
            }
            fArr[15] = f11;
            if (l("ENGLISH", "COMPLETE_REGISTRATION", "PAGE_TITLE", str4)) {
                f12 = 1.0f;
            } else {
                f12 = 0.0f;
            }
            fArr[16] = f12;
            if (l("ENGLISH", "COMPLETE_REGISTRATION", "BUTTON_ID", sb4)) {
                f13 = 1.0f;
            } else {
                f13 = 0.0f;
            }
            fArr[17] = f13;
            if (StringsKt.b0(str2, HintConstants.AUTOFILL_HINT_PASSWORD, false, 2, null)) {
                f14 = 1.0f;
            } else {
                f14 = 0.0f;
            }
            fArr[18] = f14;
            if (k("(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)", str2)) {
                f15 = 1.0f;
            } else {
                f15 = 0.0f;
            }
            fArr[19] = f15;
            if (k("(?i)(sign in)|login|signIn", str2)) {
                f16 = 1.0f;
            } else {
                f16 = 0.0f;
            }
            fArr[20] = f16;
            if (k("(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)", str2)) {
                f17 = 1.0f;
            } else {
                f17 = 0.0f;
            }
            fArr[21] = f17;
            if (l("ENGLISH", "PURCHASE", "BUTTON_TEXT", sb5)) {
                f18 = 1.0f;
            } else {
                f18 = 0.0f;
            }
            fArr[22] = f18;
            if (l("ENGLISH", "PURCHASE", "PAGE_TITLE", str4)) {
                f19 = 1.0f;
            } else {
                f19 = 0.0f;
            }
            fArr[24] = f19;
            if (k("(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart", sb5)) {
                f20 = 1.0f;
            } else {
                f20 = 0.0f;
            }
            fArr[25] = f20;
            if (k("(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy", str4)) {
                f21 = 1.0f;
            } else {
                f21 = 0.0f;
            }
            fArr[27] = f21;
            if (l("ENGLISH", "LEAD", "BUTTON_TEXT", sb5)) {
                f22 = 1.0f;
            } else {
                f22 = 0.0f;
            }
            fArr[28] = f22;
            if (l("ENGLISH", "LEAD", "PAGE_TITLE", str4)) {
                f23 = 1.0f;
            } else {
                f23 = 0.0f;
            }
            fArr[29] = f23;
            return fArr;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final float[] i(JSONObject jSONObject) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            for (int i10 = 0; i10 < 30; i10++) {
                fArr[i10] = 0.0f;
            }
            String optString = jSONObject.optString(MimeTypes.BASE_TYPE_TEXT);
            Intrinsics.checkNotNullExpressionValue(optString, "node.optString(TEXT_KEY)");
            String lowerCase = optString.toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
            String optString2 = jSONObject.optString("hint");
            Intrinsics.checkNotNullExpressionValue(optString2, "node.optString(HINT_KEY)");
            String lowerCase2 = optString2.toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase()");
            String optString3 = jSONObject.optString("classname");
            Intrinsics.checkNotNullExpressionValue(optString3, "node.optString(CLASS_NAME_KEY)");
            String lowerCase3 = optString3.toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase3, "this as java.lang.String).toLowerCase()");
            int optInt = jSONObject.optInt("inputtype", -1);
            String[] strArr = {lowerCase, lowerCase2};
            if (g(new String[]{"$", "amount", "price", "total"}, strArr)) {
                fArr[0] = fArr[0] + 1.0f;
            }
            if (g(new String[]{HintConstants.AUTOFILL_HINT_PASSWORD, "pwd"}, strArr)) {
                fArr[1] = fArr[1] + 1.0f;
            }
            if (g(new String[]{"tel", HintConstants.AUTOFILL_HINT_PHONE}, strArr)) {
                fArr[2] = fArr[2] + 1.0f;
            }
            if (g(new String[]{AppLovinEventTypes.USER_EXECUTED_SEARCH}, strArr)) {
                fArr[4] = fArr[4] + 1.0f;
            }
            if (optInt >= 0) {
                fArr[5] = fArr[5] + 1.0f;
            }
            if (optInt == 2 || optInt == 3) {
                fArr[6] = fArr[6] + 1.0f;
            }
            if (optInt == 32 || Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
                fArr[7] = fArr[7] + 1.0f;
            }
            if (StringsKt.b0(lowerCase3, "checkbox", false, 2, null)) {
                fArr[8] = fArr[8] + 1.0f;
            }
            if (g(new String[]{CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, "confirm", "done", "submit"}, new String[]{lowerCase})) {
                fArr[10] = fArr[10] + 1.0f;
            }
            if (StringsKt.b0(lowerCase3, "radio", false, 2, null) && StringsKt.b0(lowerCase3, "button", false, 2, null)) {
                fArr[12] = fArr[12] + 1.0f;
            }
            try {
                JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
                int length = optJSONArray.length();
                for (int i11 = 0; i11 < length; i11++) {
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i11);
                    Intrinsics.checkNotNullExpressionValue(jSONObject2, "childViews.getJSONObject(i)");
                    m(fArr, i(jSONObject2));
                }
            } catch (JSONException unused) {
            }
            return fArr;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final boolean j(JSONObject jSONObject, JSONArray jSONArray) {
        boolean z10;
        if (o4.a.d(this)) {
            return false;
        }
        try {
            if (jSONObject.optBoolean("is_interacted")) {
                return true;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
            int length = optJSONArray.length();
            int i10 = 0;
            while (true) {
                if (i10 < length) {
                    if (optJSONArray.getJSONObject(i10).optBoolean("is_interacted")) {
                        z10 = true;
                        break;
                    }
                    i10++;
                } else {
                    z10 = false;
                    break;
                }
            }
            boolean z11 = z10;
            JSONArray jSONArray2 = new JSONArray();
            if (z10) {
                int length2 = optJSONArray.length();
                for (int i11 = 0; i11 < length2; i11++) {
                    jSONArray.put(optJSONArray.getJSONObject(i11));
                }
            } else {
                int length3 = optJSONArray.length();
                for (int i12 = 0; i12 < length3; i12++) {
                    JSONObject child = optJSONArray.getJSONObject(i12);
                    Intrinsics.checkNotNullExpressionValue(child, "child");
                    if (j(child, jSONArray)) {
                        jSONArray2.put(child);
                        z11 = true;
                    }
                }
                jSONObject.put("childviews", jSONArray2);
            }
            return z11;
        } catch (JSONException unused) {
            return false;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final boolean k(String str, String str2) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            return Pattern.compile(str).matcher(str2).find();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final boolean l(String str, String str2, String str3, String str4) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        if (o4.a.d(this)) {
            return false;
        }
        try {
            JSONObject jSONObject = f50755e;
            String str5 = null;
            Map<String, String> map = null;
            str5 = null;
            str5 = null;
            str5 = null;
            str5 = null;
            if (jSONObject == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rules");
                jSONObject = null;
            }
            JSONObject optJSONObject3 = jSONObject.optJSONObject("rulesForLanguage");
            if (optJSONObject3 != null) {
                Map<String, String> map2 = f50752b;
                if (map2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("languageInfo");
                    map2 = null;
                }
                JSONObject optJSONObject4 = optJSONObject3.optJSONObject(map2.get(str));
                if (optJSONObject4 != null && (optJSONObject = optJSONObject4.optJSONObject("rulesForEvent")) != null) {
                    Map<String, String> map3 = f50753c;
                    if (map3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("eventInfo");
                        map3 = null;
                    }
                    JSONObject optJSONObject5 = optJSONObject.optJSONObject(map3.get(str2));
                    if (optJSONObject5 != null && (optJSONObject2 = optJSONObject5.optJSONObject("positiveRules")) != null) {
                        Map<String, String> map4 = f50754d;
                        if (map4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("textTypeInfo");
                        } else {
                            map = map4;
                        }
                        str5 = optJSONObject2.optString(map.get(str3));
                    }
                }
            }
            if (str5 == null) {
                return false;
            }
            return k(str5, str4);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final void m(float[] fArr, float[] fArr2) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            int length = fArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                fArr[i10] = fArr[i10] + fArr2[i10];
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void n(JSONObject jSONObject, StringBuilder sb2, StringBuilder sb3) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            String optString = jSONObject.optString(MimeTypes.BASE_TYPE_TEXT, "");
            Intrinsics.checkNotNullExpressionValue(optString, "view.optString(TEXT_KEY, \"\")");
            String lowerCase = optString.toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
            String optString2 = jSONObject.optString("hint", "");
            Intrinsics.checkNotNullExpressionValue(optString2, "view.optString(HINT_KEY, \"\")");
            String lowerCase2 = optString2.toLowerCase();
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase()");
            if (lowerCase.length() > 0) {
                sb2.append(lowerCase);
                sb2.append(" ");
            }
            if (lowerCase2.length() > 0) {
                sb3.append(lowerCase2);
                sb3.append(" ");
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
            if (optJSONArray == null) {
                return;
            }
            int length = optJSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                try {
                    JSONObject currentChildView = optJSONArray.getJSONObject(i10);
                    Intrinsics.checkNotNullExpressionValue(currentChildView, "currentChildView");
                    n(currentChildView, sb2, sb3);
                } catch (JSONException unused) {
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
