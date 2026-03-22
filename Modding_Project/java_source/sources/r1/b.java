package r1;

import android.content.SharedPreferences;
import com.facebook.GraphRequest;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.cloudbridge.AppEventsConversionsAPITransformerWebRequests;
import com.facebook.appevents.cloudbridge.SettingsAPIFields;
import com.facebook.b0;
import com.facebook.internal.i0;
import com.facebook.internal.u0;
import com.facebook.v;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ms.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AppEventsCAPIManager.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f65474a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final String f65475b = b.class.getCanonicalName();

    /* renamed from: c  reason: collision with root package name */
    private static boolean f65476c;

    private b() {
    }

    public static final void b() {
        try {
            GraphRequest.b bVar = new GraphRequest.b() { // from class: r1.a
                @Override // com.facebook.GraphRequest.b
                public final void a(b0 b0Var) {
                    b.c(b0Var);
                }
            };
            GraphRequest graphRequest = new GraphRequest(null, v.m() + "/cloudbridge_settings", null, HttpMethod.GET, bVar, null, 32, null);
            i0.a aVar = i0.f16209e;
            LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
            String str = f65475b;
            Intrinsics.checkNotNull(str, "null cannot be cast to non-null type kotlin.String");
            aVar.c(loggingBehavior, str, " \n\nCreating Graph Request: \n=============\n%s\n\n ", graphRequest);
            graphRequest.l();
        } catch (JSONException e10) {
            i0.a aVar2 = i0.f16209e;
            LoggingBehavior loggingBehavior2 = LoggingBehavior.APP_EVENTS;
            String str2 = f65475b;
            Intrinsics.checkNotNull(str2, "null cannot be cast to non-null type kotlin.String");
            aVar2.c(loggingBehavior2, str2, " \n\nGraph Request Exception: \n=============\n%s\n\n ", d.c(e10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(b0 response) {
        Intrinsics.checkNotNullParameter(response, "response");
        f65474a.d(response);
    }

    @Nullable
    public static final Map<String, Object> e() {
        if (o4.a.d(b.class)) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = v.l().getSharedPreferences("com.facebook.sdk.CloudBridgeSavedCredentials", 0);
            if (sharedPreferences == null) {
                return null;
            }
            SettingsAPIFields settingsAPIFields = SettingsAPIFields.DATASETID;
            String string = sharedPreferences.getString(settingsAPIFields.getRawValue(), null);
            SettingsAPIFields settingsAPIFields2 = SettingsAPIFields.URL;
            String string2 = sharedPreferences.getString(settingsAPIFields2.getRawValue(), null);
            SettingsAPIFields settingsAPIFields3 = SettingsAPIFields.ACCESSKEY;
            String string3 = sharedPreferences.getString(settingsAPIFields3.getRawValue(), null);
            if (string != null && !StringsKt.t0(string) && string2 != null && !StringsKt.t0(string2) && string3 != null && !StringsKt.t0(string3)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put(settingsAPIFields2.getRawValue(), string2);
                linkedHashMap.put(settingsAPIFields.getRawValue(), string);
                linkedHashMap.put(settingsAPIFields3.getRawValue(), string3);
                i0.f16209e.c(LoggingBehavior.APP_EVENTS, f65475b.toString(), " \n\nLoading Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n ", string, string2, string3);
                return linkedHashMap;
            }
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
            return null;
        }
    }

    public final void d(@NotNull b0 response) {
        Object obj;
        boolean z10;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.b() != null) {
            i0.a aVar = i0.f16209e;
            LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
            String str = f65475b;
            Intrinsics.checkNotNull(str, "null cannot be cast to non-null type kotlin.String");
            aVar.c(loggingBehavior, str, " \n\nGraph Response Error: \n================\nResponse Error: %s\nResponse Error Exception: %s\n\n ", response.b().toString(), String.valueOf(response.b().e()));
            Map<String, Object> e10 = e();
            if (e10 != null) {
                URL url = new URL(String.valueOf(e10.get(SettingsAPIFields.URL.getRawValue())));
                String valueOf = String.valueOf(e10.get(SettingsAPIFields.DATASETID.getRawValue()));
                AppEventsConversionsAPITransformerWebRequests.d(valueOf, url.getProtocol() + "://" + url.getHost(), String.valueOf(e10.get(SettingsAPIFields.ACCESSKEY.getRawValue())));
                f65476c = true;
                return;
            }
            return;
        }
        i0.a aVar2 = i0.f16209e;
        LoggingBehavior loggingBehavior2 = LoggingBehavior.APP_EVENTS;
        String TAG = f65475b;
        Intrinsics.checkNotNull(TAG, "null cannot be cast to non-null type kotlin.String");
        aVar2.c(loggingBehavior2, TAG, " \n\nGraph Response Received: \n================\n%s\n\n ", response);
        JSONObject c10 = response.c();
        if (c10 != null) {
            try {
                obj = c10.get("data");
            } catch (NullPointerException e11) {
                i0.a aVar3 = i0.f16209e;
                LoggingBehavior loggingBehavior3 = LoggingBehavior.APP_EVENTS;
                String TAG2 = f65475b;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                aVar3.c(loggingBehavior3, TAG2, "CloudBridge Settings API response is not a valid json: \n%s ", d.c(e11));
                return;
            } catch (JSONException e12) {
                i0.a aVar4 = i0.f16209e;
                LoggingBehavior loggingBehavior4 = LoggingBehavior.APP_EVENTS;
                String TAG3 = f65475b;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                aVar4.c(loggingBehavior4, TAG3, "CloudBridge Settings API response is not a valid json: \n%s ", d.c(e12));
                return;
            }
        } else {
            obj = null;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONArray");
        Map<String, ? extends Object> o10 = u0.o(new JSONObject((String) CollectionsKt.firstOrNull(u0.n((JSONArray) obj))));
        String str2 = (String) o10.get(SettingsAPIFields.URL.getRawValue());
        String str3 = (String) o10.get(SettingsAPIFields.DATASETID.getRawValue());
        String str4 = (String) o10.get(SettingsAPIFields.ACCESSKEY.getRawValue());
        if (str2 != null && str3 != null && str4 != null) {
            try {
                AppEventsConversionsAPITransformerWebRequests.d(str3, str2, str4);
                g(o10);
                SettingsAPIFields settingsAPIFields = SettingsAPIFields.ENABLED;
                if (o10.get(settingsAPIFields.getRawValue()) != null) {
                    Object obj2 = o10.get(settingsAPIFields.getRawValue());
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
                    z10 = ((Boolean) obj2).booleanValue();
                } else {
                    z10 = false;
                }
                f65476c = z10;
                return;
            } catch (MalformedURLException e13) {
                i0.a aVar5 = i0.f16209e;
                LoggingBehavior loggingBehavior5 = LoggingBehavior.APP_EVENTS;
                String TAG4 = f65475b;
                Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                aVar5.c(loggingBehavior5, TAG4, "CloudBridge Settings API response doesn't have valid url\n %s ", d.c(e13));
                return;
            }
        }
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        aVar2.b(loggingBehavior2, TAG, "CloudBridge Settings API response doesn't have valid data");
    }

    public final boolean f() {
        return f65476c;
    }

    public final void g(@Nullable Map<String, ? extends Object> map) {
        SharedPreferences sharedPreferences = v.l().getSharedPreferences("com.facebook.sdk.CloudBridgeSavedCredentials", 0);
        if (sharedPreferences == null) {
            return;
        }
        if (map == null) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.clear();
            edit.apply();
            return;
        }
        SettingsAPIFields settingsAPIFields = SettingsAPIFields.DATASETID;
        Object obj = map.get(settingsAPIFields.getRawValue());
        SettingsAPIFields settingsAPIFields2 = SettingsAPIFields.URL;
        Object obj2 = map.get(settingsAPIFields2.getRawValue());
        SettingsAPIFields settingsAPIFields3 = SettingsAPIFields.ACCESSKEY;
        Object obj3 = map.get(settingsAPIFields3.getRawValue());
        if (obj != null && obj2 != null && obj3 != null) {
            SharedPreferences.Editor edit2 = sharedPreferences.edit();
            edit2.putString(settingsAPIFields.getRawValue(), obj.toString());
            edit2.putString(settingsAPIFields2.getRawValue(), obj2.toString());
            edit2.putString(settingsAPIFields3.getRawValue(), obj3.toString());
            edit2.apply();
            i0.f16209e.c(LoggingBehavior.APP_EVENTS, f65475b.toString(), " \n\nSaving Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n ", obj, obj2, obj3);
        }
    }
}
