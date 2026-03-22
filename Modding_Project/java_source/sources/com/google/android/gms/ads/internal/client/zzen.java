package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzazr;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbfc;
import com.google.android.gms.internal.ads.zzbpm;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzen {
    @VisibleForTesting
    final zzbc zza;
    private final zzbpm zzb;
    private final zzq zzc;
    private final AtomicBoolean zzd;
    private final VideoController zze;
    @Nullable
    private zza zzf;
    private AdListener zzg;
    private AdSize[] zzh;
    @Nullable
    private AppEventListener zzi;
    @Nullable
    private zzbx zzj;
    private VideoOptions zzk;
    private String zzl;
    private final ViewGroup zzm;
    private int zzn;
    private boolean zzo;
    @Nullable
    private OnPaidEventListener zzp;
    private final AtomicLong zzq;

    public zzen(ViewGroup viewGroup, int i10) {
        this(viewGroup, null, false, zzq.zza, null, i10);
    }

    private static zzr zzF(Context context, AdSize[] adSizeArr, int i10) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.INVALID)) {
                return new zzr("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
            }
        }
        zzr zzrVar = new zzr(context, adSizeArr);
        zzrVar.zzj = zzG(i10);
        return zzrVar;
    }

    private static boolean zzG(int i10) {
        if (i10 == 1) {
            return true;
        }
        return false;
    }

    public final void zzA(VideoOptions videoOptions) {
        zzgc zzgcVar;
        this.zzk = videoOptions;
        try {
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null) {
                if (videoOptions == null) {
                    zzgcVar = null;
                } else {
                    zzgcVar = new zzgc(videoOptions);
                }
                zzbxVar.zzW(zzgcVar);
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    public final boolean zzB(zzbx zzbxVar) {
        try {
            IObjectWrapper zzo = zzbxVar.zzo();
            if (zzo == null || ((View) ObjectWrapper.unwrap(zzo)).getParent() != null) {
                return false;
            }
            this.zzm.addView((View) ObjectWrapper.unwrap(zzo));
            this.zzj = zzbxVar;
            return true;
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
            return false;
        }
    }

    public final boolean zzC() {
        try {
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null) {
                return zzbxVar.zzaa();
            }
            return false;
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
            return false;
        }
    }

    public final boolean zzD() {
        try {
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null) {
                return zzbxVar.zzab();
            }
            return false;
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
            return false;
        }
    }

    public final AdSize[] zzE() {
        return this.zzh;
    }

    public final long zza() {
        AtomicLong atomicLong = this.zzq;
        if (atomicLong.get() != 0) {
            return atomicLong.get();
        }
        try {
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null) {
                atomicLong.set(zzbxVar.zzc());
                return atomicLong.get();
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
        return 0L;
    }

    public final AdListener zzb() {
        return this.zzg;
    }

    @Nullable
    public final AdSize zzc() {
        zzr zzh;
        try {
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null && (zzh = zzbxVar.zzh()) != null) {
                return com.google.android.gms.ads.zzc.zzc(zzh.zze, zzh.zzb, zzh.zza);
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
        AdSize[] adSizeArr = this.zzh;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    @Nullable
    public final OnPaidEventListener zzd() {
        return this.zzp;
    }

    @Nullable
    public final ResponseInfo zze() {
        zzea zzeaVar = null;
        try {
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null) {
                zzeaVar = zzbxVar.zzl();
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
        return ResponseInfo.zza(zzeaVar);
    }

    public final VideoController zzg() {
        return this.zze;
    }

    public final VideoOptions zzh() {
        return this.zzk;
    }

    @Nullable
    public final AppEventListener zzi() {
        return this.zzi;
    }

    @Nullable
    public final zzed zzj() {
        zzbx zzbxVar = this.zzj;
        if (zzbxVar != null) {
            try {
                return zzbxVar.zzm();
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
            }
        }
        return null;
    }

    public final String zzk() {
        zzbx zzbxVar;
        if (this.zzl == null && (zzbxVar = this.zzj) != null) {
            try {
                this.zzl = zzbxVar.zzs();
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
            }
        }
        return this.zzl;
    }

    public final void zzm() {
        try {
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null) {
                zzbxVar.zzy();
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    public final void zzn(zzek zzekVar) {
        zzbx zzbxVar;
        try {
            long currentTimeMillis = System.currentTimeMillis();
            if (this.zzj == null) {
                if (this.zzh != null && this.zzl != null) {
                    ViewGroup viewGroup = this.zzm;
                    Context context = viewGroup.getContext();
                    zzr zzF = zzF(context, this.zzh, this.zzn);
                    if ("search_v2".equals(zzF.zza)) {
                        zzbxVar = (zzbx) new zzan(zzbb.zza(), context, zzF, this.zzl).zzd(context, false);
                    } else {
                        zzbxVar = (zzbx) new zzal(zzbb.zza(), context, zzF, this.zzl, this.zzb).zzd(context, false);
                    }
                    this.zzj = zzbxVar;
                    zzbxVar.zzE(new zzg(this.zza));
                    zza zzaVar = this.zzf;
                    if (zzaVar != null) {
                        this.zzj.zzD(new zzb(zzaVar));
                    }
                    AppEventListener appEventListener = this.zzi;
                    if (appEventListener != null) {
                        this.zzj.zzH(new zzazr(appEventListener));
                    }
                    if (this.zzk != null) {
                        this.zzj.zzW(new zzgc(this.zzk));
                    }
                    this.zzj.zzQ(new zzfu(this.zzp));
                    this.zzj.zzO(this.zzo);
                    zzbx zzbxVar2 = this.zzj;
                    if (zzbxVar2 != null) {
                        try {
                            final IObjectWrapper zzo = zzbxVar2.zzo();
                            if (zzo != null) {
                                if (((Boolean) zzbfc.zzf.zze()).booleanValue()) {
                                    if (((Boolean) zzbd.zzc().zzb(zzbde.zzlE)).booleanValue()) {
                                        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new Runnable() { // from class: com.google.android.gms.ads.internal.client.zzel
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                zzen.this.zzm.addView((View) ObjectWrapper.unwrap(zzo));
                                            }
                                        });
                                    }
                                }
                                viewGroup.addView((View) ObjectWrapper.unwrap(zzo));
                            }
                        } catch (RemoteException e10) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
                        }
                    }
                } else {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
            }
            zzekVar.zzp(currentTimeMillis);
            if (zzekVar.zzc() != 0) {
                this.zzq.set(zzekVar.zzc());
            }
            zzbx zzbxVar3 = this.zzj;
            if (zzbxVar3 != null) {
                AtomicLong atomicLong = this.zzq;
                if (atomicLong.get() != 0) {
                    zzbxVar3.zzR(atomicLong.get());
                }
                zzbxVar3.zzad(this.zzc.zza(this.zzm.getContext(), zzekVar));
                return;
            }
            throw null;
        } catch (RemoteException e11) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e11);
        }
    }

    public final void zzo() {
        try {
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null) {
                zzbxVar.zzA();
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    public final void zzp() {
        if (!this.zzd.getAndSet(true)) {
            try {
                zzbx zzbxVar = this.zzj;
                if (zzbxVar != null) {
                    zzbxVar.zzB();
                }
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
            }
        }
    }

    public final void zzq() {
        try {
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null) {
                zzbxVar.zzC();
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    public final void zzr(@Nullable zza zzaVar) {
        zzb zzbVar;
        try {
            this.zzf = zzaVar;
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null) {
                if (zzaVar != null) {
                    zzbVar = new zzb(zzaVar);
                } else {
                    zzbVar = null;
                }
                zzbxVar.zzD(zzbVar);
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    public final void zzs(AdListener adListener) {
        this.zzg = adListener;
        this.zza.zza(adListener);
    }

    public final void zzt(AdSize... adSizeArr) {
        if (this.zzh == null) {
            zzu(adSizeArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    public final void zzu(AdSize... adSizeArr) {
        this.zzh = adSizeArr;
        try {
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null) {
                zzbxVar.zzG(zzF(this.zzm.getContext(), this.zzh, this.zzn));
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
        this.zzm.requestLayout();
    }

    public final void zzv(String str) {
        if (this.zzl == null) {
            this.zzl = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }

    public final void zzw(@Nullable AppEventListener appEventListener) {
        zzazr zzazrVar;
        try {
            this.zzi = appEventListener;
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null) {
                if (appEventListener != null) {
                    zzazrVar = new zzazr(appEventListener);
                } else {
                    zzazrVar = null;
                }
                zzbxVar.zzH(zzazrVar);
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    public final void zzx(boolean z10) {
        this.zzo = z10;
        try {
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null) {
                zzbxVar.zzO(z10);
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    public final void zzy(@Nullable OnPaidEventListener onPaidEventListener) {
        try {
            this.zzp = onPaidEventListener;
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null) {
                zzbxVar.zzQ(new zzfu(onPaidEventListener));
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    public final void zzz(long j10) {
        this.zzq.set(j10);
        try {
            zzbx zzbxVar = this.zzj;
            if (zzbxVar != null) {
                zzbxVar.zzR(j10);
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    public zzen(ViewGroup viewGroup, AttributeSet attributeSet, boolean z10) {
        this(viewGroup, attributeSet, z10, zzq.zza, null, 0);
    }

    public zzen(ViewGroup viewGroup, AttributeSet attributeSet, boolean z10, int i10) {
        this(viewGroup, attributeSet, z10, zzq.zza, null, i10);
    }

    @VisibleForTesting
    zzen(ViewGroup viewGroup, @Nullable AttributeSet attributeSet, boolean z10, zzq zzqVar, @Nullable zzbx zzbxVar, int i10) {
        zzr zzrVar;
        this.zzb = new zzbpm();
        this.zze = new VideoController();
        this.zza = new zzem(this);
        this.zzq = new AtomicLong();
        this.zzm = viewGroup;
        this.zzc = zzqVar;
        this.zzj = null;
        this.zzd = new AtomicBoolean(false);
        this.zzn = i10;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzz zzzVar = new zzz(context, attributeSet);
                this.zzh = zzzVar.zzb(z10);
                this.zzl = zzzVar.zza();
                if (viewGroup.isInEditMode()) {
                    com.google.android.gms.ads.internal.util.client.zzf zzb = zzbb.zzb();
                    AdSize adSize = this.zzh[0];
                    int i11 = this.zzn;
                    if (adSize.equals(AdSize.INVALID)) {
                        zzrVar = new zzr("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
                    } else {
                        zzr zzrVar2 = new zzr(context, adSize);
                        zzrVar2.zzj = zzG(i11);
                        zzrVar = zzrVar2;
                    }
                    zzb.zzr(viewGroup, zzrVar, "Ads by Google");
                }
            } catch (IllegalArgumentException e10) {
                zzbb.zzb().zzq(viewGroup, new zzr(context, AdSize.BANNER), e10.getMessage(), e10.getMessage());
            }
        }
    }
}
