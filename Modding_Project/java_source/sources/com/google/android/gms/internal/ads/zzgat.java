package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgat extends zzfyv {
    final transient Object zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgat(Object obj) {
        obj.getClass();
        this.zza = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzfyl, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfyv, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzfyv, com.google.android.gms.internal.ads.zzfyl, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzfyz(this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.zza.toString();
        return "[" + obj + "]";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzfyl
    public final int zza(Object[] objArr, int i10) {
        objArr[i10] = this.zza;
        return i10 + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfyv, com.google.android.gms.internal.ads.zzfyl
    public final zzfyq zzd() {
        return zzfyq.zzo(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfyv, com.google.android.gms.internal.ads.zzfyl
    public final zzgaw zze() {
        return new zzfyz(this.zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzfyl
    public final boolean zzf() {
        return false;
    }
}
