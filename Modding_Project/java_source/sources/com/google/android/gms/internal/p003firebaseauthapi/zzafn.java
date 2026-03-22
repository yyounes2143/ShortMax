package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzafn  reason: invalid package */
/* loaded from: classes4.dex */
final class zzafn implements Runnable {
    private final /* synthetic */ zzafm zza;
    private final /* synthetic */ zzafh zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzafn(zzafh zzafhVar, zzafm zzafmVar) {
        this.zza = zzafmVar;
        Objects.requireNonNull(zzafhVar);
        this.zzb = zzafhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzb.zza.zzh) {
            try {
                if (!this.zzb.zza.zzh.isEmpty()) {
                    this.zza.zza(this.zzb.zza.zzh.get(0), new Object[0]);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
