package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.CollectionUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.texturerender.TextureRenderKeys;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcgi extends com.google.android.gms.ads.internal.client.zzec {
    private final zzccb zza;
    private final boolean zzc;
    private final boolean zzd;
    private int zze;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzeg zzf;
    private boolean zzg;
    private float zzi;
    private float zzj;
    private float zzk;
    private boolean zzl;
    private boolean zzm;
    private zzbhx zzn;
    private final Object zzb = new Object();
    private boolean zzh = true;

    public zzcgi(zzccb zzccbVar, float f10, boolean z10, boolean z11) {
        this.zza = zzccbVar;
        this.zzi = f10;
        this.zzc = z10;
        this.zzd = z11;
    }

    public static /* synthetic */ void zzd(zzcgi zzcgiVar, int i10, int i11, boolean z10, boolean z11) {
        int i12;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        com.google.android.gms.ads.internal.client.zzeg zzegVar;
        com.google.android.gms.ads.internal.client.zzeg zzegVar2;
        com.google.android.gms.ads.internal.client.zzeg zzegVar3;
        synchronized (zzcgiVar.zzb) {
            try {
                boolean z17 = zzcgiVar.zzg;
                boolean z18 = false;
                if (!z17 && i11 == 1) {
                    i11 = 1;
                    i12 = 1;
                    z12 = true;
                } else {
                    i12 = i11;
                    z12 = false;
                }
                if (i10 != i11) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                if (z13 && i12 == 1) {
                    z14 = true;
                    i12 = 1;
                } else {
                    z14 = false;
                }
                if (z13 && i12 == 2) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                if (z13 && i12 == 3) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                if (z17 || z12) {
                    z18 = true;
                }
                zzcgiVar.zzg = z18;
                if (z12) {
                    try {
                        com.google.android.gms.ads.internal.client.zzeg zzegVar4 = zzcgiVar.zzf;
                        if (zzegVar4 != null) {
                            zzegVar4.zzi();
                        }
                    } catch (RemoteException e10) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
                    }
                }
                if (z14 && (zzegVar3 = zzcgiVar.zzf) != null) {
                    zzegVar3.zzh();
                }
                if (z15 && (zzegVar2 = zzcgiVar.zzf) != null) {
                    zzegVar2.zzg();
                }
                if (z16) {
                    com.google.android.gms.ads.internal.client.zzeg zzegVar5 = zzcgiVar.zzf;
                    if (zzegVar5 != null) {
                        zzegVar5.zze();
                    }
                    zzcgiVar.zza.zzw();
                }
                if (z10 != z11 && (zzegVar = zzcgiVar.zzf) != null) {
                    zzegVar.zzf(z11);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void zzw(final int i10, final int i11, final boolean z10, final boolean z11) {
        zzcaf.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgh
            @Override // java.lang.Runnable
            public final void run() {
                zzcgi.zzd(zzcgi.this, i10, i11, z10, z11);
            }
        });
    }

    private final void zzx(String str, @Nullable Map map) {
        final HashMap hashMap;
        if (map == null) {
            hashMap = new HashMap();
        } else {
            hashMap = new HashMap(map);
        }
        hashMap.put(TextureRenderKeys.KEY_IS_ACTION, str);
        zzcaf.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgg
            @Override // java.lang.Runnable
            public final void run() {
                zzcgi.this.zza.zzd("pubVideoCmd", hashMap);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final float zze() {
        float f10;
        synchronized (this.zzb) {
            f10 = this.zzk;
        }
        return f10;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final float zzf() {
        float f10;
        synchronized (this.zzb) {
            f10 = this.zzj;
        }
        return f10;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final float zzg() {
        float f10;
        synchronized (this.zzb) {
            f10 = this.zzi;
        }
        return f10;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final int zzh() {
        int i10;
        synchronized (this.zzb) {
            i10 = this.zze;
        }
        return i10;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzeg zzi() throws RemoteException {
        com.google.android.gms.ads.internal.client.zzeg zzegVar;
        synchronized (this.zzb) {
            zzegVar = this.zzf;
        }
        return zzegVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzj(boolean z10) {
        String str;
        if (true != z10) {
            str = CampaignEx.JSON_NATIVE_VIDEO_UNMUTE;
        } else {
            str = "mute";
        }
        zzx(str, null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzk() {
        zzx(CampaignEx.JSON_NATIVE_VIDEO_PAUSE, null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzl() {
        zzx("play", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzm(@Nullable com.google.android.gms.ads.internal.client.zzeg zzegVar) {
        synchronized (this.zzb) {
            this.zzf = zzegVar;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final void zzn() {
        zzx("stop", null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final boolean zzo() {
        boolean z10;
        Object obj = this.zzb;
        boolean zzp = zzp();
        synchronized (obj) {
            z10 = false;
            if (!zzp) {
                try {
                    if (this.zzm && this.zzd) {
                        z10 = true;
                    }
                } finally {
                }
            }
        }
        return z10;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final boolean zzp() {
        boolean z10;
        synchronized (this.zzb) {
            try {
                z10 = false;
                if (this.zzc && this.zzl) {
                    z10 = true;
                }
            } finally {
            }
        }
        return z10;
    }

    @Override // com.google.android.gms.ads.internal.client.zzed
    public final boolean zzq() {
        boolean z10;
        synchronized (this.zzb) {
            z10 = this.zzh;
        }
        return z10;
    }

    public final void zzr(float f10, float f11, int i10, boolean z10, float f12) {
        boolean z11;
        boolean z12;
        int i11;
        synchronized (this.zzb) {
            try {
                z11 = true;
                if (f11 == this.zzi && f12 == this.zzk) {
                    z11 = false;
                }
                this.zzi = f11;
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzni)).booleanValue()) {
                    this.zzj = f10;
                }
                z12 = this.zzh;
                this.zzh = z10;
                i11 = this.zze;
                this.zze = i10;
                float f13 = this.zzk;
                this.zzk = f12;
                if (Math.abs(f12 - f13) > 1.0E-4f) {
                    this.zza.zzF().invalidate();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z11) {
            try {
                zzbhx zzbhxVar = this.zzn;
                if (zzbhxVar != null) {
                    zzbhxVar.zze();
                }
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
            }
        }
        zzw(i11, i10, z12, z10);
    }

    public final void zzs(com.google.android.gms.ads.internal.client.zzgc zzgcVar) {
        String str;
        String str2;
        String str3;
        Object obj = this.zzb;
        boolean z10 = zzgcVar.zzb;
        boolean z11 = zzgcVar.zzc;
        synchronized (obj) {
            this.zzl = z10;
            this.zzm = z11;
        }
        boolean z12 = zzgcVar.zza;
        if (true != z10) {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        } else {
            str = "1";
        }
        String str4 = str;
        if (true != z11) {
            str2 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        } else {
            str2 = "1";
        }
        String str5 = str2;
        if (true != z12) {
            str3 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        } else {
            str3 = "1";
        }
        zzx("initialState", CollectionUtils.mapOf("muteStart", str3, "customControlsRequested", str4, "clickToExpandRequested", str5));
    }

    public final void zzt(float f10) {
        synchronized (this.zzb) {
            this.zzj = f10;
        }
    }

    public final void zzu() {
        boolean z10;
        int i10;
        synchronized (this.zzb) {
            z10 = this.zzh;
            i10 = this.zze;
            this.zze = 3;
        }
        zzw(i10, 3, z10, z10);
    }

    public final void zzv(zzbhx zzbhxVar) {
        synchronized (this.zzb) {
            this.zzn = zzbhxVar;
        }
    }
}
