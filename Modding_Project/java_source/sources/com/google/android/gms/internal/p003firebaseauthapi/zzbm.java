package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzwx;
import com.google.android.gms.internal.p003firebaseauthapi.zzxh;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzbm */
/* loaded from: classes4.dex */
public final class zzbm implements zzob {
    private final List<zzbs> zza;
    private final zzok zzb;
    private final zzbm zzc;

    public static /* synthetic */ zzbm zza(zzbm zzbmVar) {
        return zzb(zzbmVar);
    }

    public static /* synthetic */ void zzb(zzxh zzxhVar) {
        zzd(zzxhVar);
    }

    private final zzbm zze() {
        zzbm zzbmVar = this.zzc;
        if (zzbmVar == null) {
            return this;
        }
        return zzbmVar;
    }

    public final String toString() {
        return zzcm.zza(zzd()).toString();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzob
    public final /* synthetic */ zzoa zzc() {
        for (zzbs zzbsVar : this.zza) {
            if (zzbsVar != null && zzbsVar.zze()) {
                if (zzbsVar.zzc() == zzbk.zza) {
                    return zzbsVar;
                }
                throw new IllegalStateException("Keyset has primary which isn't enabled");
            }
        }
        throw new IllegalStateException("Keyset has no valid primary");
    }

    public final zzxh zzd() {
        zzxc zzxcVar;
        try {
            zzxh.zza zzc = zzxh.zzc();
            for (zzbs zzbsVar : this.zza) {
                zzbi zzb = zzbsVar.zzb();
                zzxcVar = zzbsVar.zzc;
                zzc.zza(zzb(zzb, zzxcVar, zzbsVar.zza()));
                if (zzbsVar.zze()) {
                    zzc.zza(zzbsVar.zza());
                }
            }
            return (zzxh) ((zzalf) zzc.zze());
        } catch (GeneralSecurityException e10) {
            throw new zzql(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzbm(zzxh zzxhVar, List<zzbs> list, zzok zzokVar) throws GeneralSecurityException {
        this.zza = list;
        this.zzb = zzokVar;
        if (zziu.zza.zza()) {
            HashSet hashSet = new HashSet();
            for (zzxh.zzb zzbVar : zzxhVar.zze()) {
                if (!hashSet.contains(Integer.valueOf(zzbVar.zza()))) {
                    hashSet.add(Integer.valueOf(zzbVar.zza()));
                } else {
                    int zza = zzbVar.zza();
                    throw new GeneralSecurityException("KeyID " + zza + " is duplicated in the keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing.");
                }
            }
            if (!hashSet.contains(Integer.valueOf(zzxhVar.zzb()))) {
                throw new GeneralSecurityException("Primary key id not found in keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing.");
            }
        }
        this.zzc = null;
    }

    public static /* synthetic */ zzxh.zzb zza(zzbi zzbiVar, zzxc zzxcVar, int i10) {
        return zzb(zzbiVar, zzxcVar, i10);
    }

    public static zzbm zzb(zzbm zzbmVar) {
        zzbi zzbiVar;
        zzxc zzxcVar;
        int i10;
        boolean z10;
        boolean z11;
        final zzok zzokVar = zzbmVar.zzb;
        if (zzokVar.zza()) {
            return zzbmVar;
        }
        zzbu zzbuVar = new zzbu() { // from class: com.google.android.gms.internal.firebase-auth-api.zzbl
            @Override // com.google.android.gms.internal.p003firebaseauthapi.zzbu
            public final void zza(zzbs zzbsVar) {
                zzow.zzb().zza().zza(zzbm.this, zzokVar, "keyset_handle", "get_key").zza(zzbsVar.zza());
            }
        };
        ArrayList arrayList = new ArrayList(zzbmVar.zza.size());
        for (zzbs zzbsVar : zzbmVar.zza) {
            zzbiVar = zzbsVar.zzb;
            zzxcVar = zzbsVar.zzc;
            i10 = zzbsVar.zze;
            z10 = zzbsVar.zzf;
            z11 = zzbsVar.zzg;
            arrayList.add(new zzbs(zzbiVar, zzxcVar, i10, z10, z11, zzbuVar));
        }
        return new zzbm(arrayList, zzokVar, zzbmVar);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzob
    public final int zza() {
        return this.zza.size();
    }

    private static zzbi zza(zzxh.zzb zzbVar) throws GeneralSecurityException {
        zzqb zzb = zzb(zzbVar);
        zzoz zza = zzoz.zza();
        zzch zza2 = zzch.zza();
        if (!zza.zzb(zzb)) {
            return new zzof(zzb, zza2);
        }
        return zza.zza((zzoz) zzb, zza2);
    }

    private static List<zzbs> zzc(zzxh zzxhVar) throws GeneralSecurityException {
        zzbi zzofVar;
        boolean z10;
        zzbu zzbuVar;
        ArrayList arrayList = new ArrayList(zzxhVar.zza());
        for (zzxh.zzb zzbVar : zzxhVar.zze()) {
            int zza = zzbVar.zza();
            try {
                zzofVar = zza(zzbVar);
                z10 = false;
            } catch (GeneralSecurityException e10) {
                if (!zziu.zza.zza()) {
                    zzofVar = new zzof(zzb(zzbVar), zzch.zza());
                    z10 = true;
                } else {
                    throw e10;
                }
            }
            if (zziu.zza.zza() && !zza(zzbVar.zzc())) {
                throw new GeneralSecurityException("Parsing of a single key failed (wrong status) and Tink is configured via validateKeysetsOnParsing to reject such keysets.");
            }
            zzxc zzc = zzbVar.zzc();
            boolean z11 = zza == zzxhVar.zzb();
            zzbuVar = zzbs.zza;
            arrayList.add(new zzbs(zzofVar, zzc, zza, z11, z10, zzbuVar));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static void zzd(zzxh zzxhVar) throws GeneralSecurityException {
        if (zzxhVar == null || zzxhVar.zza() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [com.google.android.gms.internal.firebase-auth-api.zzbi] */
    public final zzbm zzb() throws GeneralSecurityException {
        zzof zzofVar;
        boolean z10;
        zzbs zzbsVar;
        zzxc zzxcVar;
        zzbu zzbuVar;
        zzxh.zzb zzbVar;
        zzxc zzxcVar2;
        zzbu zzbuVar2;
        zzxc zzxcVar3;
        zzxh zzd = zzd();
        zzxh.zza zzc = zzxh.zzc();
        ArrayList arrayList = new ArrayList(this.zza.size());
        int i10 = 0;
        for (zzbs zzbsVar2 : this.zza) {
            if (zzbsVar2.zzb() instanceof zzce) {
                zzbi zzc2 = ((zzce) zzbsVar2.zzb()).zzc();
                zzxcVar2 = zzbsVar2.zzc;
                int zza = zzbsVar2.zza();
                boolean zze = zzbsVar2.zze();
                zzbuVar2 = zzbs.zza;
                zzbs zzbsVar3 = new zzbs(zzc2, zzxcVar2, zza, zze, false, zzbuVar2);
                zzxcVar3 = zzbsVar2.zzc;
                zzbVar = zzb(zzc2, zzxcVar3, zzbsVar2.zza());
                zzbsVar = zzbsVar3;
            } else {
                zzxh.zzb zza2 = zzd.zza(i10);
                zzwx zzb = zza2.zzb();
                if (zzb.zzb() == zzwx.zzb.ASYMMETRIC_PRIVATE) {
                    zzxh.zzb zzbVar2 = (zzxh.zzb) ((zzalf) zza2.zzn().zza(zzci.zza(zzb.zzf(), zzb.zze())).zze());
                    try {
                        zzofVar = zza(zzbVar2);
                        z10 = false;
                    } catch (GeneralSecurityException e10) {
                        if (!zziu.zza.zza()) {
                            zzofVar = new zzof(zzb(zzbVar2), zzch.zza());
                            z10 = true;
                        } else {
                            throw e10;
                        }
                    }
                    int zza3 = zzbVar2.zza();
                    zzxcVar = zzbsVar2.zzc;
                    boolean z11 = zza3 == zzd.zzb();
                    zzbuVar = zzbs.zza;
                    zzbsVar = new zzbs(zzofVar, zzxcVar, zza3, z11, z10, zzbuVar);
                    zzbVar = zzbVar2;
                } else {
                    throw new GeneralSecurityException("The keyset contains a non-private key");
                }
            }
            zzc.zza(zzbVar);
            arrayList.add(zzbsVar);
            i10++;
        }
        zzc.zza(zzd.zzb());
        return zzb(new zzbm((zzxh) ((zzalf) zzc.zze()), arrayList, this.zzb));
    }

    public static final zzbm zza(zzxh zzxhVar) throws GeneralSecurityException {
        zzd(zzxhVar);
        return new zzbm(zzxhVar, zzc(zzxhVar), zzok.zza);
    }

    public static final zzbm zza(zzbj zzbjVar) throws GeneralSecurityException {
        return new zzbn().zza(new zzbq(zzbjVar.zza()).zzb().zza()).zza();
    }

    private zzbm(List<zzbs> list, zzok zzokVar, zzbm zzbmVar) {
        this.zza = list;
        this.zzb = zzokVar;
        this.zzc = zzbmVar;
    }

    @Deprecated
    public static final zzbm zza(zzbv zzbvVar, zzba zzbaVar, byte[] bArr) throws GeneralSecurityException, IOException {
        zzvv zza = zzbvVar.zza();
        if (zza != null && zza.zzc().zzb() != 0) {
            return zza(zza(zza, zzbaVar, bArr));
        }
        throw new GeneralSecurityException("empty keyset");
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzob
    public final /* synthetic */ zzoa zza(int i10) {
        zzxc zzxcVar;
        boolean z10;
        if (i10 >= 0 && i10 < zza()) {
            zzbs zzbsVar = this.zza.get(i10);
            zzxcVar = zzbsVar.zzc;
            if (zza(zzxcVar)) {
                z10 = zzbsVar.zzg;
                if (!z10) {
                    return this.zza.get(i10);
                }
                throw new IllegalStateException("Keyset-Entry at position " + i10 + " didn't parse correctly");
            }
            throw new IllegalStateException("Keyset-Entry at position " + i10 + " has wrong status");
        }
        int zza = zza();
        throw new IndexOutOfBoundsException("Invalid index " + i10 + " for keyset of size " + zza);
    }

    public static /* synthetic */ zzxc zza(zzbk zzbkVar) {
        if (zzbk.zza.equals(zzbkVar)) {
            return zzxc.ENABLED;
        }
        if (zzbk.zzb.equals(zzbkVar)) {
            return zzxc.DISABLED;
        }
        if (zzbk.zzc.equals(zzbkVar)) {
            return zzxc.DESTROYED;
        }
        throw new IllegalStateException("Unknown key status");
    }

    private static zzxh zza(zzvv zzvvVar, zzba zzbaVar, byte[] bArr) throws GeneralSecurityException {
        try {
            zzxh zza = zzxh.zza(zzbaVar.zza(zzvvVar.zzc().zzd(), bArr), zzaku.zza());
            zzd(zza);
            return zza;
        } catch (zzall unused) {
            throw new GeneralSecurityException("invalid keyset, corrupted key material");
        }
    }

    private static zzqb zzb(zzxh.zzb zzbVar) throws GeneralSecurityException {
        return zzqb.zza(zzbVar.zzb().zzf(), zzbVar.zzb().zze(), zzbVar.zzb().zzb(), zzbVar.zzf(), zzbVar.zzf() == zzxz.RAW ? null : Integer.valueOf(zzbVar.zza()));
    }

    public final <P> P zza(zzbb zzbbVar, Class<P> cls) throws GeneralSecurityException {
        boolean z10;
        zzxc zzxcVar;
        if (zzbbVar instanceof zznp) {
            zznp zznpVar = (zznp) zzbbVar;
            zzxh zzd = zze().zzd();
            zzcm.zzb(zzd);
            for (int i10 = 0; i10 < zza(); i10++) {
                z10 = this.zza.get(i10).zzg;
                if (!z10) {
                    zzxcVar = this.zza.get(i10).zzc;
                    if (zza(zzxcVar)) {
                    }
                }
                String zzf = zzd.zza(i10).zzb().zzf();
                throw new GeneralSecurityException("Key parsing of key with index " + i10 + " and type_url " + zzf + " failed, unable to get primitive");
            }
            return (P) zznpVar.zza(zze(), this.zzb, cls);
        }
        throw new GeneralSecurityException("Currently only subclasses of InternalConfiguration are accepted");
    }

    public static zzxh.zzb zzb(zzbi zzbiVar, zzxc zzxcVar, int i10) throws GeneralSecurityException {
        zzqb zzqbVar = (zzqb) zzoz.zza().zza(zzbiVar, zzqb.class, zzch.zza());
        Integer zze = zzqbVar.zze();
        if (zze != null && zze.intValue() != i10) {
            throw new GeneralSecurityException("Wrong ID set for key with ID requirement");
        }
        return (zzxh.zzb) ((zzalf) zzxh.zzb.zzd().zza(zzwx.zza().zza(zzqbVar.zzf()).zza(zzqbVar.zzd()).zza(zzqbVar.zza())).zza(zzxcVar).zza(i10).zza(zzqbVar.zzb()).zze());
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0012  */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.p003firebaseauthapi.zzby r6) throws java.security.GeneralSecurityException, java.io.IOException {
        /*
            r5 = this;
            com.google.android.gms.internal.firebase-auth-api.zzxh r0 = r5.zzd()
            java.util.List r1 = r0.zze()
            java.util.Iterator r1 = r1.iterator()
        Lc:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L61
            java.lang.Object r2 = r1.next()
            com.google.android.gms.internal.firebase-auth-api.zzxh$zzb r2 = (com.google.android.gms.internal.p003firebaseauthapi.zzxh.zzb) r2
            com.google.android.gms.internal.firebase-auth-api.zzwx r3 = r2.zzb()
            com.google.android.gms.internal.firebase-auth-api.zzwx$zzb r3 = r3.zzb()
            com.google.android.gms.internal.firebase-auth-api.zzwx$zzb r4 = com.google.android.gms.internal.p003firebaseauthapi.zzwx.zzb.UNKNOWN_KEYMATERIAL
            if (r3 == r4) goto L3d
            com.google.android.gms.internal.firebase-auth-api.zzwx r3 = r2.zzb()
            com.google.android.gms.internal.firebase-auth-api.zzwx$zzb r3 = r3.zzb()
            com.google.android.gms.internal.firebase-auth-api.zzwx$zzb r4 = com.google.android.gms.internal.p003firebaseauthapi.zzwx.zzb.SYMMETRIC
            if (r3 == r4) goto L3d
            com.google.android.gms.internal.firebase-auth-api.zzwx r3 = r2.zzb()
            com.google.android.gms.internal.firebase-auth-api.zzwx$zzb r3 = r3.zzb()
            com.google.android.gms.internal.firebase-auth-api.zzwx$zzb r4 = com.google.android.gms.internal.p003firebaseauthapi.zzwx.zzb.ASYMMETRIC_PRIVATE
            if (r3 == r4) goto L3d
            goto Lc
        L3d:
            java.security.GeneralSecurityException r6 = new java.security.GeneralSecurityException
            com.google.android.gms.internal.firebase-auth-api.zzwx r0 = r2.zzb()
            com.google.android.gms.internal.firebase-auth-api.zzwx$zzb r0 = r0.zzb()
            java.lang.String r0 = r0.name()
            com.google.android.gms.internal.firebase-auth-api.zzwx r1 = r2.zzb()
            java.lang.String r1 = r1.zzf()
            java.lang.Object[] r0 = new java.lang.Object[]{r0, r1}
            java.lang.String r1 = "keyset contains key material of type %s for type url %s"
            java.lang.String r0 = java.lang.String.format(r1, r0)
            r6.<init>(r0)
            throw r6
        L61:
            r6.zza(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p003firebaseauthapi.zzbm.zza(com.google.android.gms.internal.firebase-auth-api.zzby):void");
    }

    @Deprecated
    public final void zza(zzby zzbyVar, zzba zzbaVar, byte[] bArr) throws GeneralSecurityException, IOException {
        zzxh zzd = zzd();
        zzbyVar.zza((zzvv) ((zzalf) zzvv.zza().zza(zzajv.zza(zzbaVar.zzb(zzd.zzk(), bArr))).zza(zzcm.zza(zzd)).zze()));
    }

    private static boolean zza(zzxc zzxcVar) {
        int i10 = zzbo.zza[zzxcVar.ordinal()];
        return i10 == 1 || i10 == 2 || i10 == 3;
    }
}
