package com.google.android.gms.internal.consent_sdk;

import com.ss.texturerender.TextureRenderKeys;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
/* loaded from: classes4.dex */
public final class zzdh extends zzde {
    static final zzde zza = new zzdh(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdh(Object[] objArr, int i10) {
        this.zzb = objArr;
        this.zzc = i10;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzcx.zza(i10, this.zzc, TextureRenderKeys.KEY_IS_INDEX);
        Object obj = this.zzb[i10];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzde, com.google.android.gms.internal.consent_sdk.zzdb
    final int zza(Object[] objArr, int i10) {
        Object[] objArr2 = this.zzb;
        int i11 = this.zzc;
        System.arraycopy(objArr2, 0, objArr, 0, i11);
        return i11;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdb
    final int zzb() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.consent_sdk.zzdb
    public final int zzc() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.consent_sdk.zzdb
    public final Object[] zze() {
        return this.zzb;
    }
}
