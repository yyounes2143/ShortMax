package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzxh;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzbn */
/* loaded from: classes4.dex */
public final class zzbn {
    private final List<zzbq> zza = new ArrayList();
    private zzok zzb = zzok.zza;
    private boolean zzc = false;

    public final void zzb() {
        for (zzbq zzbqVar : this.zza) {
            zzbqVar.zza = false;
        }
    }

    public final zzbn zza(zzbq zzbqVar) {
        zzbn zzbnVar;
        boolean z10;
        zzbnVar = zzbqVar.zze;
        if (zzbnVar == null) {
            z10 = zzbqVar.zza;
            if (z10) {
                zzb();
            }
            zzbqVar.zze = this;
            this.zza.add(zzbqVar);
            return this;
        }
        throw new IllegalStateException("Entry has already been added to a KeysetHandle.Builder");
    }

    public final zzbm zza() throws GeneralSecurityException {
        zzbm zzb;
        zzbk zzbkVar;
        zzbp zzbpVar;
        zzbp zzbpVar2;
        zzbp zzbpVar3;
        zzbp zzbpVar4;
        int zza;
        zzcb zzcbVar;
        zzcb zzcbVar2;
        zzbk zzbkVar2;
        boolean z10;
        zzbu zzbuVar;
        zzbk zzbkVar3;
        zzxh.zzb zzb2;
        boolean z11;
        zzbk zzbkVar4;
        zzbp zzbpVar5;
        zzbp zzbpVar6;
        zzbp zzbpVar7;
        zzbp zzbpVar8;
        if (!this.zzc) {
            this.zzc = true;
            zzxh.zza zzc = zzxh.zzc();
            ArrayList arrayList = new ArrayList(this.zza.size());
            List<zzbq> list = this.zza;
            for (int i10 = 0; i10 < list.size() - 1; i10++) {
                zzbpVar5 = list.get(i10).zzd;
                zzbpVar6 = zzbp.zza;
                if (zzbpVar5 == zzbpVar6) {
                    zzbpVar7 = list.get(i10 + 1).zzd;
                    zzbpVar8 = zzbp.zza;
                    if (zzbpVar7 != zzbpVar8) {
                        throw new GeneralSecurityException("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
                    }
                }
            }
            HashSet hashSet = new HashSet();
            Integer num = null;
            for (zzbq zzbqVar : this.zza) {
                zzbkVar = zzbqVar.zzb;
                if (zzbkVar != null) {
                    zzbpVar = zzbqVar.zzd;
                    if (zzbpVar != null) {
                        zzbpVar2 = zzbqVar.zzd;
                        zzbpVar3 = zzbp.zza;
                        if (zzbpVar2 == zzbpVar3) {
                            zza = 0;
                            while (true) {
                                if (zza != 0 && !hashSet.contains(Integer.valueOf(zza))) {
                                    break;
                                }
                                zza = zzqn.zza();
                            }
                        } else {
                            zzbpVar4 = zzbqVar.zzd;
                            zza = zzbp.zza(zzbpVar4);
                        }
                        if (!hashSet.contains(Integer.valueOf(zza))) {
                            hashSet.add(Integer.valueOf(zza));
                            zzcbVar = zzbqVar.zzc;
                            Integer valueOf = zzcbVar.zza() ? Integer.valueOf(zza) : null;
                            zzop zza2 = zzop.zza();
                            zzcbVar2 = zzbqVar.zzc;
                            zzbi zza3 = zza2.zza(zzcbVar2, valueOf);
                            zzbkVar2 = zzbqVar.zzb;
                            zzxc zza4 = zzbm.zza(zzbkVar2);
                            z10 = zzbqVar.zza;
                            zzbuVar = zzbs.zza;
                            zzbs zzbsVar = new zzbs(zza3, zza4, zza, z10, false, zzbuVar);
                            zzbkVar3 = zzbqVar.zzb;
                            zzb2 = zzbm.zzb(zza3, zzbm.zza(zzbkVar3), zza);
                            zzc.zza(zzb2);
                            z11 = zzbqVar.zza;
                            if (z11) {
                                if (num == null) {
                                    num = Integer.valueOf(zza);
                                    zzbkVar4 = zzbqVar.zzb;
                                    if (zzbkVar4 != zzbk.zza) {
                                        throw new GeneralSecurityException("Primary key is not enabled");
                                    }
                                } else {
                                    throw new GeneralSecurityException("Two primaries were set");
                                }
                            }
                            arrayList.add(zzbsVar);
                        } else {
                            throw new GeneralSecurityException("Id " + zza + " is used twice in the keyset");
                        }
                    } else {
                        throw new GeneralSecurityException("No ID was set (with withFixedId or withRandomId)");
                    }
                } else {
                    throw new GeneralSecurityException("Key Status not set.");
                }
            }
            if (num != null) {
                zzc.zza(num.intValue());
                zzxh zzxhVar = (zzxh) ((zzalf) zzc.zze());
                zzbm.zzd(zzxhVar);
                zzb = zzbm.zzb(new zzbm(zzxhVar, arrayList, this.zzb));
                return zzb;
            }
            throw new GeneralSecurityException("No primary was set");
        }
        throw new GeneralSecurityException("KeysetHandle.Builder#build must only be called once");
    }
}
