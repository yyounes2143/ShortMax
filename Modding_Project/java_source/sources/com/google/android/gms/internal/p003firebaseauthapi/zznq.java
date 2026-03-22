package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zziv;
import java.security.GeneralSecurityException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zznq  reason: invalid package */
/* loaded from: classes4.dex */
public final class zznq {
    private static final Logger zza = Logger.getLogger(zznq.class.getName());
    private static final zznq zzb = new zznq();
    private ConcurrentMap<String, zzbh<?>> zzc = new ConcurrentHashMap();
    private ConcurrentMap<String, Boolean> zzd = new ConcurrentHashMap();

    private final synchronized zzbh<?> zzc(String str) throws GeneralSecurityException {
        if (this.zzc.containsKey(str)) {
        } else {
            throw new GeneralSecurityException("No key manager found for key type " + str + ", see https://developers.google.com/tink/faq/registration_errors");
        }
        return this.zzc.get(str);
    }

    public final <P> zzbh<P> zza(String str, Class<P> cls) throws GeneralSecurityException {
        zzbh<P> zzbhVar = (zzbh<P>) zzc(str);
        if (zzbhVar.zza().equals(cls)) {
            return zzbhVar;
        }
        String name = cls.getName();
        String valueOf = String.valueOf(zzbhVar.getClass());
        String valueOf2 = String.valueOf(zzbhVar.zza());
        throw new GeneralSecurityException("Primitive type " + name + " not supported by key manager of type " + valueOf + ", which only supports: " + valueOf2);
    }

    public final boolean zzb(String str) {
        return this.zzd.get(str).booleanValue();
    }

    public final zzbh<?> zza(String str) throws GeneralSecurityException {
        return zzc(str);
    }

    public static zznq zza() {
        return zzb;
    }

    private final synchronized void zza(zzbh<?> zzbhVar, boolean z10, boolean z11) throws GeneralSecurityException {
        try {
            String zzb2 = zzbhVar.zzb();
            if (z11 && this.zzd.containsKey(zzb2) && !this.zzd.get(zzb2).booleanValue()) {
                throw new GeneralSecurityException("New keys are already disallowed for key type " + zzb2);
            }
            zzbh<?> zzbhVar2 = this.zzc.get(zzb2);
            if (zzbhVar2 != null && !zzbhVar2.getClass().equals(zzbhVar.getClass())) {
                Logger logger = zza;
                Level level = Level.WARNING;
                logger.logp(level, "com.google.crypto.tink.internal.KeyManagerRegistry", "insertKeyManager", "Attempted overwrite of a registered key manager for key type " + zzb2);
                throw new GeneralSecurityException(String.format("typeUrl (%s) is already registered with %s, cannot be re-registered with %s", zzb2, zzbhVar2.getClass().getName(), zzbhVar.getClass().getName()));
            }
            this.zzc.putIfAbsent(zzb2, zzbhVar);
            this.zzd.put(zzb2, Boolean.valueOf(z11));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized <P> void zza(zzbh<P> zzbhVar, boolean z10) throws GeneralSecurityException {
        zza(zzbhVar, zziv.zza.zza, z10);
    }

    public final synchronized <P> void zza(zzbh<P> zzbhVar, zziv.zza zzaVar, boolean z10) throws GeneralSecurityException {
        if (zzaVar.zza()) {
            zza((zzbh<?>) zzbhVar, false, z10);
        } else {
            throw new GeneralSecurityException("Cannot register key manager: FIPS compatibility insufficient");
        }
    }
}
