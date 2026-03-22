package com.google.android.gms.ads.nativead;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbhj;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public class MediaView extends FrameLayout {
    @Nullable
    private MediaContent zza;
    private boolean zzb;
    private ImageView.ScaleType zzc;
    private boolean zzd;
    private zzb zze;
    private zzc zzf;

    public MediaView(@NonNull Context context) {
        super(context);
    }

    @Nullable
    public MediaContent getMediaContent() {
        return this.zza;
    }

    public void setImageScaleType(@NonNull ImageView.ScaleType scaleType) {
        this.zzd = true;
        this.zzc = scaleType;
        zzc zzcVar = this.zzf;
        if (zzcVar != null) {
            NativeAdView.zzb(zzcVar.zza, scaleType);
        }
    }

    public void setMediaContent(@Nullable MediaContent mediaContent) {
        boolean zzr;
        this.zzb = true;
        this.zza = mediaContent;
        zzb zzbVar = this.zze;
        if (zzbVar != null) {
            NativeAdView.zzc(zzbVar.zza, mediaContent);
        }
        if (mediaContent != null) {
            try {
                zzbhj zza = mediaContent.zza();
                if (zza != null) {
                    if (mediaContent.hasVideoContent()) {
                        zzr = zza.zzs(ObjectWrapper.wrap(this));
                    } else {
                        if (mediaContent.zzb()) {
                            zzr = zza.zzr(ObjectWrapper.wrap(this));
                        }
                        removeAllViews();
                    }
                    if (zzr) {
                        return;
                    }
                    removeAllViews();
                }
            } catch (RemoteException e10) {
                removeAllViews();
                zzo.zzh("", e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final synchronized void zza(zzb zzbVar) {
        this.zze = zzbVar;
        if (this.zzb) {
            NativeAdView.zzc(zzbVar.zza, this.zza);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final synchronized void zzb(zzc zzcVar) {
        this.zzf = zzcVar;
        if (this.zzd) {
            NativeAdView.zzb(zzcVar.zza, this.zzc);
        }
    }

    public MediaView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    @TargetApi(21)
    public MediaView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }
}
