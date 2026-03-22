package ai.turbolink.sdk.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.core.app.NotificationCompat;
import androidx.webkit.ProxyConfig;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.URI;
import java.net.URL;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: TurboLinkUtil.kt */
@Metadata
/* loaded from: classes.dex */
public final class TurboLinkUtil {
    @NotNull
    public static final TurboLinkUtil INSTANCE = new TurboLinkUtil();

    private TurboLinkUtil() {
    }

    private final boolean checkSchemeAndHost(Context context, String str, String str2) {
        List<ResolveInfo> queryIntentActivities;
        PackageManager.ResolveInfoFlags of2;
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        String str3 = "://";
        if (str2.length() > 0) {
            str3 = "://" + str2;
        }
        sb2.append(str3);
        Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(sb2.toString())).addCategory("android.intent.category.DEFAULT").addCategory("android.intent.category.BROWSABLE").setPackage(packageName);
        Intrinsics.checkNotNullExpressionValue(intent, "Intent(Intent.ACTION_VIE… .setPackage(packageName)");
        if (Build.VERSION.SDK_INT >= 33) {
            of2 = PackageManager.ResolveInfoFlags.of(64L);
            queryIntentActivities = packageManager.queryIntentActivities(intent, of2);
        } else {
            queryIntentActivities = packageManager.queryIntentActivities(intent, 131136);
        }
        Intrinsics.checkNotNullExpressionValue(queryIntentActivities, "if (Build.VERSION.SDK_IN…L\n            )\n        }");
        if (queryIntentActivities.size() > 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String addParameterToURL(@NotNull String url, @NotNull String paramName, @NotNull String paramValue) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(paramName, "paramName");
        Intrinsics.checkNotNullParameter(paramValue, "paramValue");
        Uri.Builder buildUpon = Uri.parse(url).buildUpon();
        buildUpon.appendQueryParameter(paramName, paramValue);
        String uri = buildUpon.build().toString();
        Intrinsics.checkNotNullExpressionValue(uri, "newUri.toString()");
        return uri;
    }

    @NotNull
    public final String addParametersToURL(@NotNull String url, @NotNull Map<String, String> parameters) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Uri.Builder buildUpon = Uri.parse(url).buildUpon();
        for (Map.Entry<String, String> entry : parameters.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String uri = buildUpon.build().toString();
        Intrinsics.checkNotNullExpressionValue(uri, "newUri.toString()");
        return uri;
    }

    @NotNull
    public final String checkExistAppLinks(@NotNull Context context, @NotNull String hostStr) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(hostStr, "hostStr");
        if (checkSchemeAndHost(context, "https", hostStr)) {
            return "https://" + hostStr;
        }
        return "";
    }

    @NotNull
    public final String checkExistScheme(@NotNull Context context, @NotNull String dataStr) {
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dataStr, "dataStr");
        Uri parse = Uri.parse(dataStr);
        if (parse.getScheme() == null) {
            str = "";
        } else {
            str = parse.getScheme();
            Intrinsics.checkNotNull(str);
        }
        if (parse.getHost() == null) {
            str2 = "";
        } else {
            str2 = parse.getHost();
            Intrinsics.checkNotNull(str2);
        }
        if (!checkSchemeAndHost(context, str, str2)) {
            return "";
        }
        return str + "://" + str2;
    }

    @Nullable
    public final String getAppKey(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "context.packageManager.g…ageManager.GET_META_DATA)");
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null) {
                return bundle.getString("ai.turbolink.sdk.appKey");
            }
        } catch (Exception e10) {
            TurboLinkLogger.e("Exception Message:" + e10.getMessage());
        }
        return null;
    }

    @Nullable
    public final String getAppSecret(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "context.packageManager.g…ageManager.GET_META_DATA)");
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null) {
                return bundle.getString("ai.turbolink.sdk.appSecret");
            }
        } catch (Exception e10) {
            TurboLinkLogger.e("Exception Message:" + e10.getMessage());
        }
        return null;
    }

    public final long getCurrentTimestamp() {
        return System.currentTimeMillis();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0050  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getInputStreamString(@org.jetbrains.annotations.Nullable java.io.InputStream r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 == 0) goto L47
            java.io.BufferedReader r1 = new java.io.BufferedReader
            java.io.InputStreamReader r2 = new java.io.InputStreamReader
            r2.<init>(r4)
            r1.<init>(r2)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L20
            r4.<init>()     // Catch: java.io.IOException -> L20
            java.lang.String r2 = r1.readLine()     // Catch: java.io.IOException -> L20
        L16:
            if (r2 == 0) goto L22
            r4.append(r2)     // Catch: java.io.IOException -> L20
            java.lang.String r2 = r1.readLine()     // Catch: java.io.IOException -> L20
            goto L16
        L20:
            r4 = move-exception
            goto L2f
        L22:
            r1.close()     // Catch: java.io.IOException -> L20
            java.lang.String r4 = r4.toString()     // Catch: java.io.IOException -> L20
            java.lang.String r1 = "sb.toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r1)     // Catch: java.io.IOException -> L20
            goto L48
        L2f:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Getting inputStream data exception "
            r1.append(r2)
            java.lang.String r4 = r4.getMessage()
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            ai.turbolink.sdk.utils.TurboLinkLogger.d(r4)
        L47:
            r4 = r0
        L48:
            if (r4 != 0) goto L50
            java.lang.String r4 = "streamString"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r4)
            goto L51
        L50:
            r0 = r4
        L51:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ai.turbolink.sdk.utils.TurboLinkUtil.getInputStreamString(java.io.InputStream):java.lang.String");
    }

    @NotNull
    public final JSONArray getJsonArrayTopItems(@NotNull JSONArray jsonArray, int i10) {
        Intrinsics.checkNotNullParameter(jsonArray, "jsonArray");
        JSONArray jSONArray = new JSONArray();
        int min = Math.min(jsonArray.length(), i10);
        for (int i11 = 0; i11 < min; i11++) {
            jSONArray.put(jsonArray.get(i11));
        }
        return jSONArray;
    }

    public final int getJsonValueInt(@NotNull JSONObject jsonData, @NotNull String key) {
        Intrinsics.checkNotNullParameter(jsonData, "jsonData");
        Intrinsics.checkNotNullParameter(key, "key");
        if (!jsonData.isNull(key) && jsonData.has(key)) {
            return jsonData.getInt(key);
        }
        return 0;
    }

    @NotNull
    public final String getJsonValueString(@NotNull JSONObject jsonData, @NotNull String key) {
        Intrinsics.checkNotNullParameter(jsonData, "jsonData");
        Intrinsics.checkNotNullParameter(key, "key");
        if (!jsonData.isNull(key) && jsonData.has(key)) {
            String string = jsonData.getString(key);
            Intrinsics.checkNotNullExpressionValue(string, "jsonData.getString(key)");
            return string;
        }
        return "";
    }

    @NotNull
    public final String getMD5(@NotNull String encryptStr) {
        Intrinsics.checkNotNullParameter(encryptStr, "encryptStr");
        MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
        byte[] bytes = encryptStr.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        byte[] bytes2 = messageDigest.digest(bytes);
        Intrinsics.checkNotNullExpressionValue(bytes2, "bytes");
        return n.P0(bytes2, "", null, null, 0, null, new Function1<Byte, CharSequence>() { // from class: ai.turbolink.sdk.utils.TurboLinkUtil$getMD5$1
            @NotNull
            public final CharSequence invoke(byte b10) {
                String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b10)}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
                return format;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Byte b10) {
                return invoke(b10.byteValue());
            }
        }, 30, null);
    }

    @Nullable
    public final String getProjectId(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "context.packageManager.g…ageManager.GET_META_DATA)");
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null) {
                return bundle.getString("ai.turbolink.sdk.projectID");
            }
        } catch (Exception e10) {
            TurboLinkLogger.e("Exception Message:" + e10.getMessage());
        }
        return null;
    }

    @NotNull
    public final String getSHA1(@NotNull String encryptStr) {
        Intrinsics.checkNotNullParameter(encryptStr, "encryptStr");
        MessageDigest messageDigest = MessageDigest.getInstance(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1);
        byte[] bytes = encryptStr.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        byte[] bytes2 = messageDigest.digest(bytes);
        Intrinsics.checkNotNullExpressionValue(bytes2, "bytes");
        return n.P0(bytes2, "", null, null, 0, null, new Function1<Byte, CharSequence>() { // from class: ai.turbolink.sdk.utils.TurboLinkUtil$getSHA1$1
            @NotNull
            public final CharSequence invoke(byte b10) {
                String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b10)}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(this, *args)");
                return format;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Byte b10) {
                return invoke(b10.byteValue());
            }
        }, 30, null);
    }

    @NotNull
    public final String getSystemLanguage() {
        String language = Locale.getDefault().getLanguage();
        Intrinsics.checkNotNullExpressionValue(language, "currentLocale.language");
        return language;
    }

    @NotNull
    public final String getUUID() {
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        return uuid;
    }

    @NotNull
    public final String getUriQueryKeyValue(@NotNull String url, @NotNull String key) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(key, "key");
        String queryParameter = Uri.parse(url).getQueryParameter(key);
        if (queryParameter == null) {
            return "";
        }
        return queryParameter;
    }

    @NotNull
    public final Point getWindowSize(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        Intrinsics.checkNotNullExpressionValue(defaultDisplay, "windowManager.defaultDisplay");
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        float f10 = displayMetrics.density;
        point.x = Math.round(point.x / f10);
        point.y = Math.round(point.y / f10);
        return point;
    }

    @NotNull
    public final JSONObject insertObjectToArray(@NotNull String eventStr) {
        Intrinsics.checkNotNullParameter(eventStr, "eventStr");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, eventStr);
        jSONObject.put(CrashHianalyticsData.TIME, System.currentTimeMillis() / 1000);
        return jSONObject;
    }

    public final boolean isArLanguage() {
        String systemLanguage = getSystemLanguage();
        if (!StringsKt.b0(systemLanguage, "ar", false, 2, null) && !StringsKt.b0(systemLanguage, "ug", false, 2, null)) {
            return false;
        }
        return true;
    }

    public final boolean isHttpUri(@Nullable Uri uri) {
        String str;
        if (uri == null) {
            return false;
        }
        String scheme = uri.getScheme();
        if (scheme != null) {
            str = scheme.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        } else {
            str = null;
        }
        if (Intrinsics.areEqual(str, ProxyConfig.MATCH_HTTP)) {
            return true;
        }
        return Intrinsics.areEqual(str, "https");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
        r9 = r9.getAnnotations();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, "appClass.annotations");
        r1 = r9.length;
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
        if (r2 >= r1) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        r3 = zs.a.b(zs.a.a(r9[r2])).getName();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, "it.annotationClass.java.name");
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0056, code lost:
        if (kotlin.text.StringsKt.b0(r3, "kotlin", false, 2, null) == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005a, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isKotlinCode(@org.jetbrains.annotations.NotNull android.content.Context r9) {
        /*
            r8 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.Class r9 = r9.getClass()
            r0 = 0
            java.lang.reflect.Method[] r1 = r9.getDeclaredMethods()     // Catch: java.lang.Exception -> L5d
            java.lang.String r2 = "appClass.declaredMethods"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)     // Catch: java.lang.Exception -> L5d
            int r2 = r1.length     // Catch: java.lang.Exception -> L5d
            r3 = r0
        L15:
            r4 = 0
            r5 = 2
            if (r3 >= r2) goto L30
            r6 = r1[r3]     // Catch: java.lang.Exception -> L5d
            java.lang.String r6 = r6.getName()     // Catch: java.lang.Exception -> L5d
            java.lang.String r7 = "it.name"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r7)     // Catch: java.lang.Exception -> L5d
            java.lang.String r7 = "$"
            boolean r4 = kotlin.text.StringsKt.b0(r6, r7, r0, r5, r4)     // Catch: java.lang.Exception -> L5d
            if (r4 == 0) goto L2d
            goto L58
        L2d:
            int r3 = r3 + 1
            goto L15
        L30:
            java.lang.annotation.Annotation[] r9 = r9.getAnnotations()     // Catch: java.lang.Exception -> L5d
            java.lang.String r1 = "appClass.annotations"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r1)     // Catch: java.lang.Exception -> L5d
            int r1 = r9.length     // Catch: java.lang.Exception -> L5d
            r2 = r0
        L3b:
            if (r2 >= r1) goto L5d
            r3 = r9[r2]     // Catch: java.lang.Exception -> L5d
            kotlin.reflect.KClass r3 = zs.a.a(r3)     // Catch: java.lang.Exception -> L5d
            java.lang.Class r3 = zs.a.b(r3)     // Catch: java.lang.Exception -> L5d
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Exception -> L5d
            java.lang.String r6 = "it.annotationClass.java.name"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r6)     // Catch: java.lang.Exception -> L5d
            java.lang.String r6 = "kotlin"
            boolean r3 = kotlin.text.StringsKt.b0(r3, r6, r0, r5, r4)     // Catch: java.lang.Exception -> L5d
            if (r3 == 0) goto L5a
        L58:
            r0 = 1
            goto L5d
        L5a:
            int r2 = r2 + 1
            goto L3b
        L5d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ai.turbolink.sdk.utils.TurboLinkUtil.isKotlinCode(android.content.Context):boolean");
    }

    public final void printObjectProperties(@NotNull Object obj) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        Class<?> cls = obj.getClass();
        Field[] fields = cls.getDeclaredFields();
        Method[] declaredMethods = cls.getDeclaredMethods();
        Intrinsics.checkNotNullExpressionValue(declaredMethods, "objClass.declaredMethods");
        ArrayList<Method> arrayList = new ArrayList();
        for (Method method : declaredMethods) {
            String name = method.getName();
            Intrinsics.checkNotNullExpressionValue(name, "it.name");
            if (StringsKt.V(name, "get", false, 2, null)) {
                arrayList.add(method);
            }
        }
        Intrinsics.checkNotNullExpressionValue(fields, "fields");
        for (Field field : fields) {
            field.setAccessible(true);
            TurboLinkLogger.d(field.getName() + " = " + field.get(obj));
        }
        for (Method method2 : arrayList) {
            method2.setAccessible(true);
            String name2 = method2.getName();
            Intrinsics.checkNotNullExpressionValue(name2, "property.name");
            String substring = name2.substring(3);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            TurboLinkLogger.d(StringsKt.B(substring) + " = " + method2.invoke(obj, new Object[0]));
        }
    }

    @NotNull
    public final String removeParameterFromURL(@NotNull String url, @NotNull String removeParam) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(removeParam, "removeParam");
        URL url2 = new URL(url);
        URI uri = new URI(url2.getProtocol(), url2.getAuthority(), url2.getPath(), null, url2.getRef());
        String query = url2.getQuery();
        if (query == null) {
            query = "";
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : StringsKt.split$default(query, new String[]{ContainerUtils.FIELD_DELIMITER}, false, 0, 6, null)) {
            if (!Intrinsics.areEqual(StringsKt.split$default((String) obj, new String[]{ContainerUtils.KEY_VALUE_DELIMITER}, false, 0, 6, null).get(0), removeParam)) {
                arrayList.add(obj);
            }
        }
        String A0 = CollectionsKt.A0(arrayList, ContainerUtils.FIELD_DELIMITER, null, null, 0, null, null, 62, null);
        if (A0.length() <= 0) {
            return url;
        }
        String uri2 = new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), A0, uri.getFragment()).toString();
        Intrinsics.checkNotNullExpressionValue(uri2, "{\n            URI(uri.sc…ent).toString()\n        }");
        return uri2;
    }

    @Nullable
    public final byte[] resourceToByteArray(@NotNull Context context, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            InputStream openRawResource = context.getResources().openRawResource(i10);
            Intrinsics.checkNotNullExpressionValue(openRawResource, "context.resources.openRawResource(resourceId)");
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = openRawResource.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    openRawResource.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (Exception unused) {
            return null;
        }
    }
}
