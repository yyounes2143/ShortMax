package com.google.android.gms.internal.common;

import com.ss.texturerender.TextureRenderKeys;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
/* loaded from: classes4.dex */
public final class zzaj extends zzah {
    static final zzah zza = new zzaj(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaj(Object[] objArr, int i10) {
        this.zzb = objArr;
        this.zzc = i10;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzr.zzb(i10, this.zzc, TextureRenderKeys.KEY_IS_INDEX);
        Object obj = this.zzb[i10];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.common.zzac
    public final Object[] zzb() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.common.zzac
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int zzd() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.common.zzac
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.common.zzah, com.google.android.gms.internal.common.zzac
    final int zzg(Object[] objArr, int i10) {
        Object[] objArr2 = this.zzb;
        int i11 = this.zzc;
        System.arraycopy(objArr2, 0, objArr, 0, i11);
        return i11;
    }
}
