package com.google.android.gms.internal.fido;

import com.ss.texturerender.TextureRenderKeys;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public final class zzax extends zzaz {
    private final transient zzaz zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzax(zzaz zzazVar) {
        this.zza = zzazVar;
    }

    private final int zzl(int i10) {
        return (this.zza.size() - 1) - i10;
    }

    @Override // com.google.android.gms.internal.fido.zzaz, com.google.android.gms.internal.fido.zzav, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.contains(obj);
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzap.zza(i10, this.zza.size(), TextureRenderKeys.KEY_IS_INDEX);
        return this.zza.get(zzl(i10));
    }

    @Override // com.google.android.gms.internal.fido.zzaz, java.util.List
    public final int indexOf(Object obj) {
        int lastIndexOf = this.zza.lastIndexOf(obj);
        if (lastIndexOf >= 0) {
            return zzl(lastIndexOf);
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.fido.zzaz, java.util.List
    public final int lastIndexOf(Object obj) {
        int indexOf = this.zza.indexOf(obj);
        if (indexOf >= 0) {
            return zzl(indexOf);
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.fido.zzaz, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }

    @Override // com.google.android.gms.internal.fido.zzaz
    public final zzaz zzf() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.fido.zzaz
    public final zzaz zzg(int i10, int i11) {
        zzap.zze(i10, i11, this.zza.size());
        zzaz zzazVar = this.zza;
        return zzazVar.subList(zzazVar.size() - i11, this.zza.size() - i10).zzf();
    }
}
