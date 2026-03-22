package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzxh;
import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzbw  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzbw {
    private final zzxh.zza zza;

    private zzbw(zzxh.zza zzaVar) {
        this.zza = zzaVar;
    }

    public final synchronized zzbm zza() throws GeneralSecurityException {
        return zzbm.zza((zzxh) ((zzalf) this.zza.zze()));
    }

    public static zzbw zza(zzbm zzbmVar) {
        return new zzbw(zzbmVar.zzd().zzn());
    }
}
