package com.google.android.gms.internal.fido;

import com.ss.texturerender.TextureRenderKeys;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public final class zzay extends zzaz {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzaz zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzay(zzaz zzazVar, int i10, int i11) {
        this.zzc = zzazVar;
        this.zza = i10;
        this.zzb = i11;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzap.zza(i10, this.zzb, TextureRenderKeys.KEY_IS_INDEX);
        return this.zzc.get(i10 + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.fido.zzaz, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.fido.zzav
    public final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.fido.zzav
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.fido.zzav
    public final Object[] zze() {
        return this.zzc.zze();
    }

    @Override // com.google.android.gms.internal.fido.zzaz
    public final zzaz zzg(int i10, int i11) {
        zzap.zze(i10, i11, this.zzb);
        zzaz zzazVar = this.zzc;
        int i12 = this.zza;
        return zzazVar.subList(i10 + i12, i11 + i12);
    }
}
