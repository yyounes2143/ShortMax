package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzen;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbfc;
import com.google.android.gms.internal.ads.zzbun;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class BaseAdView extends ViewGroup {
    protected final zzen zza;

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseAdView(@NonNull Context context, int i10) {
        super(context);
        this.zza = new zzen(this, i10);
    }

    public void destroy() {
        zzbde.zza(getContext());
        if (((Boolean) zzbfc.zze.zze()).booleanValue()) {
            if (((Boolean) zzbd.zzc().zzb(zzbde.zzlB)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zze
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseAdView baseAdView = BaseAdView.this;
                        try {
                            baseAdView.zza.zzm();
                        } catch (IllegalStateException e10) {
                            zzbun.zza(baseAdView.getContext()).zzh(e10, "BaseAdView.destroy");
                        }
                    }
                });
                return;
            }
        }
        this.zza.zzm();
    }

    @NonNull
    public AdListener getAdListener() {
        return this.zza.zzb();
    }

    @Nullable
    public AdSize getAdSize() {
        return this.zza.zzc();
    }

    @NonNull
    public String getAdUnitId() {
        return this.zza.zzk();
    }

    @Nullable
    public OnPaidEventListener getOnPaidEventListener() {
        return this.zza.zzd();
    }

    public long getPlacementId() {
        return this.zza.zza();
    }

    @Nullable
    public ResponseInfo getResponseInfo() {
        return this.zza.zze();
    }

    public boolean isCollapsible() {
        return this.zza.zzC();
    }

    public boolean isLoading() {
        return this.zza.zzD();
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd(@NonNull final AdRequest adRequest) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzbde.zza(getContext());
        if (((Boolean) zzbfc.zzf.zze()).booleanValue()) {
            if (((Boolean) zzbd.zzc().zzb(zzbde.zzlE)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zzg
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseAdView baseAdView = BaseAdView.this;
                        try {
                            baseAdView.zza.zzn(adRequest.zza);
                        } catch (IllegalStateException e10) {
                            zzbun.zza(baseAdView.getContext()).zzh(e10, "BaseAdView.loadAd");
                        }
                    }
                });
                return;
            }
        }
        this.zza.zzn(adRequest.zza);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i14 = ((i12 - i10) - measuredWidth) / 2;
            int i15 = ((i13 - i11) - measuredHeight) / 2;
            childAt.layout(i14, i15, measuredWidth + i14, measuredHeight + i15);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        AdSize adSize;
        int i12;
        int i13 = 0;
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            measureChild(childAt, i10, i11);
            i13 = childAt.getMeasuredWidth();
            i12 = childAt.getMeasuredHeight();
        } else {
            try {
                adSize = getAdSize();
            } catch (NullPointerException e10) {
                zzo.zzh("Unable to retrieve ad size.", e10);
                adSize = null;
            }
            if (adSize != null) {
                Context context = getContext();
                int widthInPixels = adSize.getWidthInPixels(context);
                i12 = adSize.getHeightInPixels(context);
                i13 = widthInPixels;
            } else {
                i12 = 0;
            }
        }
        setMeasuredDimension(View.resolveSize(Math.max(i13, getSuggestedMinimumWidth()), i10), View.resolveSize(Math.max(i12, getSuggestedMinimumHeight()), i11));
    }

    public void pause() {
        zzbde.zza(getContext());
        if (((Boolean) zzbfc.zzg.zze()).booleanValue()) {
            if (((Boolean) zzbd.zzc().zzb(zzbde.zzlC)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zzf
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseAdView baseAdView = BaseAdView.this;
                        try {
                            baseAdView.zza.zzo();
                        } catch (IllegalStateException e10) {
                            zzbun.zza(baseAdView.getContext()).zzh(e10, "BaseAdView.pause");
                        }
                    }
                });
                return;
            }
        }
        this.zza.zzo();
    }

    public void resume() {
        zzbde.zza(getContext());
        if (((Boolean) zzbfc.zzh.zze()).booleanValue()) {
            if (((Boolean) zzbd.zzc().zzb(zzbde.zzlA)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zzd
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseAdView baseAdView = BaseAdView.this;
                        try {
                            baseAdView.zza.zzq();
                        } catch (IllegalStateException e10) {
                            zzbun.zza(baseAdView.getContext()).zzh(e10, "BaseAdView.resume");
                        }
                    }
                });
                return;
            }
        }
        this.zza.zzq();
    }

    public void setAdListener(@NonNull AdListener adListener) {
        zzen zzenVar = this.zza;
        zzenVar.zzs(adListener);
        if (adListener == null) {
            zzenVar.zzr(null);
            return;
        }
        if (adListener instanceof com.google.android.gms.ads.internal.client.zza) {
            zzenVar.zzr((com.google.android.gms.ads.internal.client.zza) adListener);
        }
        if (adListener instanceof AppEventListener) {
            zzenVar.zzw((AppEventListener) adListener);
        }
    }

    public void setAdSize(@NonNull AdSize adSize) {
        this.zza.zzt(adSize);
    }

    public void setAdUnitId(@NonNull String str) {
        this.zza.zzv(str);
    }

    public void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        this.zza.zzy(onPaidEventListener);
    }

    public void setPlacementId(long j10) {
        this.zza.zzz(j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseAdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i10) {
        super(context, attributeSet);
        this.zza = new zzen(this, attributeSet, false, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseAdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10);
        this.zza = new zzen(this, attributeSet, false, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseAdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i10, int i11, boolean z10) {
        super(context, attributeSet, i10);
        this.zza = new zzen(this, attributeSet, z10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseAdView(@NonNull Context context, @NonNull AttributeSet attributeSet, boolean z10) {
        super(context, attributeSet);
        this.zza = new zzen(this, attributeSet, z10);
    }
}
