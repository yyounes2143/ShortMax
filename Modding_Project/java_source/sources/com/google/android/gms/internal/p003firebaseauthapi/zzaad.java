package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.Key;
import java.util.Objects;
import javax.crypto.Mac;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaad  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaad extends ThreadLocal<Mac> {
    private final /* synthetic */ zzaae zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaad(zzaae zzaaeVar) {
        Objects.requireNonNull(zzaaeVar);
        this.zza = zzaaeVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.ThreadLocal
    /* renamed from: zza */
    public final Mac initialValue() {
        String str;
        Key key;
        try {
            zzzj<zzzw, Mac> zzzjVar = zzzj.zzb;
            str = this.zza.zzc;
            Mac zza = zzzjVar.zza(str);
            key = this.zza.zzd;
            zza.init(key);
            return zza;
        } catch (GeneralSecurityException e10) {
            throw new IllegalStateException(e10);
        }
    }
}
