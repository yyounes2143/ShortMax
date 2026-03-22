package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcdt extends zzcdn implements zzhj {
    private static final AtomicInteger zzd = new AtomicInteger(0);
    private String zze;
    private final zzcca zzf;
    private boolean zzg;
    private final zzcds zzh;
    private final zzccx zzi;
    private ByteBuffer zzj;
    private boolean zzk;
    private final Object zzl;
    private final String zzm;
    private final int zzn;
    private boolean zzo;

    public zzcdt(zzccb zzccbVar, zzcca zzccaVar) {
        super(zzccbVar);
        String str;
        int i10;
        this.zzf = zzccaVar;
        this.zzh = new zzcds();
        this.zzi = new zzccx();
        this.zzl = new Object();
        if (zzccbVar != null) {
            str = zzccbVar.zzr();
        } else {
            str = null;
        }
        this.zzm = (String) zzfvn.zzd(str).zzb("");
        if (zzccbVar != null) {
            i10 = zzccbVar.zzf();
        } else {
            i10 = 0;
        }
        this.zzn = i10;
        zzd.incrementAndGet();
    }

    public static int zzi() {
        return zzd.get();
    }

    protected static final String zzv(String str) {
        return "cache:".concat(String.valueOf(com.google.android.gms.ads.internal.util.client.zzf.zzk(str)));
    }

    private final void zzx() {
        boolean z10;
        int zza = (int) this.zzh.zza();
        int zza2 = (int) this.zzi.zza(this.zzj);
        int position = this.zzj.position();
        int round = Math.round(zza2 * (position / zza));
        int zzs = zzcbs.zzs();
        int zzu = zzcbs.zzu();
        String str = this.zze;
        String zzv = zzv(str);
        long j10 = round;
        if (round > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzn(str, zzv, position, zza, j10, zza2, z10, zzs, zzu);
    }

    @Override // com.google.android.gms.internal.ads.zzcdn, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzd.decrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.zzhj
    public final void zzd(zzgj zzgjVar, zzgo zzgoVar, boolean z10) {
        if (zzgjVar instanceof zzgw) {
            this.zzh.zzb((zzgw) zzgjVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzf() {
        this.zzg = true;
    }

    public final String zzk() {
        return this.zze;
    }

    public final ByteBuffer zzl() {
        synchronized (this.zzl) {
            try {
                ByteBuffer byteBuffer = this.zzj;
                if (byteBuffer != null && !this.zzk) {
                    byteBuffer.flip();
                    this.zzk = true;
                }
                this.zzg = true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.zzj;
    }

    public final boolean zzm() {
        return this.zzo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00ae, code lost:
        r21.zzo = true;
        zzj(r22, r4, (int) r21.zzi.zza(r21.zzj));
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e7, code lost:
        return true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:? -> B:23:0x00d0). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.zzcdn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzt(java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcdt.zzt(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzhj
    public final void zzb(zzgj zzgjVar, zzgo zzgoVar, boolean z10) {
    }

    @Override // com.google.android.gms.internal.ads.zzhj
    public final void zzc(zzgj zzgjVar, zzgo zzgoVar, boolean z10) {
    }

    @Override // com.google.android.gms.internal.ads.zzhj
    public final void zza(zzgj zzgjVar, zzgo zzgoVar, boolean z10, int i10) {
    }
}
