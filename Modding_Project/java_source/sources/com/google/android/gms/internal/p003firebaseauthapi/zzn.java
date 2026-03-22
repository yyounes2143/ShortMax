package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.regex.Matcher;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzn  reason: invalid package */
/* loaded from: classes4.dex */
final class zzn extends zzm {
    private final Matcher zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(Matcher matcher) {
        this.zza = (Matcher) zzu.zza(matcher);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzm
    public final int zza() {
        return this.zza.end();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzm
    public final int zzb() {
        return this.zza.start();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzm
    public final boolean zzc() {
        return this.zza.matches();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzm
    public final boolean zza(int i10) {
        return this.zza.find(i10);
    }
}
