package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfht {
    public static void zza(com.google.common.util.concurrent.e eVar, zzfhu zzfhuVar, zzfhj zzfhjVar) {
        zzg(eVar, zzfhuVar, zzfhjVar, false);
    }

    public static void zzb(com.google.common.util.concurrent.e eVar, zzfhu zzfhuVar, zzfhj zzfhjVar) {
        zzg(eVar, zzfhuVar, zzfhjVar, true);
    }

    public static void zzc(com.google.common.util.concurrent.e eVar, zzfhu zzfhuVar, zzfhj zzfhjVar) {
        if (!((Boolean) zzbex.zzc.zze()).booleanValue()) {
            return;
        }
        zzgdn.zzr(zzgde.zzw(eVar), new zzfhs(zzfhuVar, zzfhjVar), zzcaf.zzg);
    }

    public static void zzd(com.google.common.util.concurrent.e eVar, zzfhj zzfhjVar) {
        if (!((Boolean) zzbex.zzc.zze()).booleanValue()) {
            return;
        }
        zzgdn.zzr(zzgde.zzw(eVar), new zzfhq(zzfhjVar), zzcaf.zzg);
    }

    public static boolean zze(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.matches((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzji), str);
    }

    public static int zzf(zzfcw zzfcwVar) {
        int zzg = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzg(zzfcwVar) - 1;
        if (zzg != 0 && zzg != 1) {
            return 23;
        }
        return 7;
    }

    private static void zzg(com.google.common.util.concurrent.e eVar, zzfhu zzfhuVar, zzfhj zzfhjVar, boolean z10) {
        if (!((Boolean) zzbex.zzc.zze()).booleanValue()) {
            return;
        }
        zzgdn.zzr(zzgde.zzw(eVar), new zzfhr(zzfhuVar, zzfhjVar, z10), zzcaf.zzg);
    }
}
