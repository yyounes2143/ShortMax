package com.facebook.applinks;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.u0;
import com.facebook.internal.v0;
import com.facebook.v;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AppLinkData.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: g  reason: collision with root package name */
    private static final String f15194g = "com.facebook.applinks.a";

    /* renamed from: h  reason: collision with root package name */
    public static final /* synthetic */ int f15195h = 0;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f15196a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Uri f15197b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f15198c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Bundle f15199d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f15200e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private JSONObject f15201f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AppLinkData.java */
    /* renamed from: com.facebook.applinks.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class RunnableC0256a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f15202a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f15203b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b f15204c;

        RunnableC0256a(Context context, String str, b bVar) {
            this.f15202a = context;
            this.f15203b = str;
            this.f15204c = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!o4.a.d(this)) {
                try {
                    a.e(this.f15202a, this.f15203b, this.f15204c);
                } catch (Throwable th2) {
                    o4.a.b(th2, this);
                }
            }
        }
    }

    /* compiled from: AppLinkData.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a(@Nullable a aVar);
    }

    private a() {
    }

    @Nullable
    private static a b(String str) {
        if (str == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("version");
            if (jSONObject.getJSONObject("bridge_args").getString("method").equals("applink") && string.equals("2")) {
                a aVar = new a();
                JSONObject jSONObject2 = jSONObject.getJSONObject("method_args");
                aVar.f15198c = jSONObject2;
                if (jSONObject2.has("ref")) {
                    aVar.f15196a = aVar.f15198c.getString("ref");
                } else if (aVar.f15198c.has("referer_data")) {
                    JSONObject jSONObject3 = aVar.f15198c.getJSONObject("referer_data");
                    if (jSONObject3.has("fb_ref")) {
                        aVar.f15196a = jSONObject3.getString("fb_ref");
                    }
                }
                if (aVar.f15198c.has("target_url")) {
                    Uri parse = Uri.parse(aVar.f15198c.getString("target_url"));
                    aVar.f15197b = parse;
                    aVar.f15201f = f(parse);
                }
                if (aVar.f15198c.has("extras")) {
                    JSONObject jSONObject4 = aVar.f15198c.getJSONObject("extras");
                    if (jSONObject4.has("deeplink_context")) {
                        JSONObject jSONObject5 = jSONObject4.getJSONObject("deeplink_context");
                        if (jSONObject5.has("promo_code")) {
                            aVar.f15200e = jSONObject5.getString("promo_code");
                        }
                    }
                }
                aVar.f15199d = h(aVar.f15198c);
                return aVar;
            }
        } catch (FacebookException e10) {
            u0.l0(f15194g, "Unable to parse AppLink JSON", e10);
        } catch (JSONException e11) {
            u0.l0(f15194g, "Unable to parse AppLink JSON", e11);
        }
        return null;
    }

    public static void c(Context context, b bVar) {
        d(context, null, bVar);
    }

    public static void d(Context context, String str, b bVar) {
        v0.j(context, "context");
        v0.j(bVar, "completionHandler");
        if (str == null) {
            str = u0.K(context);
        }
        v0.j(str, "applicationId");
        v.u().execute(new RunnableC0256a(context.getApplicationContext(), str, bVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Context context, String str, b bVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, "DEFERRED_APP_LINK");
            u0.D0(jSONObject, com.facebook.internal.b.k(context), AppEventsLogger.b(context), v.A(context), context);
            u0.E0(jSONObject, v.l());
            jSONObject.put("application_package_name", context.getPackageName());
            String format = String.format("%s/activities", str);
            a aVar = null;
            try {
                JSONObject c10 = GraphRequest.B(null, format, jSONObject, null).k().c();
                if (c10 != null) {
                    String optString = c10.optString("applink_args");
                    long optLong = c10.optLong("click_time", -1L);
                    String optString2 = c10.optString("applink_class");
                    String optString3 = c10.optString("applink_url");
                    if (!TextUtils.isEmpty(optString) && (aVar = b(optString)) != null) {
                        if (optLong != -1) {
                            try {
                                JSONObject jSONObject2 = aVar.f15198c;
                                if (jSONObject2 != null) {
                                    jSONObject2.put("com.facebook.platform.APPLINK_TAP_TIME_UTC", optLong);
                                }
                                Bundle bundle = aVar.f15199d;
                                if (bundle != null) {
                                    bundle.putString("com.facebook.platform.APPLINK_TAP_TIME_UTC", Long.toString(optLong));
                                }
                            } catch (JSONException unused) {
                                u0.k0(f15194g, "Unable to put tap time in AppLinkData.arguments");
                            }
                        }
                        if (optString2 != null) {
                            try {
                                JSONObject jSONObject3 = aVar.f15198c;
                                if (jSONObject3 != null) {
                                    jSONObject3.put("com.facebook.platform.APPLINK_NATIVE_CLASS", optString2);
                                }
                                Bundle bundle2 = aVar.f15199d;
                                if (bundle2 != null) {
                                    bundle2.putString("com.facebook.platform.APPLINK_NATIVE_CLASS", optString2);
                                }
                            } catch (JSONException unused2) {
                                u0.k0(f15194g, "Unable to put app link class name in AppLinkData.arguments");
                            }
                        }
                        if (optString3 != null) {
                            try {
                                JSONObject jSONObject4 = aVar.f15198c;
                                if (jSONObject4 != null) {
                                    jSONObject4.put("com.facebook.platform.APPLINK_NATIVE_URL", optString3);
                                }
                                Bundle bundle3 = aVar.f15199d;
                                if (bundle3 != null) {
                                    bundle3.putString("com.facebook.platform.APPLINK_NATIVE_URL", optString3);
                                }
                            } catch (JSONException unused3) {
                                u0.k0(f15194g, "Unable to put app link URL in AppLinkData.arguments");
                            }
                        }
                    }
                }
            } catch (Exception unused4) {
                u0.k0(f15194g, "Unable to fetch deferred applink from server");
            }
            bVar.a(aVar);
        } catch (JSONException e10) {
            throw new FacebookException("An error occurred while preparing deferred app link", e10);
        }
    }

    @Nullable
    private static JSONObject f(@Nullable Uri uri) {
        if (o4.a.d(a.class) || uri == null) {
            return null;
        }
        try {
            String queryParameter = uri.getQueryParameter("al_applink_data");
            if (queryParameter == null) {
                return null;
            }
            try {
                return new JSONObject(queryParameter);
            } catch (JSONException unused) {
                return null;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
            return null;
        }
    }

    private static Bundle h(JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONObject) {
                bundle.putBundle(next, h((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                int i10 = 0;
                if (jSONArray.length() == 0) {
                    bundle.putStringArray(next, new String[0]);
                } else {
                    Object obj2 = jSONArray.get(0);
                    if (obj2 instanceof JSONObject) {
                        Bundle[] bundleArr = new Bundle[jSONArray.length()];
                        while (i10 < jSONArray.length()) {
                            bundleArr[i10] = h(jSONArray.getJSONObject(i10));
                            i10++;
                        }
                        bundle.putParcelableArray(next, bundleArr);
                    } else if (!(obj2 instanceof JSONArray)) {
                        String[] strArr = new String[jSONArray.length()];
                        while (i10 < jSONArray.length()) {
                            strArr[i10] = jSONArray.get(i10).toString();
                            i10++;
                        }
                        bundle.putStringArray(next, strArr);
                    } else {
                        throw new FacebookException("Nested arrays are not supported.");
                    }
                }
            } else {
                bundle.putString(next, obj.toString());
            }
        }
        return bundle;
    }

    @Nullable
    public Uri g() {
        return this.f15197b;
    }
}
