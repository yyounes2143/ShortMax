package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdpw {
    private final Map zza = new HashMap();

    public final synchronized zzdpv zza(String str) {
        return (zzdpv) this.zza.get(str);
    }

    public final String zzb(String str) {
        zzbse zzbseVar;
        zzdpv zza = zza(str);
        if (zza != null && (zzbseVar = zza.zzb) != null) {
            return zzbseVar.toString();
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x001c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzc(java.lang.String r6, com.google.android.gms.internal.ads.zzfdu r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            java.util.Map r0 = r5.zza     // Catch: java.lang.Throwable -> L17
            boolean r0 = r0.containsKey(r6)     // Catch: java.lang.Throwable -> L17
            if (r0 == 0) goto Lb
            monitor-exit(r5)
            return
        Lb:
            com.google.android.gms.internal.ads.zzdpv r0 = new com.google.android.gms.internal.ads.zzdpv     // Catch: java.lang.Throwable -> L17
            r1 = 0
            if (r7 != 0) goto L12
        L10:
            r2 = r1
            goto L19
        L12:
            com.google.android.gms.internal.ads.zzbse r2 = r7.zze()     // Catch: com.google.android.gms.internal.ads.zzfdd -> L10 java.lang.Throwable -> L17
            goto L19
        L17:
            r6 = move-exception
            goto L46
        L19:
            if (r7 != 0) goto L1c
            goto L20
        L1c:
            com.google.android.gms.internal.ads.zzbse r1 = r7.zzf()     // Catch: java.lang.Throwable -> L17 com.google.android.gms.internal.ads.zzfdd -> L20
        L20:
            com.google.android.gms.internal.ads.zzbcv r3 = com.google.android.gms.internal.ads.zzbde.zzjM     // Catch: java.lang.Throwable -> L17
            com.google.android.gms.internal.ads.zzbdc r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L17
            java.lang.Object r3 = r4.zzb(r3)     // Catch: java.lang.Throwable -> L17
            java.lang.Boolean r3 = (java.lang.Boolean) r3     // Catch: java.lang.Throwable -> L17
            boolean r3 = r3.booleanValue()     // Catch: java.lang.Throwable -> L17
            r4 = 1
            if (r3 != 0) goto L34
            goto L3c
        L34:
            r3 = 0
            if (r7 != 0) goto L39
        L37:
            r4 = r3
            goto L3c
        L39:
            r7.zzC()     // Catch: java.lang.Throwable -> L17 com.google.android.gms.internal.ads.zzfdd -> L37
        L3c:
            r0.<init>(r6, r2, r1, r4)     // Catch: java.lang.Throwable -> L17
            java.util.Map r7 = r5.zza     // Catch: java.lang.Throwable -> L17
            r7.put(r6, r0)     // Catch: java.lang.Throwable -> L17
            monitor-exit(r5)
            return
        L46:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L17
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdpw.zzc(java.lang.String, com.google.android.gms.internal.ads.zzfdu):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzd(String str, zzbrp zzbrpVar) {
        if (this.zza.containsKey(str)) {
            return;
        }
        try {
            this.zza.put(str, new zzdpv(str, zzbrpVar.zzf(), zzbrpVar.zzg(), true));
        } catch (Throwable unused) {
        }
    }
}
