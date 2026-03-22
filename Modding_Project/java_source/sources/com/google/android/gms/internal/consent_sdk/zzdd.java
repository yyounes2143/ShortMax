package com.google.android.gms.internal.consent_sdk;

import com.ss.texturerender.TextureRenderKeys;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
/* loaded from: classes4.dex */
public final class zzdd extends zzde {
    final transient int zza;
    final transient int zzb;
    final /* synthetic */ zzde zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdd(zzde zzdeVar, int i10, int i11) {
        this.zzc = zzdeVar;
        this.zza = i10;
        this.zzb = i11;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzcx.zza(i10, this.zzb, TextureRenderKeys.KEY_IS_INDEX);
        return this.zzc.get(i10 + this.zza);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzde, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdb
    final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.consent_sdk.zzdb
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.consent_sdk.zzdb
    public final Object[] zze() {
        return this.zzc.zze();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzde
    public final zzde zzf(int i10, int i11) {
        zzcx.zzc(i10, i11, this.zzb);
        int i12 = this.zza;
        return this.zzc.subList(i10 + i12, i11 + i12);
    }
}
