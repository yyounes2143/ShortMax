package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import java.util.Map;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbiy implements zzbkf {
    private static final Pattern zza = Pattern.compile("^[a-zA-Z]([a-zA-Z0-9]|:|-|_)*$");
    private static final Pattern zzb = Pattern.compile("^[0-9]*(,[0-9]*)*$");

    @Override // com.google.android.gms.internal.ads.zzbkf
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcfg zzcfgVar = (zzcfg) obj;
        String str = (String) map.get(TextureRenderKeys.KEY_IS_ACTION);
        if ("tick".equals(str)) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get("timestamp");
            if (TextUtils.isEmpty(str2)) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("No label given for CSI tick.");
                return;
            }
            zzbcv zzbcvVar = zzbde.zzcm;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).booleanValue() && !zza.matcher(str2).matches()) {
                int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zze("Invalid label given for CSI tick. Should start with a letter and only alphanumerics, :, -, _ are allowed.");
            } else if (TextUtils.isEmpty(str4)) {
                int i12 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("No timestamp given for CSI tick.");
            } else {
                try {
                    long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() + (Long.parseLong(str4) - com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
                    if (true == TextUtils.isEmpty(str3)) {
                        str3 = "native:view_load";
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcvVar)).booleanValue() && !zza.matcher(str3).matches()) {
                        int i13 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zze("Invalid start label given for CSI tick. Should start with a letter and only alphanumerics, :, -, _ are allowed.");
                        return;
                    }
                    zzcfgVar.zzl().zzc(str2, str3, elapsedRealtime);
                } catch (NumberFormatException e10) {
                    int i14 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzk("Malformed timestamp for CSI tick.", e10);
                }
            }
        } else if ("experiment".equals(str)) {
            String str5 = (String) map.get(AppMeasurementSdk.ConditionalUserProperty.VALUE);
            if (TextUtils.isEmpty(str5)) {
                int i15 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("No value given for CSI experiment.");
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcm)).booleanValue() && !zzb.matcher(str5).matches()) {
                int i16 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zze("Invalid value given for CSI experiment. Should be a comma separated list of numbers.");
                return;
            }
            zzcfgVar.zzl().zza().zzd("e", str5);
        } else if (GearStrategyConsts.EV_EXTRA_INFO.equals(str)) {
            String str6 = (String) map.get("name");
            String str7 = (String) map.get(AppMeasurementSdk.ConditionalUserProperty.VALUE);
            if (TextUtils.isEmpty(str7)) {
                int i17 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("No value given for CSI extra.");
            } else if (TextUtils.isEmpty(str6)) {
                int i18 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("No name given for CSI extra.");
            } else {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcm)).booleanValue() && !zza.matcher(str6).matches()) {
                    int i19 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("Invalid name given for CSI extra. Should start with a letter and only alphanumerics, :, -, _ are allowed.");
                    return;
                }
                zzcfgVar.zzl().zza().zzd(str6, str7);
            }
        }
    }
}
