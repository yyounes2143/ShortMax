package com.google.android.gms.internal.ads;

import com.ss.texturerender.TextureRenderKeys;
import java.util.AbstractMap;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgad extends zzfyq {
    final /* synthetic */ zzgae zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgad(zzgae zzgaeVar) {
        Objects.requireNonNull(zzgaeVar);
        this.zza = zzgaeVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        int i11;
        Object[] objArr;
        Object[] objArr2;
        zzgae zzgaeVar = this.zza;
        i11 = zzgaeVar.zzc;
        zzfvp.zza(i10, i11, TextureRenderKeys.KEY_IS_INDEX);
        objArr = zzgaeVar.zzb;
        int i12 = i10 + i10;
        Object obj = objArr[i12];
        Objects.requireNonNull(obj);
        objArr2 = zzgaeVar.zzb;
        Object obj2 = objArr2[i12 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i10;
        i10 = this.zza.zzc;
        return i10;
    }

    @Override // com.google.android.gms.internal.ads.zzfyl
    public final boolean zzf() {
        return true;
    }
}
