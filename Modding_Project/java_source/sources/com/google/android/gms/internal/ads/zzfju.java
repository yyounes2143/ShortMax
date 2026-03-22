package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Clock;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfju {
    private final zzehb zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final Context zze;
    private final zzfco zzf;
    private final zzfcp zzg;
    private final Clock zzh;
    private final zzavu zzi;

    public zzfju(zzehb zzehbVar, VersionInfoParcel versionInfoParcel, String str, String str2, Context context, @Nullable zzfco zzfcoVar, @Nullable zzfcp zzfcpVar, Clock clock, zzavu zzavuVar) {
        this.zza = zzehbVar;
        this.zzb = versionInfoParcel.afmaVersion;
        this.zzc = str;
        this.zzd = str2;
        this.zze = context;
        this.zzf = zzfcoVar;
        this.zzg = zzfcpVar;
        this.zzh = clock;
        this.zzi = zzavuVar;
    }

    public static String zzc(String str, String str2, @Nullable String str3) {
        if (true == TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static String zzg(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (com.google.android.gms.ads.internal.util.client.zzl.zzk()) {
            return "fakeForAdDebugLog";
        }
        return str;
    }

    public final List zzd(zzfcn zzfcnVar, @Nullable zzfca zzfcaVar, List list) {
        return zze(zzfcnVar, zzfcaVar, false, "", "", list, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x010c, code lost:
        if (r4 == false) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zze(com.google.android.gms.internal.ads.zzfcn r16, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzfca r17, boolean r18, @androidx.annotation.Nullable java.lang.String r19, @androidx.annotation.Nullable java.lang.String r20, java.util.List r21, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzcuu r22) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfju.zze(com.google.android.gms.internal.ads.zzfcn, com.google.android.gms.internal.ads.zzfca, boolean, java.lang.String, java.lang.String, java.util.List, com.google.android.gms.internal.ads.zzcuu):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0066 A[LOOP:0: B:13:0x0060->B:15:0x0066, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zzf(com.google.android.gms.internal.ads.zzfca r11, java.util.List r12, com.google.android.gms.internal.ads.zzbwc r13) {
        /*
            r10 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.google.android.gms.common.util.Clock r1 = r10.zzh
            long r1 = r1.currentTimeMillis()
            java.lang.String r3 = r13.zzc()     // Catch: android.os.RemoteException -> Lb1
            int r13 = r13.zzb()     // Catch: android.os.RemoteException -> Lb1
            java.lang.String r13 = java.lang.Integer.toString(r13)     // Catch: android.os.RemoteException -> Lb1
            com.google.android.gms.internal.ads.zzbcv r4 = com.google.android.gms.internal.ads.zzbde.zzdP
            com.google.android.gms.internal.ads.zzbdc r5 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r5.zzb(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L39
            com.google.android.gms.internal.ads.zzfcp r4 = r10.zzg
            if (r4 != 0) goto L32
            com.google.android.gms.internal.ads.zzfvn r4 = com.google.android.gms.internal.ads.zzfvn.zzc()
            goto L3c
        L32:
            com.google.android.gms.internal.ads.zzfco r4 = r4.zza
        L34:
            com.google.android.gms.internal.ads.zzfvn r4 = com.google.android.gms.internal.ads.zzfvn.zzd(r4)
            goto L3c
        L39:
            com.google.android.gms.internal.ads.zzfco r4 = r10.zzf
            goto L34
        L3c:
            com.google.android.gms.internal.ads.zzfjs r5 = new com.google.android.gms.internal.ads.zzfjs
            r5.<init>()
            com.google.android.gms.internal.ads.zzfvn r5 = r4.zza(r5)
            java.lang.String r6 = ""
            java.lang.Object r5 = r5.zzb(r6)
            java.lang.String r5 = (java.lang.String) r5
            com.google.android.gms.internal.ads.zzfjt r7 = new com.google.android.gms.internal.ads.zzfjt
            r7.<init>()
            com.google.android.gms.internal.ads.zzfvn r4 = r4.zza(r7)
            java.lang.Object r4 = r4.zzb(r6)
            java.lang.String r4 = (java.lang.String) r4
            java.util.Iterator r12 = r12.iterator()
        L60:
            boolean r6 = r12.hasNext()
            if (r6 == 0) goto Lb0
            java.lang.Object r6 = r12.next()
            java.lang.String r6 = (java.lang.String) r6
            java.lang.String r7 = android.net.Uri.encode(r5)
            java.lang.String r8 = "@gw_rwd_userid@"
            java.lang.String r6 = zzc(r6, r8, r7)
            java.lang.String r7 = android.net.Uri.encode(r4)
            java.lang.String r8 = "@gw_rwd_custom_data@"
            java.lang.String r6 = zzc(r6, r8, r7)
            java.lang.String r7 = java.lang.Long.toString(r1)
            java.lang.String r8 = "@gw_tmstmp@"
            java.lang.String r6 = zzc(r6, r8, r7)
            java.lang.String r7 = android.net.Uri.encode(r3)
            java.lang.String r8 = "@gw_rwd_itm@"
            java.lang.String r6 = zzc(r6, r8, r7)
            java.lang.String r7 = "@gw_rwd_amt@"
            java.lang.String r6 = zzc(r6, r7, r13)
            java.lang.String r7 = r10.zzb
            java.lang.String r8 = "@gw_sdkver@"
            java.lang.String r6 = zzc(r6, r8, r7)
            android.content.Context r7 = r10.zze
            boolean r8 = r11.zzW
            java.util.Map r9 = r11.zzaw
            java.lang.String r6 = com.google.android.gms.internal.ads.zzbyq.zzc(r6, r7, r8, r9)
            r0.add(r6)
            goto L60
        Lb0:
            return r0
        Lb1:
            r11 = move-exception
            int r12 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r12 = "Unable to determine award type and amount."
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r12, r11)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfju.zzf(com.google.android.gms.internal.ads.zzfca, java.util.List, com.google.android.gms.internal.ads.zzbwc):java.util.List");
    }
}
