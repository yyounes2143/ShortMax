package com.google.android.gms.internal.play_billing;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.InAppMessageResult;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzc {
    public static final int zza = Runtime.getRuntime().availableProcessors();

    public static int zza(Intent intent, String str) {
        if (intent == null) {
            zzn("ProxyBillingActivity", "Got null intent!");
            return 0;
        }
        return zzp(intent.getExtras(), "ProxyBillingActivity");
    }

    public static int zzb(Bundle bundle, String str) {
        if (bundle == null) {
            zzn(str, "Unexpected null bundle received!");
            return 6;
        }
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            zzm(str, "getResponseCodeFromBundle() got null response code, assuming OK");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            zzn(str, "Unexpected type for bundle response code: ".concat(obj.getClass().getName()));
            return 6;
        }
    }

    public static Bundle zzc(Bundle bundle, String str, @Nullable String str2, long j10) {
        bundle.putString("playBillingLibraryVersion", str);
        if (str2 != null) {
            bundle.putString("playBillingLibraryWrapperVersion", str2);
        }
        bundle.putLong("billingClientSessionId", j10);
        return bundle;
    }

    public static Bundle zzd(BillingResult billingResult, zzie zzieVar) {
        Bundle bundle = new Bundle();
        bundle.putInt("RESPONSE_CODE", billingResult.getResponseCode());
        bundle.putString("DEBUG_MESSAGE", billingResult.getDebugMessage());
        bundle.putInt("LOG_REASON", zzieVar.zza());
        return bundle;
    }

    public static Bundle zze(BillingResult billingResult, zzie zzieVar, @Nullable String str) {
        Bundle zzd = zzd(billingResult, zzieVar);
        if (str != null) {
            zzd.putString("ADDITIONAL_LOG_DETAILS", str);
        }
        return zzd;
    }

    public static Bundle zzf(String str, @Nullable String str2, ArrayList arrayList, @Nullable String str3, @Nullable String str4, zza zzaVar, long j10) {
        boolean z10;
        Bundle bundle = new Bundle();
        zzc(bundle, str, str2, j10);
        bundle.putBoolean("enablePendingPurchases", true);
        bundle.putString("SKU_DETAILS_RESPONSE_FORMAT", "PRODUCT_DETAILS");
        bundle.putStringArrayList("PRODUCT_TYPES_TO_RETURN_MULTIPLE_OFFERS", new ArrayList<>(zzbt.zzm("subs", "inapp")));
        bundle.putStringArrayList("PRODUCT_TYPES_TO_RETURN_RENT_OFFERS", new ArrayList<>(zzbt.zzl("inapp")));
        bundle.putBoolean("SHOULD_RETURN_UNFETCHED_PRODUCTS", true);
        z10 = zzaVar.zza;
        if (z10) {
            bundle.putBoolean("enablePendingPurchaseForSubscriptions", true);
        }
        ArrayList<String> arrayList2 = new ArrayList<>();
        ArrayList<String> arrayList3 = new ArrayList<>();
        ArrayList<String> arrayList4 = new ArrayList<>();
        int size = arrayList.size();
        boolean z11 = false;
        boolean z12 = false;
        for (int i10 = 0; i10 < size; i10++) {
            arrayList2.add(null);
            z11 |= !TextUtils.isEmpty(null);
            arrayList4.add(null);
            z12 |= !TextUtils.isEmpty(null);
            if (((QueryProductDetailsParams.Product) arrayList.get(i10)).zzb().equals("first_party")) {
                zzbg.zzc(null, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products.");
                arrayList3.add(null);
            }
        }
        if (z11) {
            bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
        }
        if (!arrayList3.isEmpty()) {
            bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList3);
        }
        if (!TextUtils.isEmpty(null)) {
            bundle.putString("accountName", null);
        }
        if (z12) {
            bundle.putStringArrayList("SKU_DYNAMIC_PRODUCT_TOKEN_LIST", arrayList4);
        }
        return bundle;
    }

    public static Bundle zzg(String str, @Nullable String str2, long j10) {
        Bundle bundle = new Bundle();
        zzc(bundle, str, str2, j10);
        return bundle;
    }

    public static BillingResult zzh(Intent intent, String str) {
        if (intent == null) {
            zzn("BillingHelper", "Got null intent!");
            BillingResult.Builder newBuilder = BillingResult.newBuilder();
            newBuilder.setResponseCode(6);
            newBuilder.setDebugMessage("An internal error occurred.");
            return newBuilder.build();
        }
        BillingResult.Builder newBuilder2 = BillingResult.newBuilder();
        newBuilder2.setResponseCode(zzb(intent.getExtras(), str));
        newBuilder2.setDebugMessage(zzj(intent.getExtras(), str));
        return newBuilder2.build();
    }

    public static InAppMessageResult zzi(Bundle bundle, String str) {
        if (bundle == null) {
            return new InAppMessageResult(0, null);
        }
        return new InAppMessageResult(zzp(bundle, "BillingClient"), bundle.getString("IN_APP_MESSAGE_PURCHASE_TOKEN"));
    }

    public static String zzj(Bundle bundle, String str) {
        if (bundle == null) {
            zzn(str, "Unexpected null bundle received!");
            return "";
        }
        Object obj = bundle.get("DEBUG_MESSAGE");
        if (obj == null) {
            zzm(str, "getDebugMessageFromBundle() got null response code, assuming OK");
            return "";
        } else if (obj instanceof String) {
            return (String) obj;
        } else {
            zzn(str, "Unexpected type for debug message: ".concat(obj.getClass().getName()));
            return "";
        }
    }

    public static String zzk(int i10) {
        return zzb.zza(i10).toString();
    }

    @Nullable
    public static List zzl(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        ArrayList arrayList = new ArrayList();
        if (stringArrayList != null && stringArrayList2 != null) {
            int size = stringArrayList.size();
            zzm("BillingHelper", "Found purchase list of " + size + " items");
            for (int i10 = 0; i10 < stringArrayList.size() && i10 < stringArrayList2.size(); i10++) {
                Purchase zzq = zzq(stringArrayList.get(i10), stringArrayList2.get(i10));
                if (zzq != null) {
                    arrayList.add(zzq);
                }
            }
        } else {
            Purchase zzq2 = zzq(bundle.getString("INAPP_PURCHASE_DATA"), bundle.getString("INAPP_DATA_SIGNATURE"));
            if (zzq2 == null) {
                zzm("BillingHelper", "Couldn't find single purchase data as well.");
                return null;
            }
            arrayList.add(zzq2);
        }
        return arrayList;
    }

    public static void zzm(String str, String str2) {
        if (Log.isLoggable(str, 2)) {
            if (!str2.isEmpty()) {
                int i10 = TTVideoEngineInterface.GLOBAL_PLAYER_OPTION_MIN;
                while (!str2.isEmpty() && i10 > 0) {
                    int min = Math.min(str2.length(), Math.min(4000, i10));
                    Log.v(str, str2.substring(0, min));
                    str2 = str2.substring(min);
                    i10 -= min;
                }
                return;
            }
            Log.v(str, str2);
        }
    }

    public static void zzn(String str, String str2) {
        if (Log.isLoggable(str, 5)) {
            Log.w(str, str2);
        }
    }

    public static void zzo(String str, String str2, @Nullable Throwable th2) {
        try {
            if (!Log.isLoggable(str, 5)) {
                return;
            }
            if (th2 == null) {
                Log.w(str, str2);
            } else {
                Log.w(str, str2, th2);
            }
        } catch (Throwable unused) {
        }
    }

    private static int zzp(Bundle bundle, String str) {
        if (bundle == null) {
            zzn(str, "Unexpected null bundle received!");
            return 0;
        }
        return bundle.getInt("IN_APP_MESSAGE_RESPONSE_CODE", 0);
    }

    @Nullable
    private static Purchase zzq(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                return new Purchase(str, str2);
            } catch (JSONException e10) {
                zzn("BillingHelper", "Got JSONException while parsing purchase data: ".concat(e10.toString()));
                return null;
            }
        }
        zzm("BillingHelper", "Received a null purchase data.");
        return null;
    }
}
