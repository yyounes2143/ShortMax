package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzafi implements zzadv {
    private static final int[] zza = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final int[] zzb = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
    private static final byte[] zzc;
    private static final byte[] zzd;
    private final byte[] zze;
    private final zzafb zzf;
    private boolean zzg;
    private long zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private zzady zzn;
    private zzafb zzo;
    private zzafb zzp;
    private zzaeu zzq;
    private long zzr;
    private boolean zzs;

    static {
        String str = zzex.zza;
        Charset charset = StandardCharsets.UTF_8;
        zzc = "#!AMR\n".getBytes(charset);
        zzd = "#!AMR-WB\n".getBytes(charset);
    }

    public zzafi() {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0035 A[Catch: EOFException -> 0x00b0, TryCatch #0 {EOFException -> 0x00b0, blocks: (B:5:0x0008, B:7:0x0017, B:21:0x0035, B:23:0x003e, B:22:0x003a, B:40:0x007c, B:41:0x0099, B:42:0x009a, B:43:0x00af), top: B:45:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003a A[Catch: EOFException -> 0x00b0, TryCatch #0 {EOFException -> 0x00b0, blocks: (B:5:0x0008, B:7:0x0017, B:21:0x0035, B:23:0x003e, B:22:0x003a, B:40:0x007c, B:41:0x0099, B:42:0x009a, B:43:0x00af), top: B:45:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zza(com.google.android.gms.internal.ads.zzadw r12) throws java.io.IOException {
        /*
            r11 = this;
            int r0 = r11.zzj
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L8
            goto L50
        L8:
            r12.zzj()     // Catch: java.io.EOFException -> Lb0
            byte[] r0 = r11.zze     // Catch: java.io.EOFException -> Lb0
            r12.zzh(r0, r3, r2)     // Catch: java.io.EOFException -> Lb0
            r0 = r0[r3]     // Catch: java.io.EOFException -> Lb0
            r4 = r0 & 131(0x83, float:1.84E-43)
            r5 = 0
            if (r4 > 0) goto L9a
            int r0 = r0 >> 3
            boolean r4 = r11.zzg     // Catch: java.io.EOFException -> Lb0
            r0 = r0 & 15
            if (r4 == 0) goto L28
            r6 = 10
            if (r0 < r6) goto L33
            r6 = 13
            if (r0 <= r6) goto L28
            goto L33
        L28:
            if (r4 != 0) goto L75
            r6 = 12
            if (r0 < r6) goto L33
            r6 = 14
            if (r0 > r6) goto L33
            goto L75
        L33:
            if (r4 == 0) goto L3a
            int[] r4 = com.google.android.gms.internal.ads.zzafi.zzb     // Catch: java.io.EOFException -> Lb0
            r0 = r4[r0]     // Catch: java.io.EOFException -> Lb0
            goto L3e
        L3a:
            int[] r4 = com.google.android.gms.internal.ads.zzafi.zza     // Catch: java.io.EOFException -> Lb0
            r0 = r4[r0]     // Catch: java.io.EOFException -> Lb0
        L3e:
            r11.zzi = r0     // Catch: java.io.EOFException -> Lb0
            r11.zzj = r0
            int r4 = r11.zzk
            if (r4 != r1) goto L49
            r11.zzk = r0
            r4 = r0
        L49:
            if (r4 != r0) goto L50
            int r4 = r11.zzl
            int r4 = r4 + r2
            r11.zzl = r4
        L50:
            com.google.android.gms.internal.ads.zzafb r4 = r11.zzp
            int r12 = r4.zzf(r12, r0, r2)
            if (r12 != r1) goto L59
            return r1
        L59:
            int r0 = r11.zzj
            int r0 = r0 - r12
            r11.zzj = r0
            if (r0 <= 0) goto L61
            return r3
        L61:
            com.google.android.gms.internal.ads.zzafb r4 = r11.zzp
            long r5 = r11.zzh
            int r8 = r11.zzi
            r9 = 0
            r10 = 0
            r7 = 1
            r4.zzt(r5, r7, r8, r9, r10)
            long r0 = r11.zzh
            r4 = 20000(0x4e20, double:9.8813E-320)
            long r0 = r0 + r4
            r11.zzh = r0
            return r3
        L75:
            java.lang.String r12 = "WB"
            java.lang.String r3 = "NB"
            if (r2 == r4) goto L7c
            r12 = r3
        L7c:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.EOFException -> Lb0
            r2.<init>()     // Catch: java.io.EOFException -> Lb0
            java.lang.String r3 = "Illegal AMR "
            r2.append(r3)     // Catch: java.io.EOFException -> Lb0
            r2.append(r12)     // Catch: java.io.EOFException -> Lb0
            java.lang.String r12 = " frame type "
            r2.append(r12)     // Catch: java.io.EOFException -> Lb0
            r2.append(r0)     // Catch: java.io.EOFException -> Lb0
            java.lang.String r12 = r2.toString()     // Catch: java.io.EOFException -> Lb0
            com.google.android.gms.internal.ads.zzaz r12 = com.google.android.gms.internal.ads.zzaz.zza(r12, r5)     // Catch: java.io.EOFException -> Lb0
            throw r12     // Catch: java.io.EOFException -> Lb0
        L9a:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.io.EOFException -> Lb0
            r12.<init>()     // Catch: java.io.EOFException -> Lb0
            java.lang.String r2 = "Invalid padding bits for frame header "
            r12.append(r2)     // Catch: java.io.EOFException -> Lb0
            r12.append(r0)     // Catch: java.io.EOFException -> Lb0
            java.lang.String r12 = r12.toString()     // Catch: java.io.EOFException -> Lb0
            com.google.android.gms.internal.ads.zzaz r12 = com.google.android.gms.internal.ads.zzaz.zza(r12, r5)     // Catch: java.io.EOFException -> Lb0
            throw r12     // Catch: java.io.EOFException -> Lb0
        Lb0:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafi.zza(com.google.android.gms.internal.ads.zzadw):int");
    }

    private static boolean zzg(zzadw zzadwVar, byte[] bArr) throws IOException {
        zzadwVar.zzj();
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        zzadwVar.zzh(bArr2, 0, length);
        return Arrays.equals(bArr2, bArr);
    }

    private final boolean zzh(zzadw zzadwVar) throws IOException {
        byte[] bArr = zzc;
        if (zzg(zzadwVar, bArr)) {
            this.zzg = false;
            zzadwVar.zzk(bArr.length);
            return true;
        }
        byte[] bArr2 = zzd;
        if (!zzg(zzadwVar, bArr2)) {
            return false;
        }
        this.zzg = true;
        zzadwVar.zzk(bArr2.length);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final int zzb(zzadw zzadwVar, zzaer zzaerVar) throws IOException {
        String str;
        int i10;
        int i11;
        zzdd.zzb(this.zzo);
        String str2 = zzex.zza;
        if (zzadwVar.zzf() == 0 && !zzh(zzadwVar)) {
            throw zzaz.zza("Could not find AMR header.", null);
        }
        if (!this.zzs) {
            this.zzs = true;
            boolean z10 = this.zzg;
            String str3 = MimeTypes.AUDIO_AMR_WB;
            if (true != z10) {
                str = "audio/amr";
            } else {
                str = MimeTypes.AUDIO_AMR_WB;
            }
            if (true != z10) {
                str3 = MimeTypes.AUDIO_AMR_NB;
            }
            if (true != z10) {
                i10 = 8000;
            } else {
                i10 = 16000;
            }
            if (z10) {
                i11 = zzb[8];
            } else {
                i11 = zza[7];
            }
            zzafb zzafbVar = this.zzo;
            zzx zzxVar = new zzx();
            zzxVar.zzG(str);
            zzxVar.zzah(str3);
            zzxVar.zzX(i11);
            zzxVar.zzD(1);
            zzxVar.zzai(i10);
            zzafbVar.zzm(zzxVar.zzan());
        }
        int zza2 = zza(zzadwVar);
        if (this.zzq == null) {
            zzaet zzaetVar = new zzaet(-9223372036854775807L, 0L);
            this.zzq = zzaetVar;
            this.zzn.zzP(zzaetVar);
        }
        if (zza2 == -1) {
            return -1;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ List zzd() {
        return zzfyq.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zze(zzady zzadyVar) {
        this.zzn = zzadyVar;
        zzafb zzw = zzadyVar.zzw(0, 1);
        this.zzo = zzw;
        this.zzp = zzw;
        zzadyVar.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzf(long j10, long j11) {
        this.zzh = 0L;
        this.zzi = 0;
        this.zzj = 0;
        this.zzr = j11;
        this.zzm = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final boolean zzi(zzadw zzadwVar) throws IOException {
        return zzh(zzadwVar);
    }

    public zzafi(int i10) {
        this.zze = new byte[1];
        this.zzk = -1;
        zzadr zzadrVar = new zzadr();
        this.zzf = zzadrVar;
        this.zzp = zzadrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ zzadv zzc() {
        return this;
    }
}
