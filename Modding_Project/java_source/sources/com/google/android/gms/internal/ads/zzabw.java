package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.view.Display;
import android.view.Surface;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzabw {
    private final zzaat zza = new zzaat();
    @Nullable
    private final zzabu zzb;
    @Nullable
    private final zzabv zzc;
    private boolean zzd;
    @Nullable
    private Surface zze;
    private float zzf;
    private float zzg;
    private float zzh;
    private float zzi;
    private int zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzq;

    public zzabw(@Nullable Context context) {
        DisplayManager displayManager;
        zzabu zzabuVar;
        if (context == null || (displayManager = (DisplayManager) context.getSystemService("display")) == null) {
            zzabuVar = null;
        } else {
            zzabuVar = new zzabu(this, displayManager);
        }
        this.zzb = zzabuVar;
        this.zzc = zzabuVar != null ? zzabv.zza() : null;
        this.zzk = -9223372036854775807L;
        this.zzl = -9223372036854775807L;
        this.zzf = -1.0f;
        this.zzi = 1.0f;
        this.zzj = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzb(zzabw zzabwVar, Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / display.getRefreshRate());
            zzabwVar.zzk = refreshRate;
            zzabwVar.zzl = (refreshRate * 80) / 100;
            return;
        }
        zzea.zzf("VideoFrameReleaseHelper", "Unable to query display refresh rate");
        zzabwVar.zzk = -9223372036854775807L;
        zzabwVar.zzl = -9223372036854775807L;
    }

    private final void zzk() {
        Surface surface;
        if (Build.VERSION.SDK_INT >= 30 && (surface = this.zze) != null && this.zzj != Integer.MIN_VALUE && this.zzh != 0.0f) {
            this.zzh = 0.0f;
            zzabt.zza(surface, 0.0f);
        }
    }

    private final void zzl() {
        this.zzm = 0L;
        this.zzp = -1L;
        this.zzn = -1L;
    }

    private final void zzm() {
        float f10;
        if (Build.VERSION.SDK_INT >= 30 && this.zze != null) {
            zzaat zzaatVar = this.zza;
            if (zzaatVar.zzg()) {
                f10 = zzaatVar.zza();
            } else {
                f10 = this.zzf;
            }
            float f11 = this.zzg;
            if (f10 != f11) {
                int i10 = (f10 > (-1.0f) ? 1 : (f10 == (-1.0f) ? 0 : -1));
                if (i10 != 0 && f11 != -1.0f) {
                    float f12 = 1.0f;
                    if (zzaatVar.zzg() && zzaatVar.zzd() >= 5000000000L) {
                        f12 = 0.02f;
                    }
                    if (Math.abs(f10 - this.zzg) < f12) {
                        return;
                    }
                } else if (i10 == 0 && zzaatVar.zzb() < 30) {
                    return;
                }
                this.zzg = f10;
                zzn(false);
            }
        }
    }

    private final void zzn(boolean z10) {
        Surface surface;
        if (Build.VERSION.SDK_INT >= 30 && (surface = this.zze) != null && this.zzj != Integer.MIN_VALUE) {
            float f10 = 0.0f;
            if (this.zzd) {
                float f11 = this.zzg;
                if (f11 != -1.0f) {
                    f10 = this.zzi * f11;
                }
            }
            if (z10 || this.zzh != f10) {
                this.zzh = f10;
                zzabt.zza(surface, f10);
            }
        }
    }

    public final long zza(long j10) {
        long j11;
        if (this.zzp != -1) {
            zzaat zzaatVar = this.zza;
            if (zzaatVar.zzg()) {
                long zzc = zzaatVar.zzc();
                long j12 = this.zzq + (((float) (zzc * (this.zzm - this.zzp))) / this.zzi);
                if (Math.abs(j10 - j12) > 20000000) {
                    zzl();
                } else {
                    j10 = j12;
                }
            }
        }
        this.zzn = this.zzm;
        this.zzo = j10;
        zzabv zzabvVar = this.zzc;
        if (zzabvVar != null && this.zzk != -9223372036854775807L) {
            long j13 = zzabvVar.zza;
            if (j13 != -9223372036854775807L) {
                long j14 = this.zzk;
                long j15 = j13 + (((j10 - j13) / j14) * j14);
                if (j10 <= j15) {
                    j11 = j15 - j14;
                } else {
                    j15 = j14 + j15;
                    j11 = j15;
                }
                long j16 = this.zzl;
                if (j15 - j10 >= j10 - j11) {
                    j15 = j11;
                }
                return j15 - j16;
            }
        }
        return j10;
    }

    public final void zzc(float f10) {
        this.zzf = f10;
        this.zza.zzf();
        zzm();
    }

    public final void zzd(long j10) {
        long j11 = this.zzn;
        if (j11 != -1) {
            this.zzp = j11;
            this.zzq = this.zzo;
        }
        this.zzm++;
        this.zza.zze(j10 * 1000);
        zzm();
    }

    public final void zze(float f10) {
        this.zzi = f10;
        zzl();
        zzn(false);
    }

    public final void zzf() {
        zzl();
    }

    public final void zzg() {
        this.zzd = true;
        zzl();
        zzabu zzabuVar = this.zzb;
        if (zzabuVar != null) {
            zzabv zzabvVar = this.zzc;
            zzabvVar.getClass();
            zzabvVar.zzb();
            zzabuVar.zza();
        }
        zzn(false);
    }

    public final void zzh() {
        this.zzd = false;
        zzabu zzabuVar = this.zzb;
        if (zzabuVar != null) {
            zzabuVar.zzb();
            zzabv zzabvVar = this.zzc;
            zzabvVar.getClass();
            zzabvVar.zzc();
        }
        zzk();
    }

    public final void zzi(@Nullable Surface surface) {
        if (this.zze == surface) {
            return;
        }
        zzk();
        this.zze = surface;
        zzn(true);
    }

    public final void zzj(int i10) {
        if (this.zzj == i10) {
            return;
        }
        this.zzj = i10;
        zzn(true);
    }
}
