package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class J {

    /* renamed from: a  reason: collision with root package name */
    public static final String f23746a = C2976h.class.getSimpleName();

    public static void a(C2976h ad2, JSONObject adJson, String str, long j10, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(adJson, "adJson");
        ad2.a();
        long optLong = adJson.optLong("expiry", TimeUnit.MILLISECONDS.toSeconds(j10));
        ad2.a(adJson, str, optLong <= 0 ? -1L : TimeUnit.SECONDS.toMillis(optLong));
        if (Intrinsics.areEqual("inmobiJson", ad2.u())) {
            try {
                JSONObject jSONObject = adJson.getJSONObject("pubContent");
                if (interfaceC3269z5 != null) {
                    String TAG = f23746a;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    String jSONObject2 = jSONObject.toString();
                    Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
                    ((A5) interfaceC3269z5).a(TAG, jSONObject2);
                }
                if (jSONObject.isNull("rootContainer")) {
                    if (interfaceC3269z5 != null) {
                        String TAG2 = f23746a;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((A5) interfaceC3269z5).b(TAG2, "Missing key (rootContainer) in the ad markup");
                        return;
                    }
                    return;
                }
                JSONObject jSONObject3 = jSONObject.getJSONObject("rootContainer");
                JSONArray jSONArray = new JSONArray();
                Intrinsics.checkNotNull(jSONObject3);
                Iterator it = b(jSONObject3, interfaceC3269z5).iterator();
                while (it.hasNext()) {
                    a(jSONArray, (String) it.next(), (byte) 2);
                }
                Iterator it2 = a(jSONObject3, interfaceC3269z5).iterator();
                while (it2.hasNext()) {
                    a(jSONArray, (String) it2.next(), (byte) 1);
                }
                boolean d10 = d(jSONObject3, interfaceC3269z5);
                ad2.a(jSONArray);
                ad2.a(d10);
            } catch (Exception e10) {
                Intrinsics.checkNotNullExpressionValue(f23746a, "TAG");
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            }
        }
    }

    public static ArrayList b(JSONObject jSONObject, InterfaceC3269z5 interfaceC3269z5) {
        JSONArray jSONArray;
        ArrayList arrayList = new ArrayList();
        try {
            jSONArray = jSONObject.getJSONArray("assetValue");
            Intrinsics.checkNotNull(jSONArray);
        } catch (JSONException e10) {
            if (interfaceC3269z5 != null) {
                String str = f23746a;
                StringBuilder a10 = H6.a(str, "TAG", "Error getting getImageAssetUrls (");
                a10.append(e10.getMessage());
                a10.append(')');
                ((A5) interfaceC3269z5).b(str, a10.toString());
            }
        }
        if (B2.a(jSONArray)) {
            return arrayList;
        }
        String string = jSONObject.getString("assetType");
        if (StringsKt.G("image", string, true)) {
            if (!jSONObject.isNull("preload") && jSONObject.getBoolean("preload")) {
                String string2 = jSONArray.getString(0);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                arrayList.add(string2);
            }
        } else if (StringsKt.G("container", string, true)) {
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                Intrinsics.checkNotNull(jSONObject2);
                arrayList.addAll(b(jSONObject2, interfaceC3269z5));
            }
        }
        return arrayList;
    }

    public static String c(JSONObject jSONObject, InterfaceC3269z5 interfaceC3269z5) {
        String str;
        String str2;
        int i10;
        boolean z10;
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("assetValue");
            Intrinsics.checkNotNull(jSONArray);
            if (B2.a(jSONArray)) {
                return "";
            }
            String string = jSONObject.getString("assetType");
            if (StringsKt.G("video", string, true)) {
                str = jSONArray.getString(0);
            } else if (!StringsKt.G("container", string, true)) {
                str = "";
            } else {
                int length = jSONArray.length();
                str2 = "";
                for (int i11 = 0; i11 < length; i11++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i11);
                    Intrinsics.checkNotNull(jSONObject2);
                    str2 = c(jSONObject2, interfaceC3269z5);
                    int length2 = str2.length() - 1;
                    int i12 = 0;
                    boolean z11 = false;
                    while (i12 <= length2) {
                        if (!z11) {
                            i10 = i12;
                        } else {
                            i10 = length2;
                        }
                        if (Intrinsics.compare((int) str2.charAt(i10), 32) <= 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (!z11) {
                            if (!z10) {
                                z11 = true;
                            } else {
                                i12++;
                            }
                        } else if (!z10) {
                            break;
                        } else {
                            length2--;
                        }
                    }
                    if (str2.subSequence(i12, length2 + 1).toString().length() > 0) {
                        break;
                    }
                }
                Intrinsics.checkNotNull(str2);
                return str2;
            }
            str2 = str;
            Intrinsics.checkNotNull(str2);
            return str2;
        } catch (JSONException e10) {
            if (interfaceC3269z5 != null) {
                String str3 = f23746a;
                StringBuilder a10 = H6.a(str3, "TAG", "Error getting VAST video XML (");
                a10.append(e10.getMessage());
                a10.append(')');
                ((A5) interfaceC3269z5).b(str3, a10.toString());
            }
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
            return "";
        }
    }

    public static boolean d(JSONObject jSONObject, InterfaceC3269z5 interfaceC3269z5) {
        JSONArray jSONArray;
        try {
            jSONArray = jSONObject.getJSONArray("assetValue");
            Intrinsics.checkNotNull(jSONArray);
        } catch (JSONException e10) {
            if (interfaceC3269z5 != null) {
                String str = f23746a;
                StringBuilder a10 = H6.a(str, "TAG", "Error getting preload webview flag (");
                a10.append(e10.getMessage());
                a10.append(')');
                ((A5) interfaceC3269z5).b(str, a10.toString());
            }
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        }
        if (B2.a(jSONArray)) {
            return false;
        }
        String string = jSONObject.getString("assetType");
        if (StringsKt.G("webview", string, true)) {
            if (!jSONObject.isNull("preload") && jSONObject.getBoolean("preload")) {
                return true;
            }
        } else if (StringsKt.G("container", string, true)) {
            int length = jSONArray.length();
            boolean z10 = false;
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                Intrinsics.checkNotNull(jSONObject2);
                z10 = d(jSONObject2, interfaceC3269z5);
                if (z10) {
                    break;
                }
            }
            return z10;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01f4 A[Catch: JSONException -> 0x0211, TryCatch #0 {JSONException -> 0x0211, blocks: (B:98:0x01e9, B:100:0x01f4, B:102:0x01fe), top: B:143:0x01e9 }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x024c A[Catch: JSONException -> 0x0269, TryCatch #3 {JSONException -> 0x0269, blocks: (B:116:0x0241, B:118:0x024c, B:120:0x0256), top: B:149:0x0241 }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.inmobi.media.C2976h a(com.inmobi.media.C2976h r20, com.inmobi.commons.core.configs.AdConfig r21, com.inmobi.media.InterfaceC3269z5 r22) {
        /*
            Method dump skipped, instructions count: 711
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.J.a(com.inmobi.media.h, com.inmobi.commons.core.configs.AdConfig, com.inmobi.media.z5):com.inmobi.media.h");
    }

    public static void a(JSONArray jSONArray, String str, byte b10) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", (int) b10);
        jSONObject.put("url", str);
        jSONArray.put(jSONObject);
    }

    public static ArrayList a(JSONObject jSONObject, InterfaceC3269z5 interfaceC3269z5) {
        JSONArray jSONArray;
        ArrayList arrayList = new ArrayList();
        try {
            jSONArray = jSONObject.getJSONArray("assetValue");
            Intrinsics.checkNotNull(jSONArray);
        } catch (JSONException e10) {
            if (interfaceC3269z5 != null) {
                String str = f23746a;
                StringBuilder a10 = H6.a(str, "TAG", "Error getting getGifAssetUrls (");
                a10.append(e10.getMessage());
                a10.append(')');
                ((A5) interfaceC3269z5).b(str, a10.toString());
            }
        }
        if (B2.a(jSONArray)) {
            return arrayList;
        }
        String string = jSONObject.getString("assetType");
        if (StringsKt.G("gif", string, true)) {
            String string2 = jSONArray.getString(0);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            arrayList.add(string2);
        } else if (StringsKt.G("container", string, true)) {
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                Intrinsics.checkNotNull(jSONObject2);
                arrayList.addAll(a(jSONObject2, interfaceC3269z5));
            }
        }
        return arrayList;
    }
}
