package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcdb implements zzbkf {
    private boolean zza;

    private static int zzb(Context context, Map map, String str, int i10) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                com.google.android.gms.ads.internal.client.zzbb.zzb();
                i10 = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not parse " + str + " in a video GMSG: " + str2);
            }
        }
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("Parse pixels for " + str + ", got string " + str2 + ", int " + i10 + ".");
        }
        return i10;
    }

    private static void zzc(zzcbp zzcbpVar, Map map) {
        String str = (String) map.get("minBufferMs");
        String str2 = (String) map.get("maxBufferMs");
        String str3 = (String) map.get("bufferForPlaybackMs");
        String str4 = (String) map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = (String) map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzcbpVar.zzB(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                String format = String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2);
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj(format);
                return;
            }
        }
        if (str2 != null) {
            zzcbpVar.zzA(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzcbpVar.zzy(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzcbpVar.zzz(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzcbpVar.zzD(Integer.parseInt(str5));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:173:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x02e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzbkf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ void zza(java.lang.Object r21, java.util.Map r22) {
        /*
            Method dump skipped, instructions count: 1257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcdb.zza(java.lang.Object, java.util.Map):void");
    }
}
