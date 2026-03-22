package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgff {
    private final List zza = new ArrayList();
    private final zzgnh zzb = zzgnh.zza;
    private boolean zzc = false;

    public final void zzd() {
        for (zzgfd zzgfdVar : this.zza) {
            zzgfdVar.zza = false;
        }
    }

    public final zzgff zza(zzgfd zzgfdVar) {
        zzgff zzgffVar;
        boolean z10;
        zzgffVar = zzgfdVar.zzf;
        if (zzgffVar == null) {
            z10 = zzgfdVar.zza;
            if (z10) {
                zzd();
            }
            zzgfdVar.zzf = this;
            this.zza.add(zzgfdVar);
            return this;
        }
        throw new IllegalStateException("Entry has already been added to a KeysetHandle.Builder");
    }

    public final zzgfi zzb() throws GeneralSecurityException {
        zzgfe zzgfeVar;
        zzgfe zzgfeVar2;
        zzgfe zzgfeVar3;
        int i10;
        zzgfm zzgfmVar;
        Integer num;
        zzgfm zzgfmVar2;
        zzgfb zzgfbVar;
        boolean z10;
        zzgfb zzgfbVar2;
        int i11;
        boolean z11;
        zzgfb zzgfbVar3;
        zzgfe zzgfeVar4;
        zzgfe zzgfeVar5;
        zzgfe zzgfeVar6;
        zzgfe zzgfeVar7;
        zzgfb unused;
        zzgfe unused2;
        char c10 = 1;
        if (!this.zzc) {
            this.zzc = true;
            List<zzgfd> list = this.zza;
            zzguj zzc = zzgun.zzc();
            ArrayList arrayList = new ArrayList(list.size());
            int i12 = 0;
            int i13 = 0;
            while (i13 < list.size() - 1) {
                int i14 = i13 + 1;
                zzgfeVar4 = ((zzgfd) list.get(i13)).zze;
                zzgfeVar5 = zzgfe.zza;
                if (zzgfeVar4 == zzgfeVar5) {
                    zzgfeVar6 = ((zzgfd) list.get(i14)).zze;
                    zzgfeVar7 = zzgfe.zza;
                    if (zzgfeVar6 != zzgfeVar7) {
                        throw new GeneralSecurityException("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
                    }
                }
                i13 = i14;
            }
            HashSet hashSet = new HashSet();
            Integer num2 = null;
            for (zzgfd zzgfdVar : list) {
                unused = zzgfdVar.zzb;
                zzgfeVar = zzgfdVar.zze;
                if (zzgfeVar != null) {
                    zzgfeVar2 = zzgfdVar.zze;
                    zzgfeVar3 = zzgfe.zza;
                    if (zzgfeVar2 != zzgfeVar3) {
                        unused2 = zzgfdVar.zze;
                        i10 = i12;
                    } else {
                        i10 = i12;
                        while (true) {
                            if (i10 != 0 && !hashSet.contains(Integer.valueOf(i10))) {
                                break;
                            }
                            int i15 = zzgpj.zza;
                            i10 = i12;
                            while (i10 == 0) {
                                byte[] zzb = zzgpa.zzb(4);
                                i10 = (zzb[3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((zzb[i12] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((zzb[c10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((zzb[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
                            }
                        }
                    }
                    Integer valueOf = Integer.valueOf(i10);
                    if (!hashSet.contains(valueOf)) {
                        hashSet.add(valueOf);
                        zzgfd.zza(zzgfdVar);
                        zzgfmVar = zzgfdVar.zzd;
                        if (c10 != zzgfmVar.zza()) {
                            num = null;
                        } else {
                            num = valueOf;
                        }
                        zzgno zzb2 = zzgno.zzb();
                        zzgfmVar2 = zzgfdVar.zzd;
                        zzgez zza = zzb2.zza(zzgfmVar2, num);
                        zzgfbVar = zzgfdVar.zzb;
                        z10 = zzgfdVar.zza;
                        zzgfg zzgfgVar = new zzgfg(zza, zzgfbVar, i10, z10, null);
                        zzgfbVar2 = zzgfdVar.zzb;
                        zzgox zzgoxVar = (zzgox) zzgny.zzc().zzd(zza, zzgox.class, zzgfn.zza());
                        Integer zzf = zzgoxVar.zzf();
                        if (zzf != null && zzf.intValue() != i10) {
                            throw new GeneralSecurityException("Wrong ID set for key with ID requirement");
                        }
                        zzgfb zzgfbVar4 = zzgfb.zza;
                        if (zzgfbVar4.equals(zzgfbVar2)) {
                            i11 = 3;
                        } else if (zzgfb.zzb.equals(zzgfbVar2)) {
                            i11 = 4;
                        } else if (zzgfb.zzc.equals(zzgfbVar2)) {
                            i11 = 5;
                        } else {
                            throw new IllegalStateException("Unknown key status");
                        }
                        zzguk zzc2 = zzgul.zzc();
                        zzgty zza2 = zzgub.zza();
                        zza2.zzb(zzgoxVar.zzg());
                        zza2.zzc(zzgoxVar.zze());
                        zza2.zza(zzgoxVar.zzb());
                        zzc2.zza(zza2);
                        zzc2.zzd(i11);
                        zzc2.zzb(i10);
                        zzc2.zzc(zzgoxVar.zzc());
                        zzc.zza((zzgul) zzc2.zzbr());
                        z11 = zzgfdVar.zza;
                        if (z11) {
                            if (num2 == null) {
                                zzgfbVar3 = zzgfdVar.zzb;
                                if (zzgfbVar3 == zzgfbVar4) {
                                    num2 = valueOf;
                                } else {
                                    throw new GeneralSecurityException("Primary key is not enabled");
                                }
                            } else {
                                throw new GeneralSecurityException("Two primaries were set");
                            }
                        }
                        arrayList.add(zzgfgVar);
                        c10 = 1;
                        i12 = 0;
                    } else {
                        throw new GeneralSecurityException("Id " + i10 + " is used twice in the keyset");
                    }
                } else {
                    throw new GeneralSecurityException("No ID was set (with withFixedId or withRandomId)");
                }
            }
            if (num2 != null) {
                zzc.zzb(num2.intValue());
                zzgun zzgunVar = (zzgun) zzc.zzbr();
                zzgfi.zzj(zzgunVar);
                return new zzgfi(zzgunVar, arrayList, this.zzb);
            }
            throw new GeneralSecurityException("No primary was set");
        }
        throw new GeneralSecurityException("KeysetHandle.Builder#build must only be called once");
    }
}
