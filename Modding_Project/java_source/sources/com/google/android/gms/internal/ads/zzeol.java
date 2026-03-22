package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import com.applovin.sdk.AppLovinEventTypes;
import com.ss.texturerender.TextureRenderKeys;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeol implements zzeuc {
    private final zzgdy zza;
    private final Context zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeol(zzgdy zzgdyVar, Context context) {
        this.zza = zzgdyVar;
        this.zzb = context;
    }

    public static /* synthetic */ zzeom zzc(zzeol zzeolVar) {
        boolean z10;
        double d10 = -1.0d;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmv)).booleanValue()) {
            BatteryManager batteryManager = (BatteryManager) zzeolVar.zzb.getSystemService("batterymanager");
            if (batteryManager != null) {
                d10 = batteryManager.getIntProperty(4) / 100.0d;
            }
            if (batteryManager != null) {
                z10 = batteryManager.isCharging();
            } else {
                z10 = zze(zzeolVar.zzd());
            }
        } else {
            Intent zzd = zzeolVar.zzd();
            boolean zze = zze(zzd);
            if (zzd != null) {
                d10 = zzd.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) / zzd.getIntExtra(TextureRenderKeys.KEY_IS_SCALE, -1);
            }
            z10 = zze;
        }
        return new zzeom(d10, z10);
    }

    @SuppressLint({"UnprotectedReceiver"})
    private final Intent zzd() {
        Intent registerReceiver;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzlv)).booleanValue() && Build.VERSION.SDK_INT >= 33) {
            registerReceiver = this.zzb.registerReceiver(null, intentFilter, 4);
            return registerReceiver;
        }
        return this.zzb.registerReceiver(null, intentFilter);
    }

    private static final boolean zze(Intent intent) {
        if (intent == null) {
            return false;
        }
        int intExtra = intent.getIntExtra("status", -1);
        if (intExtra != 2 && intExtra != 5) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 14;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    @SuppressLint({"UnprotectedReceiver"})
    public final com.google.common.util.concurrent.e zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeok
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeol.zzc(zzeol.this);
            }
        });
    }
}
