package com.google.android.recaptcha.internal;

import java.util.NoSuchElementException;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
final class zzkx extends zzky {
    final /* synthetic */ zzle zza;
    private int zzb = 0;
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkx(zzle zzleVar) {
        this.zza = zzleVar;
        this.zzc = zzleVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zzb < this.zzc) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.recaptcha.internal.zzla
    public final byte zza() {
        int i10 = this.zzb;
        if (i10 < this.zzc) {
            this.zzb = i10 + 1;
            return this.zza.zzb(i10);
        }
        throw new NoSuchElementException();
    }
}
