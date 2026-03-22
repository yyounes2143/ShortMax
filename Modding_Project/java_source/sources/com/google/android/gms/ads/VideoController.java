package com.google.android.gms.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzed;
import com.google.android.gms.ads.internal.client.zzgb;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.annotation.KeepForSdk;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class VideoController {
    @KeepForSdk
    public static final int PLAYBACK_STATE_ENDED = 3;
    @KeepForSdk
    public static final int PLAYBACK_STATE_PAUSED = 2;
    @KeepForSdk
    public static final int PLAYBACK_STATE_PLAYING = 1;
    @KeepForSdk
    public static final int PLAYBACK_STATE_READY = 5;
    @KeepForSdk
    public static final int PLAYBACK_STATE_UNKNOWN = 0;
    private final Object zza = new Object();
    @Nullable
    private zzed zzb;
    @Nullable
    private VideoLifecycleCallbacks zzc;

    @KeepForSdk
    public int getPlaybackState() {
        synchronized (this.zza) {
            zzed zzedVar = this.zzb;
            if (zzedVar == null) {
                return 0;
            }
            try {
                return zzedVar.zzh();
            } catch (RemoteException e10) {
                zzo.zzh("Unable to call getPlaybackState on video controller.", e10);
                return 0;
            }
        }
    }

    @Nullable
    public VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.zza) {
            videoLifecycleCallbacks = this.zzc;
        }
        return videoLifecycleCallbacks;
    }

    public boolean hasVideoContent() {
        boolean z10;
        synchronized (this.zza) {
            if (this.zzb != null) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    public boolean isClickToExpandEnabled() {
        synchronized (this.zza) {
            zzed zzedVar = this.zzb;
            if (zzedVar == null) {
                return false;
            }
            try {
                return zzedVar.zzo();
            } catch (RemoteException e10) {
                zzo.zzh("Unable to call isClickToExpandEnabled.", e10);
                return false;
            }
        }
    }

    public boolean isCustomControlsEnabled() {
        synchronized (this.zza) {
            zzed zzedVar = this.zzb;
            if (zzedVar == null) {
                return false;
            }
            try {
                return zzedVar.zzp();
            } catch (RemoteException e10) {
                zzo.zzh("Unable to call isUsingCustomPlayerControls.", e10);
                return false;
            }
        }
    }

    public boolean isMuted() {
        synchronized (this.zza) {
            zzed zzedVar = this.zzb;
            if (zzedVar == null) {
                return true;
            }
            try {
                return zzedVar.zzq();
            } catch (RemoteException e10) {
                zzo.zzh("Unable to call isMuted on video controller.", e10);
                return true;
            }
        }
    }

    public void mute(boolean z10) {
        synchronized (this.zza) {
            zzed zzedVar = this.zzb;
            if (zzedVar == null) {
                return;
            }
            try {
                zzedVar.zzj(z10);
            } catch (RemoteException e10) {
                zzo.zzh("Unable to call mute on video controller.", e10);
            }
        }
    }

    public void pause() {
        synchronized (this.zza) {
            zzed zzedVar = this.zzb;
            if (zzedVar == null) {
                return;
            }
            try {
                zzedVar.zzk();
            } catch (RemoteException e10) {
                zzo.zzh("Unable to call pause on video controller.", e10);
            }
        }
    }

    public void play() {
        synchronized (this.zza) {
            zzed zzedVar = this.zzb;
            if (zzedVar == null) {
                return;
            }
            try {
                zzedVar.zzl();
            } catch (RemoteException e10) {
                zzo.zzh("Unable to call play on video controller.", e10);
            }
        }
    }

    public void setVideoLifecycleCallbacks(@Nullable VideoLifecycleCallbacks videoLifecycleCallbacks) {
        zzgb zzgbVar;
        synchronized (this.zza) {
            this.zzc = videoLifecycleCallbacks;
            zzed zzedVar = this.zzb;
            if (zzedVar == null) {
                return;
            }
            if (videoLifecycleCallbacks == null) {
                zzgbVar = null;
            } else {
                try {
                    zzgbVar = new zzgb(videoLifecycleCallbacks);
                } catch (RemoteException e10) {
                    zzo.zzh("Unable to call setVideoLifecycleCallbacks on video controller.", e10);
                }
            }
            zzedVar.zzm(zzgbVar);
        }
    }

    public void stop() {
        synchronized (this.zza) {
            zzed zzedVar = this.zzb;
            if (zzedVar == null) {
                return;
            }
            try {
                zzedVar.zzn();
            } catch (RemoteException e10) {
                zzo.zzh("Unable to call stop on video controller.", e10);
            }
        }
    }

    @Nullable
    public final zzed zza() {
        zzed zzedVar;
        synchronized (this.zza) {
            zzedVar = this.zzb;
        }
        return zzedVar;
    }

    public final void zzb(@Nullable zzed zzedVar) {
        synchronized (this.zza) {
            try {
                this.zzb = zzedVar;
                VideoLifecycleCallbacks videoLifecycleCallbacks = this.zzc;
                if (videoLifecycleCallbacks != null) {
                    setVideoLifecycleCallbacks(videoLifecycleCallbacks);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
    /* loaded from: classes4.dex */
    public static abstract class VideoLifecycleCallbacks {
        public void onVideoEnd() {
        }

        public void onVideoPause() {
        }

        public void onVideoPlay() {
        }

        public void onVideoStart() {
        }

        public void onVideoMute(boolean z10) {
        }
    }
}
