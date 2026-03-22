package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzpw */
/* loaded from: classes4.dex */
public final class zzpw {
    private final Map<zzpx, zzps<?, ?>> zza;
    private final Map<Class<?>, zzpz<?, ?>> zzb;

    public static zzpy zza() {
        return new zzpy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzpw(zzpy zzpyVar) {
        Map map;
        Map map2;
        map = zzpyVar.zza;
        this.zza = new HashMap(map);
        map2 = zzpyVar.zzb;
        this.zzb = new HashMap(map2);
    }

    public static zzpy zza(zzpw zzpwVar) {
        return new zzpy(zzpwVar);
    }

    public final <KeyT extends zzbi, PrimitiveT> PrimitiveT zza(KeyT keyt, Class<PrimitiveT> cls) throws GeneralSecurityException {
        zzpx zzpxVar = new zzpx(keyt.getClass(), cls);
        if (this.zza.containsKey(zzpxVar)) {
            return (PrimitiveT) this.zza.get(zzpxVar).zza(keyt);
        }
        String valueOf = String.valueOf(zzpxVar);
        throw new GeneralSecurityException("No PrimitiveConstructor for " + valueOf + " available, see https://developers.google.com/tink/faq/registration_errors");
    }

    public final <WrappedPrimitiveT> WrappedPrimitiveT zza(zzob zzobVar, zzok zzokVar, Class<WrappedPrimitiveT> cls) throws GeneralSecurityException {
        if (this.zzb.containsKey(cls)) {
            final zzpz<?, ?> zzpzVar = this.zzb.get(cls);
            return (WrappedPrimitiveT) zzpzVar.zza(zzobVar, zzokVar, new zzqc() { // from class: com.google.android.gms.internal.firebase-auth-api.zzpv
                @Override // com.google.android.gms.internal.p003firebaseauthapi.zzqc
                public final Object zza(zzoa zzoaVar) {
                    Object zza;
                    zza = zzpw.this.zza(zzoaVar.zzb(), zzpzVar.zza());
                    return zza;
                }
            });
        }
        String valueOf = String.valueOf(cls);
        throw new GeneralSecurityException("No wrapper found for " + valueOf);
    }
}
