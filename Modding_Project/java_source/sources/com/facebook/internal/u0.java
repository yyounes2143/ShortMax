package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.autofill.AutofillManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import androidx.autofill.HintConstants;
import androidx.webkit.ProxyConfig;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.HttpMethod;
import com.facebook.appevents.internal.AppLinkManager;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.u0;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* compiled from: Utility.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUtility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utility.kt\ncom/facebook/internal/Utility\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,1283:1\n37#2,2:1284\n37#2,2:1286\n37#2,2:1289\n37#2,2:1291\n1#3:1288\n107#4:1293\n79#4,22:1294\n*S KotlinDebug\n*F\n+ 1 Utility.kt\ncom/facebook/internal/Utility\n*L\n209#1:1284,2\n211#1:1286,2\n456#1:1289,2\n458#1:1291,2\n461#1:1293\n461#1:1294,22\n*E\n"})
/* loaded from: classes3.dex */
public final class u0 {

    /* renamed from: b  reason: collision with root package name */
    private static int f16317b;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static Locale f16325j;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final u0 f16316a = new u0();

    /* renamed from: c  reason: collision with root package name */
    private static long f16318c = -1;

    /* renamed from: d  reason: collision with root package name */
    private static long f16319d = -1;

    /* renamed from: e  reason: collision with root package name */
    private static long f16320e = -1;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static String f16321f = "";
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static String f16322g = "";
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static String f16323h = "NoCarrier";
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static String f16324i = "";

    /* compiled from: Utility.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface a {
        void a(@Nullable JSONObject jSONObject);

        void b(@Nullable FacebookException facebookException);
    }

    private u0() {
    }

    public static final long A(@NotNull Uri contentUri) {
        Intrinsics.checkNotNullParameter(contentUri, "contentUri");
        Cursor cursor = null;
        try {
            cursor = com.facebook.v.l().getContentResolver().query(contentUri, null, null, null, null);
            if (cursor == null) {
                return 0L;
            }
            int columnIndex = cursor.getColumnIndex("_size");
            cursor.moveToFirst();
            long j10 = cursor.getLong(columnIndex);
            cursor.close();
            return j10;
        } catch (Throwable th2) {
            if (cursor != null) {
                cursor.close();
            }
            throw th2;
        }
    }

    private final void A0() {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            String displayName = timeZone.getDisplayName(timeZone.inDaylightTime(new Date()), 0);
            Intrinsics.checkNotNullExpressionValue(displayName, "tz.getDisplayName(tz.inD…(Date()), TimeZone.SHORT)");
            f16321f = displayName;
            String id2 = timeZone.getID();
            Intrinsics.checkNotNullExpressionValue(id2, "tz.id");
            f16322g = id2;
        } catch (AssertionError | Exception unused) {
        }
    }

    @NotNull
    public static final Locale B() {
        Locale O = O();
        if (O == null) {
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
            return locale;
        }
        return O;
    }

    private final void B0() {
        try {
            if (s()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                f16319d = statFs.getBlockCount() * statFs.getBlockSize();
            }
            f16319d = l(f16319d);
        } catch (Exception unused) {
        }
    }

    private final String C() {
        AccessToken e10 = AccessToken.f14731l.e();
        if (e10 != null && e10.h() != null) {
            return e10.h();
        }
        return "facebook";
    }

    public static final void C0(@Nullable Runnable runnable) {
        try {
            com.facebook.v.u().execute(runnable);
        } catch (Exception unused) {
        }
    }

    @Nullable
    public static final JSONObject D() {
        if (o4.a.d(u0.class)) {
            return null;
        }
        try {
            String string = com.facebook.v.l().getSharedPreferences("com.facebook.sdk.DataProcessingOptions", 0).getString("data_processing_options", null);
            if (string != null) {
                try {
                    return new JSONObject(string);
                } catch (JSONException unused) {
                }
            }
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, u0.class);
            return null;
        }
    }

    public static final void D0(@NotNull JSONObject params, @Nullable b bVar, @Nullable String str, boolean z10, @NotNull Context context) throws JSONException {
        Object obj;
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(context, "context");
        FeatureManager.Feature feature = FeatureManager.Feature.ServiceUpdateCompliance;
        if (!FeatureManager.g(feature)) {
            params.put("anon_id", str);
        }
        params.put("application_tracking_enabled", !z10);
        params.put("advertiser_id_collection_enabled", com.facebook.v.k());
        if (bVar != null) {
            if (FeatureManager.g(feature)) {
                f16316a.c(params, bVar, str, context);
            }
            if (bVar.j() != null) {
                if (FeatureManager.g(feature)) {
                    f16316a.d(params, bVar, context);
                } else {
                    params.put("attribution", bVar.j());
                }
            }
            if (bVar.h() != null) {
                params.put("advertiser_id", bVar.h());
                params.put("advertiser_tracking_enabled", !bVar.l());
            }
            if (!bVar.l()) {
                String b10 = com.facebook.appevents.l0.b();
                if (b10.length() != 0) {
                    params.put(GearStrategyConsts.EV_USER_DOWNGRADE, b10);
                }
            }
            if (bVar.i() != null) {
                params.put("installer_package", bVar.i());
            }
        }
        AppLinkManager a10 = AppLinkManager.f15115b.a();
        if (a10 != null) {
            obj = a10.e("campaign_ids");
        } else {
            obj = null;
        }
        if (obj != null) {
            params.put("campaign_ids", obj);
        }
    }

    public static final void E0(@NotNull JSONObject params, @NotNull Context appContext) throws JSONException {
        Locale locale;
        String str;
        String str2;
        int i10;
        DisplayManager displayManager;
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("a2");
        f16316a.z0(appContext);
        String packageName = appContext.getPackageName();
        int i11 = 0;
        int i12 = -1;
        try {
            packageInfo = appContext.getPackageManager().getPackageInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (packageInfo == null) {
            return;
        }
        i12 = packageInfo.versionCode;
        f16324i = packageInfo.versionName;
        jSONArray.put(packageName);
        jSONArray.put(i12);
        jSONArray.put(f16324i);
        jSONArray.put(Build.VERSION.RELEASE);
        jSONArray.put(Build.MODEL);
        try {
            locale = appContext.getResources().getConfiguration().locale;
        } catch (Exception unused2) {
            locale = Locale.getDefault();
        }
        f16325j = locale;
        StringBuilder sb2 = new StringBuilder();
        Locale locale2 = f16325j;
        Display display = null;
        if (locale2 != null) {
            str = locale2.getLanguage();
        } else {
            str = null;
        }
        String str3 = "";
        if (str == null) {
            str = "";
        }
        sb2.append(str);
        sb2.append('_');
        Locale locale3 = f16325j;
        if (locale3 != null) {
            str2 = locale3.getCountry();
        } else {
            str2 = null;
        }
        if (str2 != null) {
            str3 = str2;
        }
        sb2.append(str3);
        jSONArray.put(sb2.toString());
        jSONArray.put(f16321f);
        jSONArray.put(f16323h);
        double d10 = 0.0d;
        try {
            Object systemService = appContext.getSystemService("display");
            if (systemService instanceof DisplayManager) {
                displayManager = (DisplayManager) systemService;
            } else {
                displayManager = null;
            }
            if (displayManager != null) {
                display = displayManager.getDisplay(0);
            }
        } catch (Exception unused3) {
        }
        if (display != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getMetrics(displayMetrics);
            int i13 = displayMetrics.widthPixels;
            try {
                i11 = displayMetrics.heightPixels;
                d10 = displayMetrics.density;
            } catch (Exception unused4) {
            }
            i10 = i11;
            i11 = i13;
            jSONArray.put(i11);
            jSONArray.put(i10);
            jSONArray.put(new DecimalFormat("#.##").format(d10));
            jSONArray.put(f16316a.w0());
            jSONArray.put(f16319d);
            jSONArray.put(f16320e);
            jSONArray.put(f16322g);
            params.put("extinfo", jSONArray.toString());
        }
        i10 = 0;
        jSONArray.put(i11);
        jSONArray.put(i10);
        jSONArray.put(new DecimalFormat("#.##").format(d10));
        jSONArray.put(f16316a.w0());
        jSONArray.put(f16319d);
        jSONArray.put(f16320e);
        jSONArray.put(f16322g);
        params.put("extinfo", jSONArray.toString());
    }

    @NotNull
    public static final String F(@Nullable String str) {
        String v10 = com.facebook.v.v();
        if (str == null) {
            return v10;
        }
        if (Intrinsics.areEqual(str, "gaming")) {
            return StringsKt.P(v10, "facebook.com", "fb.gg", false, 4, null);
        }
        if (Intrinsics.areEqual(str, "instagram")) {
            return StringsKt.P(v10, "facebook.com", "instagram.com", false, 4, null);
        }
        return v10;
    }

    @Nullable
    public static final String F0(@NotNull byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return f16316a.T(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1, bytes);
    }

    private final GraphRequest G(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", N(C()));
        bundle.putString("access_token", str);
        GraphRequest y10 = GraphRequest.f14841n.y(null, null);
        y10.H(bundle);
        y10.G(HttpMethod.GET);
        return y10;
    }

    @Nullable
    public static final String G0(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return f16316a.S("SHA-256", str);
    }

    public static final void H(@NotNull final String accessToken, @NotNull final a callback) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(callback, "callback");
        JSONObject a10 = n0.a(accessToken);
        if (a10 != null) {
            callback.a(a10);
            return;
        }
        GraphRequest.b bVar = new GraphRequest.b() { // from class: com.facebook.internal.s0
            @Override // com.facebook.GraphRequest.b
            public final void a(com.facebook.b0 b0Var) {
                u0.I(u0.a.this, accessToken, b0Var);
            }
        };
        GraphRequest G = f16316a.G(accessToken);
        G.D(bVar);
        G.l();
    }

    public static final void H0(@NotNull Parcel parcel, @Nullable Map<String, String> map) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(a callback, String accessToken, com.facebook.b0 response) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(accessToken, "$accessToken");
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.b() != null) {
            callback.b(response.b().e());
            return;
        }
        JSONObject d10 = response.d();
        if (d10 != null) {
            n0.b(accessToken, d10);
            callback.a(response.d());
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }

    public static final void I0(@NotNull Parcel parcel, @Nullable Map<String, String> map) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    @NotNull
    public static final String K(@Nullable Context context) {
        v0.j(context, "context");
        return com.facebook.v.m();
    }

    @Nullable
    public static final Method L(@NotNull Class<?> clazz, @NotNull String methodName, @NotNull Class<?>... parameterTypes) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        try {
            return clazz.getMethod(methodName, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @Nullable
    public static final Method M(@NotNull String className, @NotNull String methodName, @NotNull Class<?>... parameterTypes) {
        Intrinsics.checkNotNullParameter(className, "className");
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(parameterTypes, "parameterTypes");
        try {
            Class<?> clazz = Class.forName(className);
            Intrinsics.checkNotNullExpressionValue(clazz, "clazz");
            return L(clazz, methodName, (Class[]) Arrays.copyOf(parameterTypes, parameterTypes.length));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private final String N(String str) {
        if (Intrinsics.areEqual(str, "instagram")) {
            return "id,name,profile_picture";
        }
        return "id,name,first_name,middle_name,last_name";
    }

    @Nullable
    public static final Locale O() {
        try {
            return com.facebook.v.l().getResources().getConfiguration().locale;
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public static final Object P(@NotNull JSONObject jsonObject, @Nullable String str, @Nullable String str2) throws JSONException {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Object opt = jsonObject.opt(str);
        if (opt != null && (opt instanceof String)) {
            opt = new JSONTokener((String) opt).nextValue();
        }
        if (opt != null && !(opt instanceof JSONObject) && !(opt instanceof JSONArray)) {
            if (str2 != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt(str2, opt);
                return jSONObject;
            }
            throw new FacebookException("Got an unexpected non-JSON object.");
        }
        return opt;
    }

    private final String R(MessageDigest messageDigest, byte[] bArr) {
        messageDigest.update(bArr);
        byte[] digest = messageDigest.digest();
        StringBuilder sb2 = new StringBuilder();
        Intrinsics.checkNotNullExpressionValue(digest, "digest");
        for (byte b10 : digest) {
            sb2.append(Integer.toHexString((b10 >> 4) & 15));
            sb2.append(Integer.toHexString(b10 & 15));
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "builder.toString()");
        return sb3;
    }

    private final String S(String str, String str2) {
        byte[] bytes = str2.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return T(str, bytes);
    }

    private final String T(String str, byte[] bArr) {
        try {
            MessageDigest hash = MessageDigest.getInstance(str);
            Intrinsics.checkNotNullExpressionValue(hash, "hash");
            return R(hash, bArr);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    @Nullable
    public static final Object U(@Nullable Object obj, @NotNull Method method, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(args, "args");
        try {
            return method.invoke(obj, Arrays.copyOf(args, args.length));
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public static final boolean V() {
        try {
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("fb%s://applinks", Arrays.copyOf(new Object[]{com.facebook.v.m()}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            intent.setData(Uri.parse(format));
            Context l10 = com.facebook.v.l();
            PackageManager packageManager = l10.getPackageManager();
            String packageName = l10.getPackageName();
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            Intrinsics.checkNotNullExpressionValue(queryIntentActivities, "packageManager.queryInte…nager.MATCH_DEFAULT_ONLY)");
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                if (Intrinsics.areEqual(packageName, resolveInfo.activityInfo.packageName)) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static final boolean W(@NotNull Context context) {
        AutofillManager a10;
        boolean isAutofillSupported;
        boolean isEnabled;
        Intrinsics.checkNotNullParameter(context, "context");
        if (Build.VERSION.SDK_INT >= 26 && (a10 = o.d.a(context.getSystemService(o.c.a()))) != null) {
            isAutofillSupported = a10.isAutofillSupported();
            if (isAutofillSupported) {
                isEnabled = a10.isEnabled();
                if (!isEnabled) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public static final boolean X(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (Build.VERSION.SDK_INT >= 27) {
            return context.getPackageManager().hasSystemFeature("android.hardware.type.pc");
        }
        String DEVICE = Build.DEVICE;
        if (DEVICE != null) {
            Intrinsics.checkNotNullExpressionValue(DEVICE, "DEVICE");
            if (new Regex(".+_cheets|cheets_.+").k(DEVICE)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean Y(@Nullable Uri uri) {
        if (uri != null && StringsKt.G("content", uri.getScheme(), true)) {
            return true;
        }
        return false;
    }

    public static final boolean Z(@Nullable AccessToken accessToken) {
        if (accessToken != null && Intrinsics.areEqual(accessToken, AccessToken.f14731l.e())) {
            return true;
        }
        return false;
    }

    public static final boolean a0() {
        if (o4.a.d(u0.class)) {
            return false;
        }
        try {
            JSONObject D = D();
            if (D == null) {
                return false;
            }
            try {
                JSONArray jSONArray = D.getJSONArray("data_processing_options");
                int length = jSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    String string = jSONArray.getString(i10);
                    Intrinsics.checkNotNullExpressionValue(string, "options.getString(i)");
                    String lowerCase = string.toLowerCase();
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
                    if (Intrinsics.areEqual(lowerCase, "ldu")) {
                        return true;
                    }
                }
            } catch (Exception unused) {
            }
            return false;
        } catch (Throwable th2) {
            o4.a.b(th2, u0.class);
            return false;
        }
    }

    public static final boolean b0(@Nullable Uri uri) {
        if (uri != null && StringsKt.G("file", uri.getScheme(), true)) {
            return true;
        }
        return false;
    }

    private final void c(JSONObject jSONObject, b bVar, String str, Context context) {
        if (Build.VERSION.SDK_INT >= 31 && c0(context)) {
            if (!bVar.l()) {
                jSONObject.put("anon_id", str);
                return;
            }
            return;
        }
        jSONObject.put("anon_id", str);
    }

    private final boolean c0(Context context) {
        Method M = M("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
        if (M == null) {
            return false;
        }
        Object U = U(null, M, context);
        if (!(U instanceof Integer) || !Intrinsics.areEqual(U, (Object) 0)) {
            return false;
        }
        return true;
    }

    private final void d(JSONObject jSONObject, b bVar, Context context) {
        if (Build.VERSION.SDK_INT >= 31 && c0(context)) {
            if (!bVar.l()) {
                jSONObject.put("attribution", bVar.j());
                return;
            }
            return;
        }
        jSONObject.put("attribution", bVar.j());
    }

    public static final boolean d0(@Nullable String str) {
        if (str != null && str.length() != 0) {
            return false;
        }
        return true;
    }

    public static final <T> boolean e(@Nullable T t10, @Nullable T t11) {
        if (t10 == null) {
            if (t11 == null) {
                return true;
            }
            return false;
        }
        return Intrinsics.areEqual(t10, t11);
    }

    public static final boolean e0(@Nullable Collection<?> collection) {
        if (collection != null && !collection.isEmpty()) {
            return false;
        }
        return true;
    }

    @Nullable
    public static final JSONObject f(@NotNull String accessToken) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        JSONObject a10 = n0.a(accessToken);
        if (a10 != null) {
            return a10;
        }
        com.facebook.b0 k10 = f16316a.G(accessToken).k();
        if (k10.b() != null) {
            return null;
        }
        return k10.d();
    }

    public static final boolean f0(@Nullable Uri uri) {
        if (uri != null && (StringsKt.G(ProxyConfig.MATCH_HTTP, uri.getScheme(), true) || StringsKt.G("https", uri.getScheme(), true) || StringsKt.G("fbstaging", uri.getScheme(), true))) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final Uri g(@Nullable String str, @Nullable String str2, @Nullable Bundle bundle) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        builder.authority(str);
        builder.path(str2);
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    builder.appendQueryParameter(str3, (String) obj);
                }
            }
        }
        Uri build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "builder.build()");
        return build;
    }

    @NotNull
    public static final Set<String> g0(@NotNull JSONArray jsonArray) throws JSONException {
        Intrinsics.checkNotNullParameter(jsonArray, "jsonArray");
        HashSet hashSet = new HashSet();
        int length = jsonArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            String string = jsonArray.getString(i10);
            Intrinsics.checkNotNullExpressionValue(string, "jsonArray.getString(i)");
            hashSet.add(string);
        }
        return hashSet;
    }

    private final void h(Context context, String str) {
        int i10;
        boolean z10;
        CookieSyncManager.createInstance(context).sync();
        CookieManager cookieManager = CookieManager.getInstance();
        String cookie = cookieManager.getCookie(str);
        if (cookie == null) {
            return;
        }
        for (String str2 : (String[]) StringsKt.split$default(cookie, new String[]{";"}, false, 0, 6, null).toArray(new String[0])) {
            String[] strArr = (String[]) StringsKt.split$default(str2, new String[]{ContainerUtils.KEY_VALUE_DELIMITER}, false, 0, 6, null).toArray(new String[0]);
            if (strArr.length > 0) {
                StringBuilder sb2 = new StringBuilder();
                String str3 = strArr[0];
                int length = str3.length() - 1;
                int i11 = 0;
                boolean z11 = false;
                while (i11 <= length) {
                    if (!z11) {
                        i10 = i11;
                    } else {
                        i10 = length;
                    }
                    if (Intrinsics.compare((int) str3.charAt(i10), 32) <= 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (!z11) {
                        if (!z10) {
                            z11 = true;
                        } else {
                            i11++;
                        }
                    } else if (!z10) {
                        break;
                    } else {
                        length--;
                    }
                }
                sb2.append(str3.subSequence(i11, length + 1).toString());
                sb2.append("=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
                cookieManager.setCookie(str, sb2.toString());
            }
        }
        cookieManager.removeExpiredCookie();
    }

    @NotNull
    public static final List<String> h0(@NotNull JSONArray jsonArray) throws JSONException {
        Intrinsics.checkNotNullParameter(jsonArray, "jsonArray");
        ArrayList arrayList = new ArrayList();
        int length = jsonArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            arrayList.add(jsonArray.getString(i10));
        }
        return arrayList;
    }

    public static final void i(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            u0 u0Var = f16316a;
            u0Var.h(context, "facebook.com");
            u0Var.h(context, ".facebook.com");
            u0Var.h(context, "https://facebook.com");
            u0Var.h(context, "https://.facebook.com");
        } catch (Exception unused) {
        }
    }

    @NotNull
    public static final Map<String, String> i0(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "str");
        if (str.length() == 0) {
            return new HashMap();
        }
        try {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                Intrinsics.checkNotNullExpressionValue(key, "key");
                String string = jSONObject.getString(key);
                Intrinsics.checkNotNullExpressionValue(string, "jsonObject.getString(key)");
                hashMap.put(key, string);
            }
            return hashMap;
        } catch (JSONException unused) {
            return new HashMap();
        }
    }

    public static final void j(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static final void j0(@Nullable String str, @Nullable Exception exc) {
        if (com.facebook.v.E() && str != null && exc != null) {
            Log.d(str, exc.getClass().getSimpleName() + ": " + exc.getMessage());
        }
    }

    @Nullable
    public static final String k(@Nullable String str, @Nullable String str2) {
        if (d0(str)) {
            return str2;
        }
        return str;
    }

    public static final void k0(@Nullable String str, @Nullable String str2) {
        if (com.facebook.v.E() && str != null && str2 != null) {
            Log.d(str, str2);
        }
    }

    private final long l(double d10) {
        return Math.round(d10 / 1.073741824E9d);
    }

    public static final void l0(@Nullable String str, @Nullable String str2, @Nullable Throwable th2) {
        if (com.facebook.v.E() && !d0(str)) {
            Log.d(str, str2, th2);
        }
    }

    @Nullable
    public static final HashSet<String> m(@Nullable JSONArray jSONArray) {
        if (jSONArray != null && jSONArray.length() != 0) {
            HashSet<String> hashSet = new HashSet<>();
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                String string = jSONArray.getString(i10);
                Intrinsics.checkNotNullExpressionValue(string, "jsonArray.getString(i)");
                hashSet.add(string);
            }
            return hashSet;
        }
        return null;
    }

    @NotNull
    public static final String m0(@NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        String str = "";
        if (!map.isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
                str = jSONObject.toString();
            } catch (JSONException unused) {
            }
            Intrinsics.checkNotNullExpressionValue(str, "{\n      try {\n        va…\n        \"\"\n      }\n    }");
        }
        return str;
    }

    @NotNull
    public static final List<String> n(@NotNull JSONArray jsonArray) {
        Intrinsics.checkNotNullParameter(jsonArray, "jsonArray");
        try {
            ArrayList arrayList = new ArrayList();
            int length = jsonArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                String string = jsonArray.getString(i10);
                Intrinsics.checkNotNullExpressionValue(string, "jsonArray.getString(i)");
                arrayList.add(string);
            }
            return arrayList;
        } catch (JSONException unused) {
            return new ArrayList();
        }
    }

    @Nullable
    public static final String n0(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return f16316a.S(SameMD5.TAG, key);
    }

    @NotNull
    public static final Map<String, Object> o(@NotNull JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        HashMap hashMap = new HashMap();
        JSONArray names = jsonObject.names();
        if (names == null) {
            return hashMap;
        }
        int length = names.length();
        for (int i10 = 0; i10 < length; i10++) {
            try {
                String string = names.getString(i10);
                Intrinsics.checkNotNullExpressionValue(string, "keys.getString(i)");
                Object value = jsonObject.get(string);
                if (value instanceof JSONObject) {
                    value = o((JSONObject) value);
                }
                Intrinsics.checkNotNullExpressionValue(value, "value");
                hashMap.put(string, value);
            } catch (JSONException unused) {
            }
        }
        return hashMap;
    }

    public static final boolean o0(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return W(context);
    }

    @NotNull
    public static final Map<String, String> p(@NotNull JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jsonObject.keys();
        while (keys.hasNext()) {
            String key = keys.next();
            String optString = jsonObject.optString(key);
            if (optString != null) {
                Intrinsics.checkNotNullExpressionValue(key, "key");
                hashMap.put(key, optString);
            }
        }
        return hashMap;
    }

    @NotNull
    public static final Bundle p0(@Nullable String str) {
        Bundle bundle = new Bundle();
        if (!d0(str)) {
            if (str != null) {
                for (String str2 : (String[]) StringsKt.split$default(str, new String[]{ContainerUtils.FIELD_DELIMITER}, false, 0, 6, null).toArray(new String[0])) {
                    String[] strArr = (String[]) StringsKt.split$default(str2, new String[]{ContainerUtils.KEY_VALUE_DELIMITER}, false, 0, 6, null).toArray(new String[0]);
                    try {
                        if (strArr.length == 2) {
                            bundle.putString(URLDecoder.decode(strArr[0], "UTF-8"), URLDecoder.decode(strArr[1], "UTF-8"));
                        } else if (strArr.length == 1) {
                            bundle.putString(URLDecoder.decode(strArr[0], "UTF-8"), "");
                        }
                    } catch (UnsupportedEncodingException e10) {
                        j0("FacebookSDK", e10);
                    }
                }
            } else {
                throw new IllegalStateException("Required value was null.");
            }
        }
        return bundle;
    }

    public static final int q(@Nullable InputStream inputStream, @NotNull OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream;
        Intrinsics.checkNotNullParameter(outputStream, "outputStream");
        BufferedInputStream bufferedInputStream2 = null;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] bArr = new byte[8192];
            int i10 = 0;
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                outputStream.write(bArr, 0, read);
                i10 += read;
            }
            bufferedInputStream.close();
            if (inputStream != null) {
                inputStream.close();
            }
            return i10;
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream2 = bufferedInputStream;
            if (bufferedInputStream2 != null) {
                bufferedInputStream2.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    public static final boolean q0(@NotNull Bundle bundle, @Nullable String str, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        if (obj == null) {
            bundle.remove(str);
            return true;
        } else if (obj instanceof Boolean) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            return true;
        } else if (obj instanceof boolean[]) {
            bundle.putBooleanArray(str, (boolean[]) obj);
            return true;
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Number) obj).doubleValue());
            return true;
        } else if (obj instanceof double[]) {
            bundle.putDoubleArray(str, (double[]) obj);
            return true;
        } else if (obj instanceof Integer) {
            bundle.putInt(str, ((Number) obj).intValue());
            return true;
        } else if (obj instanceof int[]) {
            bundle.putIntArray(str, (int[]) obj);
            return true;
        } else if (obj instanceof Long) {
            bundle.putLong(str, ((Number) obj).longValue());
            return true;
        } else if (obj instanceof long[]) {
            bundle.putLongArray(str, (long[]) obj);
            return true;
        } else if (obj instanceof String) {
            bundle.putString(str, (String) obj);
            return true;
        } else if (obj instanceof JSONArray) {
            bundle.putString(str, ((JSONArray) obj).toString());
            return true;
        } else if (obj instanceof JSONObject) {
            bundle.putString(str, ((JSONObject) obj).toString());
            return true;
        } else {
            return false;
        }
    }

    public static final void r(@Nullable URLConnection uRLConnection) {
        if (uRLConnection != null && (uRLConnection instanceof HttpURLConnection)) {
            ((HttpURLConnection) uRLConnection).disconnect();
        }
    }

    public static final void r0(@NotNull Bundle b10, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(b10, "b");
        if (!d0(str2)) {
            b10.putString(str, str2);
        }
    }

    private final boolean s() {
        return Intrinsics.areEqual("mounted", Environment.getExternalStorageState());
    }

    @Nullable
    public static final Map<String, String> s0(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < readInt; i10++) {
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            if (readString != null && readString2 != null) {
                hashMap.put(readString, readString2);
            }
        }
        return hashMap;
    }

    @NotNull
    public static final String t(int i10) {
        String bigInteger = new BigInteger(i10 * 5, new Random()).toString(32);
        Intrinsics.checkNotNullExpressionValue(bigInteger, "BigInteger(length * 5, r).toString(32)");
        return bigInteger;
    }

    @NotNull
    public static final String t0(@Nullable InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream;
        Throwable th2;
        InputStreamReader inputStreamReader;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                inputStreamReader = new InputStreamReader(bufferedInputStream);
                try {
                    StringBuilder sb2 = new StringBuilder();
                    char[] cArr = new char[2048];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read != -1) {
                            sb2.append(cArr, 0, read);
                        } else {
                            String sb3 = sb2.toString();
                            Intrinsics.checkNotNullExpressionValue(sb3, "{\n      bufferedInputStr…gBuilder.toString()\n    }");
                            j(bufferedInputStream);
                            j(inputStreamReader);
                            return sb3;
                        }
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    j(bufferedInputStream);
                    j(inputStreamReader);
                    throw th2;
                }
            } catch (Throwable th4) {
                th2 = th4;
                inputStreamReader = null;
            }
        } catch (Throwable th5) {
            bufferedInputStream = null;
            th2 = th5;
            inputStreamReader = null;
        }
    }

    @NotNull
    public static final String u(@Nullable Context context) {
        if (context == null) {
            return "null";
        }
        if (context == context.getApplicationContext()) {
            return "unknown";
        }
        String simpleName = context.getClass().getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "{\n      context.javaClass.simpleName\n    }");
        return simpleName;
    }

    @Nullable
    public static final Map<String, String> u0(@NotNull Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < readInt; i10++) {
            hashMap.put(parcel.readString(), parcel.readString());
        }
        return hashMap;
    }

    @NotNull
    public static final String v(@NotNull Context context) {
        String string;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            String n10 = com.facebook.v.n();
            if (n10 != null) {
                return n10;
            }
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            int i10 = applicationInfo.labelRes;
            if (i10 == 0) {
                string = applicationInfo.nonLocalizedLabel.toString();
            } else {
                string = context.getString(i10);
                Intrinsics.checkNotNullExpressionValue(string, "context.getString(stringId)");
            }
            return string;
        } catch (Exception unused) {
            return "";
        }
    }

    private final void v0() {
        try {
            if (s()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                f16320e = statFs.getAvailableBlocks() * statFs.getBlockSize();
            }
            f16320e = l(f16320e);
        } catch (Exception unused) {
        }
    }

    @Nullable
    public static final String w() {
        Context l10 = com.facebook.v.l();
        if (l10 == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = l10.getPackageManager().getPackageInfo(l10.getPackageName(), 0);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private final int w0() {
        int i10 = f16317b;
        if (i10 > 0) {
            return i10;
        }
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new FilenameFilter() { // from class: com.facebook.internal.t0
                @Override // java.io.FilenameFilter
                public final boolean accept(File file, String str) {
                    boolean x02;
                    x02 = u0.x0(file, str);
                    return x02;
                }
            });
            if (listFiles != null) {
                f16317b = listFiles.length;
            }
        } catch (Exception unused) {
        }
        if (f16317b <= 0) {
            f16317b = Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        return f16317b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean x0(File file, String str) {
        return Pattern.matches("cpu[0-9]+", str);
    }

    @Nullable
    public static final Date y(@Nullable Bundle bundle, @Nullable String str, @NotNull Date dateBase) {
        long parseLong;
        Intrinsics.checkNotNullParameter(dateBase, "dateBase");
        if (bundle == null) {
            return null;
        }
        Object obj = bundle.get(str);
        if (obj instanceof Long) {
            parseLong = ((Number) obj).longValue();
        } else {
            if (obj instanceof String) {
                try {
                    parseLong = Long.parseLong((String) obj);
                } catch (NumberFormatException unused) {
                }
            }
            return null;
        }
        if (parseLong == 0) {
            return new Date(Long.MAX_VALUE);
        }
        return new Date(dateBase.getTime() + (parseLong * 1000));
    }

    private final void y0(Context context) {
        if (Intrinsics.areEqual(f16323h, "NoCarrier")) {
            try {
                Object systemService = context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
                String networkOperatorName = ((TelephonyManager) systemService).getNetworkOperatorName();
                Intrinsics.checkNotNullExpressionValue(networkOperatorName, "telephonyManager.networkOperatorName");
                f16323h = networkOperatorName;
            } catch (Exception unused) {
            }
        }
    }

    private final void z0(Context context) {
        if (f16318c == -1 || System.currentTimeMillis() - f16318c >= 1800000) {
            f16318c = System.currentTimeMillis();
            A0();
            y0(context);
            B0();
            v0();
        }
    }

    @NotNull
    public final String E() {
        return f16322g;
    }

    @Nullable
    public final Locale J() {
        return f16325j;
    }

    @Nullable
    public final String Q() {
        return f16324i;
    }

    public final long x() {
        return f16320e;
    }

    @NotNull
    public final String z() {
        return f16323h;
    }
}
