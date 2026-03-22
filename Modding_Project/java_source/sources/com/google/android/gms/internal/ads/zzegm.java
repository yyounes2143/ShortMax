package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzegm {
    @GuardedBy("this")
    private final zzgeh zzc;
    @GuardedBy("this")
    private zzehc zzf;
    private final String zzh;
    private final int zzi;
    private final zzehb zzj;
    private zzfca zzk;
    @GuardedBy("this")
    private final Map zza = new HashMap();
    @GuardedBy("this")
    private final List zzb = new ArrayList();
    @GuardedBy("this")
    private final List zzd = new ArrayList();
    @GuardedBy("this")
    private final Set zze = new HashSet();
    @GuardedBy("this")
    private int zzg = Integer.MAX_VALUE;
    @GuardedBy("this")
    private boolean zzl = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzegm(zzfcn zzfcnVar, zzehb zzehbVar, zzgeh zzgehVar) {
        this.zzi = zzfcnVar.zzb.zzb.zzr;
        this.zzj = zzehbVar;
        this.zzc = zzgehVar;
        this.zzh = zzehi.zzc(zzfcnVar);
        List list = zzfcnVar.zzb.zza;
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.zza.put((zzfca) list.get(i10), Integer.valueOf(i10));
        }
        this.zzb.addAll(list);
    }

    private final synchronized void zze() {
        this.zzj.zzi(this.zzk);
        zzehc zzehcVar = this.zzf;
        if (zzehcVar != null) {
            this.zzc.zzc(zzehcVar);
        } else {
            this.zzc.zzd(new zzehf(3, this.zzh));
        }
    }

    private final synchronized boolean zzf(boolean z10) {
        int i10;
        try {
            for (zzfca zzfcaVar : this.zzb) {
                Integer num = (Integer) this.zza.get(zzfcaVar);
                if (num != null) {
                    i10 = num.intValue();
                } else {
                    i10 = Integer.MAX_VALUE;
                }
                if (z10 || !this.zze.contains(zzfcaVar.zzat)) {
                    int i11 = this.zzg;
                    if (i10 < i11) {
                        return true;
                    }
                    if (i10 > i11) {
                        break;
                    }
                }
            }
            return false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private final synchronized boolean zzg() {
        int i10;
        try {
            for (zzfca zzfcaVar : this.zzd) {
                Integer num = (Integer) this.zza.get(zzfcaVar);
                if (num != null) {
                    i10 = num.intValue();
                } else {
                    i10 = Integer.MAX_VALUE;
                }
                if (i10 < this.zzg) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private final synchronized boolean zzh() {
        if (!zzf(true)) {
            if (!zzg()) {
                return false;
            }
        }
        return true;
    }

    private final synchronized boolean zzi() {
        if (this.zzl) {
            return false;
        }
        List list = this.zzb;
        if (!list.isEmpty() && ((zzfca) list.get(0)).zzav && !this.zzd.isEmpty()) {
            return false;
        }
        if (!zzd()) {
            List list2 = this.zzd;
            if (list2.size() < this.zzi) {
                if (zzf(false)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
        if (r2.zzav == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0027, code lost:
        r6.zzl = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0031, code lost:
        if (android.text.TextUtils.isEmpty(r3) != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0033, code lost:
        r4.add(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0036, code lost:
        r6.zzd.add(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0042, code lost:
        return (com.google.android.gms.internal.ads.zzfca) r1.remove(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.google.android.gms.internal.ads.zzfca zza() {
        /*
            r6 = this;
            monitor-enter(r6)
            boolean r0 = r6.zzi()     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L43
            r0 = 0
        L8:
            java.util.List r1 = r6.zzb     // Catch: java.lang.Throwable -> L2b
            int r2 = r1.size()     // Catch: java.lang.Throwable -> L2b
            if (r0 >= r2) goto L43
            java.lang.Object r2 = r1.get(r0)     // Catch: java.lang.Throwable -> L2b
            com.google.android.gms.internal.ads.zzfca r2 = (com.google.android.gms.internal.ads.zzfca) r2     // Catch: java.lang.Throwable -> L2b
            java.lang.String r3 = r2.zzat     // Catch: java.lang.Throwable -> L2b
            java.util.Set r4 = r6.zze     // Catch: java.lang.Throwable -> L2b
            boolean r5 = r4.contains(r3)     // Catch: java.lang.Throwable -> L2b
            if (r5 == 0) goto L23
            int r0 = r0 + 1
            goto L8
        L23:
            boolean r5 = r2.zzav     // Catch: java.lang.Throwable -> L2b
            if (r5 == 0) goto L2d
            r5 = 1
            r6.zzl = r5     // Catch: java.lang.Throwable -> L2b
            goto L2d
        L2b:
            r0 = move-exception
            goto L46
        L2d:
            boolean r5 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L2b
            if (r5 != 0) goto L36
            r4.add(r3)     // Catch: java.lang.Throwable -> L2b
        L36:
            java.util.List r3 = r6.zzd     // Catch: java.lang.Throwable -> L2b
            r3.add(r2)     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r0 = r1.remove(r0)     // Catch: java.lang.Throwable -> L2b
            com.google.android.gms.internal.ads.zzfca r0 = (com.google.android.gms.internal.ads.zzfca) r0     // Catch: java.lang.Throwable -> L2b
            monitor-exit(r6)
            return r0
        L43:
            monitor-exit(r6)
            r0 = 0
            return r0
        L46:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L2b
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzegm.zza():com.google.android.gms.internal.ads.zzfca");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzb(Throwable th2, zzfca zzfcaVar) {
        this.zzl = false;
        this.zzd.remove(zzfcaVar);
        this.zze.remove(zzfcaVar.zzat);
        if (!zzd() && !zzh()) {
            zze();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzc(zzehc zzehcVar, zzfca zzfcaVar) {
        int i10;
        this.zzl = false;
        this.zzd.remove(zzfcaVar);
        if (zzd()) {
            zzehcVar.zzr();
            return;
        }
        Integer num = (Integer) this.zza.get(zzfcaVar);
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = Integer.MAX_VALUE;
        }
        if (i10 > this.zzg) {
            this.zzj.zzm(zzfcaVar);
            return;
        }
        if (this.zzf != null) {
            this.zzj.zzm(this.zzk);
        }
        this.zzg = i10;
        this.zzf = zzehcVar;
        this.zzk = zzfcaVar;
        if (!zzh()) {
            zze();
        }
    }

    final synchronized boolean zzd() {
        return this.zzc.isDone();
    }
}
