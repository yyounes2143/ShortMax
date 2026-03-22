package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzqi */
/* loaded from: classes4.dex */
public final class zzqi {
    private final Map<zzqj, zznx<?, ?>> zza;
    private final Map<zzqk, zznt<?>> zzb;
    private final Map<zzqj, zzph<?, ?>> zzc;
    private final Map<zzqk, zzpd<?>> zzd;

    /* JADX INFO: Access modifiers changed from: private */
    public zzqi(zzqh zzqhVar) {
        Map map;
        Map map2;
        Map map3;
        Map map4;
        map = zzqhVar.zza;
        this.zza = new HashMap(map);
        map2 = zzqhVar.zzb;
        this.zzb = new HashMap(map2);
        map3 = zzqhVar.zzc;
        this.zzc = new HashMap(map3);
        map4 = zzqhVar.zzd;
        this.zzd = new HashMap(map4);
    }

    public final <SerializationT extends zzqf> zzbi zza(SerializationT serializationt, zzch zzchVar) throws GeneralSecurityException {
        zzqk zzqkVar = new zzqk(serializationt.getClass(), serializationt.zzc());
        if (this.zzb.containsKey(zzqkVar)) {
            return this.zzb.get(zzqkVar).zza(serializationt, zzchVar);
        }
        String valueOf = String.valueOf(zzqkVar);
        throw new GeneralSecurityException("No Key Parser for requested key type " + valueOf + " available");
    }

    public final <SerializationT extends zzqf> boolean zzb(SerializationT serializationt) {
        return this.zzb.containsKey(new zzqk(serializationt.getClass(), serializationt.zzc()));
    }

    public final <SerializationT extends zzqf> boolean zzc(SerializationT serializationt) {
        return this.zzd.containsKey(new zzqk(serializationt.getClass(), serializationt.zzc()));
    }

    public final <SerializationT extends zzqf> zzcb zza(SerializationT serializationt) throws GeneralSecurityException {
        zzqk zzqkVar = new zzqk(serializationt.getClass(), serializationt.zzc());
        if (this.zzd.containsKey(zzqkVar)) {
            return this.zzd.get(zzqkVar).zza(serializationt);
        }
        String valueOf = String.valueOf(zzqkVar);
        throw new GeneralSecurityException("No Parameters Parser for requested key type " + valueOf + " available");
    }

    public final <KeyT extends zzbi, SerializationT extends zzqf> SerializationT zza(KeyT keyt, Class<SerializationT> cls, zzch zzchVar) throws GeneralSecurityException {
        zzqj zzqjVar = new zzqj(keyt.getClass(), cls);
        if (this.zza.containsKey(zzqjVar)) {
            return (SerializationT) this.zza.get(zzqjVar).zza(keyt, zzchVar);
        }
        String valueOf = String.valueOf(zzqjVar);
        throw new GeneralSecurityException("No Key serializer for " + valueOf + " available");
    }

    public final <ParametersT extends zzcb, SerializationT extends zzqf> SerializationT zza(ParametersT parameterst, Class<SerializationT> cls) throws GeneralSecurityException {
        zzqj zzqjVar = new zzqj(parameterst.getClass(), cls);
        if (this.zzc.containsKey(zzqjVar)) {
            return (SerializationT) this.zzc.get(zzqjVar).zza(parameterst);
        }
        String valueOf = String.valueOf(zzqjVar);
        throw new GeneralSecurityException("No Key Format serializer for " + valueOf + " available");
    }
}
