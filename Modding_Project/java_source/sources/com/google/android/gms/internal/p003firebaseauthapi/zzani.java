package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzani  reason: invalid package */
/* loaded from: classes4.dex */
final class zzani implements Iterator {
    private int zza;
    private Iterator zzb;
    private final /* synthetic */ zzang zzc;

    private final Iterator zza() {
        Map map;
        if (this.zzb == null) {
            map = this.zzc.zzf;
            this.zzb = map.entrySet().iterator();
        }
        return this.zzb;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i10;
        int i11 = this.zza;
        if (i11 > 0) {
            i10 = this.zzc.zzb;
            if (i11 <= i10) {
                return true;
            }
        }
        if (zza().hasNext()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Object[] objArr;
        if (!zza().hasNext()) {
            objArr = this.zzc.zza;
            int i10 = this.zza - 1;
            this.zza = i10;
            return (zzank) objArr[i10];
        }
        return (Map.Entry) zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    private zzani(zzang zzangVar) {
        int i10;
        Objects.requireNonNull(zzangVar);
        this.zzc = zzangVar;
        i10 = zzangVar.zzb;
        this.zza = i10;
    }
}
