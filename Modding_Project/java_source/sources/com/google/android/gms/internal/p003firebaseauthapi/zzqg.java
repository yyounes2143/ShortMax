package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.SecureRandom;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzqg  reason: invalid package */
/* loaded from: classes4.dex */
final class zzqg extends ThreadLocal<SecureRandom> {
    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ SecureRandom initialValue() {
        return zzqd.zza();
    }
}
