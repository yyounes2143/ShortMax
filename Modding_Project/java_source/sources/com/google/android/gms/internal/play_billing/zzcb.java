package com.google.android.gms.internal.play_billing;

import com.ss.texturerender.TextureRenderKeys;
import java.util.AbstractMap;
import java.util.Objects;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
final class zzcb extends zzbt {
    final /* synthetic */ zzcc zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcb(zzcc zzccVar) {
        Objects.requireNonNull(zzccVar);
        this.zza = zzccVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        int i11;
        Object[] objArr;
        Object[] objArr2;
        zzcc zzccVar = this.zza;
        i11 = zzccVar.zzc;
        zzbg.zza(i10, i11, TextureRenderKeys.KEY_IS_INDEX);
        objArr = zzccVar.zzb;
        int i12 = i10 + i10;
        Object obj = objArr[i12];
        Objects.requireNonNull(obj);
        objArr2 = zzccVar.zzb;
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

    @Override // com.google.android.gms.internal.play_billing.zzbq
    public final boolean zzf() {
        return true;
    }
}
