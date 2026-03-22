package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbyq {
    @VisibleForTesting
    static Uri zza(String str, String str2, String str3) {
        int indexOf = str.indexOf("&adurl");
        if (indexOf == -1) {
            indexOf = str.indexOf("?adurl");
        }
        if (indexOf != -1) {
            int i10 = indexOf + 1;
            return Uri.parse(str.substring(0, i10) + str2 + ContainerUtils.KEY_VALUE_DELIMITER + str3 + ContainerUtils.FIELD_DELIMITER + str.substring(i10));
        }
        return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
    }

    public static String zzb(Uri uri, Context context, Map map) {
        if (!com.google.android.gms.ads.internal.zzv.zzo().zzp(context)) {
            return uri.toString();
        }
        String zzb = com.google.android.gms.ads.internal.zzv.zzo().zzb(context);
        if (zzb == null) {
            return uri.toString();
        }
        String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzay);
        String uri2 = uri.toString();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzax)).booleanValue() && uri2.contains(str)) {
            com.google.android.gms.ads.internal.zzv.zzo().zzj(context, zzb, (Map) map.get("_ac"));
            return zzd(uri2, context).replace(str, zzb);
        } else if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaw)).booleanValue()) {
                String uri3 = zza(zzd(uri2, context), "fbs_aeid", zzb).toString();
                com.google.android.gms.ads.internal.zzv.zzo().zzj(context, zzb, (Map) map.get("_ac"));
                return uri3;
            }
            return uri2;
        } else {
            return uri2;
        }
    }

    public static String zzc(String str, Context context, boolean z10, Map map) {
        String zzb;
        if ((!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaF)).booleanValue() || z10) && com.google.android.gms.ads.internal.zzv.zzo().zzp(context) && !TextUtils.isEmpty(str) && (zzb = com.google.android.gms.ads.internal.zzv.zzo().zzb(context)) != null) {
            String str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzay);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzax)).booleanValue() && str.contains(str2)) {
                if (com.google.android.gms.ads.internal.zzv.zzr().zzj(str)) {
                    com.google.android.gms.ads.internal.zzv.zzo().zzj(context, zzb, (Map) map.get("_ac"));
                    return zzd(str, context).replace(str2, zzb);
                } else if (com.google.android.gms.ads.internal.zzv.zzr().zzk(str)) {
                    com.google.android.gms.ads.internal.zzv.zzo().zzk(context, zzb, (Map) map.get("_ai"));
                    return zzd(str, context).replace(str2, zzb);
                } else {
                    return str;
                }
            } else if (!str.contains("fbs_aeid")) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaw)).booleanValue()) {
                    if (com.google.android.gms.ads.internal.zzv.zzr().zzj(str)) {
                        com.google.android.gms.ads.internal.zzv.zzo().zzj(context, zzb, (Map) map.get("_ac"));
                        return zza(zzd(str, context), "fbs_aeid", zzb).toString();
                    } else if (com.google.android.gms.ads.internal.zzv.zzr().zzk(str)) {
                        com.google.android.gms.ads.internal.zzv.zzo().zzk(context, zzb, (Map) map.get("_ai"));
                        return zza(zzd(str, context), "fbs_aeid", zzb).toString();
                    } else {
                        return str;
                    }
                }
                return str;
            } else {
                return str;
            }
        }
        return str;
    }

    private static String zzd(String str, Context context) {
        String zze = com.google.android.gms.ads.internal.zzv.zzo().zze(context);
        String zzc = com.google.android.gms.ads.internal.zzv.zzo().zzc(context);
        if (!str.contains("gmp_app_id") && !TextUtils.isEmpty(zze)) {
            str = zza(str, "gmp_app_id", zze).toString();
        }
        if (!str.contains("fbs_aiid") && !TextUtils.isEmpty(zzc)) {
            return zza(str, "fbs_aiid", zzc).toString();
        }
        return str;
    }
}
