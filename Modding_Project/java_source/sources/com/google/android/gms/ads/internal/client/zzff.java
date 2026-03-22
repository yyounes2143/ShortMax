package com.google.android.gms.ads.internal.client;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgm;
import com.google.android.gms.internal.ads.zzbhj;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzff implements MediaContent {
    private final zzbgm zza;
    private final VideoController zzb = new VideoController();
    @Nullable
    private final zzbhj zzc;

    public zzff(zzbgm zzbgmVar, @Nullable zzbhj zzbhjVar) {
        this.zza = zzbgmVar;
        this.zzc = zzbhjVar;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getAspectRatio() {
        try {
            return this.zza.zze();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getCurrentTime() {
        try {
            return this.zza.zzf();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final float getDuration() {
        try {
            return this.zza.zzg();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return 0.0f;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    @Nullable
    public final Drawable getMainImage() {
        try {
            IObjectWrapper zzi = this.zza.zzi();
            if (zzi != null) {
                return (Drawable) ObjectWrapper.unwrap(zzi);
            }
            return null;
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final VideoController getVideoController() {
        try {
            zzbgm zzbgmVar = this.zza;
            if (zzbgmVar.zzh() != null) {
                this.zzb.zzb(zzbgmVar.zzh());
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception occurred while getting video controller", e10);
        }
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final boolean hasVideoContent() {
        try {
            return this.zza.zzl();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final void setMainImage(@Nullable Drawable drawable) {
        try {
            this.zza.zzj(ObjectWrapper.wrap(drawable));
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
    }

    @Override // com.google.android.gms.ads.MediaContent
    @Nullable
    public final zzbhj zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.MediaContent
    public final boolean zzb() {
        try {
            return this.zza.zzk();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return false;
        }
    }

    public final zzbgm zzc() {
        return this.zza;
    }
}
