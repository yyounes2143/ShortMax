package com.google.android.gms.internal.p003firebaseauthapi;

import android.text.TextUtils;
import com.google.firebase.auth.PhoneAuthCredential;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzafw  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzafw {
    public static zzajg zza(PhoneAuthCredential phoneAuthCredential) {
        if (!TextUtils.isEmpty(phoneAuthCredential.zzd())) {
            return zzajg.zzb(phoneAuthCredential.zzb(), phoneAuthCredential.zzd(), phoneAuthCredential.zze());
        }
        return zzajg.zza(phoneAuthCredential.zzc(), phoneAuthCredential.w(), phoneAuthCredential.zze());
    }
}
