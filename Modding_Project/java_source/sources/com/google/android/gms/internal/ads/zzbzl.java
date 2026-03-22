package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbzl {
    private final Clock zza;
    private final zzbzw zzb;
    private final String zze;
    private final String zzf;
    private final Object zzd = new Object();
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = 0;
    private long zzj = -1;
    private long zzk = -1;
    private final LinkedList zzc = new LinkedList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbzl(Clock clock, zzbzw zzbzwVar, String str, String str2) {
        this.zza = clock;
        this.zzb = zzbzwVar;
        this.zze = str;
        this.zzf = str2;
    }

    public final Bundle zza() {
        Bundle bundle;
        synchronized (this.zzd) {
            try {
                bundle = new Bundle();
                bundle.putString("seq_num", this.zze);
                bundle.putString("slotid", this.zzf);
                bundle.putBoolean("ismediation", false);
                bundle.putLong("treq", this.zzj);
                bundle.putLong("tresponse", this.zzk);
                bundle.putLong("timp", this.zzg);
                bundle.putLong("tload", this.zzh);
                bundle.putLong("pcc", this.zzi);
                bundle.putLong("tfetch", -1L);
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                Iterator it = this.zzc.iterator();
                while (it.hasNext()) {
                    arrayList.add(((zzbzk) it.next()).zzb());
                }
                bundle.putParcelableArrayList("tclick", arrayList);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bundle;
    }

    public final String zzc() {
        return this.zze;
    }

    public final void zzd() {
        synchronized (this.zzd) {
            try {
                if (this.zzk != -1) {
                    zzbzk zzbzkVar = new zzbzk(this);
                    zzbzkVar.zzd();
                    this.zzc.add(zzbzkVar);
                    this.zzi++;
                    zzbzw zzbzwVar = this.zzb;
                    zzbzwVar.zzf();
                    zzbzwVar.zze(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zze() {
        synchronized (this.zzd) {
            try {
                if (this.zzk != -1) {
                    LinkedList linkedList = this.zzc;
                    if (!linkedList.isEmpty()) {
                        zzbzk zzbzkVar = (zzbzk) linkedList.getLast();
                        if (zzbzkVar.zza() == -1) {
                            zzbzkVar.zzc();
                            this.zzb.zze(this);
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzf() {
        synchronized (this.zzd) {
            try {
                if (this.zzk != -1 && this.zzg == -1) {
                    this.zzg = this.zza.elapsedRealtime();
                    this.zzb.zze(this);
                }
                this.zzb.zzg();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzg() {
        synchronized (this.zzd) {
            this.zzb.zzh();
        }
    }

    public final void zzh(boolean z10) {
        synchronized (this.zzd) {
            try {
                if (this.zzk != -1) {
                    this.zzh = this.zza.elapsedRealtime();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzi() {
        synchronized (this.zzd) {
            this.zzb.zzi();
        }
    }

    public final void zzj(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        synchronized (this.zzd) {
            long elapsedRealtime = this.zza.elapsedRealtime();
            this.zzj = elapsedRealtime;
            this.zzb.zzj(zzmVar, elapsedRealtime);
        }
    }

    public final void zzk(long j10) {
        synchronized (this.zzd) {
            try {
                this.zzk = j10;
                if (j10 != -1) {
                    this.zzb.zze(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
