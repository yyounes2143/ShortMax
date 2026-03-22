package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaov implements zzadv {
    private zzady zza;
    private zzafb zzb;
    private zzaot zze;
    private int zzc = 0;
    private long zzd = -1;
    private int zzf = -1;
    private long zzg = -1;

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00e9, code lost:
        if (r1 != 65534) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00f0, code lost:
        if (r2 == 32) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010f  */
    @Override // com.google.android.gms.internal.ads.zzadv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzadw r19, com.google.android.gms.internal.ads.zzaer r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaov.zzb(com.google.android.gms.internal.ads.zzadw, com.google.android.gms.internal.ads.zzaer):int");
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ List zzd() {
        return zzfyq.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zze(zzady zzadyVar) {
        this.zza = zzadyVar;
        this.zzb = zzadyVar.zzw(0, 1);
        zzadyVar.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzf(long j10, long j11) {
        int i10;
        if (j10 == 0) {
            i10 = 0;
        } else {
            i10 = 4;
        }
        this.zzc = i10;
        zzaot zzaotVar = this.zze;
        if (zzaotVar != null) {
            zzaotVar.zzb(j11);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final boolean zzi(zzadw zzadwVar) throws IOException {
        return zzaoy.zzc(zzadwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ zzadv zzc() {
        return this;
    }
}
