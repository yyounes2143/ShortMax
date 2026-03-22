package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaf  reason: invalid package */
/* loaded from: classes4.dex */
public class zzaf<E> extends zzai<E> {
    Object[] zza;
    int zzb;
    boolean zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaf(int i10) {
        zzae.zza(4, "initialCapacity");
        this.zza = new Object[4];
        this.zzb = 0;
    }

    public zzaf<E> zza(E e10) {
        zzu.zza(e10);
        Object[] objArr = this.zza;
        int zza = zzai.zza(objArr.length, this.zzb + 1);
        if (zza > objArr.length || this.zzc) {
            this.zza = Arrays.copyOf(this.zza, zza);
            this.zzc = false;
        }
        Object[] objArr2 = this.zza;
        int i10 = this.zzb;
        this.zzb = i10 + 1;
        objArr2[i10] = e10;
        return this;
    }
}
