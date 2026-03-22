package com.google.android.gms.internal.auth;

import java.util.NoSuchElementException;
/* compiled from: com.google.android.gms:play-services-auth-base@@18.0.10 */
/* loaded from: classes4.dex */
final class zzdw extends zzdy {
    final /* synthetic */ zzef zza;
    private int zzb = 0;
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdw(zzef zzefVar) {
        this.zza = zzefVar;
        this.zzc = zzefVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zzb < this.zzc) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.auth.zzea
    public final byte zza() {
        int i10 = this.zzb;
        if (i10 < this.zzc) {
            this.zzb = i10 + 1;
            return this.zza.zzb(i10);
        }
        throw new NoSuchElementException();
    }
}
