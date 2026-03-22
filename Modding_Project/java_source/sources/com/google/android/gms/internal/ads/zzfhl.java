package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfhl implements zzfhj {
    private final Context zza;
    private final int zzp;
    private long zzb = 0;
    private long zzc = -1;
    private boolean zzd = false;
    private int zzq = 2;
    private int zzr = 2;
    private int zze = 0;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private zzfhz zzj = zzfhz.SCAR_REQUEST_TYPE_UNSPECIFIED;
    private String zzk = "";
    private String zzl = "";
    private String zzm = "";
    private boolean zzn = false;
    private boolean zzo = false;

    public zzfhl(Context context, int i10) {
        this.zza = context;
        this.zzp = i10;
    }

    public final synchronized zzfhl zzA() {
        this.zzc = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
        return this;
    }

    public final synchronized zzfhl zzK(int i10) {
        this.zzq = i10;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhj
    public final /* bridge */ /* synthetic */ zzfhj zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzr(zzeVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhj
    public final /* bridge */ /* synthetic */ zzfhj zzb(zzfcm zzfcmVar) {
        zzs(zzfcmVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhj
    public final /* bridge */ /* synthetic */ zzfhj zzc(String str) {
        zzt(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhj
    public final /* bridge */ /* synthetic */ zzfhj zzd(String str) {
        zzu(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhj
    public final /* bridge */ /* synthetic */ zzfhj zze(String str) {
        zzv(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhj
    public final /* bridge */ /* synthetic */ zzfhj zzf(zzfhz zzfhzVar) {
        zzw(zzfhzVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhj
    public final /* bridge */ /* synthetic */ zzfhj zzg(boolean z10) {
        zzx(z10);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhj
    public final /* bridge */ /* synthetic */ zzfhj zzh(Throwable th2) {
        zzy(th2);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhj
    public final /* bridge */ /* synthetic */ zzfhj zzi() {
        zzz();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhj
    public final /* bridge */ /* synthetic */ zzfhj zzj() {
        zzA();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfhj
    public final synchronized boolean zzk() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzfhj
    public final boolean zzl() {
        if (!TextUtils.isEmpty(this.zzh)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfhj
    @Nullable
    public final synchronized zzfhn zzm() {
        try {
            if (this.zzn) {
                return null;
            }
            this.zzn = true;
            if (!this.zzo) {
                zzz();
            }
            if (this.zzc < 0) {
                zzA();
            }
            return new zzfhn(this, null);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfhj
    public final /* bridge */ /* synthetic */ zzfhj zzn(int i10) {
        zzK(i10);
        return this;
    }

    public final synchronized zzfhl zzr(com.google.android.gms.ads.internal.client.zze zzeVar) {
        try {
            IBinder iBinder = zzeVar.zze;
            if (iBinder != null) {
                zzcvr zzcvrVar = (zzcvr) iBinder;
                String zzl = zzcvrVar.zzl();
                if (!TextUtils.isEmpty(zzl)) {
                    this.zzf = zzl;
                }
                String zzi = zzcvrVar.zzi();
                if (!TextUtils.isEmpty(zzi)) {
                    this.zzg = zzi;
                }
            }
        } finally {
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x002a, code lost:
        r2.zzg = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.google.android.gms.internal.ads.zzfhl zzs(com.google.android.gms.internal.ads.zzfcm r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            com.google.android.gms.internal.ads.zzfcd r0 = r3.zzb     // Catch: java.lang.Throwable -> Le
            java.lang.String r0 = r0.zzb     // Catch: java.lang.Throwable -> Le
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Le
            if (r1 != 0) goto L10
            r2.zzf = r0     // Catch: java.lang.Throwable -> Le
            goto L10
        Le:
            r3 = move-exception
            goto L2e
        L10:
            java.util.List r3 = r3.zza     // Catch: java.lang.Throwable -> Le
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> Le
        L16:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Throwable -> Le
            if (r0 == 0) goto L2c
            java.lang.Object r0 = r3.next()     // Catch: java.lang.Throwable -> Le
            com.google.android.gms.internal.ads.zzfca r0 = (com.google.android.gms.internal.ads.zzfca) r0     // Catch: java.lang.Throwable -> Le
            java.lang.String r0 = r0.zzab     // Catch: java.lang.Throwable -> Le
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> Le
            if (r1 != 0) goto L16
            r2.zzg = r0     // Catch: java.lang.Throwable -> Le
        L2c:
            monitor-exit(r2)
            return r2
        L2e:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Le
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfhl.zzs(com.google.android.gms.internal.ads.zzfcm):com.google.android.gms.internal.ads.zzfhl");
    }

    public final synchronized zzfhl zzt(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjj)).booleanValue()) {
            this.zzm = str;
        }
        return this;
    }

    public final synchronized zzfhl zzu(String str) {
        this.zzh = str;
        return this;
    }

    public final synchronized zzfhl zzv(String str) {
        this.zzi = str;
        return this;
    }

    public final synchronized zzfhl zzw(zzfhz zzfhzVar) {
        this.zzj = zzfhzVar;
        return this;
    }

    public final synchronized zzfhl zzx(boolean z10) {
        this.zzd = z10;
        return this;
    }

    public final synchronized zzfhl zzy(Throwable th2) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjj)).booleanValue()) {
            this.zzl = zzbun.zzf(th2);
            this.zzk = (String) zzfwe.zzb(zzfva.zzc('\n')).zzd(zzbun.zze(th2)).iterator().next();
        }
        return this;
    }

    public final synchronized zzfhl zzz() {
        Configuration configuration;
        com.google.android.gms.ads.internal.util.zzaa zzs = com.google.android.gms.ads.internal.zzv.zzs();
        Context context = this.zza;
        this.zze = zzs.zzm(context);
        Resources resources = context.getResources();
        int i10 = 2;
        if (resources != null && (configuration = resources.getConfiguration()) != null) {
            i10 = configuration.orientation == 2 ? 4 : 3;
        }
        this.zzr = i10;
        this.zzb = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
        this.zzo = true;
        return this;
    }
}
