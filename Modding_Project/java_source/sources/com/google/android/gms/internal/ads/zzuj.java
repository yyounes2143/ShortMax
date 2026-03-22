package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzuj implements zzwa {
    private final zzaea zza;
    @Nullable
    private zzadv zzb;
    @Nullable
    private zzadw zzc;

    public zzuj(zzaea zzaeaVar) {
        this.zza = zzaeaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwa
    public final int zza(zzaer zzaerVar) throws IOException {
        zzadv zzadvVar = this.zzb;
        zzadvVar.getClass();
        zzadw zzadwVar = this.zzc;
        zzadwVar.getClass();
        return zzadvVar.zzb(zzadwVar, zzaerVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwa
    public final long zzb() {
        zzadw zzadwVar = this.zzc;
        if (zzadwVar != null) {
            return zzadwVar.zzf();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzwa
    public final void zzc() {
        zzadv zzadvVar = this.zzb;
        if (zzadvVar != null && (zzadvVar instanceof zzaie)) {
            ((zzaie) zzadvVar).zza();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
        if (r6.zzf() != r11) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004f, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0075, code lost:
        if (r6.zzf() != r11) goto L29;
     */
    @Override // com.google.android.gms.internal.ads.zzwa
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(com.google.android.gms.internal.ads.zzl r8, android.net.Uri r9, java.util.Map r10, long r11, long r13, com.google.android.gms.internal.ads.zzady r15) throws java.io.IOException {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzadl r6 = new com.google.android.gms.internal.ads.zzadl
            r0 = r6
            r1 = r8
            r2 = r11
            r4 = r13
            r0.<init>(r1, r2, r4)
            r7.zzc = r6
            com.google.android.gms.internal.ads.zzadv r8 = r7.zzb
            if (r8 == 0) goto L10
            return
        L10:
            com.google.android.gms.internal.ads.zzaea r8 = r7.zza
            com.google.android.gms.internal.ads.zzadv[] r8 = r8.zza(r9, r10)
            int r10 = r8.length
            com.google.android.gms.internal.ads.zzfyn r13 = com.google.android.gms.internal.ads.zzfyq.zzi(r10)
            r14 = 0
            r0 = 1
            if (r10 != r0) goto L24
            r8 = r8[r14]
            r7.zzb = r8
            goto L7f
        L24:
            r1 = r14
        L25:
            if (r1 >= r10) goto L7b
            r2 = r8[r1]
            boolean r3 = r2.zzi(r6)     // Catch: java.lang.Throwable -> L38 java.io.EOFException -> L6b
            if (r3 == 0) goto L3a
            r7.zzb = r2     // Catch: java.lang.Throwable -> L38 java.io.EOFException -> L6b
            com.google.android.gms.internal.ads.zzdd.zzf(r0)
            r6.zzj()
            goto L7b
        L38:
            r8 = move-exception
            goto L57
        L3a:
            java.util.List r2 = r2.zzd()     // Catch: java.lang.Throwable -> L38 java.io.EOFException -> L6b
            r13.zzh(r2)     // Catch: java.lang.Throwable -> L38 java.io.EOFException -> L6b
            com.google.android.gms.internal.ads.zzadv r2 = r7.zzb
            if (r2 != 0) goto L4d
            long r2 = r6.zzf()
            int r2 = (r2 > r11 ? 1 : (r2 == r11 ? 0 : -1))
            if (r2 != 0) goto L4f
        L4d:
            r2 = r0
            goto L50
        L4f:
            r2 = r14
        L50:
            com.google.android.gms.internal.ads.zzdd.zzf(r2)
            r6.zzj()
            goto L78
        L57:
            com.google.android.gms.internal.ads.zzadv r9 = r7.zzb
            if (r9 != 0) goto L63
            long r9 = r6.zzf()
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 != 0) goto L64
        L63:
            r14 = r0
        L64:
            com.google.android.gms.internal.ads.zzdd.zzf(r14)
            r6.zzj()
            throw r8
        L6b:
            com.google.android.gms.internal.ads.zzadv r2 = r7.zzb
            if (r2 != 0) goto L4d
            long r2 = r6.zzf()
            int r2 = (r2 > r11 ? 1 : (r2 == r11 ? 0 : -1))
            if (r2 != 0) goto L4f
            goto L4d
        L78:
            int r1 = r1 + 1
            goto L25
        L7b:
            com.google.android.gms.internal.ads.zzadv r10 = r7.zzb
            if (r10 == 0) goto L85
        L7f:
            com.google.android.gms.internal.ads.zzadv r8 = r7.zzb
            r8.zze(r15)
            return
        L85:
            com.google.android.gms.internal.ads.zzxl r10 = new com.google.android.gms.internal.ads.zzxl
            com.google.android.gms.internal.ads.zzfyq r8 = com.google.android.gms.internal.ads.zzfyq.zzm(r8)
            com.google.android.gms.internal.ads.zzui r11 = new com.google.android.gms.internal.ads.zzui
            r11.<init>()
            java.util.List r8 = com.google.android.gms.internal.ads.zzfzg.zzc(r8, r11)
            java.util.Iterator r8 = r8.iterator()
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = ", "
            com.google.android.gms.internal.ads.zzfvh.zzc(r11, r8, r12)
            java.lang.String r8 = r11.toString()
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "None of the available extractors ("
            r11.append(r12)
            r11.append(r8)
            java.lang.String r8 = ") could read the stream."
            r11.append(r8)
            java.lang.String r8 = r11.toString()
            com.google.android.gms.internal.ads.zzfyq r11 = r13.zzi()
            r10.<init>(r8, r9, r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuj.zzd(com.google.android.gms.internal.ads.zzl, android.net.Uri, java.util.Map, long, long, com.google.android.gms.internal.ads.zzady):void");
    }

    @Override // com.google.android.gms.internal.ads.zzwa
    public final void zze() {
        if (this.zzb != null) {
            this.zzb = null;
        }
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzwa
    public final void zzf(long j10, long j11) {
        zzadv zzadvVar = this.zzb;
        zzadvVar.getClass();
        zzadvVar.zzf(j10, j11);
    }
}
