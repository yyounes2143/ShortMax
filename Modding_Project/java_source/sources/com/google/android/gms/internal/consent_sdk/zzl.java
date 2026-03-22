package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.vungle.ads.internal.model.Cookie;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
/* loaded from: classes4.dex */
public final class zzl {
    private final zzam zza;
    private final Context zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(Application application, zzam zzamVar) {
        this.zza = zzamVar;
        this.zzb = application.getApplicationContext();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void zza(Map map) {
        boolean z10;
        String str;
        String str2;
        zzam zzamVar = this.zza;
        if (!zzamVar.zzd()) {
            return;
        }
        zzamVar.zzb(this.zzb);
        Integer num = (Integer) map.get(Cookie.IABTCF_GDPR_APPLIES);
        HashMap hashMap = new HashMap();
        for (String str3 : map.keySet()) {
            if (!str3.equals(Cookie.IABTCF_GDPR_APPLIES)) {
                switch (str3.hashCode()) {
                    case -1926457382:
                        if (str3.equals("UMP_CoMoAdPersonalizationPurposeConsentStatus")) {
                            z10 = true;
                            break;
                        }
                        z10 = true;
                        break;
                    case -142866440:
                        if (str3.equals("UMP_CoMoAnalyticsStoragePurposeConsentStatus")) {
                            z10 = true;
                            break;
                        }
                        z10 = true;
                        break;
                    case 1068702385:
                        if (str3.equals("UMP_CoMoAdStoragePurposeConsentStatus")) {
                            z10 = false;
                            break;
                        }
                        z10 = true;
                        break;
                    case 1479307131:
                        if (str3.equals("UMP_CoMoAdUserDataPurposeConsentStatus")) {
                            z10 = true;
                            break;
                        }
                        z10 = true;
                        break;
                    default:
                        z10 = true;
                        break;
                }
                if (z10) {
                    if (!z10) {
                        if (!z10) {
                            if (z10) {
                                str = "google_analytics_default_allow_analytics_storage";
                                str2 = "ANALYTICS_STORAGE";
                            }
                        } else {
                            str = "google_analytics_default_allow_ad_personalization_signals";
                            str2 = "AD_PERSONALIZATION";
                        }
                    } else {
                        str = "google_analytics_default_allow_ad_user_data";
                        str2 = "AD_USER_DATA";
                    }
                } else {
                    str = "google_analytics_default_allow_ad_storage";
                    str2 = "AD_STORAGE";
                }
                int intValue = ((Integer) map.get(str3)).intValue();
                if (intValue != -1) {
                    String str4 = "GRANTED";
                    if (intValue != 1) {
                        if (intValue != 2) {
                            if (intValue != 4) {
                                if (intValue != 5) {
                                    Log.w("UserMessagingPlatform", "Invalid CoMo consent status: " + intValue);
                                } else {
                                    Object zza = zzamVar.zza(str);
                                    if (zza == null) {
                                        Log.w("UserMessagingPlatform", "No default metadata");
                                    } else if (zza instanceof Boolean) {
                                        if (true != ((Boolean) zza).booleanValue()) {
                                            str4 = "DENIED";
                                        }
                                        hashMap.put(str2, str4);
                                    } else if ((zza instanceof String) && zza.equals("eu_consent_policy") && ((str2.equals("AD_PERSONALIZATION") || str2.equals("AD_USER_DATA")) && num != null)) {
                                        if (num.intValue() == 1) {
                                            str4 = "DENIED";
                                        }
                                        hashMap.put(str2, str4);
                                    } else {
                                        Log.w("UserMessagingPlatform", "Failed to get the default eu_consent_policy value.");
                                    }
                                }
                            }
                        } else {
                            hashMap.put(str2, "DENIED");
                        }
                    } else {
                        hashMap.put(str2, "GRANTED");
                    }
                }
            }
        }
        zzamVar.zzc(hashMap);
    }
}
