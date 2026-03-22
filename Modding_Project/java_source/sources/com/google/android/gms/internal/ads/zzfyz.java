package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfyz extends zzgaw {
    private final Object zza;
    private boolean zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfyz(Object obj) {
        this.zza = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.zzb) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.zzb) {
            this.zzb = true;
            return this.zza;
        }
        throw new NoSuchElementException();
    }
}
