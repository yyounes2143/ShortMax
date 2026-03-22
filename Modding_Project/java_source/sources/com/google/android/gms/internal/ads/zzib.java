package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzib {
    private final zzfwh zza;
    private final Handler zzb;
    @Nullable
    private zzia zzc;
    @Nullable
    private zze zzd;
    private int zzf;
    private zzch zzh;
    private float zzg = 1.0f;
    private int zze = 0;

    public zzib(final Context context, Looper looper, zzia zziaVar) {
        this.zza = zzfwl.zza(new zzfwh() { // from class: com.google.android.gms.internal.ads.zzhz
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object zza() {
                return zzcj.zzc(context);
            }
        });
        this.zzc = zziaVar;
        this.zzb = new Handler(looper);
    }

    public static /* synthetic */ void zzc(zzib zzibVar, int i10) {
        if (i10 != -3 && i10 != -2) {
            if (i10 != -1) {
                if (i10 != 1) {
                    zzea.zzf("AudioFocusManager", "Unknown focus change type: " + i10);
                    return;
                }
                zzibVar.zzh(2);
                zzibVar.zzg(1);
                return;
            }
            zzibVar.zzg(-1);
            zzibVar.zzf();
            zzibVar.zzh(1);
        } else if (i10 != -2) {
            zzibVar.zzh(4);
        } else {
            zzibVar.zzg(0);
            zzibVar.zzh(3);
        }
    }

    private final void zzf() {
        int i10 = this.zze;
        if (i10 != 1 && i10 != 0 && this.zzh != null) {
            zzcj.zza((AudioManager) this.zza.zza(), this.zzh);
        }
    }

    private final void zzg(int i10) {
        zzia zziaVar = this.zzc;
        if (zziaVar != null) {
            zziaVar.zza(i10);
        }
    }

    private final void zzh(int i10) {
        float f10;
        if (this.zze != i10) {
            this.zze = i10;
            if (i10 == 4) {
                f10 = 0.2f;
            } else {
                f10 = 1.0f;
            }
            if (this.zzg != f10) {
                this.zzg = f10;
                zzia zziaVar = this.zzc;
                if (zziaVar != null) {
                    zziaVar.zzb(f10);
                }
            }
        }
    }

    public final float zza() {
        return this.zzg;
    }

    public final int zzb(boolean z10, int i10) {
        if (i10 != 1 && this.zzf == 1) {
            if (z10) {
                if (this.zze == 2) {
                    return 1;
                }
                if (this.zzh == null) {
                    zzce zzceVar = new zzce(1);
                    zze zzeVar = this.zzd;
                    zzeVar.getClass();
                    zzceVar.zza(zzeVar);
                    zzceVar.zzb(new AudioManager.OnAudioFocusChangeListener() { // from class: com.google.android.gms.internal.ads.zzhy
                        @Override // android.media.AudioManager.OnAudioFocusChangeListener
                        public final void onAudioFocusChange(int i11) {
                            zzib.zzc(zzib.this, i11);
                        }
                    }, this.zzb);
                    this.zzh = zzceVar.zzc();
                }
                if (zzcj.zzb((AudioManager) this.zza.zza(), this.zzh) == 1) {
                    zzh(2);
                    return 1;
                }
                zzh(1);
                return -1;
            }
            int i11 = this.zze;
            if (i11 == 1) {
                return -1;
            }
            if (i11 == 3) {
                return 0;
            }
            return 1;
        }
        zzf();
        zzh(0);
        return 1;
    }

    public final void zzd() {
        this.zzc = null;
        zzf();
        zzh(0);
    }

    public final void zze(@Nullable zze zzeVar) {
        int i10;
        if (!Objects.equals(this.zzd, zzeVar)) {
            this.zzd = zzeVar;
            if (zzeVar == null) {
                i10 = 0;
            } else {
                i10 = 1;
            }
            this.zzf = i10;
        }
    }
}
