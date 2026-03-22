package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfdv {
    private final Deque zza = new LinkedBlockingDeque();
    private final Callable zzb;
    private final zzgdy zzc;

    public zzfdv(Callable callable, zzgdy zzgdyVar) {
        this.zzb = callable;
        this.zzc = zzgdyVar;
    }

    @Nullable
    public final synchronized com.google.common.util.concurrent.e zza() {
        zzc(1);
        return (com.google.common.util.concurrent.e) this.zza.poll();
    }

    public final synchronized void zzb(com.google.common.util.concurrent.e eVar) {
        this.zza.addFirst(eVar);
    }

    public final synchronized void zzc(int i10) {
        Deque deque = this.zza;
        int size = i10 - deque.size();
        for (int i11 = 0; i11 < size; i11++) {
            deque.add(this.zzc.zzb(this.zzb));
        }
    }
}
