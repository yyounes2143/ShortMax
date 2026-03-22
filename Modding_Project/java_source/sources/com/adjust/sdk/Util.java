package com.adjust.sdk;

import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.LocaleList;
import com.adjust.sdk.GooglePlayServicesClient;
import com.adjust.sdk.scheduler.AsyncTaskExecutor;
import com.adjust.sdk.scheduler.SingleThreadFutureScheduler;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.ss.texturerender.TextureRenderKeys;
import io.bidmachine.Framework;
import java.io.ObjectInputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Util {
    private static final String fieldReadErrorMessage = "Unable to read '%s' field in migration device with message (%s)";
    public static final DecimalFormat SecondsDisplayFormat = newLocalDecimalFormat();
    private static final String DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'Z";
    public static final SimpleDateFormat dateFormatter = new SimpleDateFormat(DATE_FORMAT, Locale.US);
    private static volatile SingleThreadFutureScheduler playAdIdScheduler = null;

    /* loaded from: classes2.dex */
    public class a implements Callable<Object> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f4268a;

        public a(Context context) {
            this.f4268a = context;
        }

        @Override // java.util.concurrent.Callable
        public final Object call() {
            try {
                return Reflection.getAdvertisingInfoObject(this.f4268a);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* loaded from: classes2.dex */
    public class b implements Callable<String> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f4269a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ Object f4270b;

        public b(Context context, Object obj) {
            this.f4269a = context;
            this.f4270b = obj;
        }

        @Override // java.util.concurrent.Callable
        public final String call() {
            return Reflection.getPlayAdId(this.f4269a, this.f4270b);
        }
    }

    /* loaded from: classes2.dex */
    public class c implements Callable<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f4271a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ Object f4272b;

        public c(Context context, Object obj) {
            this.f4271a = context;
            this.f4272b = obj;
        }

        @Override // java.util.concurrent.Callable
        public final Boolean call() {
            return Reflection.isPlayTrackingEnabled(this.f4271a, this.f4272b);
        }
    }

    /* loaded from: classes2.dex */
    public class d extends AsyncTaskExecutor<Context, String> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ OnGoogleAdIdReadListener f4273a;

        public d(OnGoogleAdIdReadListener onGoogleAdIdReadListener) {
            this.f4273a = onGoogleAdIdReadListener;
        }

        @Override // com.adjust.sdk.scheduler.AsyncTaskExecutor
        public final String doInBackground(Context[] contextArr) {
            ILogger logger = AdjustFactory.getLogger();
            String googleAdId = Util.getGoogleAdId(contextArr[0]);
            logger.debug("GoogleAdId read " + googleAdId, new Object[0]);
            return googleAdId;
        }

        @Override // com.adjust.sdk.scheduler.AsyncTaskExecutor
        public final void onPostExecute(String str) {
            String str2 = str;
            OnGoogleAdIdReadListener onGoogleAdIdReadListener = this.f4273a;
            if (onGoogleAdIdReadListener != null) {
                onGoogleAdIdReadListener.onGoogleAdIdRead(str2);
            }
        }
    }

    public static AdjustAttribution attributionFromJson(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return null;
        }
        AdjustAttribution adjustAttribution = new AdjustAttribution();
        adjustAttribution.jsonResponse = jSONObject.toString();
        if (Framework.UNITY.equals(str)) {
            adjustAttribution.trackerToken = jSONObject.optString("tracker_token", "");
            adjustAttribution.trackerName = jSONObject.optString("tracker_name", "");
            adjustAttribution.network = jSONObject.optString("network", "");
            adjustAttribution.campaign = jSONObject.optString(MBInterstitialActivity.INTENT_CAMAPIGN, "");
            adjustAttribution.adgroup = jSONObject.optString("adgroup", "");
            adjustAttribution.creative = jSONObject.optString("creative", "");
            adjustAttribution.clickLabel = jSONObject.optString("click_label", "");
            adjustAttribution.costType = jSONObject.optString("cost_type", "");
            adjustAttribution.costAmount = Double.valueOf(jSONObject.optDouble("cost_amount", 0.0d));
            adjustAttribution.costCurrency = jSONObject.optString("cost_currency", "");
            adjustAttribution.fbInstallReferrer = jSONObject.optString("fb_install_referrer", "");
            return adjustAttribution;
        }
        adjustAttribution.trackerToken = jSONObject.optString("tracker_token");
        adjustAttribution.trackerName = jSONObject.optString("tracker_name");
        adjustAttribution.network = jSONObject.optString("network");
        adjustAttribution.campaign = jSONObject.optString(MBInterstitialActivity.INTENT_CAMAPIGN);
        adjustAttribution.adgroup = jSONObject.optString("adgroup");
        adjustAttribution.creative = jSONObject.optString("creative");
        adjustAttribution.clickLabel = jSONObject.optString("click_label");
        adjustAttribution.costType = jSONObject.optString("cost_type");
        adjustAttribution.costAmount = Double.valueOf(jSONObject.optDouble("cost_amount"));
        adjustAttribution.costCurrency = jSONObject.optString("cost_currency");
        adjustAttribution.fbInstallReferrer = jSONObject.optString("fb_install_referrer");
        return adjustAttribution;
    }

    public static boolean canReadAppSetId(AdjustConfig adjustConfig) {
        if (!adjustConfig.isAppSetIdReadingEnabled) {
            return false;
        }
        return canReadPlayIds(adjustConfig);
    }

    public static boolean canReadNonPlayIds(AdjustConfig adjustConfig) {
        if (!adjustConfig.coppaComplianceEnabled && !adjustConfig.playStoreKidsComplianceEnabled) {
            return true;
        }
        return false;
    }

    public static boolean canReadPlayIds(AdjustConfig adjustConfig) {
        if (!adjustConfig.coppaComplianceEnabled && !adjustConfig.playStoreKidsComplianceEnabled) {
            return true;
        }
        return false;
    }

    public static boolean checkPermission(Context context, String str) {
        try {
            if (context.checkCallingOrSelfPermission(str) != 0) {
                return false;
            }
            return true;
        } catch (Exception e10) {
            getLogger().debug("Unable to check permission '%s' with message (%s)", str, e10.getMessage());
            return false;
        }
    }

    public static String convertToHex(byte[] bArr) {
        BigInteger bigInteger = new BigInteger(1, bArr);
        return formatString("%0" + (bArr.length << 1) + TextureRenderKeys.KEY_IS_X, bigInteger);
    }

    public static String createUuid() {
        return UUID.randomUUID().toString();
    }

    public static boolean equalBoolean(Boolean bool, Boolean bool2) {
        return equalObject(bool, bool2);
    }

    public static boolean equalEnum(Enum r02, Enum r12) {
        return equalObject(r02, r12);
    }

    public static boolean equalInt(Integer num, Integer num2) {
        return equalObject(num, num2);
    }

    public static boolean equalLong(Long l10, Long l11) {
        return equalObject(l10, l11);
    }

    public static boolean equalObject(Object obj, Object obj2) {
        if (obj != null && obj2 != null) {
            return obj.equals(obj2);
        }
        if (obj == null && obj2 == null) {
            return true;
        }
        return false;
    }

    public static boolean equalString(String str, String str2) {
        return equalObject(str, str2);
    }

    public static boolean equalsDouble(Double d10, Double d11) {
        if (d10 != null && d11 != null) {
            if (Double.doubleToLongBits(d10.doubleValue()) != Double.doubleToLongBits(d11.doubleValue())) {
                return false;
            }
            return true;
        } else if (d10 != null || d11 != null) {
            return false;
        } else {
            return true;
        }
    }

    public static String formatString(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static String getAdidFromActivityStateFile(Context context) {
        ActivityState activityState = (ActivityState) readObject(context, Constants.ACTIVITY_STATE_FILENAME, "Activity state", ActivityState.class);
        if (activityState == null) {
            return null;
        }
        return activityState.adid;
    }

    public static Object getAdvertisingInfoObject(Context context, long j10) {
        return runSyncInPlayAdIdSchedulerWithTimeout(context, new a(context), j10);
    }

    public static String getAndroidId(Context context) {
        return AndroidIdUtil.getAndroidId(context);
    }

    public static AdjustAttribution getAttributionFromAttributionFile(Context context) {
        return (AdjustAttribution) readObject(context, Constants.ATTRIBUTION_FILENAME, "Attribution", AdjustAttribution.class);
    }

    public static String getCpuAbi() {
        return null;
    }

    public static void getGoogleAdId(Context context, OnGoogleAdIdReadListener onGoogleAdIdReadListener) {
        new d(onGoogleAdIdReadListener).execute(context);
    }

    public static Locale getLocale(Configuration configuration) {
        LocaleList locales = configuration.getLocales();
        if (locales != null && !locales.isEmpty()) {
            return locales.get(0);
        }
        return null;
    }

    private static ILogger getLogger() {
        return AdjustFactory.getLogger();
    }

    public static String getPlayAdId(Context context, Object obj, long j10) {
        return (String) runSyncInPlayAdIdSchedulerWithTimeout(context, new b(context, obj), j10);
    }

    public static String getReasonString(String str, Throwable th2) {
        if (th2 != null) {
            return formatString("%s: %s", str, th2);
        }
        return formatString("%s", str);
    }

    public static String getRootCause(Exception exc) {
        if (!hasRootCause(exc)) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        exc.printStackTrace(new PrintWriter(stringWriter));
        String stringWriter2 = stringWriter.toString();
        int indexOf = stringWriter2.indexOf("Caused by:");
        return stringWriter2.substring(indexOf, stringWriter2.indexOf("\n", indexOf));
    }

    private static String getSdkPrefix(String str) {
        String[] split;
        if (str == null || !str.contains("@") || (split = str.split("@")) == null || split.length != 2) {
            return null;
        }
        return split[0];
    }

    public static String getSdkPrefixPlatform(String str) {
        String[] split;
        String sdkPrefix = getSdkPrefix(str);
        if (sdkPrefix == null || (split = sdkPrefix.split("\\d+", 2)) == null || split.length == 0) {
            return null;
        }
        return split[0];
    }

    public static String getSdkVersion() {
        return Constants.CLIENT_SDK;
    }

    public static String[] getSupportedAbis() {
        return Build.SUPPORTED_ABIS;
    }

    public static long getWaitingTime(int i10, BackoffStrategy backoffStrategy) {
        int i11 = backoffStrategy.minRetries;
        if (i10 < i11) {
            return 0L;
        }
        return (long) (Math.min(((long) Math.pow(2.0d, i10 - i11)) * backoffStrategy.milliSecondMultiplier, backoffStrategy.maxWait) * randomInRange(backoffStrategy.minRange, backoffStrategy.maxRange));
    }

    public static boolean hasRootCause(Exception exc) {
        StringWriter stringWriter = new StringWriter();
        exc.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString().contains("Caused by:");
    }

    public static String hash(String str, String str2) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            MessageDigest messageDigest = MessageDigest.getInstance(str2);
            messageDigest.update(bytes, 0, bytes.length);
            return convertToHex(messageDigest.digest());
        } catch (Exception unused) {
            return null;
        }
    }

    public static int hashBoolean(Boolean bool, int i10) {
        int i11 = i10 * 37;
        if (bool == null) {
            return i11;
        }
        return bool.hashCode() + i11;
    }

    public static int hashDouble(Double d10, int i10) {
        int i11 = i10 * 37;
        if (d10 == null) {
            return i11;
        }
        return d10.hashCode() + i11;
    }

    public static int hashEnum(Enum r02, int i10) {
        int i11 = i10 * 37;
        if (r02 == null) {
            return i11;
        }
        return r02.hashCode() + i11;
    }

    public static int hashLong(Long l10, int i10) {
        int i11 = i10 * 37;
        if (l10 == null) {
            return i11;
        }
        return l10.hashCode() + i11;
    }

    public static int hashObject(Object obj, int i10) {
        int i11 = i10 * 37;
        if (obj == null) {
            return i11;
        }
        return obj.hashCode() + i11;
    }

    public static int hashString(String str, int i10) {
        int i11 = i10 * 37;
        if (str == null) {
            return i11;
        }
        return str.hashCode() + i11;
    }

    public static boolean isAdjustUninstallDetectionPayload(Map<String, String> map) {
        if (map == null || map.size() != 1 || !Objects.equals(map.get(Constants.FCM_PAYLOAD_KEY), Constants.FCM_PAYLOAD_VALUE)) {
            return false;
        }
        return true;
    }

    public static boolean isEnabledFromActivityStateFile(Context context) {
        ActivityState activityState = (ActivityState) readObject(context, Constants.ACTIVITY_STATE_FILENAME, "Activity state", ActivityState.class);
        if (activityState == null) {
            return true;
        }
        return activityState.enabled;
    }

    private static boolean isEqualGoogleReferrerDetails(ReferrerDetails referrerDetails, ActivityState activityState) {
        if (referrerDetails.referrerClickTimestampSeconds == activityState.clickTime && referrerDetails.installBeginTimestampSeconds == activityState.installBegin && referrerDetails.referrerClickTimestampServerSeconds == activityState.clickTimeServer && referrerDetails.installBeginTimestampServerSeconds == activityState.installBeginServer && equalString(referrerDetails.installReferrer, activityState.installReferrer) && equalString(referrerDetails.installVersion, activityState.installVersion) && equalBoolean(referrerDetails.googlePlayInstant, activityState.googlePlayInstant)) {
            return true;
        }
        return false;
    }

    private static boolean isEqualHuaweiReferrerAdsDetails(ReferrerDetails referrerDetails, ActivityState activityState) {
        if (referrerDetails.referrerClickTimestampSeconds == activityState.clickTimeHuawei && referrerDetails.installBeginTimestampSeconds == activityState.installBeginHuawei && equalString(referrerDetails.installReferrer, activityState.installReferrerHuawei)) {
            return true;
        }
        return false;
    }

    private static boolean isEqualHuaweiReferrerAppGalleryDetails(ReferrerDetails referrerDetails, ActivityState activityState) {
        if (referrerDetails.referrerClickTimestampSeconds == activityState.clickTimeHuawei && referrerDetails.installBeginTimestampSeconds == activityState.installBeginHuawei && equalString(referrerDetails.installReferrer, activityState.installReferrerHuaweiAppGallery)) {
            return true;
        }
        return false;
    }

    private static boolean isEqualMetaReferrerDetails(ReferrerDetails referrerDetails, ActivityState activityState) {
        if (referrerDetails.referrerClickTimestampSeconds == activityState.clickTimeMeta && equalString(referrerDetails.installReferrer, activityState.installReferrerMeta) && equalBoolean(referrerDetails.isClick, activityState.isClickMeta)) {
            return true;
        }
        return false;
    }

    public static boolean isEqualReferrerDetails(ReferrerDetails referrerDetails, String str, ActivityState activityState) {
        if (str.equals("google")) {
            return isEqualGoogleReferrerDetails(referrerDetails, activityState);
        }
        if (str.equals(Constants.REFERRER_API_HUAWEI_ADS)) {
            return isEqualHuaweiReferrerAdsDetails(referrerDetails, activityState);
        }
        if (str.equals(Constants.REFERRER_API_HUAWEI_APP_GALLERY)) {
            return isEqualHuaweiReferrerAppGalleryDetails(referrerDetails, activityState);
        }
        if (str.equals(Constants.REFERRER_API_SAMSUNG)) {
            return isEqualSamsungReferrerDetails(referrerDetails, activityState);
        }
        if (str.equals(Constants.REFERRER_API_XIAOMI)) {
            return isEqualXiaomiReferrerDetails(referrerDetails, activityState);
        }
        if (str.equals(Constants.REFERRER_API_VIVO)) {
            return isEqualVivoReferrerDetails(referrerDetails, activityState);
        }
        if (str.equals(Constants.REFERRER_API_META)) {
            return isEqualMetaReferrerDetails(referrerDetails, activityState);
        }
        return false;
    }

    private static boolean isEqualSamsungReferrerDetails(ReferrerDetails referrerDetails, ActivityState activityState) {
        if (referrerDetails.referrerClickTimestampSeconds == activityState.clickTimeSamsung && referrerDetails.installBeginTimestampSeconds == activityState.installBeginSamsung && equalString(referrerDetails.installReferrer, activityState.installReferrerSamsung)) {
            return true;
        }
        return false;
    }

    private static boolean isEqualVivoReferrerDetails(ReferrerDetails referrerDetails, ActivityState activityState) {
        if (referrerDetails.referrerClickTimestampSeconds == activityState.clickTimeVivo && referrerDetails.installBeginTimestampSeconds == activityState.installBeginVivo && equalString(referrerDetails.installReferrer, activityState.installReferrerVivo) && equalString(referrerDetails.installVersion, activityState.installVersionVivo)) {
            return true;
        }
        return false;
    }

    private static boolean isEqualXiaomiReferrerDetails(ReferrerDetails referrerDetails, ActivityState activityState) {
        if (referrerDetails.referrerClickTimestampSeconds == activityState.clickTimeXiaomi && referrerDetails.installBeginTimestampSeconds == activityState.installBeginXiaomi && referrerDetails.referrerClickTimestampServerSeconds == activityState.clickTimeServerXiaomi && referrerDetails.installBeginTimestampServerSeconds == activityState.installBeginServerXiaomi && equalString(referrerDetails.installReferrer, activityState.installReferrerXiaomi) && equalString(referrerDetails.installVersion, activityState.installVersionXiaomi)) {
            return true;
        }
        return false;
    }

    public static boolean isGooglePlayGamesForPC(Context context) {
        return context.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE");
    }

    public static Boolean isPlayTrackingEnabled(Context context, Object obj, long j10) {
        return (Boolean) runSyncInPlayAdIdSchedulerWithTimeout(context, new c(context, obj), j10);
    }

    public static boolean isUrlFilteredOut(Uri uri) {
        String uri2;
        if (uri == null || (uri2 = uri.toString()) == null || uri2.length() == 0 || uri2.matches(Constants.FB_AUTH_REGEX)) {
            return true;
        }
        return false;
    }

    public static boolean isUrlWithTrackerQueryParam(Uri uri) {
        try {
            if (uri.getQueryParameter("adj_t") != null) {
                return true;
            }
            if (uri.getQueryParameter("adjust_t") != null) {
                return true;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isValidParameter(String str, String str2, String str3) {
        if (str == null) {
            getLogger().error("%s parameter %s is missing", str3, str2);
            return false;
        } else if (str.equals("")) {
            getLogger().error("%s parameter %s is empty", str3, str2);
            return false;
        } else {
            return true;
        }
    }

    public static Map<String, String> mergeParameters(Map<String, String> map, Map<String, String> map2, String str) {
        if (map == null) {
            return map2;
        }
        if (map2 == null) {
            return map;
        }
        HashMap hashMap = new HashMap(map);
        ILogger logger = getLogger();
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String str2 = (String) hashMap.put(entry.getKey(), entry.getValue());
            if (str2 != null) {
                logger.warn("Key %s with value %s from %s parameter was replaced by value %s", entry.getKey(), str2, str, entry.getValue());
            }
        }
        return hashMap;
    }

    private static DecimalFormat newLocalDecimalFormat() {
        return new DecimalFormat("0.0", new DecimalFormatSymbols(Locale.US));
    }

    public static String quote(String str) {
        if (str == null) {
            return null;
        }
        if (!Pattern.compile("\\s").matcher(str).find()) {
            return str;
        }
        return formatString("'%s'", str);
    }

    private static double randomInRange(double d10, double d11) {
        return (new Random().nextDouble() * (d11 - d10)) + d10;
    }

    public static boolean readBooleanField(ObjectInputStream.GetField getField, String str, boolean z10) {
        try {
            return getField.get(str, z10);
        } catch (Exception e10) {
            getLogger().debug(fieldReadErrorMessage, str, e10.getMessage());
            return z10;
        }
    }

    public static double readDoubleField(ObjectInputStream.GetField getField, String str, double d10) {
        try {
            return getField.get(str, d10);
        } catch (Exception e10) {
            getLogger().debug(fieldReadErrorMessage, str, e10.getMessage());
            return d10;
        }
    }

    public static int readIntField(ObjectInputStream.GetField getField, String str, int i10) {
        try {
            return getField.get(str, i10);
        } catch (Exception e10) {
            getLogger().debug(fieldReadErrorMessage, str, e10.getMessage());
            return i10;
        }
    }

    public static long readLongField(ObjectInputStream.GetField getField, String str, long j10) {
        try {
            return getField.get(str, j10);
        } catch (Exception e10) {
            getLogger().debug(fieldReadErrorMessage, str, e10.getMessage());
            return j10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0096 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v19, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.io.BufferedInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> T readObject(android.content.Context r3, java.lang.String r4, java.lang.String r5, java.lang.Class<T> r6) {
        /*
            r0 = 0
            java.io.FileInputStream r3 = r3.openFileInput(r4)     // Catch: java.lang.Exception -> L6e java.io.FileNotFoundException -> L83
            java.io.BufferedInputStream r4 = new java.io.BufferedInputStream     // Catch: java.lang.Exception -> L3f java.io.FileNotFoundException -> L44
            r4.<init>(r3)     // Catch: java.lang.Exception -> L3f java.io.FileNotFoundException -> L44
            java.io.ObjectInputStream r3 = new java.io.ObjectInputStream     // Catch: java.lang.Exception -> L6c java.io.FileNotFoundException -> L86
            r3.<init>(r4)     // Catch: java.lang.Exception -> L6c java.io.FileNotFoundException -> L86
            java.lang.Object r4 = r3.readObject()     // Catch: java.lang.Exception -> L26 java.lang.ClassCastException -> L28 java.lang.ClassNotFoundException -> L2a
            java.lang.Object r0 = r6.cast(r4)     // Catch: java.lang.Exception -> L26 java.lang.ClassCastException -> L28 java.lang.ClassNotFoundException -> L2a
            com.adjust.sdk.ILogger r4 = getLogger()     // Catch: java.lang.Exception -> L26 java.lang.ClassCastException -> L28 java.lang.ClassNotFoundException -> L2a
            java.lang.String r6 = "Read %s: %s"
            java.lang.Object[] r1 = new java.lang.Object[]{r5, r0}     // Catch: java.lang.Exception -> L26 java.lang.ClassCastException -> L28 java.lang.ClassNotFoundException -> L2a
            r4.debug(r6, r1)     // Catch: java.lang.Exception -> L26 java.lang.ClassCastException -> L28 java.lang.ClassNotFoundException -> L2a
            goto L94
        L26:
            r4 = move-exception
            goto L2c
        L28:
            r4 = move-exception
            goto L48
        L2a:
            r4 = move-exception
            goto L5a
        L2c:
            com.adjust.sdk.ILogger r6 = getLogger()     // Catch: java.lang.Exception -> L3f java.io.FileNotFoundException -> L44
            java.lang.String r1 = "Failed to read %s object (%s)"
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Exception -> L3f java.io.FileNotFoundException -> L44
            java.lang.Object[] r4 = new java.lang.Object[]{r5, r4}     // Catch: java.lang.Exception -> L3f java.io.FileNotFoundException -> L44
            r6.error(r1, r4)     // Catch: java.lang.Exception -> L3f java.io.FileNotFoundException -> L44
            goto L94
        L3f:
            r4 = move-exception
            r2 = r0
            r0 = r3
            r3 = r2
            goto L70
        L44:
            r2 = r0
            r0 = r3
            r3 = r2
            goto L84
        L48:
            com.adjust.sdk.ILogger r6 = getLogger()     // Catch: java.lang.Exception -> L3f java.io.FileNotFoundException -> L44
            java.lang.String r1 = "Failed to cast %s object (%s)"
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Exception -> L3f java.io.FileNotFoundException -> L44
            java.lang.Object[] r4 = new java.lang.Object[]{r5, r4}     // Catch: java.lang.Exception -> L3f java.io.FileNotFoundException -> L44
            r6.error(r1, r4)     // Catch: java.lang.Exception -> L3f java.io.FileNotFoundException -> L44
            goto L94
        L5a:
            com.adjust.sdk.ILogger r6 = getLogger()     // Catch: java.lang.Exception -> L3f java.io.FileNotFoundException -> L44
            java.lang.String r1 = "Failed to find %s class (%s)"
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Exception -> L3f java.io.FileNotFoundException -> L44
            java.lang.Object[] r4 = new java.lang.Object[]{r5, r4}     // Catch: java.lang.Exception -> L3f java.io.FileNotFoundException -> L44
            r6.error(r1, r4)     // Catch: java.lang.Exception -> L3f java.io.FileNotFoundException -> L44
            goto L94
        L6c:
            r3 = move-exception
            goto L74
        L6e:
            r4 = move-exception
            r3 = r0
        L70:
            r2 = r0
            r0 = r3
            r3 = r4
            r4 = r2
        L74:
            com.adjust.sdk.ILogger r6 = getLogger()
            java.lang.Object[] r3 = new java.lang.Object[]{r5, r3}
            java.lang.String r1 = "Failed to open %s file for reading (%s)"
            r6.error(r1, r3)
        L81:
            r3 = r4
            goto L94
        L83:
            r3 = r0
        L84:
            r4 = r0
            r0 = r3
        L86:
            com.adjust.sdk.ILogger r3 = getLogger()
            java.lang.Object[] r6 = new java.lang.Object[]{r5}
            java.lang.String r1 = "%s file not found"
            r3.debug(r1, r6)
            goto L81
        L94:
            if (r3 == 0) goto La8
            r3.close()     // Catch: java.lang.Exception -> L9a
            goto La8
        L9a:
            r3 = move-exception
            com.adjust.sdk.ILogger r4 = getLogger()
            java.lang.Object[] r3 = new java.lang.Object[]{r5, r3}
            java.lang.String r5 = "Failed to close %s file for reading (%s)"
            r4.error(r5, r3)
        La8:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adjust.sdk.Util.readObject(android.content.Context, java.lang.String, java.lang.String, java.lang.Class):java.lang.Object");
    }

    public static <T> T readObjectField(ObjectInputStream.GetField getField, String str, T t10) {
        try {
            return (T) getField.get(str, t10);
        } catch (Exception e10) {
            getLogger().debug(fieldReadErrorMessage, str, e10.getMessage());
            return t10;
        }
    }

    public static String readStringField(ObjectInputStream.GetField getField, String str, String str2) {
        return (String) readObjectField(getField, str, str2);
    }

    public static boolean resolveContentProvider(Context context, String str) {
        if (context.getPackageManager().resolveContentProvider(str, 0) == null) {
            return false;
        }
        return true;
    }

    private static <R> R runSyncInPlayAdIdSchedulerWithTimeout(Context context, Callable<R> callable, long j10) {
        if (playAdIdScheduler == null) {
            synchronized (Util.class) {
                try {
                    if (playAdIdScheduler == null) {
                        playAdIdScheduler = new SingleThreadFutureScheduler("PlayAdIdLibrary", true);
                    }
                } finally {
                }
            }
        }
        try {
            return (R) playAdIdScheduler.scheduleFutureWithReturn(callable, 0L).get(j10, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.OutputStream, java.io.BufferedOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> void writeObject(T r1, android.content.Context r2, java.lang.String r3, java.lang.String r4) {
        /*
            r0 = 0
            java.io.FileOutputStream r2 = r2.openFileOutput(r3, r0)     // Catch: java.lang.Exception -> L32
            java.io.BufferedOutputStream r3 = new java.io.BufferedOutputStream     // Catch: java.lang.Exception -> L20
            r3.<init>(r2)     // Catch: java.lang.Exception -> L20
            java.io.ObjectOutputStream r2 = new java.io.ObjectOutputStream     // Catch: java.lang.Exception -> L30
            r2.<init>(r3)     // Catch: java.lang.Exception -> L30
            r2.writeObject(r1)     // Catch: java.lang.Exception -> L20 java.io.NotSerializableException -> L22
            com.adjust.sdk.ILogger r3 = getLogger()     // Catch: java.lang.Exception -> L20 java.io.NotSerializableException -> L22
            java.lang.String r0 = "Wrote %s: %s"
            java.lang.Object[] r1 = new java.lang.Object[]{r4, r1}     // Catch: java.lang.Exception -> L20 java.io.NotSerializableException -> L22
            r3.debug(r0, r1)     // Catch: java.lang.Exception -> L20 java.io.NotSerializableException -> L22
            goto L43
        L20:
            r1 = move-exception
            goto L34
        L22:
            com.adjust.sdk.ILogger r1 = getLogger()     // Catch: java.lang.Exception -> L20
            java.lang.String r3 = "Failed to serialize %s"
            java.lang.Object[] r0 = new java.lang.Object[]{r4}     // Catch: java.lang.Exception -> L20
            r1.error(r3, r0)     // Catch: java.lang.Exception -> L20
            goto L43
        L30:
            r1 = move-exception
            goto L35
        L32:
            r1 = move-exception
            r2 = 0
        L34:
            r3 = r2
        L35:
            com.adjust.sdk.ILogger r2 = getLogger()
            java.lang.Object[] r1 = new java.lang.Object[]{r4, r1}
            java.lang.String r0 = "Failed to open %s for writing (%s)"
            r2.error(r0, r1)
            r2 = r3
        L43:
            if (r2 == 0) goto L57
            r2.close()     // Catch: java.lang.Exception -> L49
            goto L57
        L49:
            r1 = move-exception
            com.adjust.sdk.ILogger r2 = getLogger()
            java.lang.Object[] r1 = new java.lang.Object[]{r4, r1}
            java.lang.String r3 = "Failed to close %s file for writing (%s)"
            r2.error(r3, r1)
        L57:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adjust.sdk.Util.writeObject(java.lang.Object, android.content.Context, java.lang.String, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getGoogleAdId(Context context) {
        String str;
        Object advertisingInfoObject;
        GooglePlayServicesClient.GooglePlayServicesInfo googlePlayServicesInfo;
        try {
            googlePlayServicesInfo = GooglePlayServicesClient.getGooglePlayServicesInfo(context, 11000L);
        } catch (Exception unused) {
        }
        if (googlePlayServicesInfo != null) {
            str = googlePlayServicesInfo.getGpsAdid();
            return (str != null || (advertisingInfoObject = getAdvertisingInfoObject(context, 11000L)) == null) ? str : getPlayAdId(context, advertisingInfoObject, 1000L);
        }
        str = null;
        if (str != null) {
            return str;
        }
    }
}
