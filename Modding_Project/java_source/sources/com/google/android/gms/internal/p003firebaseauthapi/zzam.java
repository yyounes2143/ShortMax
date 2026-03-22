package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzam  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzam extends zzah {
    private final transient int zza;
    private final transient int zzb;
    private final /* synthetic */ zzah zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzam(zzah zzahVar, int i10, int i11) {
        Objects.requireNonNull(zzahVar);
        this.zzc = zzahVar;
        this.zza = i10;
        this.zzb = i11;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzu.zza(i10, this.zzb);
        return this.zzc.get(i10 + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzah, java.util.List
    public final /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzag
    final int zza() {
        return this.zzc.zzb() + this.zza + this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzag
    public final int zzb() {
        return this.zzc.zzb() + this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzag
    public final Object[] zze() {
        return this.zzc.zze();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzah
    public final zzah zza(int i10, int i11) {
        zzu.zza(i10, i11, this.zzb);
        zzah zzahVar = this.zzc;
        int i12 = this.zza;
        return (zzah) zzahVar.subList(i10 + i12, i11 + i12);
    }
}
