package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.collection.SieveCacheKt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzrb;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes5.dex */
final class zzit implements Callable {
    final /* synthetic */ zzbg zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzjd zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzit(zzjd zzjdVar, zzbg zzbgVar, String str) {
        this.zza = zzbgVar;
        this.zzb = str;
        Objects.requireNonNull(zzjdVar);
        this.zzc = zzjdVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzlp zzlpVar;
        byte[] bArr;
        zzpg zzpgVar;
        zzpn zzpnVar;
        zzpg zzpgVar2;
        zzh zzhVar;
        com.google.android.gms.internal.measurement.zzhz zzhzVar;
        Bundle bundle;
        String str;
        zzic zzicVar;
        com.google.android.gms.internal.measurement.zzic zzicVar2;
        String str2;
        Object obj;
        zzbc zza;
        long j10;
        zzav zzj;
        zzjd zzjdVar = this.zzc;
        zzjdVar.zzL().zzZ();
        zzlp zzn = zzjdVar.zzL().zzn();
        zzn.zzg();
        zzic zzicVar3 = zzn.zzu;
        zzic.zzL();
        zzbg zzbgVar = this.zza;
        Preconditions.checkNotNull(zzbgVar);
        String str3 = this.zzb;
        Preconditions.checkNotEmpty(str3);
        String str4 = zzbgVar.zza;
        if (!"_iap".equals(str4) && !"_iapx".equals(str4)) {
            zzn.zzu.zzaV().zzj().zzc("Generating a payload for this event is not available. package_name, event_name", str3, str4);
            return null;
        }
        zzpg zzpgVar3 = zzn.zzg;
        com.google.android.gms.internal.measurement.zzhz zzh = com.google.android.gms.internal.measurement.zzib.zzh();
        zzpgVar3.zzj().zzb();
        try {
            zzh zzu = zzpgVar3.zzj().zzu(str3);
            if (zzu == null) {
                zzn.zzu.zzaV().zzj().zzb("Log and bundle not available. package_name", str3);
                bArr = new byte[0];
            } else if (!zzu.zzD()) {
                zzn.zzu.zzaV().zzj().zzb("Log and bundle disabled. package_name", str3);
                bArr = new byte[0];
            } else {
                com.google.android.gms.internal.measurement.zzic zzaE = com.google.android.gms.internal.measurement.zzid.zzaE();
                zzaE.zza(1);
                zzaE.zzC("android");
                if (!TextUtils.isEmpty(zzu.zzc())) {
                    zzaE.zzL(zzu.zzc());
                }
                if (!TextUtils.isEmpty(zzu.zzv())) {
                    zzaE.zzJ((String) Preconditions.checkNotNull(zzu.zzv()));
                }
                if (!TextUtils.isEmpty(zzu.zzr())) {
                    zzaE.zzM((String) Preconditions.checkNotNull(zzu.zzr()));
                }
                if (zzu.zzt() != SieveCacheKt.NodeMetaAndPreviousMask) {
                    zzaE.zzaj((int) zzu.zzt());
                }
                zzaE.zzN(zzu.zzx());
                zzaE.zzar(zzu.zzB());
                String zzf = zzu.zzf();
                if (!TextUtils.isEmpty(zzf)) {
                    zzaE.zzad(zzf);
                }
                zzaE.zzay(zzu.zzak());
                zzjl zzB = zzn.zzg.zzB(str3);
                zzaE.zzY(zzu.zzz());
                if (zzicVar3.zzB() && zzn.zzu.zzc().zzC(zzaE.zzK()) && zzB.zzo(zzjk.AD_STORAGE) && !TextUtils.isEmpty(null)) {
                    zzaE.zzam(null);
                }
                zzaE.zzat(zzB.zzk());
                if (zzB.zzo(zzjk.AD_STORAGE) && zzu.zzac()) {
                    Pair zzc = zzpgVar3.zzq().zzc(zzu.zzc(), zzB);
                    if (zzu.zzac() && !TextUtils.isEmpty((CharSequence) zzc.first)) {
                        try {
                            zzaE.zzQ(zzlp.zzc((String) zzc.first, Long.toString(zzbgVar.zzd)));
                            Object obj2 = zzc.second;
                            if (obj2 != null) {
                                zzaE.zzT(((Boolean) obj2).booleanValue());
                            }
                        } catch (SecurityException e10) {
                            zzn.zzu.zzaV().zzj().zzb("Resettable device id encryption failed", e10.getMessage());
                            bArr = new byte[0];
                            zzpgVar = zzn.zzg;
                            zzj = zzpgVar.zzj();
                            zzj.zzd();
                            return bArr;
                        }
                    }
                }
                zzic zzicVar4 = zzn.zzu;
                zzicVar4.zzu().zzw();
                zzaE.zzF(Build.MODEL);
                zzicVar4.zzu().zzw();
                zzaE.zzE(Build.VERSION.RELEASE);
                zzaE.zzI((int) zzicVar4.zzu().zzb());
                zzaE.zzH(zzicVar4.zzu().zzc());
                try {
                    try {
                        if (zzB.zzo(zzjk.ANALYTICS_STORAGE) && zzu.zzd() != null) {
                            zzaE.zzW(zzlp.zzc((String) Preconditions.checkNotNull(zzu.zzd()), Long.toString(zzbgVar.zzd)));
                        }
                        if (!TextUtils.isEmpty(zzu.zzl())) {
                            zzaE.zzah((String) Preconditions.checkNotNull(zzu.zzl()));
                        }
                        String zzc2 = zzu.zzc();
                        zzpg zzpgVar4 = zzn.zzg;
                        List zzn2 = zzpgVar4.zzj().zzn(zzc2);
                        Iterator it = zzn2.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                zzpnVar = (zzpn) it.next();
                                if ("_lte".equals(zzpnVar.zzc)) {
                                    break;
                                }
                            } else {
                                zzpnVar = null;
                                break;
                            }
                        }
                        if (zzpnVar == null || zzpnVar.zze == null) {
                            zzpn zzpnVar2 = new zzpn(zzc2, "auto", "_lte", zzn.zzu.zzaZ().currentTimeMillis(), 0L);
                            zzn2.add(zzpnVar2);
                            zzpgVar4.zzj().zzl(zzpnVar2);
                        }
                        com.google.android.gms.internal.measurement.zziu[] zziuVarArr = new com.google.android.gms.internal.measurement.zziu[zzn2.size()];
                        for (int i10 = 0; i10 < zzn2.size(); i10++) {
                            com.google.android.gms.internal.measurement.zzit zzm = com.google.android.gms.internal.measurement.zziu.zzm();
                            zzm.zzb(((zzpn) zzn2.get(i10)).zzc);
                            zzm.zza(((zzpn) zzn2.get(i10)).zzd);
                            zzpgVar4.zzp().zzc(zzm, ((zzpn) zzn2.get(i10)).zze);
                            zziuVarArr[i10] = (com.google.android.gms.internal.measurement.zziu) zzm.zzbc();
                        }
                        zzaE.zzq(Arrays.asList(zziuVarArr));
                        zzpg zzpgVar5 = zzn.zzg;
                        zzpgVar5.zzI(zzu, zzaE);
                        zzpgVar5.zzJ(zzu, zzaE);
                        zzgv zza2 = zzgv.zza(zzbgVar);
                        zzic zzicVar5 = zzn.zzu;
                        zzpp zzk = zzicVar5.zzk();
                        Bundle bundle2 = zza2.zzd;
                        zzk.zzI(bundle2, zzpgVar4.zzj().zzU(str3));
                        zzicVar5.zzk().zzG(zza2, zzicVar5.zzc().zzd(str3));
                        try {
                            bundle2.putLong("_c", 1L);
                            zzicVar5.zzaV().zzj().zza("Marking in-app purchase as real-time");
                            bundle2.putLong("_r", 1L);
                            String str5 = zzbgVar.zzc;
                            bundle2.putString("_o", str5);
                            if (zzicVar5.zzk().zzaa(zzaE.zzK(), zzu.zzay())) {
                                zzicVar5.zzk().zzM(bundle2, "_dbg", 1L);
                                zzicVar5.zzk().zzM(bundle2, "_r", 1L);
                            }
                            zzav zzj2 = zzpgVar4.zzj();
                            String str6 = zzbgVar.zza;
                            zzbc zzf2 = zzj2.zzf(str3, str6);
                            if (zzf2 == null) {
                                bundle = bundle2;
                                str = str5;
                                zzicVar = zzicVar5;
                                zzicVar2 = zzaE;
                                zzpgVar2 = zzpgVar4;
                                zzhzVar = zzh;
                                str2 = str3;
                                zzhVar = zzu;
                                obj = null;
                                zza = new zzbc(str3, str6, 0L, 0L, 0L, zzbgVar.zzd, 0L, null, null, null, null);
                                j10 = 0;
                            } else {
                                zzpgVar2 = zzpgVar4;
                                zzhVar = zzu;
                                zzhzVar = zzh;
                                bundle = bundle2;
                                str = str5;
                                zzicVar = zzicVar5;
                                zzicVar2 = zzaE;
                                str2 = str3;
                                obj = null;
                                long j11 = zzf2.zzf;
                                zza = zzf2.zza(zzbgVar.zzd);
                                j10 = j11;
                            }
                            zzpgVar2.zzj().zzh(zza);
                            try {
                                zzbb zzbbVar = new zzbb(zzn.zzu, str, str2, str6, zzbgVar.zzd, j10, bundle);
                                com.google.android.gms.internal.measurement.zzhr zzk2 = com.google.android.gms.internal.measurement.zzhs.zzk();
                                zzk2.zzo(zzbbVar.zzd);
                                zzk2.zzl(zzbbVar.zzb);
                                zzk2.zzq(zzbbVar.zze);
                                zzbe zzbeVar = zzbbVar.zzf;
                                zzbd zzbdVar = new zzbd(zzbeVar);
                                while (zzbdVar.hasNext()) {
                                    String next = zzbdVar.next();
                                    com.google.android.gms.internal.measurement.zzhv zzn3 = com.google.android.gms.internal.measurement.zzhw.zzn();
                                    zzn3.zzb(next);
                                    Object zza3 = zzbeVar.zza(next);
                                    if (zza3 != null) {
                                        zzpgVar2.zzp().zzd(zzn3, zza3);
                                        zzk2.zzg(zzn3);
                                    }
                                }
                                zzicVar2.zzg(zzk2);
                                com.google.android.gms.internal.measurement.zzie zza4 = com.google.android.gms.internal.measurement.zzig.zza();
                                com.google.android.gms.internal.measurement.zzht zza5 = com.google.android.gms.internal.measurement.zzhu.zza();
                                zza5.zzb(zza.zzc);
                                zza5.zza(str6);
                                zza4.zza(zza5);
                                zzicVar2.zzap(zza4);
                                zzicVar2.zzaf(zzpgVar2.zzm().zzb(zzhVar.zzc(), Collections.emptyList(), zzicVar2.zzk(), Long.valueOf(zzk2.zzn()), Long.valueOf(zzk2.zzn()), false));
                                if (zzk2.zzm()) {
                                    zzicVar2.zzv(zzk2.zzn());
                                    zzicVar2.zzx(zzk2.zzn());
                                }
                                long zzp = zzhVar.zzp();
                                int i11 = (zzp > 0L ? 1 : (zzp == 0L ? 0 : -1));
                                if (i11 != 0) {
                                    zzicVar2.zzA(zzp);
                                }
                                long zzn4 = zzhVar.zzn();
                                if (zzn4 != 0) {
                                    zzicVar2.zzy(zzn4);
                                } else if (i11 != 0) {
                                    zzicVar2.zzy(zzp);
                                }
                                String zzh2 = zzhVar.zzh();
                                zzrb.zza();
                                String str7 = str2;
                                if (zzicVar.zzc().zzp(str7, zzfy.zzaM) && zzh2 != null) {
                                    zzicVar2.zzau(zzh2);
                                }
                                zzhVar.zzL();
                                zzicVar2.zzZ((int) zzhVar.zzG());
                                zzicVar.zzc().zzi();
                                zzicVar2.zzO(133005L);
                                zzicVar2.zzs(zzicVar.zzaZ().currentTimeMillis());
                                zzicVar2.zzae(true);
                                zzpgVar5.zzS(zzicVar2.zzK(), zzicVar2);
                                com.google.android.gms.internal.measurement.zzhz zzhzVar2 = zzhzVar;
                                zzhzVar2.zze(zzicVar2);
                                zzh zzhVar2 = zzhVar;
                                zzhVar2.zzo(zzicVar2.zzu());
                                zzhVar2.zzq(zzicVar2.zzw());
                                zzpgVar2.zzj().zzv(zzhVar2, false, false);
                                zzpgVar2.zzj().zzc();
                                zzpgVar2.zzj().zzd();
                                try {
                                    return zzpgVar2.zzp().zzv(((com.google.android.gms.internal.measurement.zzib) zzhzVar2.zzbc()).zzcc());
                                } catch (IOException e11) {
                                    zzn.zzu.zzaV().zzb().zzc("Data loss. Failed to bundle and serialize. appId", zzgu.zzl(str7), e11);
                                    return obj;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                zzlpVar = zzn;
                                zzlpVar.zzg.zzj().zzd();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            zzlpVar = zzn;
                        }
                    } catch (SecurityException e12) {
                        zzn.zzu.zzaV().zzj().zzb("app instance id encryption failed", e12.getMessage());
                        bArr = new byte[0];
                        zzpgVar = zzn.zzg;
                        zzj = zzpgVar.zzj();
                        zzj.zzd();
                        return bArr;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    zzlpVar = zzbgVar;
                }
            }
            zzj = zzpgVar3.zzj();
            zzj.zzd();
            return bArr;
        } catch (Throwable th5) {
            th = th5;
            zzlpVar = zzn;
            zzlpVar.zzg.zzj().zzd();
            throw th;
        }
    }
}
