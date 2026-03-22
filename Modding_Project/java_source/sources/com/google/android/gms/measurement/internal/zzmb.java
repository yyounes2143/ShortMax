package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Size;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzmb extends zzg {
    @VisibleForTesting
    protected zzlu zza;
    private volatile zzlu zzb;
    private volatile zzlu zzc;
    private final Map zzd;
    @GuardedBy("activityLock")
    private com.google.android.gms.internal.measurement.zzdf zze;
    @GuardedBy("activityLock")
    private volatile boolean zzf;
    private volatile zzlu zzg;
    private zzlu zzh;
    @GuardedBy("activityLock")
    private boolean zzi;
    private final Object zzj;

    public zzmb(zzic zzicVar) {
        super(zzicVar);
        this.zzj = new Object();
        this.zzd = new ConcurrentHashMap();
    }

    @WorkerThread
    private final void zzA(zzlu zzluVar, boolean z10, long j10) {
        boolean z11;
        zzic zzicVar = this.zzu;
        zzicVar.zzw().zzc(zzicVar.zzaZ().elapsedRealtime());
        if (zzluVar != null && zzluVar.zzd) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (zzicVar.zzh().zzb.zzd(z11, z10, j10) && zzluVar != null) {
            zzluVar.zzd = false;
        }
    }

    @MainThread
    private final zzlu zzB(@NonNull com.google.android.gms.internal.measurement.zzdf zzdfVar) {
        Preconditions.checkNotNull(zzdfVar);
        Integer valueOf = Integer.valueOf(zzdfVar.zza);
        Map map = this.zzd;
        zzlu zzluVar = (zzlu) map.get(valueOf);
        if (zzluVar == null) {
            zzlu zzluVar2 = new zzlu(null, zzi(zzdfVar.zzb, "Activity"), this.zzu.zzk().zzd());
            map.put(valueOf, zzluVar2);
            zzluVar = zzluVar2;
        }
        if (this.zzg != null) {
            return this.zzg;
        }
        return zzluVar;
    }

    @MainThread
    private final void zzy(String str, zzlu zzluVar, boolean z10) {
        zzlu zzluVar2;
        zzlu zzluVar3;
        String str2;
        if (this.zzb == null) {
            zzluVar2 = this.zzc;
        } else {
            zzluVar2 = this.zzb;
        }
        zzlu zzluVar4 = zzluVar2;
        if (zzluVar.zzb == null) {
            if (str != null) {
                str2 = zzi(str, "Activity");
            } else {
                str2 = null;
            }
            zzluVar3 = new zzlu(zzluVar.zza, str2, zzluVar.zzc, zzluVar.zze, zzluVar.zzf);
        } else {
            zzluVar3 = zzluVar;
        }
        this.zzc = this.zzb;
        this.zzb = zzluVar3;
        zzic zzicVar = this.zzu;
        zzicVar.zzaW().zzj(new zzlw(this, zzluVar3, zzluVar4, zzicVar.zzaZ().elapsedRealtime(), z10));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d1  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzz(com.google.android.gms.measurement.internal.zzlu r16, com.google.android.gms.measurement.internal.zzlu r17, long r18, boolean r20, android.os.Bundle r21) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzmb.zzz(com.google.android.gms.measurement.internal.zzlu, com.google.android.gms.measurement.internal.zzlu, long, boolean, android.os.Bundle):void");
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    protected final boolean zze() {
        return false;
    }

    @WorkerThread
    public final zzlu zzh(boolean z10) {
        zzb();
        zzg();
        if (!z10) {
            return this.zza;
        }
        zzlu zzluVar = this.zza;
        if (zzluVar != null) {
            return zzluVar;
        }
        return this.zzh;
    }

    @VisibleForTesting
    final String zzi(String str, String str2) {
        String str3;
        if (str == null) {
            return "Activity";
        }
        String[] split = str.split("\\.");
        int length = split.length;
        if (length > 0) {
            str3 = split[length - 1];
        } else {
            str3 = "";
        }
        zzic zzicVar = this.zzu;
        if (str3.length() > zzicVar.zzc().zze(null, false)) {
            return str3.substring(0, zzicVar.zzc().zze(null, false));
        }
        return str3;
    }

    public final void zzj(Bundle bundle, long j10) {
        String str;
        String str2;
        zzlu zzluVar;
        String str3;
        synchronized (this.zzj) {
            try {
                if (!this.zzi) {
                    this.zzu.zzaV().zzh().zza("Cannot log screen view event when the app is in the background.");
                    return;
                }
                String string = bundle.getString("screen_name");
                if (string != null && (string.length() <= 0 || string.length() > this.zzu.zzc().zze(null, false))) {
                    this.zzu.zzaV().zzh().zzb("Invalid screen name length for screen view. Length", Integer.valueOf(string.length()));
                    return;
                }
                String string2 = bundle.getString("screen_class");
                if (string2 != null && (string2.length() <= 0 || string2.length() > this.zzu.zzc().zze(null, false))) {
                    this.zzu.zzaV().zzh().zzb("Invalid screen class length for screen view. Length", Integer.valueOf(string2.length()));
                    return;
                }
                if (string2 == null) {
                    com.google.android.gms.internal.measurement.zzdf zzdfVar = this.zze;
                    if (zzdfVar != null) {
                        str3 = zzi(zzdfVar.zzb, "Activity");
                    } else {
                        str3 = "Activity";
                    }
                    string2 = str3;
                }
                zzlu zzluVar2 = this.zzb;
                if (this.zzf && zzluVar2 != null) {
                    this.zzf = false;
                    boolean equals = Objects.equals(zzluVar2.zzb, string2);
                    boolean equals2 = Objects.equals(zzluVar2.zza, string);
                    if (equals && equals2) {
                        this.zzu.zzaV().zzh().zza("Ignoring call to log screen view event with duplicate parameters.");
                        return;
                    }
                }
                zzic zzicVar = this.zzu;
                zzgs zzk = zzicVar.zzaV().zzk();
                if (string == null) {
                    str = "null";
                } else {
                    str = string;
                }
                if (string2 == null) {
                    str2 = "null";
                } else {
                    str2 = string2;
                }
                zzk.zzc("Logging screen view with name, class", str, str2);
                if (this.zzb == null) {
                    zzluVar = this.zzc;
                } else {
                    zzluVar = this.zzb;
                }
                zzlu zzluVar3 = new zzlu(string, string2, zzicVar.zzk().zzd(), true, j10);
                this.zzb = zzluVar3;
                this.zzc = zzluVar;
                this.zzg = zzluVar3;
                zzicVar.zzaW().zzj(new zzlv(this, bundle, zzluVar3, zzluVar, zzicVar.zzaZ().elapsedRealtime()));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Deprecated
    public final void zzk(@NonNull com.google.android.gms.internal.measurement.zzdf zzdfVar, @Size(max = 36, min = 1) String str, @Size(max = 36, min = 1) String str2) {
        String str3;
        zzic zzicVar = this.zzu;
        if (!zzicVar.zzc().zzv()) {
            zzicVar.zzaV().zzh().zza("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        zzlu zzluVar = this.zzb;
        if (zzluVar == null) {
            zzicVar.zzaV().zzh().zza("setCurrentScreen cannot be called while no activity active");
            return;
        }
        Map map = this.zzd;
        Integer valueOf = Integer.valueOf(zzdfVar.zza);
        if (map.get(valueOf) == null) {
            zzicVar.zzaV().zzh().zza("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = zzi(zzdfVar.zzb, "Activity");
        }
        String str4 = zzluVar.zzb;
        String str5 = zzluVar.zza;
        boolean equals = Objects.equals(str4, str2);
        boolean equals2 = Objects.equals(str5, str);
        if (equals && equals2) {
            zzicVar.zzaV().zzh().zza("setCurrentScreen cannot be called with the same class and name");
        } else if (str != null && (str.length() <= 0 || str.length() > zzicVar.zzc().zze(null, false))) {
            zzicVar.zzaV().zzh().zzb("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
        } else if (str2 != null && (str2.length() <= 0 || str2.length() > zzicVar.zzc().zze(null, false))) {
            zzicVar.zzaV().zzh().zzb("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
        } else {
            zzgs zzk = zzicVar.zzaV().zzk();
            if (str == null) {
                str3 = "null";
            } else {
                str3 = str;
            }
            zzk.zzc("Setting current screen to name, class", str3, str2);
            zzlu zzluVar2 = new zzlu(str, str2, zzicVar.zzk().zzd());
            map.put(valueOf, zzluVar2);
            zzy(zzdfVar.zzb, zzluVar2, true);
        }
    }

    public final zzlu zzl() {
        return this.zzb;
    }

    @MainThread
    public final void zzm(com.google.android.gms.internal.measurement.zzdf zzdfVar, Bundle bundle) {
        Bundle bundle2;
        if (this.zzu.zzc().zzv() && bundle != null && (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) != null) {
            this.zzd.put(Integer.valueOf(zzdfVar.zza), new zzlu(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
        }
    }

    @MainThread
    public final void zzn(com.google.android.gms.internal.measurement.zzdf zzdfVar) {
        Object obj = this.zzj;
        synchronized (obj) {
            this.zzi = true;
            if (!Objects.equals(zzdfVar, this.zze)) {
                synchronized (obj) {
                    this.zze = zzdfVar;
                    this.zzf = false;
                    zzic zzicVar = this.zzu;
                    if (zzicVar.zzc().zzv()) {
                        this.zzg = null;
                        zzicVar.zzaW().zzj(new zzma(this));
                    }
                }
            }
        }
        zzic zzicVar2 = this.zzu;
        if (!zzicVar2.zzc().zzv()) {
            this.zzb = this.zzg;
            zzicVar2.zzaW().zzj(new zzlx(this));
            return;
        }
        zzy(zzdfVar.zzb, zzB(zzdfVar), false);
        zzd zzw = this.zzu.zzw();
        zzic zzicVar3 = zzw.zzu;
        zzicVar3.zzaW().zzj(new zzc(zzw, zzicVar3.zzaZ().elapsedRealtime()));
    }

    @MainThread
    public final void zzp(com.google.android.gms.internal.measurement.zzdf zzdfVar) {
        synchronized (this.zzj) {
            this.zzi = false;
            this.zzf = true;
        }
        zzic zzicVar = this.zzu;
        long elapsedRealtime = zzicVar.zzaZ().elapsedRealtime();
        if (!zzicVar.zzc().zzv()) {
            this.zzb = null;
            zzicVar.zzaW().zzj(new zzly(this, elapsedRealtime));
            return;
        }
        zzlu zzB = zzB(zzdfVar);
        this.zzc = this.zzb;
        this.zzb = null;
        zzicVar.zzaW().zzj(new zzlz(this, zzB, elapsedRealtime));
    }

    @MainThread
    public final void zzq(com.google.android.gms.internal.measurement.zzdf zzdfVar, Bundle bundle) {
        zzlu zzluVar;
        if (this.zzu.zzc().zzv() && bundle != null && (zzluVar = (zzlu) this.zzd.get(Integer.valueOf(zzdfVar.zza))) != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putLong("id", zzluVar.zzc);
            bundle2.putString("name", zzluVar.zza);
            bundle2.putString("referrer_name", zzluVar.zzb);
            bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
        }
    }

    @MainThread
    public final void zzs(com.google.android.gms.internal.measurement.zzdf zzdfVar) {
        synchronized (this.zzj) {
            try {
                if (Objects.equals(this.zze, zzdfVar)) {
                    this.zze = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!this.zzu.zzc().zzv()) {
            return;
        }
        this.zzd.remove(Integer.valueOf(zzdfVar.zza));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzt(Bundle bundle, zzlu zzluVar, zzlu zzluVar2, long j10) {
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        zzz(zzluVar, zzluVar2, j10, true, this.zzu.zzk().zzF(null, "screen_view", bundle, null, false));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzu(zzlu zzluVar, zzlu zzluVar2, long j10, boolean z10, Bundle bundle) {
        zzz(zzluVar, zzluVar2, j10, z10, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzv(zzlu zzluVar, boolean z10, long j10) {
        zzA(zzluVar, false, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzlu zzw() {
        return this.zzh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzx(zzlu zzluVar) {
        this.zzh = null;
    }
}
