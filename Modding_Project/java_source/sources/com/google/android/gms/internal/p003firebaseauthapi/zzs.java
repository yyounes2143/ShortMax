package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.regex.Pattern;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzs  reason: invalid package */
/* loaded from: classes4.dex */
final class zzs implements zzq {
    private zzs() {
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzq
    public final zzl zza(String str) {
        return new zzo(Pattern.compile(str));
    }
}
