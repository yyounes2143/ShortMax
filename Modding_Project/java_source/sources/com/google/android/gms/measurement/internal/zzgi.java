package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import java.math.BigInteger;
import java.util.List;
import java.util.Locale;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzgi extends zzg {
    private String zza;
    private String zzb;
    private int zzc;
    private String zzd;
    private String zze;
    private long zzf;
    private final long zzg;
    private final long zzh;
    private List zzi;
    private String zzj;
    private int zzk;
    private String zzl;
    private String zzm;
    private long zzn;
    private String zzo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgi(zzic zzicVar, long j10, long j11) {
        super(zzicVar);
        this.zzn = 0L;
        this.zzo = null;
        this.zzg = j10;
        this.zzh = j11;
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    protected final boolean zze() {
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:1|(1:3)(6:58|59|(1:61)(2:76|(1:78))|62|63|(16:65|(1:67)(1:74)|68|69|5|(2:7|(2:9|(2:11|(2:13|(2:15|(2:17|(1:19)(1:51))(1:52))(1:53))(1:54))(1:55))(1:56))(1:57)|20|21|22|(1:24)(1:48)|25|(1:27)|29|(3:31|(1:33)(3:40|(3:43|(1:45)|41)|46)|(2:35|36)(2:38|39))|47|(0)(0)))|4|5|(0)(0)|20|21|22|(0)(0)|25|(0)|29|(0)|47|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0199, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x019a, code lost:
        r11.zzu.zzaV().zzb().zzc("Fetching Google App Id failed with exception. appId", com.google.android.gms.measurement.internal.zzgu.zzl(r1), r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0187 A[Catch: IllegalStateException -> 0x0199, TRY_LEAVE, TryCatch #2 {IllegalStateException -> 0x0199, blocks: (B:49:0x016d, B:53:0x0183, B:55:0x0187), top: B:81:0x016d }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0202  */
    @Override // com.google.android.gms.measurement.internal.zzg
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zzf() {
        /*
            Method dump skipped, instructions count: 517
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgi.zzf():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0255 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzr zzh(java.lang.String r50) {
        /*
            Method dump skipped, instructions count: 821
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgi.zzh(java.lang.String):com.google.android.gms.measurement.internal.zzr");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzi() {
        String format;
        String str;
        zzg();
        zzic zzicVar = this.zzu;
        if (!zzicVar.zzd().zzl().zzo(zzjk.ANALYTICS_STORAGE)) {
            zzicVar.zzaV().zzj().zza("Analytics Storage consent is not granted");
            format = null;
        } else {
            byte[] bArr = new byte[16];
            zzicVar.zzk().zzf().nextBytes(bArr);
            format = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        }
        zzgs zzj = zzicVar.zzaV().zzj();
        if (format == null) {
            str = "null";
        } else {
            str = "not null";
        }
        zzj.zza(String.format("Resetting session stitching token to %s", str));
        this.zzm = format;
        this.zzn = zzicVar.zzaZ().currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final String zzj() {
        zzb();
        Preconditions.checkNotNull(this.zza);
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final String zzk() {
        zzg();
        zzb();
        Preconditions.checkNotNull(this.zzl);
        return this.zzl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final String zzl() {
        zzb();
        Preconditions.checkNotNull(this.zze);
        return this.zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final int zzm() {
        zzb();
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long zzn() {
        return this.zzh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final int zzo() {
        zzb();
        return this.zzk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final List zzp() {
        return this.zzi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzq(String str) {
        String str2 = this.zzo;
        boolean z10 = false;
        if (str2 != null && !str2.equals(str)) {
            z10 = true;
        }
        this.zzo = str;
        return z10;
    }
}
