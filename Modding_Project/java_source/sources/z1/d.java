package z1;

import android.os.Build;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.applovin.shadow.okhttp3.HttpUrl;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import com.facebook.internal.u0;
import com.facebook.v;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: MACARuleMatchingManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMACARuleMatchingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MACARuleMatchingManager.kt\ncom/facebook/appevents/integrity/MACARuleMatchingManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,261:1\n1747#2,3:262\n1726#2,3:265\n*S KotlinDebug\n*F\n+ 1 MACARuleMatchingManager.kt\ncom/facebook/appevents/integrity/MACARuleMatchingManager\n*L\n112#1:262,3\n120#1:265,3\n*E\n"})
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f71227b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static JSONArray f71228c;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d f71226a = new d();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static String[] f71229d = {NotificationCompat.CATEGORY_EVENT, "_locale", "_appVersion", "_deviceOS", "_platform", "_deviceModel", "_nativeAppID", "_nativeAppShortVersion", "_timezone", "_carrier", "_deviceOSTypeName", "_deviceOSVersion", "_remainingDiskGB"};

    private d() {
    }

    public static final void a() {
        if (o4.a.d(d.class)) {
            return;
        }
        try {
            f71226a.g();
            if (f71228c != null) {
                f71227b = true;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
        }
    }

    public static final void b(@NotNull Bundle params, @NotNull String event) {
        String str;
        if (o4.a.d(d.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(params, "params");
            Intrinsics.checkNotNullParameter(event, "event");
            params.putString(NotificationCompat.CATEGORY_EVENT, event);
            StringBuilder sb2 = new StringBuilder();
            u0 u0Var = u0.f16316a;
            Locale J = u0Var.J();
            String str2 = null;
            if (J != null) {
                str = J.getLanguage();
            } else {
                str = null;
            }
            String str3 = "";
            if (str == null) {
                str = "";
            }
            sb2.append(str);
            sb2.append('_');
            Locale J2 = u0Var.J();
            if (J2 != null) {
                str2 = J2.getCountry();
            }
            if (str2 == null) {
                str2 = "";
            }
            sb2.append(str2);
            params.putString("_locale", sb2.toString());
            String Q = u0Var.Q();
            if (Q == null) {
                Q = "";
            }
            params.putString("_appVersion", Q);
            params.putString("_deviceOS", "ANDROID");
            params.putString("_platform", "mobile");
            String str4 = Build.MODEL;
            if (str4 == null) {
                str4 = "";
            }
            params.putString("_deviceModel", str4);
            params.putString("_nativeAppID", v.m());
            String Q2 = u0Var.Q();
            if (Q2 != null) {
                str3 = Q2;
            }
            params.putString("_nativeAppShortVersion", str3);
            params.putString("_timezone", u0Var.E());
            params.putString("_carrier", u0Var.z());
            params.putString("_deviceOSTypeName", "ANDROID");
            params.putString("_deviceOSVersion", Build.VERSION.RELEASE);
            params.putLong("_remainingDiskGB", u0Var.x());
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
        }
    }

    @Nullable
    public static final String c(@NotNull JSONObject logic) {
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(logic, "logic");
            Iterator<String> keys = logic.keys();
            if (!keys.hasNext()) {
                return null;
            }
            return keys.next();
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    @NotNull
    public static final String d(@Nullable Bundle bundle) {
        String optString;
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            JSONArray jSONArray = f71228c;
            if (jSONArray != null) {
                if (jSONArray == null || jSONArray.length() != 0) {
                    JSONArray jSONArray2 = f71228c;
                    Intrinsics.checkNotNull(jSONArray2, "null cannot be cast to non-null type org.json.JSONArray");
                    ArrayList arrayList = new ArrayList();
                    int length = jSONArray2.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        String optString2 = jSONArray2.optString(i10);
                        if (optString2 != null) {
                            JSONObject jSONObject = new JSONObject(optString2);
                            long optLong = jSONObject.optLong("id");
                            if (optLong != 0 && (optString = jSONObject.optString("rule")) != null && f(optString, bundle)) {
                                arrayList.add(Long.valueOf(optLong));
                            }
                        }
                    }
                    String jSONArray3 = new JSONArray((Collection) arrayList).toString();
                    Intrinsics.checkNotNullExpressionValue(jSONArray3, "JSONArray(res).toString()");
                    return jSONArray3;
                }
                return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
            }
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    @Nullable
    public static final ArrayList<String> e(@Nullable JSONArray jSONArray) {
        if (o4.a.d(d.class) || jSONArray == null) {
            return null;
        }
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                arrayList.add(jSONArray.get(i10).toString());
            }
            return arrayList;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    public static final boolean f(@Nullable String str, @Nullable Bundle bundle) {
        if (!o4.a.d(d.class) && str != null && bundle != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String c10 = c(jSONObject);
                if (c10 == null) {
                    return false;
                }
                Object obj = jSONObject.get(c10);
                int hashCode = c10.hashCode();
                if (hashCode != 3555) {
                    if (hashCode != 96727) {
                        if (hashCode == 109267 && c10.equals("not")) {
                            return !f(obj.toString(), bundle);
                        }
                    } else if (c10.equals("and")) {
                        JSONArray jSONArray = (JSONArray) obj;
                        if (jSONArray == null) {
                            return false;
                        }
                        int length = jSONArray.length();
                        for (int i10 = 0; i10 < length; i10++) {
                            if (!f(jSONArray.get(i10).toString(), bundle)) {
                                return false;
                            }
                        }
                        return true;
                    }
                } else if (c10.equals(SRStrategy.KEY_ORIGIN_RESOLUTION)) {
                    JSONArray jSONArray2 = (JSONArray) obj;
                    if (jSONArray2 == null) {
                        return false;
                    }
                    int length2 = jSONArray2.length();
                    for (int i11 = 0; i11 < length2; i11++) {
                        if (f(jSONArray2.get(i11).toString(), bundle)) {
                            return true;
                        }
                    }
                    return false;
                }
                JSONObject jSONObject2 = (JSONObject) obj;
                if (jSONObject2 == null) {
                    return false;
                }
                return j(c10, jSONObject2, bundle);
            } catch (Throwable th2) {
                o4.a.b(th2, d.class);
            }
        }
        return false;
    }

    private final void g() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            p u10 = FetchedAppSettingsManager.u(v.m(), false);
            if (u10 == null) {
                return;
            }
            f71228c = u10.j();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public static final void h(@Nullable Bundle bundle, @NotNull String event) {
        if (o4.a.d(d.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(event, "event");
            if (f71227b && bundle != null) {
                try {
                    b(bundle, event);
                    bundle.putString("_audiencePropertyIds", d(bundle));
                    bundle.putString("cs_maca", "1");
                    i(bundle);
                } catch (Exception unused) {
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
        }
    }

    public static final void i(@NotNull Bundle params) {
        if (o4.a.d(d.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(params, "params");
            for (String str : f71229d) {
                params.remove(str);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0058, code lost:
        if (r7 == null) goto L241;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x021b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x021c A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:5:0x000a, B:8:0x001b, B:11:0x0036, B:19:0x004b, B:26:0x0066, B:27:0x006b, B:29:0x0070, B:32:0x007a, B:33:0x0094, B:36:0x009e, B:39:0x00ab, B:125:0x021c, B:128:0x0224, B:129:0x0228, B:131:0x022e, B:42:0x00b5, B:45:0x00bf, B:46:0x00d9, B:139:0x025d, B:142:0x0265, B:143:0x0269, B:145:0x026f, B:49:0x00e3, B:52:0x00ed, B:53:0x0107, B:101:0x01b7, B:56:0x0111, B:95:0x019b, B:59:0x011b, B:86:0x0175, B:62:0x0125, B:65:0x012f, B:117:0x01fd, B:68:0x0139, B:71:0x0143, B:180:0x0320, B:74:0x014d, B:107:0x01cd, B:77:0x0157, B:80:0x0161, B:113:0x01e9, B:83:0x016b, B:89:0x0187, B:92:0x0191, B:98:0x01ad, B:104:0x01c3, B:110:0x01df, B:114:0x01f3, B:120:0x020f, B:134:0x0250, B:148:0x0291, B:151:0x029b, B:154:0x02b7, B:157:0x02c1, B:158:0x02cb, B:174:0x030b, B:161:0x02d5, B:164:0x02df, B:165:0x02ed, B:168:0x02f6, B:169:0x02ff, B:175:0x0314, B:181:0x0329, B:184:0x0332, B:22:0x005c), top: B:190:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x026f A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:5:0x000a, B:8:0x001b, B:11:0x0036, B:19:0x004b, B:26:0x0066, B:27:0x006b, B:29:0x0070, B:32:0x007a, B:33:0x0094, B:36:0x009e, B:39:0x00ab, B:125:0x021c, B:128:0x0224, B:129:0x0228, B:131:0x022e, B:42:0x00b5, B:45:0x00bf, B:46:0x00d9, B:139:0x025d, B:142:0x0265, B:143:0x0269, B:145:0x026f, B:49:0x00e3, B:52:0x00ed, B:53:0x0107, B:101:0x01b7, B:56:0x0111, B:95:0x019b, B:59:0x011b, B:86:0x0175, B:62:0x0125, B:65:0x012f, B:117:0x01fd, B:68:0x0139, B:71:0x0143, B:180:0x0320, B:74:0x014d, B:107:0x01cd, B:77:0x0157, B:80:0x0161, B:113:0x01e9, B:83:0x016b, B:89:0x0187, B:92:0x0191, B:98:0x01ad, B:104:0x01c3, B:110:0x01df, B:114:0x01f3, B:120:0x020f, B:134:0x0250, B:148:0x0291, B:151:0x029b, B:154:0x02b7, B:157:0x02c1, B:158:0x02cb, B:174:0x030b, B:161:0x02d5, B:164:0x02df, B:165:0x02ed, B:168:0x02f6, B:169:0x02ff, B:175:0x0314, B:181:0x0329, B:184:0x0332, B:22:0x005c), top: B:190:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x030a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x030b A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:5:0x000a, B:8:0x001b, B:11:0x0036, B:19:0x004b, B:26:0x0066, B:27:0x006b, B:29:0x0070, B:32:0x007a, B:33:0x0094, B:36:0x009e, B:39:0x00ab, B:125:0x021c, B:128:0x0224, B:129:0x0228, B:131:0x022e, B:42:0x00b5, B:45:0x00bf, B:46:0x00d9, B:139:0x025d, B:142:0x0265, B:143:0x0269, B:145:0x026f, B:49:0x00e3, B:52:0x00ed, B:53:0x0107, B:101:0x01b7, B:56:0x0111, B:95:0x019b, B:59:0x011b, B:86:0x0175, B:62:0x0125, B:65:0x012f, B:117:0x01fd, B:68:0x0139, B:71:0x0143, B:180:0x0320, B:74:0x014d, B:107:0x01cd, B:77:0x0157, B:80:0x0161, B:113:0x01e9, B:83:0x016b, B:89:0x0187, B:92:0x0191, B:98:0x01ad, B:104:0x01c3, B:110:0x01df, B:114:0x01f3, B:120:0x020f, B:134:0x0250, B:148:0x0291, B:151:0x029b, B:154:0x02b7, B:157:0x02c1, B:158:0x02cb, B:174:0x030b, B:161:0x02d5, B:164:0x02df, B:165:0x02ed, B:168:0x02f6, B:169:0x02ff, B:175:0x0314, B:181:0x0329, B:184:0x0332, B:22:0x005c), top: B:190:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x031f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0320 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:5:0x000a, B:8:0x001b, B:11:0x0036, B:19:0x004b, B:26:0x0066, B:27:0x006b, B:29:0x0070, B:32:0x007a, B:33:0x0094, B:36:0x009e, B:39:0x00ab, B:125:0x021c, B:128:0x0224, B:129:0x0228, B:131:0x022e, B:42:0x00b5, B:45:0x00bf, B:46:0x00d9, B:139:0x025d, B:142:0x0265, B:143:0x0269, B:145:0x026f, B:49:0x00e3, B:52:0x00ed, B:53:0x0107, B:101:0x01b7, B:56:0x0111, B:95:0x019b, B:59:0x011b, B:86:0x0175, B:62:0x0125, B:65:0x012f, B:117:0x01fd, B:68:0x0139, B:71:0x0143, B:180:0x0320, B:74:0x014d, B:107:0x01cd, B:77:0x0157, B:80:0x0161, B:113:0x01e9, B:83:0x016b, B:89:0x0187, B:92:0x0191, B:98:0x01ad, B:104:0x01c3, B:110:0x01df, B:114:0x01f3, B:120:0x020f, B:134:0x0250, B:148:0x0291, B:151:0x029b, B:154:0x02b7, B:157:0x02c1, B:158:0x02cb, B:174:0x030b, B:161:0x02d5, B:164:0x02df, B:165:0x02ed, B:168:0x02f6, B:169:0x02ff, B:175:0x0314, B:181:0x0329, B:184:0x0332, B:22:0x005c), top: B:190:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:219:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:222:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:224:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:226:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:230:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean j(@org.jetbrains.annotations.NotNull java.lang.String r8, @org.jetbrains.annotations.NotNull org.json.JSONObject r9, @org.jetbrains.annotations.Nullable android.os.Bundle r10) {
        /*
            Method dump skipped, instructions count: 986
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: z1.d.j(java.lang.String, org.json.JSONObject, android.os.Bundle):boolean");
    }
}
