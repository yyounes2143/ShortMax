package com.google.android.gms.internal.p003firebaseauthapi;

import java.io.Serializable;
import java.util.regex.Pattern;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzo  reason: invalid package */
/* loaded from: classes4.dex */
final class zzo extends zzl implements Serializable {
    private final Pattern zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(Pattern pattern) {
        this.zza = (Pattern) zzu.zza(pattern);
    }

    public final String toString() {
        return this.zza.toString();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzl
    public final zzm zza(CharSequence charSequence) {
        return new zzn(this.zza.matcher(charSequence));
    }
}
