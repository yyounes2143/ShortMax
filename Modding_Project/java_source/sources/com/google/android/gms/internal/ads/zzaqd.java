package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzaqd implements Comparable {
    private final zzaqo zza;
    private final int zzb;
    private final String zzc;
    private final int zzd;
    private final Object zze;
    @Nullable
    @GuardedBy("mLock")
    private final zzaqh zzf;
    private Integer zzg;
    private zzaqg zzh;
    @GuardedBy("mLock")
    private boolean zzi;
    @Nullable
    private zzapm zzj;
    @GuardedBy("mLock")
    private zzaqc zzk;
    private final zzapr zzl;

    public zzaqd(int i10, String str, @Nullable zzaqh zzaqhVar) {
        zzaqo zzaqoVar;
        Uri parse;
        String host;
        if (zzaqo.zza) {
            zzaqoVar = new zzaqo();
        } else {
            zzaqoVar = null;
        }
        this.zza = zzaqoVar;
        this.zze = new Object();
        int i11 = 0;
        this.zzi = false;
        this.zzj = null;
        this.zzb = i10;
        this.zzc = str;
        this.zzf = zzaqhVar;
        this.zzl = new zzapr();
        if (!TextUtils.isEmpty(str) && (parse = Uri.parse(str)) != null && (host = parse.getHost()) != null) {
            i11 = host.hashCode();
        }
        this.zzd = i11;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.zzg.intValue() - ((zzaqd) obj).zzg.intValue();
    }

    public final String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.zzd));
        zzw();
        Integer num = this.zzg;
        return "[ ] " + this.zzc + " " + "0x".concat(valueOf) + " NORMAL " + num;
    }

    public final int zza() {
        return this.zzb;
    }

    public final int zzb() {
        return this.zzl.zzb();
    }

    public final int zzc() {
        return this.zzd;
    }

    @Nullable
    public final zzapm zzd() {
        return this.zzj;
    }

    public final zzaqd zze(zzapm zzapmVar) {
        this.zzj = zzapmVar;
        return this;
    }

    public final zzaqd zzf(zzaqg zzaqgVar) {
        this.zzh = zzaqgVar;
        return this;
    }

    public final zzaqd zzg(int i10) {
        this.zzg = Integer.valueOf(i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract zzaqj zzh(zzapz zzapzVar);

    public final String zzj() {
        int i10 = this.zzb;
        String str = this.zzc;
        if (i10 != 0) {
            String num = Integer.toString(1);
            return num + "-" + str;
        }
        return str;
    }

    public final String zzk() {
        return this.zzc;
    }

    public Map zzl() throws zzapl {
        return Collections.emptyMap();
    }

    public final void zzm(String str) {
        if (zzaqo.zza) {
            this.zza.zza(str, Thread.currentThread().getId());
        }
    }

    public final void zzn(zzaqm zzaqmVar) {
        zzaqh zzaqhVar;
        synchronized (this.zze) {
            zzaqhVar = this.zzf;
        }
        zzaqhVar.zza(zzaqmVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zzo(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzp(String str) {
        zzaqg zzaqgVar = this.zzh;
        if (zzaqgVar != null) {
            zzaqgVar.zzb(this);
        }
        if (zzaqo.zza) {
            long id2 = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new zzaqb(this, str, id2));
                return;
            }
            zzaqo zzaqoVar = this.zza;
            zzaqoVar.zza(str, id2);
            zzaqoVar.zzb(toString());
        }
    }

    public final void zzq() {
        synchronized (this.zze) {
            this.zzi = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzr() {
        zzaqc zzaqcVar;
        synchronized (this.zze) {
            zzaqcVar = this.zzk;
        }
        if (zzaqcVar != null) {
            zzaqcVar.zza(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzs(zzaqj zzaqjVar) {
        zzaqc zzaqcVar;
        synchronized (this.zze) {
            zzaqcVar = this.zzk;
        }
        if (zzaqcVar != null) {
            zzaqcVar.zzb(this, zzaqjVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzt(int i10) {
        zzaqg zzaqgVar = this.zzh;
        if (zzaqgVar != null) {
            zzaqgVar.zzc(this, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzu(zzaqc zzaqcVar) {
        synchronized (this.zze) {
            this.zzk = zzaqcVar;
        }
    }

    public final boolean zzv() {
        boolean z10;
        synchronized (this.zze) {
            z10 = this.zzi;
        }
        return z10;
    }

    public final boolean zzw() {
        synchronized (this.zze) {
        }
        return false;
    }

    public byte[] zzx() throws zzapl {
        return null;
    }

    public final zzapr zzy() {
        return this.zzl;
    }
}
