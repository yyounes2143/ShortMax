package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzpy  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzpy {
    private final Map<zzpx, zzps<?, ?>> zza;
    private final Map<Class<?>, zzpz<?, ?>> zzb;

    public final <KeyT extends zzbi, PrimitiveT> zzpy zza(zzps<KeyT, PrimitiveT> zzpsVar) throws GeneralSecurityException {
        if (zzpsVar != null) {
            zzpx zzpxVar = new zzpx(zzpsVar.zza(), zzpsVar.zzb());
            if (this.zza.containsKey(zzpxVar)) {
                zzps<?, ?> zzpsVar2 = this.zza.get(zzpxVar);
                if (!zzpsVar2.equals(zzpsVar) || !zzpsVar.equals(zzpsVar2)) {
                    String valueOf = String.valueOf(zzpxVar);
                    throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: " + valueOf);
                }
            } else {
                this.zza.put(zzpxVar, zzpsVar);
            }
            return this;
        }
        throw new NullPointerException("primitive constructor must be non-null");
    }

    private zzpy() {
        this.zza = new HashMap();
        this.zzb = new HashMap();
    }

    private zzpy(zzpw zzpwVar) {
        this.zza = new HashMap(zzpw.zzb(zzpwVar));
        this.zzb = new HashMap(zzpw.zzc(zzpwVar));
    }

    public final <InputPrimitiveT, WrapperPrimitiveT> zzpy zza(zzpz<InputPrimitiveT, WrapperPrimitiveT> zzpzVar) throws GeneralSecurityException {
        if (zzpzVar != null) {
            Class<WrapperPrimitiveT> zzb = zzpzVar.zzb();
            if (this.zzb.containsKey(zzb)) {
                zzpz<?, ?> zzpzVar2 = this.zzb.get(zzb);
                if (!zzpzVar2.equals(zzpzVar) || !zzpzVar.equals(zzpzVar2)) {
                    String valueOf = String.valueOf(zzb);
                    throw new GeneralSecurityException("Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type" + valueOf);
                }
            } else {
                this.zzb.put(zzb, zzpzVar);
            }
            return this;
        }
        throw new NullPointerException("wrapper must be non-null");
    }

    public final zzpw zza() {
        return new zzpw(this);
    }
}
