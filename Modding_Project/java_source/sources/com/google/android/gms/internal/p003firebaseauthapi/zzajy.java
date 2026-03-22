package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.NoSuchElementException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzajy  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzajy extends zzaka {
    private int zza;
    private final int zzb;
    private final /* synthetic */ zzajv zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajy(zzajv zzajvVar) {
        Objects.requireNonNull(zzajvVar);
        this.zzc = zzajvVar;
        this.zza = 0;
        this.zzb = zzajvVar.zzb();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zza < this.zzb) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzakb
    public final byte zza() {
        int i10 = this.zza;
        if (i10 < this.zzb) {
            this.zza = i10 + 1;
            return this.zzc.zzb(i10);
        }
        throw new NoSuchElementException();
    }
}
