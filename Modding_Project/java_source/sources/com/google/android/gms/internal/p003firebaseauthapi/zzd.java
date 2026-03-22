package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzd  reason: invalid package */
/* loaded from: classes4.dex */
abstract class zzd<T> implements Iterator<T> {
    private int zza = 2;
    private T zzb;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i10 = this.zza;
        if (i10 != 4) {
            int i11 = i10 - 1;
            if (i11 == 0) {
                return true;
            }
            if (i11 != 2) {
                this.zza = 4;
                this.zzb = zza();
                if (this.zza != 3) {
                    this.zza = 1;
                    return true;
                }
            }
            return false;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.zza = 2;
            T t10 = this.zzb;
            this.zzb = null;
            return t10;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    protected abstract T zza();

    /* JADX INFO: Access modifiers changed from: protected */
    public final T zzb() {
        this.zza = 3;
        return null;
    }
}
