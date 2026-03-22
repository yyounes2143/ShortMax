package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzcby extends zzfrz {
    private final SensorManager zza;
    private final Object zzb;
    private final Display zzc;
    private final float[] zzd;
    private final float[] zze;
    private float[] zzf;
    private Handler zzg;
    private zzcbx zzh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcby(Context context) {
        super("OrientationMonitor", com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS);
        this.zza = (SensorManager) context.getSystemService("sensor");
        this.zzc = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        this.zzd = new float[9];
        this.zze = new float[9];
        this.zzb = new Object();
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] != 0.0f || fArr[1] != 0.0f || fArr[2] != 0.0f) {
            synchronized (this.zzb) {
                try {
                    if (this.zzf == null) {
                        this.zzf = new float[9];
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            float[] fArr2 = this.zzd;
            SensorManager.getRotationMatrixFromVector(fArr2, fArr);
            int rotation = this.zzc.getRotation();
            if (rotation != 1) {
                if (rotation != 2) {
                    if (rotation != 3) {
                        System.arraycopy(fArr2, 0, this.zze, 0, 9);
                    } else {
                        SensorManager.remapCoordinateSystem(fArr2, 130, 1, this.zze);
                    }
                } else {
                    SensorManager.remapCoordinateSystem(fArr2, 129, 130, this.zze);
                }
            } else {
                SensorManager.remapCoordinateSystem(fArr2, 2, 129, this.zze);
            }
            float[] fArr3 = this.zze;
            float f10 = fArr3[1];
            fArr3[1] = fArr3[3];
            fArr3[3] = f10;
            float f11 = fArr3[2];
            fArr3[2] = fArr3[6];
            fArr3[6] = f11;
            float f12 = fArr3[5];
            fArr3[5] = fArr3[7];
            fArr3[7] = f12;
            synchronized (this.zzb) {
                System.arraycopy(fArr3, 0, this.zzf, 0, 9);
            }
            zzcbx zzcbxVar = this.zzh;
            if (zzcbxVar != null) {
                zzcbxVar.zza();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(zzcbx zzcbxVar) {
        this.zzh = zzcbxVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc() {
        if (this.zzg == null) {
            SensorManager sensorManager = this.zza;
            Sensor defaultSensor = sensorManager.getDefaultSensor(11);
            if (defaultSensor == null) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("No Sensor of TYPE_ROTATION_VECTOR");
                return;
            }
            HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
            handlerThread.start();
            zzfrw zzfrwVar = new zzfrw(handlerThread.getLooper());
            this.zzg = zzfrwVar;
            if (!sensorManager.registerListener(this, defaultSensor, 0, zzfrwVar)) {
                int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("SensorManager.registerListener failed.");
                zzd();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd() {
        if (this.zzg == null) {
            return;
        }
        this.zza.unregisterListener(this);
        this.zzg.post(new zzcbw(this));
        this.zzg = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zze(float[] fArr) {
        synchronized (this.zzb) {
            try {
                float[] fArr2 = this.zzf;
                if (fArr2 == null) {
                    return false;
                }
                System.arraycopy(fArr2, 0, fArr, 0, 9);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
