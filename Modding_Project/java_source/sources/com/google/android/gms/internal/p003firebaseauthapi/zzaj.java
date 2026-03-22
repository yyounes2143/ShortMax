package com.google.android.gms.internal.p003firebaseauthapi;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaj  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaj<E> extends zzab<E> {
    private final zzah<E> zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaj(zzah<E> zzahVar, int i10) {
        super(zzahVar.size(), i10);
        this.zza = zzahVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzab
    protected final E zza(int i10) {
        return this.zza.get(i10);
    }
}
