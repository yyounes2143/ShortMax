package com.google.android.gms.ads.admanager;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.BaseAdView;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbfc;
import com.google.android.gms.internal.ads.zzbun;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class AdManagerAdView extends BaseAdView {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f19619a = 0;

    public AdManagerAdView(@NonNull Context context) {
        super(context, 0);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public static /* synthetic */ void zza(@NonNull AdManagerAdView adManagerAdView, @NonNull AdManagerAdRequest adManagerAdRequest) {
        try {
            adManagerAdView.zza.zzn(adManagerAdRequest.zza());
        } catch (IllegalStateException e10) {
            zzbun.zza(adManagerAdView.getContext()).zzh(e10, "AdManagerAdView.loadAd");
        }
    }

    @Nullable
    public AdSize[] getAdSizes() {
        return this.zza.zzE();
    }

    @Nullable
    public AppEventListener getAppEventListener() {
        return this.zza.zzi();
    }

    @NonNull
    public VideoController getVideoController() {
        return this.zza.zzg();
    }

    @Nullable
    public VideoOptions getVideoOptions() {
        return this.zza.zzh();
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd(@NonNull final AdManagerAdRequest adManagerAdRequest) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzbde.zza(getContext());
        if (((Boolean) zzbfc.zzf.zze()).booleanValue()) {
            if (((Boolean) zzbd.zzc().zzb(zzbde.zzlE)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.admanager.zzb
                    @Override // java.lang.Runnable
                    public final void run() {
                        AdManagerAdView.zza(AdManagerAdView.this, adManagerAdRequest);
                    }
                });
                return;
            }
        }
        this.zza.zzn(adManagerAdRequest.zza());
    }

    public void recordManualImpression() {
        this.zza.zzp();
    }

    public void setAdSizes(@NonNull AdSize... adSizeArr) {
        if (adSizeArr != null && adSizeArr.length > 0) {
            this.zza.zzu(adSizeArr);
            return;
        }
        throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
    }

    public void setAppEventListener(@Nullable AppEventListener appEventListener) {
        this.zza.zzw(appEventListener);
    }

    public void setManualImpressionsEnabled(boolean z10) {
        this.zza.zzx(z10);
    }

    public void setVideoOptions(@NonNull VideoOptions videoOptions) {
        this.zza.zzA(videoOptions);
    }

    public final boolean zzb(zzbx zzbxVar) {
        return this.zza.zzB(zzbxVar);
    }

    public AdManagerAdView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet, true);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public AdManagerAdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10, 0, true);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }
}
