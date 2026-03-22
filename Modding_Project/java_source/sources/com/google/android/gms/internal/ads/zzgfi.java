package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgfi implements zzgmy {
    private final zzgun zza;
    private final List zzb;
    private final zzgnh zzc;

    public static final zzgfi zzd(zzgun zzgunVar) throws GeneralSecurityException {
        zzj(zzgunVar);
        return new zzgfi(zzgunVar, zzi(zzgunVar), zzgnh.zza);
    }

    public static final zzgfi zze(zzgfm zzgfmVar) throws GeneralSecurityException {
        zzgff zzgffVar = new zzgff();
        zzgfd zzgfdVar = new zzgfd(zzgfmVar, null);
        zzgfdVar.zzd();
        zzgfdVar.zzc();
        zzgffVar.zza(zzgfdVar);
        return zzgffVar.zzb();
    }

    public static /* bridge */ /* synthetic */ void zzh(zzgun zzgunVar) {
        zzj(zzgunVar);
    }

    private static List zzi(zzgun zzgunVar) throws GeneralSecurityException {
        Integer valueOf;
        zzgez zza;
        zzgfb zzgfbVar;
        boolean z10;
        ArrayList arrayList = new ArrayList(zzgunVar.zza());
        for (zzgul zzgulVar : zzgunVar.zzh()) {
            int zza2 = zzgulVar.zza();
            try {
                int zza3 = zzgulVar.zza();
                if (zzgulVar.zzf() == zzgvf.RAW) {
                    valueOf = null;
                } else {
                    valueOf = Integer.valueOf(zza3);
                }
                zzgox zza4 = zzgox.zza(zzgulVar.zzb().zzg(), zzgulVar.zzb().zzf(), zzgulVar.zzb().zzb(), zzgulVar.zzf(), valueOf);
                zzgny zzc = zzgny.zzc();
                zzgfn zza5 = zzgfn.zza();
                if (!zzc.zzj(zza4)) {
                    zza = new zzgnd(zza4, zza5);
                } else {
                    zza = zzc.zza(zza4, zza5);
                }
                int zzk = zzgulVar.zzk() - 2;
                if (zzk != 1) {
                    if (zzk != 2) {
                        if (zzk == 3) {
                            zzgfbVar = zzgfb.zzc;
                        } else {
                            throw new GeneralSecurityException("Unknown key status");
                            break;
                        }
                    } else {
                        zzgfbVar = zzgfb.zzb;
                    }
                } else {
                    zzgfbVar = zzgfb.zza;
                }
                zzgfb zzgfbVar2 = zzgfbVar;
                if (zza2 == zzgunVar.zzb()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                arrayList.add(new zzgfg(zza, zzgfbVar2, zza2, z10, null));
            } catch (GeneralSecurityException e10) {
                if (!zzgme.zza.zza()) {
                    arrayList.add(null);
                } else {
                    throw new GeneralSecurityException("Parsing of a single key failed (maybe wrong status?) and Tink is configured via validateKeysetsOnParsing to reject such keysets.", e10);
                }
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static void zzj(zzgun zzgunVar) throws GeneralSecurityException {
        if (zzgunVar != null && zzgunVar.zza() > 0) {
            return;
        }
        throw new GeneralSecurityException("empty keyset");
    }

    public final String toString() {
        int i10 = zzgfp.zza;
        zzguo zza = zzgus.zza();
        zzgun zzgunVar = this.zza;
        zza.zzb(zzgunVar.zzb());
        for (zzgul zzgulVar : zzgunVar.zzh()) {
            zzgup zza2 = zzguq.zza();
            zza2.zzc(zzgulVar.zzb().zzg());
            zza2.zzd(zzgulVar.zzk());
            zza2.zzb(zzgulVar.zzf());
            zza2.zza(zzgulVar.zza());
            zza.zza((zzguq) zza2.zzbr());
        }
        return ((zzgus) zza.zzbr()).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgmy
    public final int zza() {
        return this.zzb.size();
    }

    public final zzgfg zzb(int i10) {
        if (i10 >= 0 && i10 < zza()) {
            List list = this.zzb;
            if (list.get(i10) != null) {
                return (zzgfg) list.get(i10);
            }
            throw new IllegalStateException("Keyset-Entry at position " + i10 + " has wrong status or key parsing failed");
        }
        int zza = zza();
        throw new IndexOutOfBoundsException("Invalid index " + i10 + " for keyset of size " + zza);
    }

    public final zzgfg zzc() {
        for (zzgfg zzgfgVar : this.zzb) {
            if (zzgfgVar != null && zzgfgVar.zzd()) {
                if (zzgfgVar.zzc() == zzgfb.zza) {
                    return zzgfgVar;
                }
                throw new IllegalStateException("Keyset has primary which isn't enabled");
            }
        }
        throw new IllegalStateException("Keyset has no valid primary");
    }

    public final zzgun zzf() {
        return this.zza;
    }

    public final Object zzg(zzgex zzgexVar, Class cls) throws GeneralSecurityException {
        boolean z10;
        if (zzgexVar instanceof zzgmo) {
            zzgmo zzgmoVar = (zzgmo) zzgexVar;
            zzgun zzgunVar = this.zza;
            int i10 = zzgfp.zza;
            int zzb = zzgunVar.zzb();
            boolean z11 = true;
            int i11 = 0;
            boolean z12 = false;
            for (zzgul zzgulVar : zzgunVar.zzh()) {
                if (zzgulVar.zzk() == 3) {
                    if (zzgulVar.zzj()) {
                        if (zzgulVar.zzf() != zzgvf.UNKNOWN_PREFIX) {
                            if (zzgulVar.zzk() != 2) {
                                if (zzgulVar.zza() == zzb) {
                                    if (!z12) {
                                        z12 = true;
                                    } else {
                                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                                    }
                                }
                                if (zzgulVar.zzb().zzb() != zzgtz.ASYMMETRIC_PUBLIC) {
                                    z10 = false;
                                } else {
                                    z10 = true;
                                }
                                z11 &= z10;
                                i11++;
                            } else {
                                throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzgulVar.zza())));
                            }
                        } else {
                            throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzgulVar.zza())));
                        }
                    } else {
                        throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzgulVar.zza())));
                    }
                }
            }
            if (i11 != 0) {
                if (!z12 && !z11) {
                    throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
                }
                for (int i12 = 0; i12 < zza(); i12++) {
                    if (this.zzb.get(i12) == null) {
                        throw new GeneralSecurityException("Key parsing of key with index " + i12 + " and type_url " + zzgunVar.zzd(i12).zzb().zzg() + " failed, unable to get primitive");
                    }
                }
                return zzgmoVar.zza(this, this.zzc, cls);
            }
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        throw new GeneralSecurityException("Currently only subclasses of InternalConfiguration are accepted");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzgfi(zzgun zzgunVar, List list, zzgnh zzgnhVar) throws GeneralSecurityException {
        this.zza = zzgunVar;
        this.zzb = list;
        this.zzc = zzgnhVar;
        if (zzgme.zza.zza()) {
            HashSet hashSet = new HashSet();
            for (zzgul zzgulVar : zzgunVar.zzh()) {
                if (!hashSet.contains(Integer.valueOf(zzgulVar.zza()))) {
                    hashSet.add(Integer.valueOf(zzgulVar.zza()));
                } else {
                    int zza = zzgulVar.zza();
                    throw new GeneralSecurityException("KeyID " + zza + " is duplicated in the keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing.");
                }
            }
            if (!hashSet.contains(Integer.valueOf(zzgunVar.zzb()))) {
                throw new GeneralSecurityException("Primary key id not found in keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing.");
            }
        }
    }
}
