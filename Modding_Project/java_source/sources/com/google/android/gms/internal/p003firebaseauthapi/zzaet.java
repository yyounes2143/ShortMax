package com.google.android.gms.internal.p003firebaseauthapi;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaet  reason: invalid package */
/* loaded from: classes4.dex */
public class zzaet {
    final zzafe zza;
    private final String zzb;

    public zzaet(String str, zzafe zzafeVar) {
        this.zzb = str;
        this.zza = zzafeVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zza(String str, String str2) {
        String str3 = this.zzb;
        return str3 + str + "?key=" + str2;
    }
}
