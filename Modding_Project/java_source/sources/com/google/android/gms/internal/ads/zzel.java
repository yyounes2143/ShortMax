package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.autofill.HintConstants;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzel {
    @Nullable
    private static zzel zza;
    private final Executor zzb;
    private final CopyOnWriteArrayList zzc;
    private final Object zzd;
    @GuardedBy("lock")
    private int zze;
    @GuardedBy("lock")
    private boolean zzf;

    private zzel(final Context context) {
        Executor zza2 = zzde.zza();
        this.zzb = zza2;
        this.zzc = new CopyOnWriteArrayList();
        this.zzd = new Object();
        this.zze = 0;
        zza2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzee
            @Override // java.lang.Runnable
            public final void run() {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                context.registerReceiver(new zzej(zzel.this, null), intentFilter);
            }
        });
    }

    public static synchronized zzel zzb(Context context) {
        zzel zzelVar;
        synchronized (zzel.class) {
            try {
                if (zza == null) {
                    zza = new zzel(context);
                }
                zzelVar = zza;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzelVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzd(zzel zzelVar, Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i10 = 0;
        if (connectivityManager != null) {
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    i10 = 1;
                } else {
                    int type = activeNetworkInfo.getType();
                    if (type != 0) {
                        if (type != 1) {
                            if (type != 4 && type != 5) {
                                if (type != 6) {
                                    i10 = type != 9 ? 8 : 7;
                                }
                                i10 = 5;
                            }
                        }
                        i10 = 2;
                    }
                    switch (activeNetworkInfo.getSubtype()) {
                        case 1:
                        case 2:
                            i10 = 3;
                            break;
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 14:
                        case 15:
                        case 17:
                            i10 = 4;
                            break;
                        case 13:
                            i10 = 5;
                            break;
                        case 16:
                        case 19:
                        default:
                            i10 = 6;
                            break;
                        case 18:
                            i10 = 2;
                            break;
                        case 20:
                            if (Build.VERSION.SDK_INT >= 29) {
                                i10 = 9;
                                break;
                            }
                            break;
                    }
                }
            } catch (SecurityException unused) {
            }
        }
        if (Build.VERSION.SDK_INT >= 31 && i10 == 5) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
                if (telephonyManager != null) {
                    zzef zzefVar = new zzef(zzelVar);
                    telephonyManager.registerTelephonyCallback(zzelVar.zzb, zzefVar);
                    telephonyManager.unregisterTelephonyCallback(zzefVar);
                    return;
                }
                throw null;
            } catch (RuntimeException unused2) {
                zzelVar.zzh(5);
                return;
            }
        }
        zzelVar.zzh(i10);
    }

    private final void zzg() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.zzc;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            zzeh zzehVar = (zzeh) it.next();
            if (zzehVar.zzc()) {
                copyOnWriteArrayList.remove(zzehVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzh(int i10) {
        zzg();
        synchronized (this.zzd) {
            try {
                if (this.zzf && this.zze == i10) {
                    return;
                }
                this.zzf = true;
                this.zze = i10;
                Iterator it = this.zzc.iterator();
                while (it.hasNext()) {
                    ((zzeh) it.next()).zzb();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final int zza() {
        int i10;
        synchronized (this.zzd) {
            i10 = this.zze;
        }
        return i10;
    }

    public final void zzf(zzzn zzznVar, Executor executor) {
        boolean z10;
        zzg();
        zzeh zzehVar = new zzeh(this, zzznVar, executor);
        synchronized (this.zzd) {
            this.zzc.add(zzehVar);
            z10 = this.zzf;
        }
        if (z10) {
            zzehVar.zzb();
        }
    }
}
