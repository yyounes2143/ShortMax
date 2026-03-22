package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzdsj;
import com.huawei.hms.support.api.entity.common.CommonConstant;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zza {
    public static final boolean zza(Context context, Intent intent, zzad zzadVar, @Nullable zzaa zzaaVar, boolean z10, @Nullable zzdsj zzdsjVar, String str) {
        if (z10) {
            return zzc(context, intent.getData(), zzadVar, zzaaVar);
        }
        try {
            String uri = intent.toURI();
            com.google.android.gms.ads.internal.util.zze.zza("Launching an intent: " + uri);
            if (((Boolean) zzbd.zzc().zzb(zzbde.zznx)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzr();
                com.google.android.gms.ads.internal.util.zzs.zzY(context, intent, zzdsjVar, str);
            } else {
                com.google.android.gms.ads.internal.zzv.zzr();
                com.google.android.gms.ads.internal.util.zzs.zzU(context, intent);
            }
            if (zzadVar != null) {
                zzadVar.zzg();
            }
            if (zzaaVar != null) {
                zzaaVar.zza(true);
            }
            return true;
        } catch (ActivityNotFoundException e10) {
            String message = e10.getMessage();
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(message);
            if (zzaaVar != null) {
                zzaaVar.zza(false);
            }
            return false;
        }
    }

    public static final boolean zzb(Context context, @Nullable zzc zzcVar, zzad zzadVar, @Nullable zzaa zzaaVar, @Nullable zzdsj zzdsjVar, String str) {
        int i10 = 0;
        if (zzcVar == null) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("No intent data for launcher overlay.");
            return false;
        }
        zzbde.zza(context);
        Intent intent = zzcVar.zzh;
        if (intent != null) {
            return zza(context, intent, zzadVar, zzaaVar, zzcVar.zzj, zzdsjVar, str);
        }
        Intent intent2 = new Intent();
        String str2 = zzcVar.zzb;
        if (TextUtils.isEmpty(str2)) {
            int i12 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Open GMSG did not contain a URL.");
            return false;
        }
        String str3 = zzcVar.zzc;
        if (!TextUtils.isEmpty(str3)) {
            intent2.setDataAndType(Uri.parse(str2), str3);
        } else {
            intent2.setData(Uri.parse(str2));
        }
        intent2.setAction(CommonConstant.ACTION.HWID_SCHEME_URL);
        String str4 = zzcVar.zzd;
        if (!TextUtils.isEmpty(str4)) {
            intent2.setPackage(str4);
        }
        String str5 = zzcVar.zze;
        if (!TextUtils.isEmpty(str5)) {
            String[] split = str5.split(DomExceptionUtils.SEPARATOR, 2);
            if (split.length < 2) {
                int i13 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not parse component name from open GMSG: ".concat(str5));
                return false;
            }
            intent2.setClassName(split[0], split[1]);
        }
        String str6 = zzcVar.zzf;
        if (!TextUtils.isEmpty(str6)) {
            try {
                i10 = Integer.parseInt(str6);
            } catch (NumberFormatException unused) {
                int i14 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not parse intent flags.");
            }
            intent2.addFlags(i10);
        }
        if (((Boolean) zzbd.zzc().zzb(zzbde.zzeQ)).booleanValue()) {
            intent2.addFlags(268435456);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) zzbd.zzc().zzb(zzbde.zzeP)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzr();
                com.google.android.gms.ads.internal.util.zzs.zzp(context, intent2);
            }
        }
        return zza(context, intent2, zzadVar, zzaaVar, zzcVar.zzj, zzdsjVar, str);
    }

    private static final boolean zzc(Context context, Uri uri, zzad zzadVar, zzaa zzaaVar) {
        int i10;
        try {
            i10 = com.google.android.gms.ads.internal.zzv.zzr().zzn(context, uri);
            if (zzadVar != null) {
                zzadVar.zzg();
            }
        } catch (ActivityNotFoundException e10) {
            String message = e10.getMessage();
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(message);
            i10 = 6;
        }
        if (zzaaVar != null) {
            zzaaVar.zzb(i10);
        }
        if (i10 != 5) {
            return false;
        }
        return true;
    }
}
