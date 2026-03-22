package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.deeplink.DeepLink;
import com.appsflyer.deeplink.DeepLinkListener;
import com.appsflyer.deeplink.DeepLinkResult;
import com.appsflyer.internal.AFe1oSDK;
import com.appsflyer.internal.AFf1vSDK;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class AFa1mSDK {
    public Intent AFAdRevenueData;
    public final AFd1zSDK areAllFieldsValid;
    public long component2;
    @Nullable
    public String[] component3;
    @Nullable
    public DeepLinkListener getCurrencyIso4217Code;
    public Map<String, String> getMediationNetwork;
    public String getMonetizationNetwork;
    @NonNull
    public List<List<String>> getRevenue = new ArrayList();
    @NonNull
    public final List<String> component1 = new ArrayList();

    public AFa1mSDK(@NonNull AFd1zSDK aFd1zSDK) {
        this.areAllFieldsValid = aFd1zSDK;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0075 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean h_(android.content.Intent r10, com.appsflyer.internal.AFa1jSDK r11) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1mSDK.h_(android.content.Intent, com.appsflyer.internal.AFa1jSDK):boolean");
    }

    @Nullable
    private Uri i_(Object obj, Iterator<String> it) {
        while (obj != JSONObject.NULL) {
            if (!it.hasNext()) {
                Uri parse = Uri.parse(obj.toString());
                if (parse == null || parse.getScheme() == null || parse.getHost() == null) {
                    return null;
                }
                return parse;
            }
            try {
                obj = new JSONObject(obj.toString()).get(it.next());
            } catch (JSONException e10) {
                AFLogger.afErrorLogForExcManagerOnly("recursiveSearch error", e10);
                return null;
            }
        }
        return null;
    }

    public final void f_(AFa1jSDK aFa1jSDK, Intent intent, Context context) {
        AFc1bSDK aFc1bSDK = (AFc1bSDK) this.areAllFieldsValid;
        if (context != null) {
            aFc1bSDK.getCurrencyIso4217Code.getMonetizationNetwork = context.getApplicationContext();
        }
        if (!h_(intent, aFa1jSDK) && this.getCurrencyIso4217Code != null && this.areAllFieldsValid.AFAdRevenueData().getMediationNetwork.getRevenue("appsFlyerCount", 0) == 0 && !this.areAllFieldsValid.component4().getMediationNetwork("ddl_sent", false)) {
            AFa1rSDK aFa1rSDK = new AFa1rSDK();
            AFe1oSDK copydefault = this.areAllFieldsValid.copydefault();
            copydefault.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(new AFf1xSDK(aFa1rSDK, this.areAllFieldsValid)));
        }
        this.areAllFieldsValid.component4().AFAdRevenueData("ddl_sent", true);
    }

    public final void g_(AFa1jSDK aFa1jSDK, Uri uri) {
        AFf1zSDK aFf1zSDK = new AFf1zSDK(this, aFa1jSDK, uri, this.component1);
        AFe1oSDK copydefault = this.areAllFieldsValid.copydefault();
        copydefault.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(aFf1zSDK));
        this.AFAdRevenueData = null;
    }

    public final void getMediationNetwork(String str, DeepLinkResult.Error error) {
        if (this.getCurrencyIso4217Code != null) {
            AFLogger.INSTANCE.d(AFg1cSDK.DDL, "Error occurred: ".concat(String.valueOf(str)));
            getRevenue(new DeepLinkResult(null, error));
            return;
        }
        getMediationNetwork(str);
    }

    public final void getRevenue(DeepLinkResult deepLinkResult) {
        if (this.getCurrencyIso4217Code != null) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.DDL;
            StringBuilder sb2 = new StringBuilder("Calling onDeepLinking with:\n");
            sb2.append(deepLinkResult.toString());
            aFLogger.d(aFg1cSDK, sb2.toString());
            try {
                this.getCurrencyIso4217Code.onDeepLinking(deepLinkResult);
                return;
            } catch (Throwable th2) {
                AFLogger.afErrorLog(th2.getLocalizedMessage(), th2);
                return;
            }
        }
        AFLogger.INSTANCE.d(AFg1cSDK.DDL, "skipping, no callback registered");
    }

    public final void j_(AFa1jSDK aFa1jSDK, Uri uri, @Nullable Uri uri2) {
        String substring;
        if (!aFa1jSDK.getMonetizationNetwork("af_deeplink")) {
            String obj = uri.toString();
            if (obj == null) {
                obj = null;
            } else if (obj.matches("fb\\d*?://authorize.*") && obj.contains("access_token")) {
                int indexOf = obj.indexOf(63);
                if (indexOf == -1) {
                    substring = "";
                } else {
                    substring = obj.substring(indexOf);
                }
                if (substring.length() != 0) {
                    ArrayList arrayList = new ArrayList();
                    if (substring.contains(ContainerUtils.FIELD_DELIMITER)) {
                        arrayList = new ArrayList(Arrays.asList(substring.split(ContainerUtils.FIELD_DELIMITER)));
                    } else {
                        arrayList.add(substring);
                    }
                    StringBuilder sb2 = new StringBuilder();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (str.contains("access_token")) {
                            it.remove();
                        } else {
                            if (sb2.length() != 0) {
                                sb2.append(ContainerUtils.FIELD_DELIMITER);
                            } else if (!str.startsWith("?")) {
                                sb2.append("?");
                            }
                            sb2.append(str);
                        }
                    }
                    obj = obj.replace(substring, sb2.toString());
                }
            }
            String str2 = this.getMonetizationNetwork;
            if (str2 != null && this.getMediationNetwork != null && obj.contains(str2)) {
                Uri.Builder buildUpon = Uri.parse(obj).buildUpon();
                Uri.Builder buildUpon2 = Uri.EMPTY.buildUpon();
                for (Map.Entry<String, String> entry : this.getMediationNetwork.entrySet()) {
                    buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
                    buildUpon2.appendQueryParameter(entry.getKey(), entry.getValue());
                }
                obj = buildUpon.build().toString();
                String encodedQuery = buildUpon2.build().getEncodedQuery();
                Intrinsics.checkNotNullParameter("appended_query_params", "");
                aFa1jSDK.getMonetizationNetwork.put("appended_query_params", encodedQuery);
                AFa1lSDK aFa1lSDK = aFa1jSDK.AFAdRevenueData;
                if (aFa1lSDK != null) {
                    aFa1lSDK.getMonetizationNetwork(aFa1jSDK.getMonetizationNetwork);
                }
            }
            Intrinsics.checkNotNullParameter("af_deeplink", "");
            aFa1jSDK.getMonetizationNetwork.put("af_deeplink", obj);
            AFa1lSDK aFa1lSDK2 = aFa1jSDK.AFAdRevenueData;
            if (aFa1lSDK2 != null) {
                aFa1lSDK2.getMonetizationNetwork(aFa1jSDK.getMonetizationNetwork);
            }
        }
        final HashMap hashMap = new HashMap();
        hashMap.put("link", uri.toString());
        if (uri2 != null) {
            hashMap.put("original_link", uri2.toString());
        }
        AFj1kSDK.M_(this.areAllFieldsValid.AFAdRevenueData().n_(), hashMap, uri);
        AFf1vSDK aFf1vSDK = new AFf1vSDK(this.areAllFieldsValid, UUID.randomUUID(), uri);
        if (aFf1vSDK.equals()) {
            Boolean bool = Boolean.TRUE;
            Intrinsics.checkNotNullParameter("isBrandedDomain", "");
            aFa1jSDK.getMonetizationNetwork.put("isBrandedDomain", bool);
            AFa1lSDK aFa1lSDK3 = aFa1jSDK.AFAdRevenueData;
            if (aFa1lSDK3 != null) {
                aFa1lSDK3.getMonetizationNetwork(aFa1jSDK.getMonetizationNetwork);
            }
        }
        if (aFf1vSDK.copy()) {
            aFf1vSDK.component2 = new AFf1vSDK.AFa1tSDK() { // from class: com.appsflyer.internal.AFa1mSDK.1
                @Override // com.appsflyer.internal.AFf1vSDK.AFa1tSDK
                public final void AFAdRevenueData(String str3) {
                    AFa1mSDK.this.getMediationNetwork(str3, DeepLinkResult.Error.NETWORK);
                }

                @Override // com.appsflyer.internal.AFf1vSDK.AFa1tSDK
                public final void getCurrencyIso4217Code(Map<String, String> map) {
                    for (String str3 : map.keySet()) {
                        hashMap.put(str3, map.get(str3));
                    }
                    AFa1mSDK.this.getMediationNetwork(hashMap);
                }
            };
            AFe1oSDK copydefault = this.areAllFieldsValid.copydefault();
            copydefault.getCurrencyIso4217Code.execute(new AFe1oSDK.AnonymousClass1(aFf1vSDK));
            return;
        }
        this.areAllFieldsValid.i().getMediationNetwork(hashMap);
    }

    public final void getMediationNetwork(Map<String, String> map) {
        DeepLinkResult deepLinkResult;
        if (this.getCurrencyIso4217Code != null) {
            try {
                try {
                    DeepLink monetizationNetwork = DeepLink.getMonetizationNetwork(map);
                    monetizationNetwork.AFAdRevenueData.put("is_deferred", false);
                    deepLinkResult = new DeepLinkResult(monetizationNetwork, null);
                } catch (JSONException e10) {
                    AFLogger.INSTANCE.e(AFg1cSDK.DDL, "Error occurred", e10, true);
                    deepLinkResult = new DeepLinkResult(null, DeepLinkResult.Error.UNEXPECTED);
                }
                getRevenue(deepLinkResult);
                return;
            } catch (Throwable th2) {
                getRevenue(new DeepLinkResult(null, null));
                throw th2;
            }
        }
        AppsFlyerConversionListener appsFlyerConversionListener = AFa1ySDK.getRevenue().getRevenue;
        if (appsFlyerConversionListener != null) {
            try {
                StringBuilder sb2 = new StringBuilder("Calling onAppOpenAttribution with:\n");
                sb2.append(map.toString());
                AFLogger.afDebugLog(sb2.toString());
                appsFlyerConversionListener.onAppOpenAttribution(map);
            } catch (Throwable th3) {
                AFLogger.afErrorLog(th3.getLocalizedMessage(), th3);
            }
        }
    }

    private static void getMediationNetwork(String str) {
        AppsFlyerConversionListener appsFlyerConversionListener = AFa1ySDK.getRevenue().getRevenue;
        if (appsFlyerConversionListener != null) {
            try {
                AFLogger.afDebugLog("Calling onAppOpenAttributionFailure with: ".concat(String.valueOf(str)));
                appsFlyerConversionListener.onAttributionFailure(str);
            } catch (Throwable th2) {
                AFLogger.afErrorLog(th2.getLocalizedMessage(), th2);
            }
        }
    }
}
