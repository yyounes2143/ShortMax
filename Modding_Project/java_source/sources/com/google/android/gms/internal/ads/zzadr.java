package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzadr implements zzafb {
    private final byte[] zza = new byte[4096];

    @Override // com.google.android.gms.internal.ads.zzafb
    public final /* synthetic */ int zzf(zzl zzlVar, int i10, boolean z10) {
        return zzaez.zza(this, zzlVar, i10, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final int zzg(zzl zzlVar, int i10, boolean z10, int i11) throws IOException {
        int zza = zzlVar.zza(this.zza, 0, Math.min(4096, i10));
        if (zza == -1) {
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final /* synthetic */ void zzr(zzen zzenVar, int i10) {
        zzaez.zzb(this, zzenVar, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final void zzs(zzen zzenVar, int i10, int i11) {
        zzenVar.zzM(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final /* synthetic */ void zzl(long j10) {
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final void zzm(zzz zzzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final void zzt(long j10, int i10, int i11, int i12, @Nullable zzafa zzafaVar) {
    }
}
