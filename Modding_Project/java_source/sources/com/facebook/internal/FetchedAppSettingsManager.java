package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.GraphRequest;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.i;
import com.facebook.internal.p;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: FetchedAppSettingsManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFetchedAppSettingsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchedAppSettingsManager.kt\ncom/facebook/internal/FetchedAppSettingsManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,564:1\n1#2:565\n*E\n"})
/* loaded from: classes3.dex */
public final class FetchedAppSettingsManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final FetchedAppSettingsManager f16101a = new FetchedAppSettingsManager();

    /* renamed from: b  reason: collision with root package name */
    private static final String f16102b = FetchedAppSettingsManager.class.getSimpleName();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final List<String> f16103c = CollectionsKt.q("supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs", "android_sdk_error_categories", "app_events_session_timeout", "app_events_feature_bitmask", "auto_event_mapping_android", "seamless_login", "smart_login_bookmark_icon_url", "smart_login_menu_icon_url", "restrictive_data_filter_params", "aam_rules", "suggested_events_setting", "protected_mode_rules", "auto_log_app_events_default", "auto_log_app_events_enabled", "app_events_config.os_version(" + Build.VERSION.RELEASE + ')');
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, p> f16104d = new ConcurrentHashMap();
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final AtomicReference<FetchAppSettingState> f16105e = new AtomicReference<>(FetchAppSettingState.NOT_LOADED);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final ConcurrentLinkedQueue<a> f16106f = new ConcurrentLinkedQueue<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f16107g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static JSONArray f16108h;

    /* compiled from: FetchedAppSettingsManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum FetchAppSettingState {
        NOT_LOADED,
        LOADING,
        SUCCESS,
        ERROR
    }

    /* compiled from: FetchedAppSettingsManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface a {
        void a();

        void b(@Nullable p pVar);
    }

    private FetchedAppSettingsManager() {
    }

    public static final void d(@NotNull a callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        f16106f.add(callback);
        h();
    }

    private final JSONObject e(String str) {
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(f16103c);
        bundle.putString("fields", TextUtils.join(",", arrayList));
        GraphRequest x10 = GraphRequest.f14841n.x(null, MBridgeConstans.DYNAMIC_VIEW_WX_APP, null);
        x10.E(true);
        x10.H(bundle);
        JSONObject d10 = x10.k().d();
        if (d10 == null) {
            return new JSONObject();
        }
        return d10;
    }

    @Nullable
    public static final p f(@Nullable String str) {
        if (str != null) {
            return f16104d.get(str);
        }
        return null;
    }

    @Nullable
    public static final Map<String, Boolean> g() {
        JSONObject jSONObject;
        Context l10 = com.facebook.v.l();
        String m10 = com.facebook.v.m();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("com.facebook.internal.APP_SETTINGS.%s", Arrays.copyOf(new Object[]{m10}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        String string = l10.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0).getString(format, null);
        if (!u0.d0(string)) {
            if (string != null) {
                try {
                    jSONObject = new JSONObject(string);
                } catch (JSONException e10) {
                    u0.j0("FacebookSDK", e10);
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    return f16101a.p(jSONObject);
                }
            } else {
                throw new IllegalStateException("Required value was null.");
            }
        }
        return null;
    }

    public static final void h() {
        final Context l10 = com.facebook.v.l();
        final String m10 = com.facebook.v.m();
        if (u0.d0(m10)) {
            f16105e.set(FetchAppSettingState.ERROR);
            f16101a.r();
        } else if (f16104d.containsKey(m10)) {
            f16105e.set(FetchAppSettingState.SUCCESS);
            f16101a.r();
        } else {
            AtomicReference<FetchAppSettingState> atomicReference = f16105e;
            FetchAppSettingState fetchAppSettingState = FetchAppSettingState.NOT_LOADED;
            FetchAppSettingState fetchAppSettingState2 = FetchAppSettingState.LOADING;
            if (!androidx.compose.animation.core.a.a(atomicReference, fetchAppSettingState, fetchAppSettingState2) && !androidx.compose.animation.core.a.a(atomicReference, FetchAppSettingState.ERROR, fetchAppSettingState2)) {
                f16101a.r();
                return;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            final String format = String.format("com.facebook.internal.APP_SETTINGS.%s", Arrays.copyOf(new Object[]{m10}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            com.facebook.v.u().execute(new Runnable() { // from class: com.facebook.internal.q
                @Override // java.lang.Runnable
                public final void run() {
                    FetchedAppSettingsManager.i(l10, format, m10);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(Context context, String settingsKey, String applicationId) {
        FetchAppSettingState fetchAppSettingState;
        JSONObject jSONObject;
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(settingsKey, "$settingsKey");
        Intrinsics.checkNotNullParameter(applicationId, "$applicationId");
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0);
        p pVar = null;
        String string = sharedPreferences.getString(settingsKey, null);
        if (!u0.d0(string)) {
            if (string != null) {
                try {
                    jSONObject = new JSONObject(string);
                } catch (JSONException e10) {
                    u0.j0("FacebookSDK", e10);
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    pVar = f16101a.j(applicationId, jSONObject);
                }
            } else {
                throw new IllegalStateException("Required value was null.");
            }
        }
        FetchedAppSettingsManager fetchedAppSettingsManager = f16101a;
        JSONObject e11 = fetchedAppSettingsManager.e(applicationId);
        if (e11 != null) {
            fetchedAppSettingsManager.j(applicationId, e11);
            sharedPreferences.edit().putString(settingsKey, e11.toString()).apply();
        }
        if (pVar != null) {
            String t10 = pVar.t();
            if (!f16107g && t10 != null && t10.length() > 0) {
                f16107g = true;
                Log.w(f16102b, t10);
            }
        }
        o.m(applicationId, true);
        a2.i.h();
        AtomicReference<FetchAppSettingState> atomicReference = f16105e;
        if (f16104d.containsKey(applicationId)) {
            fetchAppSettingState = FetchAppSettingState.SUCCESS;
        } else {
            fetchAppSettingState = FetchAppSettingState.ERROR;
        }
        atomicReference.set(fetchAppSettingState);
        fetchedAppSettingsManager.r();
    }

    private final List<String> k(JSONObject jSONObject, String str) {
        JSONArray jSONArray;
        if (jSONObject != null) {
            try {
                jSONArray = jSONObject.getJSONArray("iap_manual_and_auto_log_dedup_keys");
            } catch (Exception unused) {
            }
        } else {
            jSONArray = null;
        }
        if (jSONArray == null) {
            return null;
        }
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
            if (Intrinsics.areEqual(jSONObject2.getString("key"), "prod_keys")) {
                JSONArray jSONArray2 = jSONObject2.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                int length2 = jSONArray2.length();
                for (int i11 = 0; i11 < length2; i11++) {
                    JSONObject jSONObject3 = jSONArray2.getJSONObject(i11);
                    if (Intrinsics.areEqual(jSONObject3.getString("key"), str)) {
                        JSONArray jSONArray3 = jSONObject3.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                        ArrayList arrayList = new ArrayList();
                        int length3 = jSONArray3.length();
                        for (int i12 = 0; i12 < length3; i12++) {
                            arrayList.add(jSONArray3.getJSONObject(i12).getString(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                        }
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.addAll(arrayList);
                        return arrayList2;
                    }
                }
                continue;
            }
        }
        return null;
    }

    private final ArrayList<Pair<String, List<String>>> l(JSONObject jSONObject, boolean z10) {
        JSONArray jSONArray;
        if (jSONObject != null) {
            try {
                jSONArray = jSONObject.getJSONArray("iap_manual_and_auto_log_dedup_keys");
            } catch (Exception unused) {
                return null;
            }
        } else {
            jSONArray = null;
        }
        if (jSONArray == null) {
            return null;
        }
        int length = jSONArray.length();
        ArrayList<Pair<String, List<String>>> arrayList = null;
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
            String string = jSONObject2.getString("key");
            if ((!Intrinsics.areEqual(string, "prod_keys") || !z10) && (!Intrinsics.areEqual(string, "test_keys") || z10)) {
                JSONArray jSONArray2 = jSONObject2.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                int length2 = jSONArray2.length();
                for (int i11 = 0; i11 < length2; i11++) {
                    JSONObject jSONObject3 = jSONArray2.getJSONObject(i11);
                    String string2 = jSONObject3.getString("key");
                    if (!Intrinsics.areEqual(string2, "_valueToSum") && !Intrinsics.areEqual(string2, "fb_currency")) {
                        JSONArray jSONArray3 = jSONObject3.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                        ArrayList arrayList2 = new ArrayList();
                        int length3 = jSONArray3.length();
                        for (int i12 = 0; i12 < length3; i12++) {
                            arrayList2.add(jSONArray3.getJSONObject(i12).getString(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                        }
                        if (arrayList == null) {
                            arrayList = new ArrayList<>();
                        }
                        arrayList.add(new Pair<>(string2, arrayList2));
                    }
                }
            }
        }
        return arrayList;
    }

    static /* synthetic */ ArrayList m(FetchedAppSettingsManager fetchedAppSettingsManager, JSONObject jSONObject, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return fetchedAppSettingsManager.l(jSONObject, z10);
    }

    private final Long n(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return Long.valueOf(jSONObject.optLong("iap_manual_and_auto_log_dedup_window_millis"));
        } catch (Exception unused) {
            return null;
        }
    }

    private final Map<String, Map<String, p.b>> o(JSONObject jSONObject) {
        JSONArray optJSONArray;
        HashMap hashMap = new HashMap();
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("data")) != null) {
            int length = optJSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                p.b.a aVar = p.b.f16298e;
                JSONObject optJSONObject = optJSONArray.optJSONObject(i10);
                Intrinsics.checkNotNullExpressionValue(optJSONObject, "dialogConfigData.optJSONObject(i)");
                p.b a10 = aVar.a(optJSONObject);
                if (a10 != null) {
                    String a11 = a10.a();
                    Map map = (Map) hashMap.get(a11);
                    if (map == null) {
                        map = new HashMap();
                        hashMap.put(a11, map);
                    }
                    map.put(a10.b(), a10);
                }
            }
        }
        return hashMap;
    }

    private final Map<String, Boolean> p(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        if (!jSONObject.isNull("auto_log_app_events_default")) {
            try {
                hashMap.put("auto_log_app_events_default", Boolean.valueOf(jSONObject.getBoolean("auto_log_app_events_default")));
            } catch (JSONException e10) {
                u0.j0("FacebookSDK", e10);
            }
        }
        if (!jSONObject.isNull("auto_log_app_events_enabled")) {
            try {
                hashMap.put("auto_log_app_events_enabled", Boolean.valueOf(jSONObject.getBoolean("auto_log_app_events_enabled")));
            } catch (JSONException e11) {
                u0.j0("FacebookSDK", e11);
            }
        }
        if (hashMap.isEmpty()) {
            return null;
        }
        return hashMap;
    }

    private final JSONArray q(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONArray(str);
        }
        return null;
    }

    private final synchronized void r() {
        FetchAppSettingState fetchAppSettingState = f16105e.get();
        if (FetchAppSettingState.NOT_LOADED != fetchAppSettingState && FetchAppSettingState.LOADING != fetchAppSettingState) {
            final p pVar = f16104d.get(com.facebook.v.m());
            Handler handler = new Handler(Looper.getMainLooper());
            if (FetchAppSettingState.ERROR == fetchAppSettingState) {
                while (true) {
                    ConcurrentLinkedQueue<a> concurrentLinkedQueue = f16106f;
                    if (!concurrentLinkedQueue.isEmpty()) {
                        final a poll = concurrentLinkedQueue.poll();
                        handler.post(new Runnable() { // from class: com.facebook.internal.r
                            @Override // java.lang.Runnable
                            public final void run() {
                                FetchedAppSettingsManager.s(FetchedAppSettingsManager.a.this);
                            }
                        });
                    } else {
                        return;
                    }
                }
            } else {
                while (true) {
                    ConcurrentLinkedQueue<a> concurrentLinkedQueue2 = f16106f;
                    if (!concurrentLinkedQueue2.isEmpty()) {
                        final a poll2 = concurrentLinkedQueue2.poll();
                        handler.post(new Runnable() { // from class: com.facebook.internal.s
                            @Override // java.lang.Runnable
                            public final void run() {
                                FetchedAppSettingsManager.t(FetchedAppSettingsManager.a.this, pVar);
                            }
                        });
                    } else {
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(a aVar) {
        aVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(a aVar, p pVar) {
        aVar.b(pVar);
    }

    @Nullable
    public static final p u(@NotNull String applicationId, boolean z10) {
        Intrinsics.checkNotNullParameter(applicationId, "applicationId");
        if (!z10) {
            Map<String, p> map = f16104d;
            if (map.containsKey(applicationId)) {
                return map.get(applicationId);
            }
        }
        FetchedAppSettingsManager fetchedAppSettingsManager = f16101a;
        p j10 = fetchedAppSettingsManager.j(applicationId, fetchedAppSettingsManager.e(applicationId));
        if (Intrinsics.areEqual(applicationId, com.facebook.v.m())) {
            f16105e.set(FetchAppSettingState.SUCCESS);
            fetchedAppSettingsManager.r();
        }
        return j10;
    }

    @NotNull
    public final p j(@NotNull String applicationId, @NotNull JSONObject settingsJSON) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        String str;
        Intrinsics.checkNotNullParameter(applicationId, "applicationId");
        Intrinsics.checkNotNullParameter(settingsJSON, "settingsJSON");
        JSONArray optJSONArray = settingsJSON.optJSONArray("android_sdk_error_categories");
        i.a aVar = i.f16201g;
        i a10 = aVar.a(optJSONArray);
        if (a10 == null) {
            a10 = aVar.b();
        }
        i iVar = a10;
        int optInt = settingsJSON.optInt("app_events_feature_bitmask", 0);
        if ((optInt & 8) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((optInt & 16) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if ((optInt & 32) != 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        if ((optInt & 256) != 0) {
            z13 = true;
        } else {
            z13 = false;
        }
        if ((optInt & 16384) != 0) {
            z14 = true;
        } else {
            z14 = false;
        }
        JSONArray optJSONArray2 = settingsJSON.optJSONArray("auto_event_mapping_android");
        f16108h = optJSONArray2;
        if (optJSONArray2 != null && f0.b()) {
            if (optJSONArray2 != null) {
                str = optJSONArray2.toString();
            } else {
                str = null;
            }
            t1.c.c(str);
        }
        JSONObject optJSONObject = settingsJSON.optJSONObject("app_events_config");
        boolean optBoolean = settingsJSON.optBoolean("supports_implicit_sdk_logging", false);
        String optString = settingsJSON.optString("gdpv4_nux_content", "");
        Intrinsics.checkNotNullExpressionValue(optString, "settingsJSON.optString(A…_SETTING_NUX_CONTENT, \"\")");
        boolean optBoolean2 = settingsJSON.optBoolean("gdpv4_nux_enabled", false);
        int optInt2 = settingsJSON.optInt("app_events_session_timeout", a2.j.a());
        EnumSet<SmartLoginOption> a11 = SmartLoginOption.Companion.a(settingsJSON.optLong("seamless_login"));
        Map<String, Map<String, p.b>> o10 = o(settingsJSON.optJSONObject("android_dialog_configs"));
        String optString2 = settingsJSON.optString("smart_login_bookmark_icon_url");
        Intrinsics.checkNotNullExpressionValue(optString2, "settingsJSON.optString(S…_LOGIN_BOOKMARK_ICON_URL)");
        String optString3 = settingsJSON.optString("smart_login_menu_icon_url");
        Intrinsics.checkNotNullExpressionValue(optString3, "settingsJSON.optString(SMART_LOGIN_MENU_ICON_URL)");
        String optString4 = settingsJSON.optString("sdk_update_message");
        Intrinsics.checkNotNullExpressionValue(optString4, "settingsJSON.optString(SDK_UPDATE_MESSAGE)");
        p pVar = new p(optBoolean, optString, optBoolean2, optInt2, a11, o10, z10, iVar, optString2, optString3, z11, z12, optJSONArray2, optString4, z13, z14, settingsJSON.optString("aam_rules"), settingsJSON.optString("suggested_events_setting"), settingsJSON.optString("restrictive_data_filter_params"), q(settingsJSON.optJSONObject("protected_mode_rules"), "standard_params"), q(settingsJSON.optJSONObject("protected_mode_rules"), "maca_rules"), p(settingsJSON), q(settingsJSON.optJSONObject("protected_mode_rules"), "blocklist_events"), q(settingsJSON.optJSONObject("protected_mode_rules"), "redacted_events"), q(settingsJSON.optJSONObject("protected_mode_rules"), "sensitive_params"), q(settingsJSON.optJSONObject("protected_mode_rules"), "standard_params_schema"), q(settingsJSON.optJSONObject("protected_mode_rules"), "standard_params_blocked"), k(optJSONObject, "fb_currency"), k(optJSONObject, "_valueToSum"), m(this, optJSONObject, false, 2, null), l(optJSONObject, true), n(settingsJSON.optJSONObject("app_events_config")));
        f16104d.put(applicationId, pVar);
        return pVar;
    }
}
