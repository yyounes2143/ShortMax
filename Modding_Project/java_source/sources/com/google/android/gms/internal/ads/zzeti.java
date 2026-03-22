package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeti implements zzeuc {
    public static final /* synthetic */ int zzb = 0;
    private static final zzetj zzc = new zzetj(new JSONArray().toString(), new Bundle());
    final String zza;
    private final zzgdy zzd;
    private final ScheduledExecutorService zze;
    private final zzeju zzf;
    private final Context zzg;
    private final zzfcw zzh;
    private final zzejq zzi;
    private final zzdpz zzj;
    private final zzdup zzk;
    private final int zzl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeti(zzgdy zzgdyVar, ScheduledExecutorService scheduledExecutorService, String str, zzeju zzejuVar, Context context, zzfcw zzfcwVar, zzejq zzejqVar, zzdpz zzdpzVar, zzdup zzdupVar, int i10) {
        this.zzd = zzgdyVar;
        this.zze = scheduledExecutorService;
        this.zza = str;
        this.zzf = zzejuVar;
        this.zzg = context;
        this.zzh = zzfcwVar;
        this.zzi = zzejqVar;
        this.zzj = zzdpzVar;
        this.zzk = zzdupVar;
        this.zzl = i10;
    }

    public static /* synthetic */ com.google.common.util.concurrent.e zzc(zzeti zzetiVar) {
        String str;
        final Bundle bundle;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlq)).booleanValue()) {
            str = zzetiVar.zzh.zzf.toLowerCase(Locale.ROOT);
        } else {
            str = zzetiVar.zzh.zzf;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbP)).booleanValue()) {
            bundle = zzetiVar.zzk.zzg();
        } else {
            bundle = new Bundle();
        }
        final ArrayList arrayList = new ArrayList();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbY)).booleanValue()) {
            zzeju zzejuVar = zzetiVar.zzf;
            for (Map.Entry entry : ((zzfyt) zzejuVar.zzb(zzetiVar.zza, str)).entrySet()) {
                String str2 = (String) entry.getKey();
                arrayList.add(zzetiVar.zzg(str2, (List) entry.getValue(), zzetiVar.zzf(str2), true, true));
            }
            zzetiVar.zzi(arrayList, zzejuVar.zzc());
        } else {
            zzetiVar.zzi(arrayList, zzetiVar.zzf.zza(zzetiVar.zza, str));
        }
        return zzgdn.zzb(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzetd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i10 = zzeti.zzb;
                JSONArray jSONArray = new JSONArray();
                for (com.google.common.util.concurrent.e eVar : arrayList) {
                    if (((JSONObject) eVar.get()) != null) {
                        jSONArray.put(eVar.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new zzetj(jSONArray.toString(), bundle);
            }
        }, zzetiVar.zzd);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:1|(2:3|(3:5|(2:7|(1:9)(1:12))(3:13|(1:15)|(2:17|(1:19)(1:20))(1:21))|10))|22|23|(0)(0)|10) */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x002c, code lost:
        com.google.android.gms.ads.internal.util.zze.zzb("Couldn't create RTB adapter : ", r13);
        r13 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        r13 = move-exception;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ com.google.common.util.concurrent.e zzd(final com.google.android.gms.internal.ads.zzeti r8, java.lang.String r9, final java.util.List r10, final android.os.Bundle r11, boolean r12, boolean r13) {
        /*
            com.google.android.gms.internal.ads.zzcak r7 = new com.google.android.gms.internal.ads.zzcak
            r7.<init>()
            r0 = 0
            if (r13 == 0) goto L24
            com.google.android.gms.internal.ads.zzbcv r13 = com.google.android.gms.internal.ads.zzbde.zzbQ
            com.google.android.gms.internal.ads.zzbdc r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r13 = r1.zzb(r13)
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            if (r13 != 0) goto L24
            com.google.android.gms.internal.ads.zzejq r13 = r8.zzi
            r13.zzb(r9)
            com.google.android.gms.internal.ads.zzbrp r13 = r13.zza(r9)
            goto L32
        L24:
            com.google.android.gms.internal.ads.zzdpz r13 = r8.zzj     // Catch: android.os.RemoteException -> L2b
            com.google.android.gms.internal.ads.zzbrp r13 = r13.zzb(r9)     // Catch: android.os.RemoteException -> L2b
            goto L32
        L2b:
            r13 = move-exception
            java.lang.String r1 = "Couldn't create RTB adapter : "
            com.google.android.gms.ads.internal.util.zze.zzb(r1, r13)
            r13 = r0
        L32:
            if (r13 != 0) goto L4c
            com.google.android.gms.internal.ads.zzbcv r8 = com.google.android.gms.internal.ads.zzbde.zzbG
            com.google.android.gms.internal.ads.zzbdc r10 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r8 = r10.zzb(r8)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L4b
            com.google.android.gms.internal.ads.zzejx.zzb(r9, r7)
            goto Lb8
        L4b:
            throw r0
        L4c:
            com.google.android.gms.internal.ads.zzejx r6 = new com.google.android.gms.internal.ads.zzejx
            com.google.android.gms.common.util.Clock r0 = com.google.android.gms.ads.internal.zzv.zzD()
            long r4 = r0.elapsedRealtime()
            r0 = r6
            r1 = r9
            r2 = r13
            r3 = r7
            r0.<init>(r1, r2, r3, r4)
            com.google.android.gms.internal.ads.zzbcv r9 = com.google.android.gms.internal.ads.zzbde.zzbL
            com.google.android.gms.internal.ads.zzbdc r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r9 = r0.zzb(r9)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L8b
            java.util.concurrent.ScheduledExecutorService r9 = r8.zze
            com.google.android.gms.internal.ads.zzeth r0 = new com.google.android.gms.internal.ads.zzeth
            r0.<init>()
            com.google.android.gms.internal.ads.zzbcv r1 = com.google.android.gms.internal.ads.zzbde.zzbE
            com.google.android.gms.internal.ads.zzbdc r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.zzb(r1)
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS
            r9.schedule(r0, r1, r3)
        L8b:
            if (r12 == 0) goto Lb5
            com.google.android.gms.internal.ads.zzbcv r9 = com.google.android.gms.internal.ads.zzbde.zzbS
            com.google.android.gms.internal.ads.zzbdc r12 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r9 = r12.zzb(r9)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto Lb1
            com.google.android.gms.internal.ads.zzgdy r9 = r8.zzd
            com.google.android.gms.internal.ads.zzete r12 = new com.google.android.gms.internal.ads.zzete
            r0 = r12
            r1 = r8
            r2 = r13
            r3 = r11
            r4 = r10
            r5 = r6
            r6 = r7
            r0.<init>()
            r9.zza(r12)
            goto Lb8
        Lb1:
            r8.zzh(r13, r11, r10, r6)
            goto Lb8
        Lb5:
            r6.zzd()
        Lb8:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeti.zzd(com.google.android.gms.internal.ads.zzeti, java.lang.String, java.util.List, android.os.Bundle, boolean, boolean):com.google.common.util.concurrent.e");
    }

    public static /* synthetic */ void zze(zzeti zzetiVar, zzbrp zzbrpVar, Bundle bundle, List list, zzejx zzejxVar, zzcak zzcakVar) {
        try {
            zzetiVar.zzh(zzbrpVar, bundle, list, zzejxVar);
        } catch (RemoteException e10) {
            zzcakVar.zzd(e10);
        }
    }

    @Nullable
    private final Bundle zzf(String str) {
        Bundle bundle = this.zzh.zzd.zzm;
        if (bundle != null) {
            return bundle.getBundle(str);
        }
        return null;
    }

    private final zzgde zzg(final String str, final List list, final Bundle bundle, final boolean z10, final boolean z11) {
        zzgct zzgctVar = new zzgct() { // from class: com.google.android.gms.internal.ads.zzetf
            @Override // com.google.android.gms.internal.ads.zzgct
            public final com.google.common.util.concurrent.e zza() {
                return zzeti.zzd(zzeti.this, str, list, bundle, z10, z11);
            }
        };
        zzgdy zzgdyVar = this.zzd;
        zzgde zzw = zzgde.zzw(zzgdn.zzk(zzgctVar, zzgdyVar));
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbL)).booleanValue()) {
            zzw = (zzgde) zzgdn.zzo(zzw, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbE)).longValue(), TimeUnit.MILLISECONDS, this.zze);
        }
        return (zzgde) zzgdn.zze(zzw, Throwable.class, new zzfve() { // from class: com.google.android.gms.internal.ads.zzetg
            @Override // com.google.android.gms.internal.ads.zzfve
            public final Object apply(Object obj) {
                Throwable th2 = (Throwable) obj;
                int i10 = zzeti.zzb;
                int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                String str2 = str;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Error calling adapter: ".concat(String.valueOf(str2)));
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznu)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzv(th2, "rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(str2)));
                    return null;
                }
                com.google.android.gms.ads.internal.zzv.zzp().zzw(th2, "rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(str2)));
                return null;
            }
        }, zzgdyVar);
    }

    private final void zzh(zzbrp zzbrpVar, Bundle bundle, @NonNull List list, zzejx zzejxVar) throws RemoteException {
        zzbrpVar.zzh(ObjectWrapper.wrap(this.zzg), this.zza, bundle, (Bundle) list.get(0), this.zzh.zze, zzejxVar);
    }

    private final void zzi(List list, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            zzejy zzejyVar = (zzejy) entry.getValue();
            String str = zzejyVar.zza;
            list.add(zzg(str, Collections.singletonList(zzejyVar.zze), zzf(str), zzejyVar.zzb, zzejyVar.zzc));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 32;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        if (this.zzl == 2) {
            return zzgdn.zzh(zzc);
        }
        zzfcw zzfcwVar = this.zzh;
        if (zzfcwVar.zzr) {
            if (!Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbR)).split(",")).contains(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzfcwVar.zzd)))) {
                return zzgdn.zzh(zzc);
            }
        }
        return zzgdn.zzk(new zzgct() { // from class: com.google.android.gms.internal.ads.zzetc
            @Override // com.google.android.gms.internal.ads.zzgct
            public final com.google.common.util.concurrent.e zza() {
                return zzeti.zzc(zzeti.this);
            }
        }, this.zzd);
    }
}
