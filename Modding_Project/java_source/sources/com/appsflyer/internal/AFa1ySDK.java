package com.appsflyer.internal;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.adjust.sdk.Constants;
import com.android.billingclient.api.BillingClient;
import com.appsflyer.AFAdRevenueData;
import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFInAppEventType;
import com.appsflyer.AFLogger;
import com.appsflyer.AFPurchaseDetails;
import com.appsflyer.AppsFlyerConsent;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.AppsFlyerInAppPurchaseValidationCallback;
import com.appsflyer.AppsFlyerInAppPurchaseValidatorListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.PurchaseHandler;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.deeplink.DeepLinkListener;
import com.appsflyer.deeplink.DeepLinkResult;
import com.appsflyer.internal.AFa1ySDK;
import com.appsflyer.internal.AFd1xSDK;
import com.appsflyer.internal.AFe1oSDK;
import com.appsflyer.internal.AFj1tSDK;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.appsflyer.internal.platform_extension.PluginInfo;
import com.bytedance.vodsetting.Module;
import com.google.android.gms.common.GoogleApiAvailability;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.net.URI;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class AFa1ySDK extends AppsFlyerLib {
    private static int $10 = 0;
    private static int $11 = 1;
    private static boolean AFInAppEventParameterName = false;
    private static boolean AFInAppEventType = false;
    private static int AFKeystoreWrapper = 0;
    private static char[] AFLogger = null;
    @VisibleForTesting
    private static AFa1ySDK areAllFieldsValid = null;
    static AppsFlyerInAppPurchaseValidatorListener getCurrencyIso4217Code = null;
    public static final String getMediationNetwork;
    public static final String getMonetizationNetwork;

    /* renamed from: i  reason: collision with root package name */
    private static int f10921i = 1;
    private static int registerClient;
    Application component2;
    private Map<Long, String> copydefault;
    private AFf1mSDK equals;
    private boolean hashCode;
    private volatile SharedPreferences toString;
    public volatile AppsFlyerConversionListener getRevenue = null;
    private long component3 = -1;
    long AFAdRevenueData = -1;
    private long component4 = TimeUnit.SECONDS.toMillis(5);
    boolean component1 = false;
    @NonNull
    private final AFc1bSDK copy = new AFc1bSDK();

    /* renamed from: com.appsflyer.internal.AFa1ySDK$3  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] getCurrencyIso4217Code;

        static {
            int[] iArr = new int[AppsFlyerProperties.EmailsCryptType.values().length];
            getCurrencyIso4217Code = iArr;
            try {
                iArr[AppsFlyerProperties.EmailsCryptType.SHA256.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                getCurrencyIso4217Code[AppsFlyerProperties.EmailsCryptType.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        component2();
        getMonetizationNetwork = "366";
        getMediationNetwork = "6.17";
        getCurrencyIso4217Code = null;
        areAllFieldsValid = new AFa1ySDK();
        f10921i = (AFKeystoreWrapper + 87) % 128;
    }

    @VisibleForTesting
    public AFa1ySDK() {
        getMonetizationNetwork().afInfoLog().getRevenue();
        getMonetizationNetwork().afInfoLog().getMonetizationNetwork();
        AFe1oSDK copydefault = getMonetizationNetwork().copydefault();
        copydefault.getMediationNetwork.add(new AFa1zSDK());
    }

    private static /* synthetic */ Object areAllFieldsValid(Object[] objArr) {
        String str = (String) objArr[0];
        boolean booleanValue = ((Boolean) objArr[1]).booleanValue();
        int i10 = AFKeystoreWrapper + 37;
        f10921i = i10 % 128;
        if (i10 % 2 != 0) {
            AppsFlyerProperties.getInstance().set(str, booleanValue);
            return null;
        }
        AppsFlyerProperties.getInstance().set(str, booleanValue);
        throw null;
    }

    @SuppressLint({"DiscouragedApi"})
    private static void c_(Context context, PackageInfo packageInfo) {
        try {
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo != null && (applicationInfo.flags & 32768) != 0) {
                if (Build.VERSION.SDK_INT >= 31) {
                    if (context.getResources().getIdentifier("appsflyer_data_extraction_rules", "xml", context.getPackageName()) != 0) {
                        int i10 = f10921i + 65;
                        AFKeystoreWrapper = i10 % 128;
                        if (i10 % 2 != 0) {
                            AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, "appsflyer_data_extraction_rules.xml detected, using AppsFlyer data extraction rules for AppsFlyer SDK data", true);
                            return;
                        } else {
                            AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, "appsflyer_data_extraction_rules.xml detected, using AppsFlyer data extraction rules for AppsFlyer SDK data", true);
                            return;
                        }
                    }
                    AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "'allowBackup' is set to true; appsflyer_data_extraction_rules.xml is NOT detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application's <data-extraction-rules> both in <device-transfer> and <cloud-backup>.\nIf Appsflyer's Purchase Connector is in use then you also must add to <device-transfer> and <cloud-backup> the following excludes: <exclude domain=\"sharedpref\" path=\"appsflyer-purchase-data\"/> AND <exclude domain=\"database\" path=\"afpurchases.db\"/>", true);
                    AFKeystoreWrapper = (f10921i + 49) % 128;
                } else if (context.getResources().getIdentifier("appsflyer_backup_rules", "xml", context.getPackageName()) != 0) {
                    AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, "appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data", true);
                } else {
                    AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "'allowBackup' is set to true; appsflyer_backup_rules.xml is NOT detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application's <full-backup-content> rules.\nIf Appsflyer's Purchase Connector is in use then you also must add the following to your rules: <exclude domain=\"sharedpref\" path=\"appsflyer-purchase-data\"/> AND <exclude domain=\"database\" path=\"afpurchases.db\"/>", true);
                }
            }
        } catch (Throwable th2) {
            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "Exception while checking BackupRules: ", th2);
        }
    }

    private static /* synthetic */ Object component2(Object[] objArr) {
        String str = (String) objArr[0];
        try {
            if (new JSONObject(str).has("pid")) {
                int i10 = f10921i + 97;
                AFKeystoreWrapper = i10 % 128;
                if (i10 % 2 == 0) {
                    getMediationNetwork("preInstallName", str);
                    return null;
                }
                getMediationNetwork("preInstallName", str);
                throw null;
            }
            AFLogger.afWarnLog("Cannot set preinstall attribution data without a media source");
            int i11 = AFKeystoreWrapper + 113;
            f10921i = i11 % 128;
            if (i11 % 2 != 0) {
                return null;
            }
            throw null;
        } catch (JSONException e10) {
            AFLogger.afErrorLog("Error parsing JSON for preinstall", e10);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0054, code lost:
        if ((r4 % 2) == 0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0056, code lost:
        r1.AFAdRevenueData.put("api_name", r7.toString());
        r1.getRevenue(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0063, code lost:
        r1.AFAdRevenueData.put("api_name", r7.toString());
        r1.getRevenue(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x006f, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0031, code lost:
        if (r1.AFAdRevenueData() != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0047, code lost:
        if (r1.AFAdRevenueData() != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0049, code lost:
        r4 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper + 75;
        com.appsflyer.internal.AFa1ySDK.f10921i = r4 % 128;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ java.lang.Object component3(java.lang.Object[] r7) {
        /*
            r0 = 0
            r1 = r7[r0]
            com.appsflyer.internal.AFa1ySDK r1 = (com.appsflyer.internal.AFa1ySDK) r1
            r2 = 1
            r2 = r7[r2]
            android.content.Context r2 = (android.content.Context) r2
            r3 = 2
            r7 = r7[r3]
            com.appsflyer.internal.AFh1tSDK r7 = (com.appsflyer.internal.AFh1tSDK) r7
            int r4 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper
            int r4 = r4 + 77
            int r5 = r4 % 128
            com.appsflyer.internal.AFa1ySDK.f10921i = r5
            int r4 = r4 % r3
            r5 = 0
            if (r4 != 0) goto L34
            r1.AFAdRevenueData(r2)
            com.appsflyer.internal.AFd1zSDK r1 = r1.getMonetizationNetwork()
            com.appsflyer.internal.AFh1xSDK r1 = r1.areAllFieldsValid()
            com.appsflyer.internal.AFh1vSDK r2 = com.appsflyer.internal.AFh1vSDK.getMediationNetwork(r2)
            boolean r4 = r1.AFAdRevenueData()
            r6 = 14
            int r6 = r6 / r0
            if (r4 == 0) goto L70
            goto L49
        L34:
            r1.AFAdRevenueData(r2)
            com.appsflyer.internal.AFd1zSDK r1 = r1.getMonetizationNetwork()
            com.appsflyer.internal.AFh1xSDK r1 = r1.areAllFieldsValid()
            com.appsflyer.internal.AFh1vSDK r2 = com.appsflyer.internal.AFh1vSDK.getMediationNetwork(r2)
            boolean r4 = r1.AFAdRevenueData()
            if (r4 == 0) goto L70
        L49:
            int r4 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper
            int r4 = r4 + 75
            int r6 = r4 % 128
            com.appsflyer.internal.AFa1ySDK.f10921i = r6
            int r4 = r4 % r3
            java.lang.String r6 = "api_name"
            if (r4 == 0) goto L63
            java.util.Map<java.lang.String, java.lang.Object> r4 = r1.AFAdRevenueData
            java.lang.String r7 = r7.toString()
            r4.put(r6, r7)
            r1.getRevenue(r2)
            goto L70
        L63:
            java.util.Map<java.lang.String, java.lang.Object> r0 = r1.AFAdRevenueData
            java.lang.String r7 = r7.toString()
            r0.put(r6, r7)
            r1.getRevenue(r2)
            throw r5
        L70:
            r1.getMonetizationNetwork()
            int r7 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper
            int r7 = r7 + 61
            int r1 = r7 % 128
            com.appsflyer.internal.AFa1ySDK.f10921i = r1
            int r7 = r7 % r3
            if (r7 != 0) goto L7f
            int r3 = r3 / r0
        L7f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1ySDK.component3(java.lang.Object[]):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0059, code lost:
        if (r7 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005b, code lost:
        r0 = new org.json.JSONObject();
        r7 = new org.json.JSONArray();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0066, code lost:
        r0 = new org.json.JSONObject(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
        if (r0.has(r12) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0071, code lost:
        r7 = new org.json.JSONArray((java.lang.String) r0.get(r12));
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007c, code lost:
        com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper = (com.appsflyer.internal.AFa1ySDK.f10921i + 123) % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0085, code lost:
        r7 = new org.json.JSONArray();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0039, code lost:
        if (r7 == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ java.lang.Object component4(java.lang.Object[] r12) {
        /*
            r0 = 0
            r1 = r12[r0]
            com.appsflyer.internal.AFa1ySDK r1 = (com.appsflyer.internal.AFa1ySDK) r1
            r2 = 1
            r2 = r12[r2]
            android.content.Context r2 = (android.content.Context) r2
            r3 = 2
            r12 = r12[r3]
            java.lang.String r12 = (java.lang.String) r12
            int r4 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper
            int r4 = r4 + 83
            int r5 = r4 % 128
            com.appsflyer.internal.AFa1ySDK.f10921i = r5
            int r4 = r4 % r3
            java.lang.String r3 = "received a new (extra) referrer: "
            java.lang.String r5 = "extraReferrers"
            r6 = 0
            if (r4 != 0) goto L42
            java.lang.String r4 = java.lang.String.valueOf(r12)
            java.lang.String r3 = r3.concat(r4)
            com.appsflyer.AFLogger.afDebugLog(r3)
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            com.appsflyer.internal.AFc1qSDK r7 = r1.getMonetizationNetwork(r2)     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            java.lang.String r7 = r7.getMonetizationNetwork(r5, r6)     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            r8 = 25
            int r8 = r8 / r0
            if (r7 != 0) goto L66
            goto L5b
        L3c:
            r0 = move-exception
            goto Lc9
        L3f:
            r12 = move-exception
            goto Le0
        L42:
            java.lang.String r0 = java.lang.String.valueOf(r12)
            java.lang.String r0 = r3.concat(r0)
            com.appsflyer.AFLogger.afDebugLog(r0)
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            com.appsflyer.internal.AFc1qSDK r0 = r1.getMonetizationNetwork(r2)     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            java.lang.String r7 = r0.getMonetizationNetwork(r5, r6)     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            if (r7 != 0) goto L66
        L5b:
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            r0.<init>()     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            org.json.JSONArray r7 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            r7.<init>()     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            goto L8a
        L66:
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            r0.<init>(r7)     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            boolean r7 = r0.has(r12)     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            if (r7 == 0) goto L85
            org.json.JSONArray r7 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            java.lang.Object r8 = r0.get(r12)     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            int r8 = com.appsflyer.internal.AFa1ySDK.f10921i
            int r8 = r8 + 123
            int r8 = r8 % 128
            com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper = r8
            goto L8a
        L85:
            org.json.JSONArray r7 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            r7.<init>()     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
        L8a:
            int r8 = r7.length()     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            long r8 = (long) r8
            r10 = 5
            int r8 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r8 >= 0) goto La0
            int r8 = com.appsflyer.internal.AFa1ySDK.f10921i
            int r8 = r8 + 75
            int r8 = r8 % 128
            com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper = r8
            r7.put(r3)     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
        La0:
            int r3 = r0.length()     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            long r3 = (long) r3
            r8 = 4
            int r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r3 < 0) goto Lb6
            int r3 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper
            int r3 = r3 + 67
            int r3 = r3 % 128
            com.appsflyer.internal.AFa1ySDK.f10921i = r3
            AFAdRevenueData(r0)     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
        Lb6:
            java.lang.String r3 = r7.toString()     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            r0.put(r12, r3)     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            com.appsflyer.internal.AFc1qSDK r1 = r1.getMonetizationNetwork(r2)     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            r1.getRevenue(r5, r0)     // Catch: java.lang.Throwable -> L3c org.json.JSONException -> L3f
            return r6
        Lc9:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Couldn't save referrer - "
            r1.<init>(r2)
            r1.append(r12)
            java.lang.String r12 = ": "
            r1.append(r12)
            java.lang.String r12 = r1.toString()
            com.appsflyer.AFLogger.afErrorLog(r12, r0)
            return r6
        Le0:
            java.lang.String r0 = "error at addReferrer"
            com.appsflyer.AFLogger.afErrorLogForExcManagerOnly(r0, r12)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1ySDK.component4(java.lang.Object[]):java.lang.Object");
    }

    private static /* synthetic */ Object copy(Object[] objArr) {
        Context context = (Context) objArr[0];
        try {
            List asList = Arrays.asList(context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions);
            if (!asList.contains("android.permission.INTERNET")) {
                int i10 = AFKeystoreWrapper + 73;
                f10921i = i10 % 128;
                if (i10 % 2 == 0) {
                    AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml");
                    int i11 = 51 / 0;
                } else {
                    AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml");
                }
            }
            if (!asList.contains("android.permission.ACCESS_NETWORK_STATE")) {
                AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml");
            }
            if (Build.VERSION.SDK_INT > 32) {
                f10921i = (AFKeystoreWrapper + 11) % 128;
                if (!asList.contains("com.google.android.gms.permission.AD_ID")) {
                    AFLogger.INSTANCE.w(AFg1cSDK.GENERAL, "Permission com.google.android.gms.permission.AD_ID is missing in the AndroidManifest.xml");
                }
            }
            AFKeystoreWrapper = (f10921i + 61) % 128;
            return null;
        } catch (Exception e10) {
            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "Exception while validation permissions. ", e10);
            return null;
        }
    }

    private static /* synthetic */ Object copydefault(Object[] objArr) {
        f10921i = (AFKeystoreWrapper + 121) % 128;
        String currencyIso4217Code = getCurrencyIso4217Code(AppsFlyerProperties.APP_USER_ID);
        int i10 = f10921i + 115;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 == 0) {
            return currencyIso4217Code;
        }
        throw null;
    }

    public static SharedPreferences d_(Context context) {
        return (SharedPreferences) getRevenue(new Object[]{context}, 1916447333, -1916447320, (int) System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void e_(android.content.Context r8, android.content.Intent r9) {
        /*
            r7 = this;
            int r0 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper
            int r0 = r0 + 69
            int r0 = r0 % 128
            com.appsflyer.internal.AFa1ySDK.f10921i = r0
            r7.AFAdRevenueData(r8)
            com.appsflyer.internal.AFd1zSDK r0 = r7.getMonetizationNetwork()
            com.appsflyer.internal.AFa1mSDK r0 = r0.i()
            com.appsflyer.internal.AFd1zSDK r1 = r7.getMonetizationNetwork()
            com.appsflyer.internal.AFc1qSDK r1 = r1.component4()
            r2 = 0
            if (r9 == 0) goto L37
            int r3 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper
            int r3 = r3 + 95
            int r3 = r3 % 128
            com.appsflyer.internal.AFa1ySDK.f10921i = r3
            java.lang.String r3 = r9.getAction()
            java.lang.String r4 = "android.intent.action.VIEW"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L37
            android.net.Uri r3 = r9.getData()
            goto L38
        L37:
            r3 = r2
        L38:
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L5d
            int r6 = com.appsflyer.internal.AFa1ySDK.f10921i
            int r6 = r6 + 33
            int r6 = r6 % 128
            com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper = r6
            java.lang.String r3 = r3.toString()
            boolean r3 = r3.isEmpty()
            if (r3 != 0) goto L5d
            int r3 = com.appsflyer.internal.AFa1ySDK.f10921i
            int r3 = r3 + 27
            int r6 = r3 % 128
            com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper = r6
            int r3 = r3 % 2
            if (r3 == 0) goto L5b
            goto L5d
        L5b:
            r3 = r4
            goto L5e
        L5d:
            r3 = r5
        L5e:
            java.lang.String r6 = "ddl_sent"
            boolean r1 = r1.getMediationNetwork(r6, r5)
            if (r1 != 0) goto L67
            goto L6b
        L67:
            r1 = r3 ^ 1
            if (r1 == r4) goto L79
        L6b:
            com.appsflyer.internal.AFd1zSDK r1 = r0.areAllFieldsValid
            com.appsflyer.internal.AFa1lSDK r1 = r1.afVerboseLog()
            com.appsflyer.internal.AFa1jSDK r1 = com.appsflyer.internal.AFa1jSDK.getMediationNetwork(r1)
            r0.f_(r1, r9, r8)
            return
        L79:
            java.lang.String r8 = "No direct deep link"
            r0.getMediationNetwork(r8, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1ySDK.e_(android.content.Context, android.content.Intent):void");
    }

    private static /* synthetic */ Object equals(Object[] objArr) {
        AFa1ySDK aFa1ySDK = (AFa1ySDK) objArr[0];
        Context context = (Context) objArr[1];
        int i10 = AFKeystoreWrapper + 93;
        f10921i = i10 % 128;
        if (i10 % 2 != 0) {
            aFa1ySDK.getMonetizationNetwork().v().getMonetizationNetwork();
            return null;
        }
        aFa1ySDK.getMonetizationNetwork().v().getMonetizationNetwork();
        throw null;
    }

    private static String getCurrencyIso4217Code(String str) {
        String string;
        int i10 = AFKeystoreWrapper + 59;
        f10921i = i10 % 128;
        if (i10 % 2 == 0) {
            string = AppsFlyerProperties.getInstance().getString(str);
            int i11 = 57 / 0;
        } else {
            string = AppsFlyerProperties.getInstance().getString(str);
        }
        f10921i = (AFKeystoreWrapper + 41) % 128;
        return string;
    }

    private static void getMediationNetwork(String str, String str2) {
        int i10 = f10921i + 19;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 != 0) {
            AppsFlyerProperties.getInstance().set(str, str2);
            int i11 = 77 / 0;
        } else {
            AppsFlyerProperties.getInstance().set(str, str2);
        }
        int i12 = AFKeystoreWrapper + 73;
        f10921i = i12 % 128;
        if (i12 % 2 == 0) {
            throw null;
        }
    }

    public static /* synthetic */ Object getRevenue(Object[] objArr, int i10, int i11, int i12) {
        String concat;
        int i13 = (i10 * (-755)) + (i11 * (-755));
        int i14 = ~((~i10) | (~i11));
        int i15 = i10 | i11;
        boolean z10 = true;
        switch (i13 + (i14 * DataLoaderHelper.DATALOADER_KEY_STRING_TTQUICHE_OPTS) + (((~(i15 | i12)) | i14) * (-756)) + ((i15 | (~i12)) * MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_PRELOAD_GEAR)) {
            case 1:
                String str = (String) objArr[1];
                Map map = (Map) objArr[2];
                f10921i = (AFKeystoreWrapper + 117) % 128;
                AFc1eSDK force = ((AFa1ySDK) objArr[0]).getMonetizationNetwork().force();
                if (force.AFAdRevenueData == null) {
                    force.AFAdRevenueData = new AFb1rSDK();
                }
                AFb1rSDK aFb1rSDK = force.AFAdRevenueData;
                if (str != null && !str.isEmpty()) {
                    if (map != null && !map.isEmpty()) {
                        StringBuilder sb2 = new StringBuilder("Setting partner data for ");
                        sb2.append(str);
                        sb2.append(": ");
                        sb2.append(map);
                        AFLogger.afDebugLog(sb2.toString());
                        int length = new JSONObject(map).toString().length();
                        if (length > 1000) {
                            AFLogger.afWarnLog("Partner data 1000 characters limit exceeded");
                            HashMap hashMap = new HashMap();
                            hashMap.put("error", "limit exceeded: ".concat(String.valueOf(length)));
                            aFb1rSDK.getMonetizationNetwork.put(str, hashMap);
                            return null;
                        }
                        aFb1rSDK.getCurrencyIso4217Code.put(str, map);
                        aFb1rSDK.getMonetizationNetwork.remove(str);
                        return null;
                    }
                    if (aFb1rSDK.getCurrencyIso4217Code.remove(str) == null) {
                        AFKeystoreWrapper = (f10921i + 39) % 128;
                        concat = "Partner data is missing or `null`";
                    } else {
                        concat = "Cleared partner data for ".concat(str);
                    }
                    AFLogger.afWarnLog(concat);
                    return null;
                }
                AFLogger.afWarnLog("Partner ID is missing or `null`");
                return null;
            case 2:
                return getMonetizationNetwork(objArr);
            case 3:
                f10921i = (AFKeystoreWrapper + 19) % 128;
                ((AFa1ySDK) objArr[0]).setSharingFilterForPartners((String[]) objArr[1]);
                f10921i = (AFKeystoreWrapper + 21) % 128;
                return null;
            case 4:
                return getCurrencyIso4217Code(objArr);
            case 5:
                f10921i = (AFKeystoreWrapper + 77) % 128;
                ((AFa1ySDK) objArr[0]).start((Context) objArr[1], (String) objArr[2], null);
                AFKeystoreWrapper = (f10921i + 65) % 128;
                return null;
            case 6:
                return getRevenue(objArr);
            case 7:
                return AFAdRevenueData(objArr);
            case 8:
                AFa1ySDK aFa1ySDK = (AFa1ySDK) objArr[0];
                String str2 = (String) objArr[1];
                int i16 = f10921i + 91;
                AFKeystoreWrapper = i16 % 128;
                if (i16 % 2 != 0) {
                    AFd1oSDK copy = aFa1ySDK.getMonetizationNetwork().copy();
                    String[] strArr = new String[0];
                    strArr[1] = str2;
                    copy.getRevenue("setCurrencyCode", strArr);
                } else {
                    aFa1ySDK.getMonetizationNetwork().copy().getRevenue("setCurrencyCode", str2);
                }
                AppsFlyerProperties.getInstance().set(AppsFlyerProperties.CURRENCY_CODE, str2);
                return null;
            case 9:
                AFa1ySDK aFa1ySDK2 = (AFa1ySDK) objArr[0];
                AFe1aSDK aFe1aSDK = new AFe1aSDK((AFi1hSDK) objArr[1], aFa1ySDK2.getMonetizationNetwork().AFAdRevenueData(), aFa1ySDK2.getMonetizationNetwork(), aFa1ySDK2.getMonetizationNetwork().component3(), aFa1ySDK2.getMonetizationNetwork().AFInAppEventParameterName());
                AFe1oSDK copydefault = aFa1ySDK2.getMonetizationNetwork().copydefault();
                copydefault.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(aFe1aSDK));
                f10921i = (AFKeystoreWrapper + 77) % 128;
                return null;
            case 10:
                return areAllFieldsValid(objArr);
            case 11:
                return component3(objArr);
            case 12:
                AFa1ySDK aFa1ySDK3 = (AFa1ySDK) objArr[0];
                boolean booleanValue = ((Boolean) objArr[1]).booleanValue();
                aFa1ySDK3.AFAdRevenueData((Context) objArr[2]);
                final AFd1zSDK monetizationNetwork = aFa1ySDK3.getMonetizationNetwork();
                monetizationNetwork.AFInAppEventType().getMonetizationNetwork(booleanValue);
                monetizationNetwork.getMonetizationNetwork().submit(new Runnable() { // from class: com.appsflyer.internal.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        AFa1ySDK.getMediationNetwork(AFd1zSDK.this);
                    }
                });
                if (booleanValue) {
                    AFKeystoreWrapper = (f10921i + 81) % 128;
                    monetizationNetwork.component4().AFAdRevenueData("is_stop_tracking_used", true);
                    f10921i = (AFKeystoreWrapper + 73) % 128;
                    return null;
                }
                return null;
            case 13:
                return component1(objArr);
            case 14:
                AFKeystoreWrapper = (f10921i + 79) % 128;
                ((AFd1zSDK) objArr[0]).registerClient().getRevenue();
                f10921i = (AFKeystoreWrapper + 121) % 128;
                return null;
            case 15:
                return component4(objArr);
            case 16:
                return component2(objArr);
            case 17:
                AFa1ySDK aFa1ySDK4 = (AFa1ySDK) objArr[0];
                Context context = (Context) objArr[1];
                int i17 = AFKeystoreWrapper;
                f10921i = (i17 + 69) % 128;
                if (context instanceof Activity) {
                    return new AFh1qSDK((Activity) context, aFa1ySDK4.getMonetizationNetwork().w());
                }
                f10921i = (i17 + 105) % 128;
                return null;
            case 18:
                Context context2 = (Context) objArr[1];
                String str3 = (String) objArr[2];
                ((AFa1ySDK) objArr[0]).AFAdRevenueData(context2);
                AFg1sSDK aFg1sSDK = new AFg1sSDK(context2);
                if (str3 == null || str3.trim().isEmpty()) {
                    AFLogger.INSTANCE.w(AFg1cSDK.UNINSTALL, "Firebase Token is either empty or null and was not registered.");
                    return null;
                }
                AFLogger.INSTANCE.i(AFg1cSDK.UNINSTALL, "Firebase Refreshed Token = ".concat(str3));
                AFf1aSDK revenue = aFg1sSDK.getRevenue();
                if (revenue == null || !str3.equals(revenue.getRevenue)) {
                    long currentTimeMillis = System.currentTimeMillis();
                    if (revenue != null && currentTimeMillis - revenue.getMonetizationNetwork <= TimeUnit.SECONDS.toMillis(2L)) {
                        z10 = false;
                    }
                    AFf1aSDK aFf1aSDK = new AFf1aSDK(str3, currentTimeMillis, !z10);
                    aFg1sSDK.getCurrencyIso4217Code.getRevenue("afUninstallToken", aFf1aSDK.getRevenue);
                    aFg1sSDK.getCurrencyIso4217Code.AFAdRevenueData("afUninstallToken_received_time", aFf1aSDK.getMonetizationNetwork);
                    aFg1sSDK.getCurrencyIso4217Code.AFAdRevenueData("afUninstallToken_queued", aFf1aSDK.getMediationNetwork);
                    if (z10) {
                        AFd1zSDK monetizationNetwork2 = getRevenue().getMonetizationNetwork();
                        AFf1oSDK aFf1oSDK = new AFf1oSDK(str3, monetizationNetwork2);
                        AFe1oSDK copydefault2 = monetizationNetwork2.copydefault();
                        copydefault2.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(aFf1oSDK));
                        return null;
                    }
                    return null;
                }
                return null;
            case 19:
                return copy(objArr);
            case 20:
                AFa1ySDK aFa1ySDK5 = (AFa1ySDK) objArr[0];
                Context context3 = (Context) objArr[1];
                AFj1gSDK aFj1gSDK = new AFj1gSDK((Intent) objArr[2]);
                if (aFj1gSDK.AFAdRevenueData("appsflyer_preinstall") != null) {
                    AFKeystoreWrapper = (f10921i + 105) % 128;
                    getRevenue(new Object[]{aFj1gSDK.AFAdRevenueData("appsflyer_preinstall")}, -374487647, 374487663, (int) System.currentTimeMillis());
                    AFKeystoreWrapper = (f10921i + 29) % 128;
                }
                AFLogger.afInfoLog("****** onReceive called *******");
                AppsFlyerProperties.getInstance();
                String AFAdRevenueData = aFj1gSDK.AFAdRevenueData(Constants.REFERRER);
                AFLogger.afInfoLog("Play store referrer: ".concat(String.valueOf(AFAdRevenueData)));
                if (AFAdRevenueData != null) {
                    aFa1ySDK5.getMonetizationNetwork(context3).getRevenue(Constants.REFERRER, AFAdRevenueData);
                    AppsFlyerProperties appsFlyerProperties = AppsFlyerProperties.getInstance();
                    appsFlyerProperties.set("AF_REFERRER", AFAdRevenueData);
                    appsFlyerProperties.getRevenue = AFAdRevenueData;
                    if (AppsFlyerProperties.getInstance().getMediationNetwork()) {
                        AFLogger.afInfoLog("onReceive: isLaunchCalled");
                        getRevenue(new Object[]{aFa1ySDK5, context3, AFh1tSDK.onReceive}, -268043806, 268043817, System.identityHashCode(aFa1ySDK5));
                        aFa1ySDK5.AFAdRevenueData(AFAdRevenueData);
                        return null;
                    }
                    return null;
                }
                return null;
            case 21:
                AFa1ySDK aFa1ySDK6 = (AFa1ySDK) objArr[0];
                int i18 = AFKeystoreWrapper + 9;
                f10921i = i18 % 128;
                if (i18 % 2 == 0) {
                    aFa1ySDK6.setSharingFilterForPartners(Module.ALL);
                    return null;
                }
                aFa1ySDK6.setSharingFilterForPartners(Module.ALL);
                return null;
            case 22:
                return copydefault(objArr);
            case 23:
                return hashCode(objArr);
            case 24:
                return equals(objArr);
            default:
                return getMediationNetwork(objArr);
        }
    }

    private static /* synthetic */ Object hashCode(Object[] objArr) {
        boolean booleanValue = ((Boolean) objArr[1]).booleanValue();
        f10921i = (AFKeystoreWrapper + 93) % 128;
        ((AFa1ySDK) objArr[0]).getMonetizationNetwork().copy().getRevenue("setCollectOaid", String.valueOf(booleanValue));
        getMediationNetwork(AppsFlyerProperties.COLLECT_OAID, Boolean.toString(booleanValue));
        int i10 = f10921i + 89;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 == 0) {
            return null;
        }
        throw null;
    }

    public final void AFAdRevenueData(@NonNull Context context) {
        int i10 = (f10921i + 27) % 128;
        AFKeystoreWrapper = i10;
        AFc1bSDK aFc1bSDK = this.copy;
        if (context != null) {
            int i11 = i10 + 101;
            f10921i = i11 % 128;
            if (i11 % 2 != 0) {
                aFc1bSDK.getCurrencyIso4217Code.getMonetizationNetwork = context.getApplicationContext();
                return;
            }
            AFc1hSDK aFc1hSDK = aFc1bSDK.getCurrencyIso4217Code;
            throw null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void addPushNotificationDeepLinkPath(String... strArr) {
        int i10 = AFKeystoreWrapper + 83;
        f10921i = i10 % 128;
        if (i10 % 2 != 0) {
            List<String> asList = Arrays.asList(strArr);
            List<List<String>> list = getMonetizationNetwork().i().getRevenue;
            if (!list.contains(asList)) {
                list.add(asList);
            }
            int i11 = AFKeystoreWrapper + 97;
            f10921i = i11 % 128;
            if (i11 % 2 != 0) {
                return;
            }
            throw null;
        }
        getMonetizationNetwork().i().getRevenue.contains(Arrays.asList(strArr));
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void anonymizeUser(boolean z10) {
        int i10 = f10921i + 91;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 != 0) {
            AFd1oSDK copy = getMonetizationNetwork().copy();
            String[] strArr = new String[0];
            strArr[1] = String.valueOf(z10);
            copy.getRevenue("anonymizeUser", strArr);
        } else {
            getMonetizationNetwork().copy().getRevenue("anonymizeUser", String.valueOf(z10));
        }
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, z10);
        int i11 = f10921i + 35;
        AFKeystoreWrapper = i11 % 128;
        if (i11 % 2 == 0) {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void appendParametersToDeepLinkingURL(String str, Map<String, String> map) {
        int i10 = AFKeystoreWrapper + 53;
        f10921i = i10 % 128;
        if (i10 % 2 == 0) {
            AFa1mSDK i11 = getMonetizationNetwork().i();
            i11.getMonetizationNetwork = str;
            i11.getMediationNetwork = map;
            int i12 = 47 / 0;
        } else {
            AFa1mSDK i13 = getMonetizationNetwork().i();
            i13.getMonetizationNetwork = str;
            i13.getMediationNetwork = map;
        }
        AFKeystoreWrapper = (f10921i + 113) % 128;
    }

    public final void b_(Context context, Intent intent) {
        getRevenue(new Object[]{this, context, intent}, -1498667330, 1498667350, System.identityHashCode(this));
    }

    final void component1() {
        if (AFe1bSDK.component3()) {
            f10921i = (AFKeystoreWrapper + 107) % 128;
            return;
        }
        AFd1zSDK monetizationNetwork = getMonetizationNetwork();
        AFe1oSDK copydefault = monetizationNetwork.copydefault();
        copydefault.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(new AFe1bSDK(monetizationNetwork)));
        f10921i = (AFKeystoreWrapper + 13) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void disableAppSetId() {
        f10921i = (AFKeystoreWrapper + 87) % 128;
        getMonetizationNetwork().force().areAllFieldsValid = true;
        f10921i = (AFKeystoreWrapper + 111) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void enableFacebookDeferredApplinks(boolean z10) {
        f10921i = (AFKeystoreWrapper + 69) % 128;
        getMonetizationNetwork().e().getCurrencyIso4217Code(z10);
        f10921i = (AFKeystoreWrapper + 75) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void enableTCFDataCollection(boolean z10) {
        int i10 = AFKeystoreWrapper + 43;
        f10921i = i10 % 128;
        if (i10 % 2 == 0) {
            getMediationNetwork(AppsFlyerProperties.ENABLE_TCF_DATA_COLLECTION, Boolean.toString(z10));
            int i11 = 6 / 0;
        } else {
            getMediationNetwork(AppsFlyerProperties.ENABLE_TCF_DATA_COLLECTION, Boolean.toString(z10));
        }
        AFKeystoreWrapper = (f10921i + 39) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Nullable
    public final String getAppsFlyerUID(@NonNull Context context) {
        getMonetizationNetwork().copy().getRevenue("getAppsFlyerUID", new String[0]);
        if (context == null) {
            int i10 = AFKeystoreWrapper + 45;
            f10921i = i10 % 128;
            if (i10 % 2 == 0) {
                int i11 = 58 / 0;
            }
            return null;
        }
        AFAdRevenueData(context);
        String currencyIso4217Code = AFb1kSDK.getCurrencyIso4217Code(getMonetizationNetwork().AFAdRevenueData().getMediationNetwork);
        int i12 = f10921i + 117;
        AFKeystoreWrapper = i12 % 128;
        if (i12 % 2 == 0) {
            return currencyIso4217Code;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getAttributionId(Context context) {
        AFKeystoreWrapper = (f10921i + 21) % 128;
        AFAdRevenueData(context);
        String AFAdRevenueData = getMonetizationNetwork().AFAdRevenueData().AFAdRevenueData(context);
        int i10 = f10921i + 19;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 != 0) {
            int i11 = 45 / 0;
        }
        return AFAdRevenueData;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getHostName() {
        int i10 = f10921i + 29;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 != 0) {
            int i11 = 24 / 0;
            return getMonetizationNetwork().AFKeystoreWrapper().AFAdRevenueData();
        }
        return getMonetizationNetwork().AFKeystoreWrapper().AFAdRevenueData();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getHostPrefix() {
        int i10 = f10921i + 17;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 == 0) {
            return getMonetizationNetwork().AFKeystoreWrapper().getCurrencyIso4217Code();
        }
        getMonetizationNetwork().AFKeystoreWrapper().getCurrencyIso4217Code();
        throw null;
    }

    public final AFd1zSDK getMonetizationNetwork() {
        int i10 = (f10921i + 91) % 128;
        AFKeystoreWrapper = i10;
        AFc1bSDK aFc1bSDK = this.copy;
        f10921i = (i10 + 109) % 128;
        return aFc1bSDK;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getOutOfStore(Context context) {
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_STORE_FROM_API);
        if (string != null) {
            int i10 = AFKeystoreWrapper + 99;
            f10921i = i10 % 128;
            if (i10 % 2 != 0) {
                return string;
            }
            throw null;
        }
        String currencyIso4217Code = getCurrencyIso4217Code(context, "AF_STORE");
        if (currencyIso4217Code != null) {
            f10921i = (AFKeystoreWrapper + 51) % 128;
            return currencyIso4217Code;
        }
        AFLogger.afInfoLog("No out-of-store value set");
        return null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getSdkVersion() {
        int i10 = f10921i + 9;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 != 0) {
            getMonetizationNetwork().copy().getRevenue("getSdkVersion", new String[1]);
        } else {
            getMonetizationNetwork().copy().getRevenue("getSdkVersion", new String[0]);
        }
        String component4 = AFc1oSDK.component4();
        AFKeystoreWrapper = (f10921i + 87) % 128;
        return component4;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final AppsFlyerLib init(@NonNull String str, AppsFlyerConversionListener appsFlyerConversionListener, @NonNull Context context) {
        String str2;
        if (this.hashCode) {
            AFKeystoreWrapper = (f10921i + 123) % 128;
            return this;
        }
        this.hashCode = true;
        getMonetizationNetwork().AFInAppEventType().AFAdRevenueData(str);
        if (context != null) {
            AFAdRevenueData(context);
            Application O_ = AFj1kSDK.O_(context);
            if (O_ != null) {
                int i10 = f10921i;
                int i11 = i10 + 77;
                AFKeystoreWrapper = i11 % 128;
                if (i11 % 2 == 0) {
                    this.component2 = O_;
                    AFKeystoreWrapper = (i10 + 91) % 128;
                    getMonetizationNetwork().getMonetizationNetwork().execute(new Runnable() { // from class: com.appsflyer.internal.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            AFa1ySDK.this.copy();
                        }
                    });
                    AFe1oSDK copydefault = getMonetizationNetwork().copydefault();
                    copydefault.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(new AFe1eSDK(getMonetizationNetwork())));
                    getMonetizationNetwork().afErrorLogForExcManagerOnly().getMonetizationNetwork(new AFd1xSDK.AFa1vSDK() { // from class: com.appsflyer.internal.d
                        @Override // com.appsflyer.internal.AFd1xSDK.AFa1vSDK
                        public final void onConfigurationChanged(boolean z10) {
                            AFa1ySDK.this.getMediationNetwork(z10);
                        }
                    });
                    getMonetizationNetwork().component1().AFAdRevenueData(AFAdRevenueData());
                    AFj1sSDK AFLogger2 = getMonetizationNetwork().AFLogger();
                    Runnable runnable = new Runnable() { // from class: com.appsflyer.internal.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            AFa1ySDK.this.equals();
                        }
                    };
                    AFi1aSDK currencyIso4217Code = AFLogger2.getCurrencyIso4217Code(runnable);
                    Runnable AFAdRevenueData = AFLogger2.AFAdRevenueData(currencyIso4217Code, runnable);
                    AFLogger2.getRevenue.add(currencyIso4217Code);
                    AFLogger2.getRevenue.add(new AFj1oSDK(AFLogger2.getCurrencyIso4217Code.AFAdRevenueData(), AFAdRevenueData));
                    AFLogger2.getRevenue.add(new AFj1wSDK(AFAdRevenueData, AFLogger2.getCurrencyIso4217Code, new AFj1xSDK()));
                    AFLogger2.getRevenue.add(new AFj1mSDK(AFAdRevenueData, AFLogger2.getCurrencyIso4217Code));
                    AFLogger2.getRevenue.add(new AFj1rSDK(AFLogger2.getCurrencyIso4217Code.getMonetizationNetwork(), AFLogger2.getCurrencyIso4217Code.AFAdRevenueData(), AFAdRevenueData));
                    AFLogger2.getMediationNetwork(AFAdRevenueData);
                    for (AFj1tSDK aFj1tSDK : (AFj1tSDK[]) AFLogger2.getRevenue.toArray(new AFj1tSDK[0])) {
                        aFj1tSDK.getMonetizationNetwork(AFLogger2.getCurrencyIso4217Code.AFInAppEventParameterName().getMonetizationNetwork);
                    }
                    if (!AFLogger2.getCurrencyIso4217Code()) {
                        AFKeystoreWrapper = (f10921i + 67) % 128;
                        AFLogger2.getRevenue(AFLogger2.getCurrencyIso4217Code.AFInAppEventParameterName().getMonetizationNetwork, AFAdRevenueData, AFLogger2.getCurrencyIso4217Code);
                    }
                } else {
                    this.component2 = O_;
                    throw null;
                }
            } else {
                return this;
            }
        } else {
            AFLogger.INSTANCE.w(AFg1cSDK.REFERRER, "context is null, Google Install Referrer will be not initialized");
        }
        AFd1oSDK copy = getMonetizationNetwork().copy();
        if (appsFlyerConversionListener == null) {
            AFKeystoreWrapper = (f10921i + 87) % 128;
            str2 = "null";
        } else {
            str2 = "conversionDataListener";
        }
        copy.getRevenue("init", str, str2);
        AFLogger.INSTANCE.force(AFg1cSDK.GENERAL, String.format("Initializing AppsFlyer SDK: (v%s.%s)", "6.17.5", getMonetizationNetwork));
        this.getRevenue = appsFlyerConversionListener;
        return this;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final boolean isPreInstalledApp(Context context) {
        int i10 = f10921i + 77;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 == 0) {
            AFAdRevenueData(context);
            return getMonetizationNetwork().AFAdRevenueData().getMonetizationNetwork(context);
        }
        AFAdRevenueData(context);
        getMonetizationNetwork().AFAdRevenueData().getMonetizationNetwork(context);
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final boolean isStopped() {
        boolean currencyIso4217Code;
        int i10 = f10921i + 123;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 != 0) {
            currencyIso4217Code = getMonetizationNetwork().AFInAppEventType().getCurrencyIso4217Code();
            int i11 = 45 / 0;
        } else {
            currencyIso4217Code = getMonetizationNetwork().AFInAppEventType().getCurrencyIso4217Code();
        }
        f10921i = (AFKeystoreWrapper + 55) % 128;
        return currencyIso4217Code;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logAdRevenue(@NonNull AFAdRevenueData aFAdRevenueData, @Nullable Map<String, Object> map) {
        if (!this.hashCode) {
            getRevenue("logAdRevenue");
        } else if (!aFAdRevenueData.areAllFieldsValid()) {
            f10921i = (AFKeystoreWrapper + 91) % 128;
            AFLogger.INSTANCE.w(AFg1cSDK.AD_REVENUE, "Invalid ad revenue parameters provided");
        } else if (getMonetizationNetwork().AFInAppEventType().getCurrencyIso4217Code()) {
            AFLogger.INSTANCE.w(AFg1cSDK.AD_REVENUE, "SDK is stopped");
        } else if (AFk1wSDK.getMonetizationNetwork(getMonetizationNetwork().AFInAppEventType().getMediationNetwork())) {
            f10921i = (AFKeystoreWrapper + 23) % 128;
            getRevenue(new Object[0], -516060765, 516060769, (int) System.currentTimeMillis());
        } else {
            AFAdRevenueData(new AFh1lSDK(aFAdRevenueData, map));
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logEvent(Context context, String str, Map<String, Object> map) {
        int i10 = f10921i + 87;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 == 0) {
            logEvent(context, str, map, null);
            int i11 = AFKeystoreWrapper + 27;
            f10921i = i11 % 128;
            if (i11 % 2 == 0) {
                throw null;
            }
            return;
        }
        logEvent(context, str, map, null);
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logLocation(Context context, double d10, double d11) {
        getMonetizationNetwork().copy().getRevenue("logLocation", String.valueOf(d10), String.valueOf(d11));
        HashMap hashMap = new HashMap();
        hashMap.put(AFInAppEventParameterName.LONGITUDE, Double.toString(d11));
        hashMap.put(AFInAppEventParameterName.LATITUDE, Double.toString(d10));
        AFAdRevenueData(context, AFInAppEventType.LOCATION_COORDINATES, hashMap);
        AFKeystoreWrapper = (f10921i + 3) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logSession(Context context) {
        f10921i = (AFKeystoreWrapper + 15) % 128;
        getMonetizationNetwork().copy().getRevenue("logSession", new String[0]);
        getMonetizationNetwork().copy().getCurrencyIso4217Code();
        getRevenue(new Object[]{this, context, AFh1tSDK.logSession}, -268043806, 268043817, System.identityHashCode(this));
        AFAdRevenueData(context, null, null);
        int i10 = AFKeystoreWrapper + 33;
        f10921i = i10 % 128;
        if (i10 % 2 == 0) {
            int i11 = 69 / 0;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void onPause(Context context) {
        getRevenue(new Object[]{this, context}, 537134056, -537134032, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void performOnAppAttribution(@NonNull Context context, @NonNull URI uri) {
        if (uri != null) {
            AFKeystoreWrapper = (f10921i + 5) % 128;
            if (!uri.toString().isEmpty()) {
                if (context == null) {
                    AFa1mSDK i10 = getMonetizationNetwork().i();
                    StringBuilder sb2 = new StringBuilder("Context is \"");
                    sb2.append(context);
                    sb2.append("\"");
                    i10.getMediationNetwork(sb2.toString(), DeepLinkResult.Error.NETWORK);
                    return;
                }
                AFAdRevenueData(context);
                getMonetizationNetwork().i().g_(AFa1jSDK.getMediationNetwork(getMonetizationNetwork().afVerboseLog()), Uri.parse(uri.toString()));
                int i11 = f10921i + 73;
                AFKeystoreWrapper = i11 % 128;
                if (i11 % 2 == 0) {
                    return;
                }
                throw null;
            }
        }
        AFa1mSDK i12 = getMonetizationNetwork().i();
        StringBuilder sb3 = new StringBuilder("Link is \"");
        sb3.append(uri);
        sb3.append("\"");
        i12.getMediationNetwork(sb3.toString(), DeepLinkResult.Error.NETWORK);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void performOnDeepLinking(@NonNull final Intent intent, @NonNull Context context) {
        if (intent == null) {
            AFKeystoreWrapper = (f10921i + 15) % 128;
            getMonetizationNetwork().i().getMediationNetwork("performOnDeepLinking was called with null intent", DeepLinkResult.Error.DEVELOPER_ERROR);
        } else if (context == null) {
            int i10 = f10921i + 115;
            AFKeystoreWrapper = i10 % 128;
            if (i10 % 2 == 0) {
                getMonetizationNetwork().i().getMediationNetwork("performOnDeepLinking was called with null context", DeepLinkResult.Error.DEVELOPER_ERROR);
            } else {
                getMonetizationNetwork().i().getMediationNetwork("performOnDeepLinking was called with null context", DeepLinkResult.Error.DEVELOPER_ERROR);
                throw null;
            }
        } else {
            final Context applicationContext = context.getApplicationContext();
            AFAdRevenueData(applicationContext);
            getMonetizationNetwork().getMonetizationNetwork().execute(new Runnable() { // from class: com.appsflyer.internal.f
                @Override // java.lang.Runnable
                public final void run() {
                    AFa1ySDK.this.e_(applicationContext, intent);
                }
            });
            int i11 = f10921i + 121;
            AFKeystoreWrapper = i11 % 128;
            if (i11 % 2 == 0) {
                return;
            }
            throw null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void registerConversionListener(Context context, AppsFlyerConversionListener appsFlyerConversionListener) {
        AFKeystoreWrapper = (f10921i + 23) % 128;
        getMonetizationNetwork().copy().getRevenue("registerConversionListener", new String[0]);
        getRevenue(appsFlyerConversionListener);
        f10921i = (AFKeystoreWrapper + 77) % 128;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0044, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0045, code lost:
        com.appsflyer.internal.AFa1ySDK.getCurrencyIso4217Code = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0047, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0021, code lost:
        if (r5 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0035, code lost:
        if (r5 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0037, code lost:
        com.appsflyer.AFLogger.afDebugLog("registerValidatorListener null listener");
        com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper = (com.appsflyer.internal.AFa1ySDK.f10921i + 113) % 128;
     */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void registerValidatorListener(android.content.Context r4, com.appsflyer.AppsFlyerInAppPurchaseValidatorListener r5) {
        /*
            r3 = this;
            int r4 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper
            int r4 = r4 + 7
            int r0 = r4 % 128
            com.appsflyer.internal.AFa1ySDK.f10921i = r0
            int r4 = r4 % 2
            java.lang.String r0 = "registerValidatorListener called"
            java.lang.String r1 = "registerValidatorListener"
            if (r4 != 0) goto L24
            com.appsflyer.internal.AFd1zSDK r4 = r3.getMonetizationNetwork()
            com.appsflyer.internal.AFd1oSDK r4 = r4.copy()
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]
            r4.getRevenue(r1, r2)
            com.appsflyer.AFLogger.afDebugLog(r0)
            if (r5 != 0) goto L45
            goto L37
        L24:
            com.appsflyer.internal.AFd1zSDK r4 = r3.getMonetizationNetwork()
            com.appsflyer.internal.AFd1oSDK r4 = r4.copy()
            r2 = 0
            java.lang.String[] r2 = new java.lang.String[r2]
            r4.getRevenue(r1, r2)
            com.appsflyer.AFLogger.afDebugLog(r0)
            if (r5 != 0) goto L45
        L37:
            java.lang.String r4 = "registerValidatorListener null listener"
            com.appsflyer.AFLogger.afDebugLog(r4)
            int r4 = com.appsflyer.internal.AFa1ySDK.f10921i
            int r4 = r4 + 113
            int r4 = r4 % 128
            com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper = r4
            return
        L45:
            com.appsflyer.internal.AFa1ySDK.getCurrencyIso4217Code = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1ySDK.registerValidatorListener(android.content.Context, com.appsflyer.AppsFlyerInAppPurchaseValidatorListener):void");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void sendInAppPurchaseData(Context context, Map<String, Object> map, PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback) {
        getRevenue(new Object[]{this, context, map, purchaseValidationCallback}, 1567165248, -1567165246, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void sendPurchaseData(Context context, Map<String, Object> map, PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback) {
        AFKeystoreWrapper = (f10921i + 63) % 128;
        AFAdRevenueData(context);
        PurchaseHandler component2 = getMonetizationNetwork().component2();
        if (component2.getRevenue(map, purchaseValidationCallback, BillingClient.FeatureType.SUBSCRIPTIONS)) {
            AFe1kSDK aFe1kSDK = new AFe1kSDK(map, purchaseValidationCallback, component2.AFAdRevenueData);
            AFe1oSDK aFe1oSDK = component2.getCurrencyIso4217Code;
            aFe1oSDK.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(aFe1kSDK));
            AFKeystoreWrapper = (f10921i + 43) % 128;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0169  */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void sendPushNotificationData(@androidx.annotation.Nullable android.app.Activity r18) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1ySDK.sendPushNotificationData(android.app.Activity):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
        if (r4 != null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (r4 != null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
        getMonetizationNetwork().copy().getRevenue("setAdditionalData", r4.toString());
        com.appsflyer.AppsFlyerProperties.getInstance().setCustomData(new org.json.JSONObject(r4).toString());
     */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setAdditionalData(java.util.Map<java.lang.String, java.lang.Object> r4) {
        /*
            r3 = this;
            int r0 = com.appsflyer.internal.AFa1ySDK.f10921i
            int r0 = r0 + 81
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper = r1
            int r0 = r0 % 2
            if (r0 == 0) goto L13
            r0 = 94
            int r0 = r0 / 0
            if (r4 == 0) goto L3a
            goto L15
        L13:
            if (r4 == 0) goto L3a
        L15:
            com.appsflyer.internal.AFd1zSDK r0 = r3.getMonetizationNetwork()
            com.appsflyer.internal.AFd1oSDK r0 = r0.copy()
            java.lang.String r1 = r4.toString()
            java.lang.String[] r1 = new java.lang.String[]{r1}
            java.lang.String r2 = "setAdditionalData"
            r0.getRevenue(r2, r1)
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>(r4)
            com.appsflyer.AppsFlyerProperties r4 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r0 = r0.toString()
            r4.setCustomData(r0)
        L3a:
            int r4 = com.appsflyer.internal.AFa1ySDK.f10921i
            int r4 = r4 + 43
            int r4 = r4 % 128
            com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1ySDK.setAdditionalData(java.util.Map):void");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAndroidIdData(String str) {
        f10921i = (AFKeystoreWrapper + 23) % 128;
        getMonetizationNetwork().copy().getRevenue("setAndroidIdData", str);
        getMonetizationNetwork().force().getCurrencyIso4217Code = str;
        AFKeystoreWrapper = (f10921i + 29) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAppId(String str) {
        int i10 = f10921i + 3;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 != 0) {
            getMonetizationNetwork().copy().getRevenue("setAppId", str);
        } else {
            getMonetizationNetwork().copy().getRevenue("setAppId", str);
        }
        getMediationNetwork("appid", str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0036, code lost:
        if (r4.equals(com.appsflyer.AppsFlyerProperties.getInstance().getString(com.appsflyer.AppsFlyerProperties.ONELINK_ID)) == false) goto L8;
     */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setAppInviteOneLink(java.lang.String r4) {
        /*
            r3 = this;
            com.appsflyer.internal.AFd1zSDK r0 = r3.getMonetizationNetwork()
            com.appsflyer.internal.AFd1oSDK r0 = r0.copy()
            java.lang.String r1 = "setAppInviteOneLink"
            java.lang.String[] r2 = new java.lang.String[]{r4}
            r0.getRevenue(r1, r2)
            java.lang.String r0 = java.lang.String.valueOf(r4)
            java.lang.String r1 = "setAppInviteOneLink = "
            java.lang.String r0 = r1.concat(r0)
            com.appsflyer.AFLogger.afInfoLog(r0)
            java.lang.String r0 = "oneLinkSlug"
            if (r4 == 0) goto L38
            int r1 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper
            int r1 = r1 + 13
            int r1 = r1 % 128
            com.appsflyer.internal.AFa1ySDK.f10921i = r1
            com.appsflyer.AppsFlyerProperties r1 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r1 = r1.getString(r0)
            boolean r1 = r4.equals(r1)
            if (r1 != 0) goto L5b
        L38:
            com.appsflyer.AppsFlyerProperties r1 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r2 = "onelinkDomain"
            r1.remove(r2)
            com.appsflyer.AppsFlyerProperties r1 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r2 = "onelinkVersion"
            r1.remove(r2)
            com.appsflyer.AppsFlyerProperties r1 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r2 = "onelinkScheme"
            r1.remove(r2)
            int r1 = com.appsflyer.internal.AFa1ySDK.f10921i
            int r1 = r1 + 101
            int r1 = r1 % 128
            com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper = r1
        L5b:
            getMediationNetwork(r0, r4)
            int r4 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper
            int r4 = r4 + 9
            int r4 = r4 % 128
            com.appsflyer.internal.AFa1ySDK.f10921i = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1ySDK.setAppInviteOneLink(java.lang.String):void");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCollectAndroidID(boolean z10) {
        AFKeystoreWrapper = (f10921i + 57) % 128;
        getMonetizationNetwork().copy().getRevenue("setCollectAndroidID", String.valueOf(z10));
        getMediationNetwork(AppsFlyerProperties.COLLECT_ANDROID_ID, Boolean.toString(z10));
        getMediationNetwork(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, Boolean.toString(z10));
        f10921i = (AFKeystoreWrapper + 13) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCollectIMEI(boolean z10) {
        getRevenue(new Object[]{this, Boolean.valueOf(z10)}, -312979490, 312979496, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void setCollectOaid(boolean z10) {
        getRevenue(new Object[]{this, Boolean.valueOf(z10)}, -1241724786, 1241724809, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setConsentData(@NonNull AppsFlyerConsent appsFlyerConsent) {
        int i10 = f10921i + 41;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 == 0) {
            Objects.requireNonNull(appsFlyerConsent);
            getMonetizationNetwork().force().component1 = appsFlyerConsent;
            return;
        }
        Objects.requireNonNull(appsFlyerConsent);
        getMonetizationNetwork().force().component1 = appsFlyerConsent;
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCurrencyCode(String str) {
        getRevenue(new Object[]{this, str}, -1717702056, 1717702064, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCustomerIdAndLogSession(String str, @NonNull Context context) {
        int i10 = (AFKeystoreWrapper + 41) % 128;
        f10921i = i10;
        if (context != null) {
            AFKeystoreWrapper = (i10 + 35) % 128;
            if (getCurrencyIso4217Code()) {
                setCustomerUserId(str);
                StringBuilder sb2 = new StringBuilder("CustomerUserId set: ");
                sb2.append(str);
                sb2.append(" - Initializing AppsFlyer Tacking");
                AFLogger.afInfoLog(sb2.toString(), true);
                String referrer = AppsFlyerProperties.getInstance().getReferrer(getMonetizationNetwork().component4());
                getRevenue(new Object[]{this, context, AFh1tSDK.setCustomerIdAndLogSession}, -268043806, 268043817, System.identityHashCode(this));
                getMonetizationNetwork().AFInAppEventType().getMediationNetwork();
                if (referrer == null) {
                    referrer = "";
                }
                if (context instanceof Activity) {
                    ((Activity) context).getIntent();
                }
                getRevenue(context, referrer);
                return;
            }
            setCustomerUserId(str);
            AFLogger.afInfoLog("waitForCustomerUserId is false; setting CustomerUserID: ".concat(String.valueOf(str)), true);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCustomerUserId(String str) {
        f10921i = (AFKeystoreWrapper + 53) % 128;
        getMonetizationNetwork().copy().getRevenue("setCustomerUserId", str);
        AFLogger.afInfoLog("setCustomerUserId = ".concat(String.valueOf(str)));
        getMediationNetwork(AppsFlyerProperties.APP_USER_ID, str);
        getRevenue(new Object[]{AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, Boolean.FALSE}, -1569798316, 1569798326, (int) System.currentTimeMillis());
        int i10 = AFKeystoreWrapper + 117;
        f10921i = i10 % 128;
        if (i10 % 2 != 0) {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setDebugLog(boolean z10) {
        getRevenue(new Object[]{this, Boolean.valueOf(z10)}, -451136324, 451136331, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setDisableAdvertisingIdentifiers(boolean z10) {
        boolean z11;
        AFLogger.afDebugLog("setDisableAdvertisingIdentifiers: ".concat(String.valueOf(z10)));
        if (!z10) {
            f10921i = (AFKeystoreWrapper + 39) % 128;
            z11 = true;
        } else {
            z11 = false;
        }
        AFb1lSDK.AFAdRevenueData = Boolean.valueOf(z11);
        AFd1zSDK monetizationNetwork = getMonetizationNetwork();
        monetizationNetwork.force().component2 = z10;
        if (z10) {
            monetizationNetwork.force().component3 = null;
            int i10 = AFKeystoreWrapper + 25;
            f10921i = i10 % 128;
            if (i10 % 2 != 0) {
                return;
            }
            throw null;
        }
        AFe1oSDK copydefault = monetizationNetwork.copydefault();
        copydefault.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(new AFe1eSDK(getMonetizationNetwork())));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setDisableNetworkData(boolean z10) {
        f10921i = (AFKeystoreWrapper + 111) % 128;
        AFLogger.afDebugLog("setDisableNetworkData: ".concat(String.valueOf(z10)));
        getRevenue(new Object[]{AppsFlyerProperties.DISABLE_NETWORK_DATA, Boolean.valueOf(z10)}, -1569798316, 1569798326, (int) System.currentTimeMillis());
        int i10 = f10921i + 103;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 == 0) {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setExtension(String str) {
        AFKeystoreWrapper = (f10921i + 23) % 128;
        getMonetizationNetwork().copy().getRevenue("setExtension", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EXTENSION, str);
        int i10 = AFKeystoreWrapper + 123;
        f10921i = i10 % 128;
        if (i10 % 2 == 0) {
            int i11 = 71 / 0;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setHost(@Nullable String str, @NonNull String str2) {
        String str3;
        if (!AFk1wSDK.getCurrencyIso4217Code(str2)) {
            if (str != null) {
                str3 = str.trim();
                AFKeystoreWrapper = (f10921i + 21) % 128;
            } else {
                str3 = "";
            }
            AFe1vSDK.getMonetizationNetwork(new AFe1ySDK(str3, str2.trim()));
            AFKeystoreWrapper = (f10921i + 63) % 128;
            return;
        }
        AFLogger.afWarnLog("hostname was empty or null - call for setHost is skipped");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setImeiData(String str) {
        int i10 = AFKeystoreWrapper + 57;
        f10921i = i10 % 128;
        if (i10 % 2 == 0) {
            getMonetizationNetwork().copy().getRevenue("setImeiData", str);
            AFf1eSDK AFInAppEventType2 = getMonetizationNetwork().AFInAppEventType();
            AFf1eSDK.getCurrencyIso4217Code(new Object[]{AFInAppEventType2, str}, -1410448561, 1410448563, System.identityHashCode(AFInAppEventType2));
        } else {
            getMonetizationNetwork().copy().getRevenue("setImeiData", str);
            AFf1eSDK AFInAppEventType3 = getMonetizationNetwork().AFInAppEventType();
            AFf1eSDK.getCurrencyIso4217Code(new Object[]{AFInAppEventType3, str}, -1410448561, 1410448563, System.identityHashCode(AFInAppEventType3));
        }
        f10921i = (AFKeystoreWrapper + 31) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setInstallId(@NonNull String str) {
        getMonetizationNetwork().copy().getRevenue("setInstallId", new String[0]);
        if (!(!this.hashCode)) {
            if (!getMonetizationNetwork().AFAdRevenueData().getMediationNetwork("APPSFLYER_ALLOW_CUSTOM_INSTALL_ID")) {
                f10921i = (AFKeystoreWrapper + 47) % 128;
                AFLogger.INSTANCE.d(AFg1cSDK.GENERAL, "APPSFLYER_ALLOW_CUSTOM_INSTALL_ID Manifest flag should be set to true first");
                AFKeystoreWrapper = (f10921i + 109) % 128;
                return;
            } else if (str == null) {
                AFLogger.INSTANCE.d(AFg1cSDK.GENERAL, "AppsFlyer installId can't be null");
                AFKeystoreWrapper = (f10921i + 75) % 128;
                return;
            } else {
                AFb1kSDK.getCurrencyIso4217Code(str, getMonetizationNetwork().component4());
                f10921i = (AFKeystoreWrapper + 41) % 128;
                return;
            }
        }
        f10921i = (AFKeystoreWrapper + 1) % 128;
        AFLogger.INSTANCE.d(AFg1cSDK.GENERAL, "AppsFlyerLib.init() method should be called first");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setIsUpdate(boolean z10) {
        AFKeystoreWrapper = (f10921i + 87) % 128;
        getMonetizationNetwork().copy().getRevenue("setIsUpdate", String.valueOf(z10));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.IS_UPDATE, z10);
        AFKeystoreWrapper = (f10921i + 57) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setLogLevel(@NonNull AFLogger.LogLevel logLevel) {
        boolean z10 = false;
        if (logLevel.getLevel() > AFLogger.LogLevel.NONE.getLevel()) {
            int i10 = f10921i + 79;
            AFKeystoreWrapper = i10 % 128;
            if (i10 % 2 == 0) {
                z10 = true;
            }
        }
        getMonetizationNetwork().copy().getRevenue("log", String.valueOf(z10));
        AppsFlyerProperties.getInstance().set("logLevel", logLevel.getLevel());
        if (!z10) {
            int i11 = AFKeystoreWrapper + 27;
            f10921i = i11 % 128;
            if (i11 % 2 != 0) {
                getMonetizationNetwork().afInfoLog().getMonetizationNetwork();
                return;
            } else {
                getMonetizationNetwork().afInfoLog().getMonetizationNetwork();
                throw null;
            }
        }
        getMonetizationNetwork().afInfoLog().areAllFieldsValid();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setMinTimeBetweenSessions(int i10) {
        int i11 = f10921i + 65;
        AFKeystoreWrapper = i11 % 128;
        if (i11 % 2 == 0) {
            this.component4 = TimeUnit.SECONDS.toMillis(i10);
            int i12 = AFKeystoreWrapper + 15;
            f10921i = i12 % 128;
            if (i12 % 2 != 0) {
                return;
            }
            throw null;
        }
        this.component4 = TimeUnit.SECONDS.toMillis(i10);
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOaidData(String str) {
        AFKeystoreWrapper = (f10921i + 77) % 128;
        getMonetizationNetwork().copy().getRevenue("setOaidData", str);
        AFb1lSDK.getMonetizationNetwork = str;
        int i10 = f10921i + 85;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 == 0) {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOneLinkCustomDomain(String... strArr) {
        f10921i = (AFKeystoreWrapper + 85) % 128;
        AFLogger.afDebugLog(String.format("setOneLinkCustomDomain %s", Arrays.toString(strArr)));
        getMonetizationNetwork().i().component3 = strArr;
        int i10 = AFKeystoreWrapper + 103;
        f10921i = i10 % 128;
        if (i10 % 2 != 0) {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOutOfStore(String str) {
        f10921i = (AFKeystoreWrapper + 19) % 128;
        if (str != null) {
            String lowerCase = str.toLowerCase(Locale.getDefault());
            AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_STORE_FROM_API, lowerCase);
            AFLogger.afInfoLog("Store API set with value: ".concat(String.valueOf(lowerCase)), true);
            int i10 = f10921i + 105;
            AFKeystoreWrapper = i10 % 128;
            if (i10 % 2 == 0) {
                return;
            }
            throw null;
        }
        AFLogger.afWarnLog("Cannot set setOutOfStore with null", true);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPartnerData(@NonNull String str, Map<String, Object> map) {
        getRevenue(new Object[]{this, str, map}, 252063752, -252063751, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPhoneNumber(String str) {
        int i10 = f10921i + 13;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 != 0) {
            getMonetizationNetwork().force().getMediationNetwork = AFj1dSDK.getCurrencyIso4217Code(str);
            int i11 = 11 / 0;
        } else {
            getMonetizationNetwork().force().getMediationNetwork = AFj1dSDK.getCurrencyIso4217Code(str);
        }
        AFKeystoreWrapper = (f10921i + 25) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPluginInfo(@NonNull PluginInfo pluginInfo) {
        AFKeystoreWrapper = (f10921i + 3) % 128;
        Objects.requireNonNull(pluginInfo);
        getMonetizationNetwork().unregisterClient().getRevenue(pluginInfo);
        AFKeystoreWrapper = (f10921i + 115) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPreinstallAttribution(String str, String str2, String str3) {
        AFLogger.afDebugLog("setPreinstallAttribution API called");
        JSONObject jSONObject = new JSONObject();
        if (str != null) {
            AFKeystoreWrapper = (f10921i + 115) % 128;
            try {
                jSONObject.put("pid", str);
            } catch (JSONException e10) {
                AFLogger.afErrorLog(e10.getMessage(), e10);
            }
        }
        if (str2 != null) {
            int i10 = AFKeystoreWrapper + 117;
            f10921i = i10 % 128;
            if (i10 % 2 != 0) {
                jSONObject.put("c", str2);
            } else {
                jSONObject.put("c", str2);
                throw null;
            }
        }
        if (str3 != null) {
            f10921i = (AFKeystoreWrapper + 93) % 128;
            jSONObject.put("af_siteid", str3);
        }
        if (jSONObject.has("pid")) {
            getMediationNetwork("preInstallName", jSONObject.toString());
        } else {
            AFLogger.afWarnLog("Cannot set preinstall attribution data without a media source");
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setResolveDeepLinkURLs(String... strArr) {
        AFKeystoreWrapper = (f10921i + 25) % 128;
        AFLogger.afDebugLog(String.format("setResolveDeepLinkURLs %s", Arrays.toString(strArr)));
        AFa1mSDK i10 = getMonetizationNetwork().i();
        i10.component1.clear();
        i10.component1.addAll(Arrays.asList(strArr));
        int i11 = AFKeystoreWrapper + 85;
        f10921i = i11 % 128;
        if (i11 % 2 != 0) {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void setSharingFilter(@NonNull String... strArr) {
        getRevenue(new Object[]{this, strArr}, 1586087259, -1586087256, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void setSharingFilterForAllPartners() {
        getRevenue(new Object[]{this}, -1362959156, 1362959177, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setSharingFilterForPartners(String... strArr) {
        getMonetizationNetwork().force().getRevenue = new AFb1tSDK(strArr);
        AFKeystoreWrapper = (f10921i + 39) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setUserEmails(String... strArr) {
        int i10 = f10921i + 61;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 != 0) {
            getMonetizationNetwork().copy().getRevenue("setUserEmails", strArr);
            setUserEmails(AppsFlyerProperties.EmailsCryptType.NONE, strArr);
            int i11 = 44 / 0;
        } else {
            getMonetizationNetwork().copy().getRevenue("setUserEmails", strArr);
            setUserEmails(AppsFlyerProperties.EmailsCryptType.NONE, strArr);
        }
        f10921i = (AFKeystoreWrapper + 71) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void start(@NonNull Context context) {
        int i10 = AFKeystoreWrapper + 39;
        f10921i = i10 % 128;
        if (i10 % 2 != 0) {
            start(context, null);
            int i11 = f10921i + 7;
            AFKeystoreWrapper = i11 % 128;
            if (i11 % 2 != 0) {
                throw null;
            }
            return;
        }
        start(context, null);
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void stop(boolean z10, Context context) {
        getRevenue(new Object[]{this, Boolean.valueOf(z10), context}, -1981102572, 1981102584, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void subscribeForDeepLink(@NonNull DeepLinkListener deepLinkListener) {
        f10921i = (AFKeystoreWrapper + 27) % 128;
        subscribeForDeepLink(deepLinkListener, TimeUnit.SECONDS.toMillis(3L));
        f10921i = (AFKeystoreWrapper + 45) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void unregisterConversionListener() {
        AFKeystoreWrapper = (f10921i + 91) % 128;
        getMonetizationNetwork().copy().getRevenue("unregisterConversionListener", new String[0]);
        this.getRevenue = null;
        int i10 = AFKeystoreWrapper + 21;
        f10921i = i10 % 128;
        if (i10 % 2 == 0) {
            int i11 = 12 / 0;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void updateServerUninstallToken(Context context, String str) {
        getRevenue(new Object[]{this, context, str}, -38035383, 38035401, System.identityHashCode(this));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void validateAndLogInAppPurchase(Context context, String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        String obj;
        AFd1oSDK copy = getMonetizationNetwork().copy();
        if (map == null) {
            obj = "";
        } else {
            obj = map.toString();
        }
        copy.getRevenue("validateAndTrackInAppPurchase", str, str2, str3, str4, str5, obj);
        if (!getMonetizationNetwork().AFInAppEventType().getCurrencyIso4217Code()) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.PURCHASE_VALIDATION;
            StringBuilder sb2 = new StringBuilder("Validate in app called with parameters: ");
            sb2.append(str3);
            sb2.append(" ");
            sb2.append(str4);
            sb2.append(" ");
            sb2.append(str5);
            aFLogger.i(aFg1cSDK, sb2.toString());
        }
        if (str != null && str4 != null) {
            int i10 = f10921i + 105;
            int i11 = i10 % 128;
            AFKeystoreWrapper = i11;
            if (i10 % 2 != 0) {
                throw null;
            }
            if (str2 != null && str5 != null) {
                f10921i = (i11 + 5) % 128;
                if (str3 != null) {
                    new Thread(new com.appsflyer.internal.AFa1zSDK(context.getApplicationContext(), getMonetizationNetwork().AFInAppEventType().getMediationNetwork(), str, str2, str3, str4, str5, map)).start();
                    return;
                }
            }
        }
        AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = getCurrencyIso4217Code;
        if (appsFlyerInAppPurchaseValidatorListener != null) {
            int i12 = AFKeystoreWrapper + 91;
            f10921i = i12 % 128;
            if (i12 % 2 != 0) {
                appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure("Please provide purchase parameters");
            } else {
                appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure("Please provide purchase parameters");
                throw null;
            }
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void waitForCustomerUserId(boolean z10) {
        int i10 = f10921i + 67;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 != 0) {
            AFLogger.afInfoLog("initAfterCustomerUserID: ".concat(String.valueOf(z10)), true);
            getRevenue(new Object[]{AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, Boolean.valueOf(z10)}, -1569798316, 1569798326, (int) System.currentTimeMillis());
            return;
        }
        AFLogger.afInfoLog("initAfterCustomerUserID: ".concat(String.valueOf(z10)), true);
        getRevenue(new Object[]{AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, Boolean.valueOf(z10)}, -1569798316, 1569798326, (int) System.currentTimeMillis());
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r12 = r12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.lang.String r10, int[] r11, java.lang.String r12, int r13, java.lang.Object[] r14) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1ySDK.a(java.lang.String, int[], java.lang.String, int, java.lang.Object[]):void");
    }

    private static void copydefault() {
        getRevenue(new Object[0], -516060765, 516060769, (int) System.currentTimeMillis());
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0034, code lost:
        if (r0.getRevenue(r4, r7, r2) != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x004a, code lost:
        if (r0.getRevenue(r4, r7, "purchases") != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x004c, code lost:
        r1 = new com.appsflyer.internal.AFe1cSDK(r4, r7, r0.AFAdRevenueData);
        r7 = r0.getCurrencyIso4217Code;
        r7.getCurrencyIso4217Code.execute(new com.appsflyer.internal.AFe1oSDK.AnonymousClass1(r7, r1));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ java.lang.Object getMonetizationNetwork(java.lang.Object[] r7) {
        /*
            r0 = 0
            r0 = r7[r0]
            com.appsflyer.internal.AFa1ySDK r0 = (com.appsflyer.internal.AFa1ySDK) r0
            r1 = 1
            r2 = r7[r1]
            android.content.Context r2 = (android.content.Context) r2
            r3 = 2
            r4 = r7[r3]
            java.util.Map r4 = (java.util.Map) r4
            r5 = 3
            r7 = r7[r5]
            com.appsflyer.PurchaseHandler$PurchaseValidationCallback r7 = (com.appsflyer.PurchaseHandler.PurchaseValidationCallback) r7
            int r5 = com.appsflyer.internal.AFa1ySDK.f10921i
            int r5 = r5 + 59
            int r6 = r5 % 128
            com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper = r6
            int r5 = r5 % r3
            java.lang.String r6 = "purchases"
            if (r5 == 0) goto L37
            r0.AFAdRevenueData(r2)
            com.appsflyer.internal.AFd1zSDK r0 = r0.getMonetizationNetwork()
            com.appsflyer.PurchaseHandler r0 = r0.component2()
            java.lang.String[] r2 = new java.lang.String[r1]
            r2[r1] = r6
            boolean r1 = r0.getRevenue(r4, r7, r2)
            if (r1 == 0) goto L5f
            goto L4c
        L37:
            r0.AFAdRevenueData(r2)
            com.appsflyer.internal.AFd1zSDK r0 = r0.getMonetizationNetwork()
            com.appsflyer.PurchaseHandler r0 = r0.component2()
            java.lang.String[] r1 = new java.lang.String[]{r6}
            boolean r1 = r0.getRevenue(r4, r7, r1)
            if (r1 == 0) goto L5f
        L4c:
            com.appsflyer.internal.AFe1cSDK r1 = new com.appsflyer.internal.AFe1cSDK
            com.appsflyer.internal.AFd1zSDK r2 = r0.AFAdRevenueData
            r1.<init>(r4, r7, r2)
            com.appsflyer.internal.AFe1oSDK r7 = r0.getCurrencyIso4217Code
            java.util.concurrent.Executor r0 = r7.getCurrencyIso4217Code
            com.appsflyer.internal.AFe1oSDK$1 r2 = new com.appsflyer.internal.AFe1oSDK$1
            r2.<init>(r1)
            r0.execute(r2)
        L5f:
            int r7 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper
            int r7 = r7 + 63
            int r0 = r7 % 128
            com.appsflyer.internal.AFa1ySDK.f10921i = r0
            int r7 = r7 % r3
            r0 = 0
            if (r7 == 0) goto L6c
            return r0
        L6c:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1ySDK.getMonetizationNetwork(java.lang.Object[]):java.lang.Object");
    }

    public final boolean getCurrencyIso4217Code() {
        if ((!getMediationNetwork(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID)) || ((String) getRevenue(new Object[0], 131288073, -131288051, (int) System.currentTimeMillis())) != null) {
            f10921i = (AFKeystoreWrapper + 41) % 128;
            return false;
        }
        f10921i = (AFKeystoreWrapper + 123) % 128;
        return true;
    }

    @VisibleForTesting
    final void getCurrencyIso4217Code(@NonNull AFh1mSDK aFh1mSDK, @Nullable AFh1qSDK aFh1qSDK) {
        getMediationNetwork(aFh1mSDK, aFh1qSDK);
        if (getMonetizationNetwork().AFInAppEventType().getMediationNetwork() == null) {
            AFLogger.afWarnLog("[LogEvent/Launch] AppsFlyer's SDK cannot send any event without providing DevKey.");
            AppsFlyerRequestListener appsFlyerRequestListener = aFh1mSDK.getCurrencyIso4217Code;
            if (appsFlyerRequestListener != null) {
                f10921i = (AFKeystoreWrapper + 5) % 128;
                appsFlyerRequestListener.onError(41, "No dev key");
                return;
            }
            return;
        }
        String referrer = AppsFlyerProperties.getInstance().getReferrer(getMonetizationNetwork().component4());
        if (referrer == null) {
            referrer = "";
        } else {
            f10921i = (AFKeystoreWrapper + 65) % 128;
        }
        aFh1mSDK.component1 = referrer;
        AFAdRevenueData(aFh1mSDK);
    }

    @WorkerThread
    private void areAllFieldsValid() {
        f10921i = (AFKeystoreWrapper + 73) % 128;
        try {
            final AFi1hSDK afErrorLog = getMonetizationNetwork().afErrorLog();
            if (afErrorLog == null) {
                return;
            }
            if (!(!afErrorLog.getCurrencyIso4217Code())) {
                int i10 = f10921i + 101;
                AFKeystoreWrapper = i10 % 128;
                if (i10 % 2 == 0) {
                    afErrorLog.getMediationNetwork(new AFi1dSDK() { // from class: com.appsflyer.internal.a
                        @Override // com.appsflyer.internal.AFi1dSDK
                        public final void onRequestFinished() {
                            AFa1ySDK.this.AFAdRevenueData(afErrorLog);
                        }
                    });
                } else {
                    afErrorLog.getMediationNetwork(new AFi1dSDK() { // from class: com.appsflyer.internal.a
                        @Override // com.appsflyer.internal.AFi1dSDK
                        public final void onRequestFinished() {
                            AFa1ySDK.this.AFAdRevenueData(afErrorLog);
                        }
                    });
                    throw null;
                }
            } else if (afErrorLog.AFAdRevenueData()) {
            } else {
                getRevenue(new Object[]{this, afErrorLog}, 608861720, -608861711, System.identityHashCode(this));
            }
        } catch (Throwable th2) {
            AFLogger.afErrorLogForExcManagerOnly("Error at attempt to request PIA token", th2);
            AFLogger.afRDLog("Get PIA token failed with exception:".concat(String.valueOf(th2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void equals() {
        getMediationNetwork(new AFh1kSDK());
        AFKeystoreWrapper = (f10921i + 81) % 128;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void subscribeForDeepLink(@NonNull DeepLinkListener deepLinkListener, long j10) {
        int i10 = AFKeystoreWrapper + 89;
        f10921i = i10 % 128;
        if (i10 % 2 != 0) {
            getMonetizationNetwork().i().getCurrencyIso4217Code = deepLinkListener;
            getMonetizationNetwork().i().component2 = j10;
            return;
        }
        getMonetizationNetwork().i().getCurrencyIso4217Code = deepLinkListener;
        getMonetizationNetwork().i().component2 = j10;
        throw null;
    }

    private static boolean getMediationNetwork(String str) {
        f10921i = (AFKeystoreWrapper + 51) % 128;
        boolean z10 = AppsFlyerProperties.getInstance().getBoolean(str, false);
        int i10 = AFKeystoreWrapper + 117;
        f10921i = i10 % 128;
        if (i10 % 2 != 0) {
            return z10;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logEvent(@NonNull Context context, String str, Map<String, Object> map, AppsFlyerRequestListener appsFlyerRequestListener) {
        HashMap hashMap = map == null ? null : new HashMap(map);
        AFAdRevenueData(context);
        AFh1hSDK aFh1hSDK = new AFh1hSDK();
        aFh1hSDK.areAllFieldsValid = str;
        aFh1hSDK.getCurrencyIso4217Code = appsFlyerRequestListener;
        if (hashMap != null && hashMap.containsKey(AFInAppEventParameterName.TOUCH_OBJ)) {
            HashMap hashMap2 = new HashMap();
            Object obj = hashMap.get(AFInAppEventParameterName.TOUCH_OBJ);
            if (obj instanceof MotionEvent) {
                MotionEvent motionEvent = (MotionEvent) obj;
                HashMap hashMap3 = new HashMap();
                hashMap3.put(TextureRenderKeys.KEY_IS_X, Float.valueOf(motionEvent.getX()));
                hashMap3.put(TextureRenderKeys.KEY_IS_Y, Float.valueOf(motionEvent.getY()));
                hashMap2.put("loc", hashMap3);
                hashMap2.put("pf", Float.valueOf(motionEvent.getPressure()));
                hashMap2.put("rad", Float.valueOf(motionEvent.getTouchMajor() / 2.0f));
            } else {
                hashMap2.put("error", "Parsing failed due to invalid input in 'af_touch_obj'.");
                AFLogger.INSTANCE.w(AFg1cSDK.PREDICT, "Parsing failed due to invalid input in 'af_touch_obj'.", true);
            }
            Map<String, ?> singletonMap = Collections.singletonMap("tch_data", hashMap2);
            hashMap.remove(AFInAppEventParameterName.TOUCH_OBJ);
            aFh1hSDK.AFAdRevenueData(singletonMap);
        }
        aFh1hSDK.getRevenue = hashMap;
        AFd1oSDK copy = getMonetizationNetwork().copy();
        Map map2 = aFh1hSDK.getRevenue;
        if (map2 == null) {
            map2 = new HashMap();
        }
        copy.getRevenue("logEvent", str, new JSONObject(map2).toString());
        if (str == null) {
            getRevenue(new Object[]{this, context, AFh1tSDK.logEvent}, -268043806, 268043817, System.identityHashCode(this));
        }
        getCurrencyIso4217Code(aFh1hSDK, (AFh1qSDK) getRevenue(new Object[]{this, context}, 348348548, -348348531, System.identityHashCode(this)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        if (r9.hashCode != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003f, code lost:
        getRevenue("start");
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
        if (r11 != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0044, code lost:
        if (r12 == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0046, code lost:
        r12.onError(41, "No dev key");
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0049, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004a, code lost:
        AFAdRevenueData(r10);
        r0 = getMonetizationNetwork().areAllFieldsValid();
        r0.getRevenue(com.appsflyer.internal.AFh1vSDK.getMediationNetwork(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005e, code lost:
        if (r9.component2 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0060, code lost:
        r5 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper + 53;
        com.appsflyer.internal.AFa1ySDK.f10921i = r5 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006b, code lost:
        if ((r5 % 2) == 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006d, code lost:
        r5 = com.appsflyer.internal.AFj1kSDK.O_(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0071, code lost:
        if (r5 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0073, code lost:
        r7 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper + 69;
        com.appsflyer.internal.AFa1ySDK.f10921i = r7 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007d, code lost:
        if ((r7 % 2) == 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
        r9.component2 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0082, code lost:
        r9.component2 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0084, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0085, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0086, code lost:
        com.appsflyer.internal.AFj1kSDK.O_(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0089, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008a, code lost:
        getMonetizationNetwork().copy().getRevenue("start", r11);
        r4 = com.appsflyer.AFLogger.INSTANCE;
        r5 = com.appsflyer.internal.AFg1cSDK.GENERAL;
        r6 = com.appsflyer.internal.AFa1ySDK.getMonetizationNetwork;
        r4.i(r5, java.lang.String.format("Starting AppsFlyer: (v%s.%s)", "6.17.5", r6));
        r7 = new java.lang.StringBuilder("Build Number: ");
        r7.append(r6);
        r4.i(r5, r7.toString());
        com.appsflyer.AppsFlyerProperties.getInstance().loadProperties(getMonetizationNetwork().component4());
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d2, code lost:
        if (android.text.TextUtils.isEmpty(r11) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d4, code lost:
        getMonetizationNetwork().AFInAppEventType().AFAdRevenueData(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f0, code lost:
        if (android.text.TextUtils.isEmpty(getMonetizationNetwork().AFInAppEventType().getMediationNetwork()) == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f2, code lost:
        getRevenue(new java.lang.Object[0], -516060765, 516060769, (int) java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0102, code lost:
        if (r12 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0104, code lost:
        com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper = (com.appsflyer.internal.AFa1ySDK.f10921i + 49) % 128;
        r12.onError(41, "No dev key");
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x010f, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0110, code lost:
        getMonetizationNetwork().component1().AFAdRevenueData(AFAdRevenueData());
        component1();
        c_(r9.component2.getBaseContext(), r9.copy.AFAdRevenueData().n_());
        getMonetizationNetwork().e().getMonetizationNetwork();
        r9.copy.v().AFAdRevenueData(r10, new com.appsflyer.internal.AFa1ySDK.AnonymousClass2(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x014e, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001b, code lost:
        if (getMonetizationNetwork().v().getMediationNetwork() != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002a, code lost:
        if (getMonetizationNetwork().v().getMediationNetwork() != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
        com.appsflyer.internal.AFa1ySDK.f10921i = (com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper + 31) % 128;
     */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void start(@androidx.annotation.NonNull android.content.Context r10, java.lang.String r11, final com.appsflyer.attribution.AppsFlyerRequestListener r12) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1ySDK.start(android.content.Context, java.lang.String, com.appsflyer.attribution.AppsFlyerRequestListener):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
        getRevenue().toString = r4.getApplicationContext().getSharedPreferences("appsflyer-data", 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003e, code lost:
        android.os.StrictMode.setThreadPolicy(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0041, code lost:
        throw r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (getRevenue().toString == null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0023, code lost:
        if (getRevenue().toString == null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        r1 = android.os.StrictMode.allowThreadDiskReads();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ java.lang.Object component1(java.lang.Object[] r4) {
        /*
            r0 = 0
            r4 = r4[r0]
            android.content.Context r4 = (android.content.Context) r4
            int r1 = com.appsflyer.internal.AFa1ySDK.f10921i
            int r1 = r1 + 9
            int r2 = r1 % 128
            com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper = r2
            int r1 = r1 % 2
            if (r1 == 0) goto L1d
            com.appsflyer.internal.AFa1ySDK r1 = getRevenue()
            android.content.SharedPreferences r1 = r1.toString
            r2 = 95
            int r2 = r2 / r0
            if (r1 != 0) goto L42
            goto L25
        L1d:
            com.appsflyer.internal.AFa1ySDK r1 = getRevenue()
            android.content.SharedPreferences r1 = r1.toString
            if (r1 != 0) goto L42
        L25:
            android.os.StrictMode$ThreadPolicy r1 = android.os.StrictMode.allowThreadDiskReads()
            com.appsflyer.internal.AFa1ySDK r2 = getRevenue()     // Catch: java.lang.Throwable -> L3d
            android.content.Context r4 = r4.getApplicationContext()     // Catch: java.lang.Throwable -> L3d
            java.lang.String r3 = "appsflyer-data"
            android.content.SharedPreferences r4 = r4.getSharedPreferences(r3, r0)     // Catch: java.lang.Throwable -> L3d
            r2.toString = r4     // Catch: java.lang.Throwable -> L3d
            android.os.StrictMode.setThreadPolicy(r1)
            goto L42
        L3d:
            r4 = move-exception
            android.os.StrictMode.setThreadPolicy(r1)
            throw r4
        L42:
            com.appsflyer.internal.AFa1ySDK r4 = getRevenue()
            android.content.SharedPreferences r4 = r4.toString
            int r0 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper
            int r0 = r0 + 7
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1ySDK.f10921i = r1
            int r0 = r0 % 2
            if (r0 == 0) goto L55
            return r4
        L55:
            r4 = 0
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1ySDK.component1(java.lang.Object[]):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void getMediationNetwork(boolean z10) {
        if (z10) {
            int i10 = AFKeystoreWrapper + 67;
            f10921i = i10 % 128;
            if (i10 % 2 != 0) {
                getMonetizationNetwork().afInfoLog().getMediationNetwork();
                return;
            } else {
                getMonetizationNetwork().afInfoLog().getMediationNetwork();
                throw null;
            }
        }
        getMonetizationNetwork().afInfoLog().AFAdRevenueData();
        AFKeystoreWrapper = (f10921i + 7) % 128;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void AFAdRevenueData(AFf1pSDK aFf1pSDK) {
        int i10 = AFKeystoreWrapper + 77;
        f10921i = i10 % 128;
        if (i10 % 2 != 0) {
            AFd1zSDK monetizationNetwork = getMonetizationNetwork();
            if (aFf1pSDK == AFf1pSDK.SUCCESS) {
                monetizationNetwork.afErrorLogForExcManagerOnly().getMonetizationNetwork();
            }
            if (!monetizationNetwork.copy().AFAdRevenueData()) {
                f10921i = (AFKeystoreWrapper + 7) % 128;
                monetizationNetwork.afInfoLog().getCurrencyIso4217Code();
                int i11 = f10921i + 103;
                AFKeystoreWrapper = i11 % 128;
                if (i11 % 2 != 0) {
                    int i12 = 20 / 0;
                    return;
                }
                return;
            }
            monetizationNetwork.afInfoLog().getRevenue();
            return;
        }
        getMonetizationNetwork();
        AFf1pSDK aFf1pSDK2 = AFf1pSDK.SUCCESS;
        throw null;
    }

    static void component2() {
        AFLogger = new char[]{35848, 35853, 35850, 35871, 35840, 35844, 35852, 35870, 35867};
        registerClient = 1912311211;
        AFInAppEventParameterName = true;
        AFInAppEventType = true;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setUserEmails(AppsFlyerProperties.EmailsCryptType emailsCryptType, String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length + 1);
        arrayList.add(emailsCryptType.toString());
        arrayList.addAll(Arrays.asList(strArr));
        getMonetizationNetwork().copy().getRevenue("setUserEmails", (String[]) arrayList.toArray(new String[strArr.length + 1]));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EMAIL_CRYPT_TYPE, emailsCryptType.getValue());
        HashMap hashMap = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        String str = null;
        for (String str2 : strArr) {
            f10921i = (AFKeystoreWrapper + 107) % 128;
            if (AnonymousClass3.getCurrencyIso4217Code[emailsCryptType.ordinal()] != 2) {
                arrayList2.add(AFj1dSDK.getCurrencyIso4217Code(str2));
                str = "sha256_el_arr";
            } else {
                arrayList2.add(str2);
                f10921i = (AFKeystoreWrapper + 103) % 128;
                str = "plain_el_arr";
            }
        }
        hashMap.put(str, arrayList2);
        AppsFlyerProperties.getInstance().setUserEmails(new JSONObject(hashMap).toString());
        AFKeystoreWrapper = (f10921i + 117) % 128;
    }

    private static void getMediationNetwork(@NonNull AFh1mSDK aFh1mSDK, @Nullable AFh1qSDK aFh1qSDK) {
        int i10 = (AFKeystoreWrapper + 61) % 128;
        f10921i = i10;
        if (aFh1qSDK != null) {
            aFh1mSDK.getMonetizationNetwork = aFh1qSDK.getCurrencyIso4217Code;
            aFh1mSDK.copydefault = aFh1qSDK.AFAdRevenueData;
        }
        int i11 = i10 + 41;
        AFKeystoreWrapper = i11 % 128;
        if (i11 % 2 != 0) {
            throw null;
        }
    }

    private static void areAllFieldsValid(Context context) {
        getRevenue(new Object[]{context}, 750744286, -750744267, (int) System.currentTimeMillis());
    }

    @Nullable
    @VisibleForTesting
    private String getCurrencyIso4217Code(Context context, String str) {
        int i10 = AFKeystoreWrapper + 55;
        f10921i = i10 % 128;
        if (i10 % 2 != 0) {
            if (context == null) {
                return null;
            }
            AFAdRevenueData(context);
            String currencyIso4217Code = getMonetizationNetwork().AFAdRevenueData().getCurrencyIso4217Code(str);
            AFKeystoreWrapper = (f10921i + 89) % 128;
            return currencyIso4217Code;
        }
        throw null;
    }

    public static String getMonetizationNetwork(SimpleDateFormat simpleDateFormat, long j10) {
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String format = simpleDateFormat.format(new Date(j10));
        int i10 = f10921i + 3;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 != 0) {
            int i11 = 88 / 0;
        }
        return format;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @WorkerThread
    public final Map<String, Object> getMonetizationNetwork(AFh1mSDK aFh1mSDK) {
        String str;
        Context context = getMonetizationNetwork().AFInAppEventParameterName().getMonetizationNetwork;
        AFc1qSDK monetizationNetwork = getMonetizationNetwork(context);
        AFg1nSDK component3 = getMonetizationNetwork().component3();
        boolean currencyIso4217Code = getMonetizationNetwork().AFInAppEventType().getCurrencyIso4217Code();
        boolean revenue = aFh1mSDK.getRevenue();
        Map<String, Object> map = aFh1mSDK.AFAdRevenueData;
        long time = new Date().getTime();
        boolean z10 = false;
        Object[] objArr = new Object[1];
        a("\u0089\u0086\u0081\u0084\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081", null, null, TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 128, objArr);
        map.put(((String) objArr[0]).intern(), Long.toString(time));
        try {
            if (currencyIso4217Code) {
                int i10 = f10921i + 63;
                AFKeystoreWrapper = i10 % 128;
                if (i10 % 2 != 0) {
                    AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, "AppsFlyer SDK Reporting has been stopped", false);
                } else {
                    AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, "AppsFlyer SDK Reporting has been stopped", true);
                }
            } else {
                AFLogger aFLogger = AFLogger.INSTANCE;
                AFg1cSDK aFg1cSDK = AFg1cSDK.GENERAL;
                StringBuilder sb2 = new StringBuilder("******* sendTrackingWithEvent: ");
                if (!revenue) {
                    str = aFh1mSDK.areAllFieldsValid;
                } else {
                    int i11 = f10921i + 105;
                    AFKeystoreWrapper = i11 % 128;
                    if (i11 % 2 != 0) {
                        int i12 = 15 / 0;
                    }
                    str = "Launch";
                }
                sb2.append(str);
                aFLogger.i(aFg1cSDK, sb2.toString(), true);
                f10921i = (AFKeystoreWrapper + 71) % 128;
            }
            getRevenue(new Object[]{context}, 750744286, -750744267, (int) System.currentTimeMillis());
            int currencyIso4217Code2 = getCurrencyIso4217Code(monetizationNetwork, revenue);
            if (aFh1mSDK.areAllFieldsValid != null) {
                int i13 = f10921i + 75;
                AFKeystoreWrapper = i13 % 128;
                if (i13 % 2 == 0) {
                    z10 = true;
                }
            }
            int revenue2 = getRevenue(monetizationNetwork, z10);
            if (!(!revenue) && currencyIso4217Code2 == 1) {
                AppsFlyerProperties.getInstance().getCurrencyIso4217Code = true;
            }
            component3.getCurrencyIso4217Code(map, currencyIso4217Code2, revenue2);
        } catch (Throwable th2) {
            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "Error while preparing to send event", th2, true, true, true);
        }
        return map;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void validateAndLogInAppPurchase(@NonNull AFPurchaseDetails aFPurchaseDetails, @Nullable Map<String, String> map, @Nullable AppsFlyerInAppPurchaseValidationCallback appsFlyerInAppPurchaseValidationCallback) {
        AFe1oSDK copydefault = this.copy.copydefault();
        copydefault.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(new AFf1ySDK(this.copy, AppsFlyerProperties.getInstance(), aFPurchaseDetails, map, appsFlyerInAppPurchaseValidationCallback)));
        int i10 = f10921i + 111;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 != 0) {
            int i11 = 96 / 0;
        }
    }

    @NonNull
    private AFj1tSDK[] component3() {
        Object[] array;
        int i10 = AFKeystoreWrapper + 71;
        f10921i = i10 % 128;
        if (i10 % 2 == 0) {
            array = getMonetizationNetwork().AFLogger().getRevenue.toArray(new AFj1tSDK[0]);
        } else {
            array = getMonetizationNetwork().AFLogger().getRevenue.toArray(new AFj1tSDK[0]);
        }
        AFj1tSDK[] aFj1tSDKArr = (AFj1tSDK[]) array;
        f10921i = (AFKeystoreWrapper + 107) % 128;
        return aFj1tSDKArr;
    }

    public static int getCurrencyIso4217Code(AFc1qSDK aFc1qSDK, boolean z10) {
        int i10 = AFKeystoreWrapper + 65;
        f10921i = i10 % 128;
        if (i10 % 2 == 0) {
            getMediationNetwork(aFc1qSDK, "appsFlyerCount", z10);
            throw null;
        }
        int mediationNetwork = getMediationNetwork(aFc1qSDK, "appsFlyerCount", z10);
        AFKeystoreWrapper = (f10921i + 71) % 128;
        return mediationNetwork;
    }

    private static /* synthetic */ Object getMediationNetwork(Object[] objArr) {
        AFKeystoreWrapper = (f10921i + 31) % 128;
        ((AFa1ySDK) objArr[0]).getMediationNetwork((AFh1mSDK) objArr[1]);
        int i10 = f10921i + 27;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 == 0) {
            return null;
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void copy() {
        int i10 = f10921i + 121;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 == 0) {
            if (getMonetizationNetwork().afLogForce().AFAdRevenueData()) {
                AFKeystoreWrapper = (f10921i + 21) % 128;
                getMonetizationNetwork().afLogForce().getMonetizationNetwork();
            }
            AFi1pSDK d10 = getMonetizationNetwork().d();
            d10.getMonetizationNetwork = Build.VERSION.SDK_INT >= 31 ? new AFi1mSDK(d10.getMediationNetwork) : new AFi1tSDK(d10.getMediationNetwork);
            getMonetizationNetwork().AFInAppEventType().getRevenue(getMonetizationNetwork().AFAdRevenueData());
            AFh1xSDK areAllFieldsValid2 = getMonetizationNetwork().areAllFieldsValid();
            areAllFieldsValid2.areAllFieldsValid = System.currentTimeMillis();
            int revenue = areAllFieldsValid2.getCurrencyIso4217Code.getMediationNetwork.getRevenue("appsFlyerCount", 0);
            if (revenue == 1) {
                AFKeystoreWrapper = (f10921i + 89) % 128;
                if (areAllFieldsValid2.getMonetizationNetwork.getMonetizationNetwork("first_launch")) {
                    areAllFieldsValid2.AFAdRevenueData.putAll(areAllFieldsValid2.getCurrencyIso4217Code("first_launch"));
                }
            }
            if (revenue > 0 && areAllFieldsValid2.getMonetizationNetwork.getMonetizationNetwork("gcd")) {
                int i11 = AFKeystoreWrapper + 85;
                f10921i = i11 % 128;
                if (i11 % 2 == 0) {
                    areAllFieldsValid2.getRevenue.putAll(areAllFieldsValid2.getCurrencyIso4217Code("gcd"));
                    int i12 = 79 / 0;
                } else {
                    areAllFieldsValid2.getRevenue.putAll(areAllFieldsValid2.getCurrencyIso4217Code("gcd"));
                }
            }
            areAllFieldsValid2.copydefault = areAllFieldsValid2.getMonetizationNetwork.getMonetizationNetwork("prev_session_dur", 0L);
            areAllFieldsValid();
            getMonetizationNetwork().registerClient().getMediationNetwork();
            return;
        }
        getMonetizationNetwork().afLogForce().AFAdRevenueData();
        throw null;
    }

    private static /* synthetic */ Object getCurrencyIso4217Code(Object[] objArr) {
        f10921i = (AFKeystoreWrapper + 123) % 128;
        AFLogger.INSTANCE.w(AFg1cSDK.SDK_LIFECYCLE, "ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the 'init' API method (should be called on Application's onCreate),or in the start() API (should be called on Activity's onCreate).");
        int i10 = AFKeystoreWrapper + 113;
        f10921i = i10 % 128;
        if (i10 % 2 != 0) {
            return null;
        }
        throw null;
    }

    final void getMediationNetwork(AFh1mSDK aFh1mSDK) {
        AFj1tSDK[] component3;
        Context context = getMonetizationNetwork().AFInAppEventParameterName().getMonetizationNetwork;
        boolean z10 = true;
        if (context == null) {
            AFLogger.INSTANCE.d(AFg1cSDK.ATTRIBUTION, "sendWithEvent - got null context. skipping event/launch.", true);
            return;
        }
        String mediationNetwork = getMonetizationNetwork().AFInAppEventType().getMediationNetwork();
        AppsFlyerRequestListener appsFlyerRequestListener = aFh1mSDK.getCurrencyIso4217Code;
        if (mediationNetwork != null) {
            int i10 = AFKeystoreWrapper + 49;
            f10921i = i10 % 128;
            if (i10 % 2 != 0) {
                if (mediationNetwork.length() != 0) {
                    AFc1qSDK monetizationNetwork = getMonetizationNetwork(context);
                    AppsFlyerProperties.getInstance().saveProperties(monetizationNetwork);
                    if (!getMonetizationNetwork().AFInAppEventType().getCurrencyIso4217Code()) {
                        AFLogger aFLogger = AFLogger.INSTANCE;
                        AFg1cSDK aFg1cSDK = AFg1cSDK.GENERAL;
                        StringBuilder sb2 = new StringBuilder("sendWithEvent from activity: ");
                        sb2.append(context.getClass().getName());
                        aFLogger.i(aFg1cSDK, sb2.toString(), true);
                    }
                    boolean revenue = aFh1mSDK.getRevenue();
                    Map<String, ?> monetizationNetwork2 = getMonetizationNetwork(aFh1mSDK);
                    if (getMonetizationNetwork().AFInAppEventType().getCurrencyIso4217Code()) {
                        AFKeystoreWrapper = (f10921i + 31) % 128;
                        AFLogger.INSTANCE.i(AFg1cSDK.GENERAL, "AppsFlyerLib.sendWithEvent");
                    }
                    int currencyIso4217Code = getCurrencyIso4217Code(monetizationNetwork, false);
                    getRevenue(monetizationNetwork2);
                    AFa1tSDK aFa1tSDK = new AFa1tSDK(getMonetizationNetwork(), aFh1mSDK.AFAdRevenueData(monetizationNetwork2).AFAdRevenueData(currencyIso4217Code), getMonetizationNetwork().e().getMediationNetwork());
                    if (revenue) {
                        boolean z11 = false;
                        for (AFj1tSDK aFj1tSDK : component3()) {
                            if (aFj1tSDK.component4 == AFj1tSDK.AFa1tSDK.STARTED) {
                                AFLogger aFLogger2 = AFLogger.INSTANCE;
                                AFg1cSDK aFg1cSDK2 = AFg1cSDK.REFERRER;
                                StringBuilder sb3 = new StringBuilder("Failed to get ");
                                sb3.append(aFj1tSDK.component3);
                                sb3.append(" referrer, wait ...");
                                aFLogger2.d(aFg1cSDK2, sb3.toString());
                                z11 = true;
                            }
                        }
                        if (getMonetizationNetwork().e().AFAdRevenueData()) {
                            AFLogger.INSTANCE.d(AFg1cSDK.REFERRER, "fetching Facebook deferred AppLink data, wait ...");
                            z11 = true;
                        }
                        if (!getMonetizationNetwork().AFInAppEventType().getMonetizationNetwork()) {
                            z10 = z11;
                        }
                    } else {
                        z10 = false;
                    }
                    AFj1aSDK.getCurrencyIso4217Code(getMonetizationNetwork().getMediationNetwork(), aFa1tSDK, !z10 ? 0L : 500L, TimeUnit.MILLISECONDS);
                    return;
                }
            } else {
                throw null;
            }
        }
        AFLogger aFLogger3 = AFLogger.INSTANCE;
        AFg1cSDK aFg1cSDK3 = AFg1cSDK.GENERAL;
        aFLogger3.i(aFg1cSDK3, "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.getInstance().setAppsFlyerKey(...) to set it. ", true);
        aFLogger3.i(aFg1cSDK3, "AppsFlyer will not track this event.", true);
        if (appsFlyerRequestListener != null) {
            appsFlyerRequestListener.onError(41, "No dev key");
        }
        AFKeystoreWrapper = (f10921i + 35) % 128;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001c, code lost:
        if (r2.equals == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x001e, code lost:
        r2.equals = new com.appsflyer.internal.h(r2);
        com.appsflyer.internal.AFa1ySDK.f10921i = (com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper + 81) % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0013, code lost:
        if (r2.equals == null) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final synchronized com.appsflyer.internal.AFf1mSDK AFAdRevenueData() {
        /*
            r2 = this;
            monitor-enter(r2)
            int r0 = com.appsflyer.internal.AFa1ySDK.f10921i     // Catch: java.lang.Throwable -> L18
            int r0 = r0 + 11
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper = r1     // Catch: java.lang.Throwable -> L18
            int r0 = r0 % 2
            if (r0 == 0) goto L1a
            com.appsflyer.internal.AFf1mSDK r0 = r2.equals     // Catch: java.lang.Throwable -> L18
            r1 = 9
            int r1 = r1 / 0
            if (r0 != 0) goto L2d
            goto L1e
        L16:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L18
        L18:
            r0 = move-exception
            goto L31
        L1a:
            com.appsflyer.internal.AFf1mSDK r0 = r2.equals     // Catch: java.lang.Throwable -> L18
            if (r0 != 0) goto L2d
        L1e:
            com.appsflyer.internal.h r0 = new com.appsflyer.internal.h     // Catch: java.lang.Throwable -> L18
            r0.<init>()     // Catch: java.lang.Throwable -> L18
            r2.equals = r0     // Catch: java.lang.Throwable -> L18
            int r0 = com.appsflyer.internal.AFa1ySDK.AFKeystoreWrapper     // Catch: java.lang.Throwable -> L18
            int r0 = r0 + 81
            int r0 = r0 % 128
            com.appsflyer.internal.AFa1ySDK.f10921i = r0     // Catch: java.lang.Throwable -> L18
        L2d:
            com.appsflyer.internal.AFf1mSDK r0 = r2.equals     // Catch: java.lang.Throwable -> L18
            monitor-exit(r2)
            return r0
        L31:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L18
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1ySDK.AFAdRevenueData():com.appsflyer.internal.AFf1mSDK");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void getCurrencyIso4217Code(AFh1mSDK aFh1mSDK) {
        getRevenue(new Object[]{this, aFh1mSDK}, -316162006, 316162006, System.identityHashCode(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class AFa1zSDK implements AFe1qSDK {
        AFa1zSDK() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Unit getMediationNetwork() {
            AFa1ySDK.this.getMediationNetwork(new AFh1kSDK());
            return Unit.f60915a;
        }

        @Override // com.appsflyer.internal.AFe1qSDK
        public final void getRevenue(AFe1mSDK<?> aFe1mSDK, AFe1uSDK aFe1uSDK) {
            JSONObject monetizationNetwork;
            AFf1aSDK revenue;
            if (aFe1mSDK instanceof AFf1sSDK) {
                AFf1sSDK aFf1sSDK = (AFf1sSDK) aFe1mSDK;
                boolean z10 = aFe1mSDK instanceof AFf1rSDK;
                if (z10 && getRevenue()) {
                    AFf1rSDK aFf1rSDK = (AFf1rSDK) aFe1mSDK;
                    if (aFf1rSDK.getMonetizationNetwork == AFe1uSDK.SUCCESS || aFf1rSDK.getMediationNetwork == 1) {
                        AFg1kSDK aFg1kSDK = new AFg1kSDK(aFf1rSDK, AFa1ySDK.this.getMonetizationNetwork().component4());
                        AFe1oSDK copydefault = AFa1ySDK.this.getMonetizationNetwork().copydefault();
                        copydefault.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(aFg1kSDK));
                    }
                }
                AFh1pSDK afWarnLog = AFa1ySDK.this.getMonetizationNetwork().afWarnLog();
                if (afWarnLog != null && z10) {
                    afWarnLog.getMonetizationNetwork((AFf1rSDK) aFe1mSDK, new Function0() { // from class: com.appsflyer.internal.i
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit mediationNetwork;
                            mediationNetwork = AFa1ySDK.AFa1zSDK.this.getMediationNetwork();
                            return mediationNetwork;
                        }
                    });
                }
                if (aFe1uSDK == AFe1uSDK.SUCCESS) {
                    AFa1ySDK aFa1ySDK = AFa1ySDK.this;
                    aFa1ySDK.getMonetizationNetwork(aFa1ySDK.component2).getRevenue("sentSuccessfully", "true");
                    if (!(aFe1mSDK instanceof AFf1oSDK) && (revenue = new AFg1sSDK(AFa1ySDK.this.component2).getRevenue()) != null && revenue.getMediationNetwork) {
                        String str = revenue.getRevenue;
                        AFLogger.INSTANCE.d(AFg1cSDK.UNINSTALL, "Resending Uninstall token to AF servers: ".concat(String.valueOf(str)));
                        AFd1zSDK monetizationNetwork2 = AFa1ySDK.getRevenue().getMonetizationNetwork();
                        AFf1oSDK aFf1oSDK = new AFf1oSDK(str, monetizationNetwork2);
                        AFe1oSDK copydefault2 = monetizationNetwork2.copydefault();
                        copydefault2.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(aFf1oSDK));
                    }
                    ResponseNetwork responseNetwork = ((AFe1fSDK) aFf1sSDK).areAllFieldsValid;
                    if (responseNetwork != null && (monetizationNetwork = AFa1qSDK.getMonetizationNetwork((String) responseNetwork.getBody())) != null) {
                        AFa1ySDK.this.component1 = monetizationNetwork.optBoolean("send_background", false);
                    }
                    if (z10) {
                        AFa1ySDK.this.AFAdRevenueData = System.currentTimeMillis();
                    }
                }
            } else if (!(aFe1mSDK instanceof AFg1kSDK) || aFe1uSDK == AFe1uSDK.SUCCESS) {
            } else {
                AFg1pSDK aFg1pSDK = new AFg1pSDK(AFa1ySDK.this.getMonetizationNetwork());
                AFe1oSDK copydefault3 = AFa1ySDK.this.getMonetizationNetwork().copydefault();
                copydefault3.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(aFg1pSDK));
            }
        }

        @Override // com.appsflyer.internal.AFe1qSDK
        public final void getCurrencyIso4217Code(AFe1mSDK<?> aFe1mSDK) {
        }

        private boolean getRevenue() {
            return AFa1ySDK.this.getRevenue != null;
        }
    }

    private static void AFAdRevenueData(JSONObject jSONObject) {
        String str;
        ArrayList arrayList = new ArrayList();
        Iterator<String> keys = jSONObject.keys();
        while (true) {
            if (!keys.hasNext()) {
                break;
            }
            try {
                JSONArray jSONArray = new JSONArray((String) jSONObject.get(keys.next()));
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    arrayList.add(Long.valueOf(jSONArray.getLong(i10)));
                }
            } catch (JSONException e10) {
                AFLogger.afErrorLogForExcManagerOnly("error at timeStampArr", e10);
            }
        }
        Collections.sort(arrayList);
        Iterator<String> keys2 = jSONObject.keys();
        loop2: while (true) {
            str = null;
            while (keys2.hasNext()) {
                f10921i = (AFKeystoreWrapper + 7) % 128;
                if (str != null) {
                    break loop2;
                }
                String next = keys2.next();
                try {
                    JSONArray jSONArray2 = new JSONArray((String) jSONObject.get(next));
                    int i11 = 0;
                    while (i11 < jSONArray2.length()) {
                        if (jSONArray2.getLong(i11) != ((Long) arrayList.get(0)).longValue() && jSONArray2.getLong(i11) != ((Long) arrayList.get(1)).longValue()) {
                            AFKeystoreWrapper = (f10921i + 61) % 128;
                            if (jSONArray2.getLong(i11) == ((Long) arrayList.get(arrayList.size() - 1)).longValue()) {
                                break;
                            }
                            i11++;
                            str = next;
                        }
                    }
                    continue;
                } catch (JSONException e11) {
                    AFLogger.afErrorLogForExcManagerOnly("error at manageExtraReferrers", e11);
                }
            }
            break loop2;
        }
        if (str != null) {
            AFKeystoreWrapper = (f10921i + 111) % 128;
            jSONObject.remove(str);
        }
    }

    private boolean component4() {
        f10921i = (AFKeystoreWrapper + 101) % 128;
        if (this.component3 > 0) {
            long currentTimeMillis = System.currentTimeMillis() - this.component3;
            Locale locale = Locale.US;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.SSS Z", locale);
            String monetizationNetwork = getMonetizationNetwork(simpleDateFormat, this.component3);
            String monetizationNetwork2 = getMonetizationNetwork(simpleDateFormat, this.AFAdRevenueData);
            if (currentTimeMillis < this.component4 && !isStopped()) {
                AFKeystoreWrapper = (f10921i + 25) % 128;
                AFLogger.afInfoLog(String.format(locale, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms", monetizationNetwork, monetizationNetwork2, Long.valueOf(currentTimeMillis), Long.valueOf(this.component4)));
                return true;
            } else if (isStopped()) {
                return false;
            } else {
                AFLogger.afInfoLog(String.format(locale, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)", monetizationNetwork, monetizationNetwork2, Long.valueOf(currentTimeMillis)));
                return false;
            }
        } else if (!(!isStopped())) {
            return false;
        } else {
            f10921i = (AFKeystoreWrapper + 113) % 128;
            AFLogger.afInfoLog("Sending first launch for this session!");
            f10921i = (AFKeystoreWrapper + 121) % 128;
            return false;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void start(@NonNull Context context, String str) {
        getRevenue(new Object[]{this, context, str}, -973034294, 973034299, System.identityHashCode(this));
    }

    public final AFc1qSDK getMonetizationNetwork(Context context) {
        f10921i = (AFKeystoreWrapper + 13) % 128;
        AFAdRevenueData(context);
        AFc1qSDK component4 = getMonetizationNetwork().component4();
        int i10 = AFKeystoreWrapper + 85;
        f10921i = i10 % 128;
        if (i10 % 2 != 0) {
            return component4;
        }
        throw null;
    }

    private static void getMonetizationNetwork(String str) {
        getRevenue(new Object[]{str}, -374487647, 374487663, (int) System.currentTimeMillis());
    }

    private void getMonetizationNetwork(AFi1hSDK aFi1hSDK) {
        getRevenue(new Object[]{this, aFi1hSDK}, 608861720, -608861711, System.identityHashCode(this));
    }

    private static /* synthetic */ Object AFAdRevenueData(Object[] objArr) {
        AFa1ySDK aFa1ySDK = (AFa1ySDK) objArr[0];
        boolean booleanValue = ((Boolean) objArr[1]).booleanValue();
        int i10 = AFKeystoreWrapper + 5;
        f10921i = i10 % 128;
        if (i10 % 2 != 0) {
            aFa1ySDK.setLogLevel(!booleanValue ? AFLogger.LogLevel.NONE : AFLogger.LogLevel.DEBUG);
            AFKeystoreWrapper = (f10921i + 117) % 128;
            return null;
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void AFAdRevenueData(AFi1hSDK aFi1hSDK) {
        int i10 = AFKeystoreWrapper + 25;
        f10921i = i10 % 128;
        Object[] objArr = {this, aFi1hSDK};
        if (i10 % 2 == 0) {
            getRevenue(objArr, 608861720, -608861711, System.identityHashCode(this));
            throw null;
        }
        getRevenue(objArr, 608861720, -608861711, System.identityHashCode(this));
        AFKeystoreWrapper = (f10921i + 15) % 128;
    }

    private void AFAdRevenueData(Context context, String str, Map<String, Object> map) {
        AFh1hSDK aFh1hSDK = new AFh1hSDK();
        aFh1hSDK.areAllFieldsValid = str;
        aFh1hSDK.getRevenue = map;
        getCurrencyIso4217Code(aFh1hSDK, (AFh1qSDK) getRevenue(new Object[]{this, context}, 348348548, -348348531, System.identityHashCode(this)));
        f10921i = (AFKeystoreWrapper + 125) % 128;
    }

    @Deprecated
    public static Map<String, Object> getMediationNetwork(Map<String, Object> map) {
        if (map.containsKey(Constants.REFERRER_API_META)) {
            f10921i = (AFKeystoreWrapper + 115) % 128;
            Map<String, Object> map2 = (Map) map.get(Constants.REFERRER_API_META);
            AFKeystoreWrapper = (f10921i + 81) % 128;
            return map2;
        }
        HashMap hashMap = new HashMap();
        map.put(Constants.REFERRER_API_META, hashMap);
        return hashMap;
    }

    private void AFAdRevenueData(String str) {
        final AFh1mSDK AFAdRevenueData = new AFh1nSDK().AFAdRevenueData(getMonetizationNetwork().AFAdRevenueData().getMediationNetwork.getRevenue("appsFlyerCount", 0));
        AFAdRevenueData.component1 = str;
        if (str == null || str.length() <= 5 || !getMonetizationNetwork().AFLogger().getMediationNetwork(AFAdRevenueData)) {
            return;
        }
        int i10 = f10921i + 15;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 == 0) {
            AFj1aSDK.getCurrencyIso4217Code(getMonetizationNetwork().getMediationNetwork(), new Runnable() { // from class: com.appsflyer.internal.b
                @Override // java.lang.Runnable
                public final void run() {
                    AFa1ySDK.this.getCurrencyIso4217Code(AFAdRevenueData);
                }
            }, 5L, TimeUnit.MILLISECONDS);
            f10921i = (AFKeystoreWrapper + 21) % 128;
            return;
        }
        AFj1aSDK.getCurrencyIso4217Code(getMonetizationNetwork().getMediationNetwork(), new Runnable() { // from class: com.appsflyer.internal.b
            @Override // java.lang.Runnable
            public final void run() {
                AFa1ySDK.this.getCurrencyIso4217Code(AFAdRevenueData);
            }
        }, 5L, TimeUnit.MILLISECONDS);
        throw null;
    }

    private static int getMediationNetwork(AFc1qSDK aFc1qSDK, String str, boolean z10) {
        int revenue;
        int i10 = f10921i + 15;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 != 0) {
            revenue = aFc1qSDK.getRevenue(str, 0);
            if (!z10) {
                return revenue;
            }
        } else {
            revenue = aFc1qSDK.getRevenue(str, 0);
            if (!z10) {
                return revenue;
            }
        }
        AFKeystoreWrapper = (f10921i + 13) % 128;
        int i11 = revenue + 1;
        aFc1qSDK.getMediationNetwork(str, i11);
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void getMediationNetwork(AFd1zSDK aFd1zSDK) {
        getRevenue(new Object[]{aFd1zSDK}, 757923489, -757923475, (int) System.currentTimeMillis());
    }

    @Nullable
    private AFh1qSDK getMediationNetwork(Context context) {
        return (AFh1qSDK) getRevenue(new Object[]{this, context}, 348348548, -348348531, System.identityHashCode(this));
    }

    private void getMediationNetwork(Context context, AFh1tSDK aFh1tSDK) {
        getRevenue(new Object[]{this, context, aFh1tSDK}, -268043806, 268043817, System.identityHashCode(this));
    }

    public static String getMediationNetwork() {
        return (String) getRevenue(new Object[0], 131288073, -131288051, (int) System.currentTimeMillis());
    }

    public static String AFAdRevenueData(AFc1qSDK aFc1qSDK, String str) {
        f10921i = (AFKeystoreWrapper + 71) % 128;
        String monetizationNetwork = aFc1qSDK.getMonetizationNetwork("CACHED_CHANNEL", (String) null);
        if (monetizationNetwork != null) {
            int i10 = f10921i + 87;
            AFKeystoreWrapper = i10 % 128;
            if (i10 % 2 == 0) {
                return monetizationNetwork;
            }
            throw null;
        }
        aFc1qSDK.getRevenue("CACHED_CHANNEL", str);
        f10921i = (AFKeystoreWrapper + 37) % 128;
        return str;
    }

    private void AFAdRevenueData(AFh1mSDK aFh1mSDK) {
        boolean z10;
        if (aFh1mSDK.areAllFieldsValid == null) {
            AFKeystoreWrapper = (f10921i + 73) % 128;
            z10 = true;
        } else {
            z10 = false;
        }
        if (!getCurrencyIso4217Code()) {
            if (z10) {
                if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.LAUNCH_PROTECT_ENABLED, true)) {
                    f10921i = (AFKeystoreWrapper + 7) % 128;
                    if (component4()) {
                        AFKeystoreWrapper = (f10921i + 39) % 128;
                        AppsFlyerRequestListener appsFlyerRequestListener = aFh1mSDK.getCurrencyIso4217Code;
                        if (appsFlyerRequestListener != null) {
                            appsFlyerRequestListener.onError(10, "Event timeout. Check 'minTimeBetweenSessions' param");
                            return;
                        }
                        return;
                    }
                } else {
                    AFLogger.afInfoLog("Allowing multiple launches within a 5 second time window.");
                }
                this.component3 = System.currentTimeMillis();
            }
            getMediationNetwork(aFh1mSDK);
            return;
        }
        f10921i = (AFKeystoreWrapper + 33) % 128;
        AFLogger.afInfoLog("CustomerUserId not set, reporting is disabled", true);
    }

    public static AFa1ySDK getRevenue() {
        int i10 = AFKeystoreWrapper;
        AFa1ySDK aFa1ySDK = areAllFieldsValid;
        int i11 = i10 + 9;
        f10921i = i11 % 128;
        if (i11 % 2 != 0) {
            return aFa1ySDK;
        }
        throw null;
    }

    private static /* synthetic */ Object getRevenue(Object[] objArr) {
        boolean booleanValue = ((Boolean) objArr[1]).booleanValue();
        AFKeystoreWrapper = (f10921i + 11) % 128;
        ((AFa1ySDK) objArr[0]).getMonetizationNetwork().copy().getRevenue("setCollectIMEI", String.valueOf(booleanValue));
        getMediationNetwork(AppsFlyerProperties.COLLECT_IMEI, Boolean.toString(booleanValue));
        getMediationNetwork(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, Boolean.toString(booleanValue));
        int i10 = f10921i + 115;
        AFKeystoreWrapper = i10 % 128;
        if (i10 % 2 != 0) {
            int i11 = 60 / 0;
        }
        return null;
    }

    private void getRevenue(AppsFlyerConversionListener appsFlyerConversionListener) {
        AFKeystoreWrapper = (f10921i + 53) % 128;
        if (appsFlyerConversionListener == null) {
            return;
        }
        this.getRevenue = appsFlyerConversionListener;
        f10921i = (AFKeystoreWrapper + 101) % 128;
    }

    private static void AFAdRevenueData(String str, boolean z10) {
        getRevenue(new Object[]{str, Boolean.valueOf(z10)}, -1569798316, 1569798326, (int) System.currentTimeMillis());
    }

    public final void AFAdRevenueData(Context context, String str) {
        getRevenue(new Object[]{this, context, str}, 1454368071, -1454368056, System.identityHashCode(this));
    }

    @VisibleForTesting
    private void getRevenue(Context context, String str) {
        AFh1eSDK aFh1eSDK = new AFh1eSDK();
        AFAdRevenueData(context);
        aFh1eSDK.areAllFieldsValid = null;
        aFh1eSDK.getRevenue = null;
        aFh1eSDK.component1 = str;
        aFh1eSDK.getMonetizationNetwork = null;
        AFAdRevenueData(aFh1eSDK);
        f10921i = (AFKeystoreWrapper + 29) % 128;
    }

    private void getRevenue(Map<String, Object> map) {
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false)) {
            return;
        }
        AFKeystoreWrapper = (f10921i + 115) % 128;
        if (!(!AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false))) {
            return;
        }
        f10921i = (AFKeystoreWrapper + 115) % 128;
        if (map.get("advertiserId") != null) {
            try {
                if (AFk1wSDK.getMonetizationNetwork(getMonetizationNetwork().force().getCurrencyIso4217Code) && map.remove("android_id") != null) {
                    AFKeystoreWrapper = (f10921i + 65) % 128;
                    AFLogger.afInfoLog("validateGaidAndIMEI :: removing: android_id");
                }
                if (AFk1wSDK.getMonetizationNetwork(getMonetizationNetwork().AFInAppEventType().AFAdRevenueData())) {
                    f10921i = (AFKeystoreWrapper + 67) % 128;
                    if (map.remove("imei") != null) {
                        int i10 = f10921i + 33;
                        AFKeystoreWrapper = i10 % 128;
                        if (i10 % 2 == 0) {
                            AFLogger.afInfoLog("validateGaidAndIMEI :: removing: imei");
                        } else {
                            AFLogger.afInfoLog("validateGaidAndIMEI :: removing: imei");
                            throw null;
                        }
                    }
                }
            } catch (Exception e10) {
                AFLogger.afErrorLog("failed to remove IMEI or AndroidID key from params; ", e10);
            }
        }
    }

    private static String getRevenue(Activity activity) {
        Intent intent;
        AFKeystoreWrapper = (f10921i + 117) % 128;
        String str = null;
        if (activity != null && (intent = activity.getIntent()) != null) {
            try {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    int i10 = AFKeystoreWrapper + 75;
                    f10921i = i10 % 128;
                    if (i10 % 2 != 0) {
                        str = extras.getString("af");
                        if (str != null) {
                            AFLogger.INSTANCE.w(AFg1cSDK.ENGAGEMENT, "Push Notification received af payload = ".concat(String.valueOf(str)));
                            extras.remove("af");
                            activity.setIntent(intent.putExtras(extras));
                            AFKeystoreWrapper = (f10921i + 45) % 128;
                        }
                    } else {
                        String string = extras.getString("af");
                        try {
                            throw null;
                        } catch (Throwable th2) {
                            str = string;
                            th = th2;
                            AFLogger.INSTANCE.e(AFg1cSDK.ENGAGEMENT, th.getMessage(), th);
                            return str;
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return str;
    }

    public static boolean getRevenue(Context context) {
        f10921i = (AFKeystoreWrapper + 103) % 128;
        try {
            if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context) == 0) {
                AFKeystoreWrapper = (f10921i + 83) % 128;
                return true;
            }
        } catch (Throwable th2) {
            AFLogger.afErrorLog("WARNING:  Google play services is unavailable. ", th2);
        }
        try {
            context.getPackageManager().getPackageInfo("com.google.android.gms", 0);
            return true;
        } catch (PackageManager.NameNotFoundException e10) {
            AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, "WARNING:  Google Play Services is unavailable. ", e10);
            return false;
        }
    }

    private static int getRevenue(AFc1qSDK aFc1qSDK, boolean z10) {
        int i10 = AFKeystoreWrapper + 125;
        f10921i = i10 % 128;
        if (i10 % 2 == 0) {
            getMediationNetwork(aFc1qSDK, "appsFlyerInAppEventCount", z10);
            throw null;
        }
        int mediationNetwork = getMediationNetwork(aFc1qSDK, "appsFlyerInAppEventCount", z10);
        f10921i = (AFKeystoreWrapper + 33) % 128;
        return mediationNetwork;
    }

    private static void getRevenue(String str) {
        AFLogger aFLogger = AFLogger.INSTANCE;
        AFg1cSDK aFg1cSDK = AFg1cSDK.SDK_LIFECYCLE;
        StringBuilder sb2 = new StringBuilder("ERROR: AppsFlyer SDK is not initialized! The API call '");
        sb2.append(str);
        sb2.append("()' must be called after the 'init(String, AppsFlyerConversionListener)' API method, which should be called on the Application's onCreate.");
        aFLogger.w(aFg1cSDK, sb2.toString());
        int i10 = AFKeystoreWrapper + 99;
        f10921i = i10 % 128;
        if (i10 % 2 == 0) {
            throw null;
        }
    }
}
