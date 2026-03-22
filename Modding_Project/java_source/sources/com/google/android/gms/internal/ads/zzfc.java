package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfc extends zzff {
    public final long zza;
    public final List zzb;
    public final List zzc;

    public zzfc(int i10, long j10) {
        super(i10, null);
        this.zza = j10;
        this.zzb = new ArrayList();
        this.zzc = new ArrayList();
    }

    @Override // com.google.android.gms.internal.ads.zzff
    public final String toString() {
        List list = this.zzb;
        String zze = zzff.zze(this.zzd);
        String arrays = Arrays.toString(list.toArray());
        String arrays2 = Arrays.toString(this.zzc.toArray());
        return zze + " leaves: " + arrays + " containers: " + arrays2;
    }

    @Nullable
    public final zzfc zza(int i10) {
        List list = this.zzc;
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            zzfc zzfcVar = (zzfc) list.get(i11);
            if (zzfcVar.zzd == i10) {
                return zzfcVar;
            }
        }
        return null;
    }

    @Nullable
    public final zzfd zzb(int i10) {
        List list = this.zzb;
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            zzfd zzfdVar = (zzfd) list.get(i11);
            if (zzfdVar.zzd == i10) {
                return zzfdVar;
            }
        }
        return null;
    }

    public final void zzc(zzfc zzfcVar) {
        this.zzc.add(zzfcVar);
    }

    public final void zzd(zzfd zzfdVar) {
        this.zzb.add(zzfdVar);
    }
}
