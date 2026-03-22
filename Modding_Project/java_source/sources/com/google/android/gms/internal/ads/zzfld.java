package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfld {
    protected final ClientApi zza;
    protected final Context zzb;
    protected final int zzc;
    protected final zzbpq zzd;
    protected com.google.android.gms.ads.internal.client.zzfv zze;
    protected AtomicBoolean zzf;
    @Nullable
    protected com.google.android.gms.ads.internal.client.zzch zzg;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzce zzh;
    private final Queue zzi;
    private final zzfkg zzj;
    private final String zzk;
    private AtomicBoolean zzl;
    private final ScheduledExecutorService zzm;
    private AtomicBoolean zzn;
    private AtomicBoolean zzo;
    private zzfkl zzp;
    private final Clock zzq;
    private final zzfkt zzr;

    public zzfld(ClientApi clientApi, Context context, int i10, zzbpq zzbpqVar, @NonNull com.google.android.gms.ads.internal.client.zzfv zzfvVar, @Nullable com.google.android.gms.ads.internal.client.zzce zzceVar, @NonNull ScheduledExecutorService scheduledExecutorService, zzfkg zzfkgVar, Clock clock) {
        this(DevicePublicKeyStringDef.NONE, clientApi, context, i10, zzbpqVar, zzfvVar, scheduledExecutorService, zzfkgVar, clock);
        this.zzh = zzceVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String zzD() {
        if (true != DevicePublicKeyStringDef.NONE.equals(this.zzk)) {
            return "2";
        }
        return "1";
    }

    private final synchronized void zzE(Object obj) {
        try {
            Clock clock = this.zzq;
            zzfku zzfkuVar = new zzfku(obj, clock);
            this.zzi.add(zzfkuVar);
            com.google.android.gms.ads.internal.client.zzea zza = zza(obj);
            long currentTimeMillis = clock.currentTimeMillis();
            if (this.zzn.get()) {
                com.google.android.gms.ads.internal.util.zzs.zza.post(new zzfky(this, zza));
            }
            ScheduledExecutorService scheduledExecutorService = this.zzm;
            scheduledExecutorService.execute(new zzfkz(this, currentTimeMillis, zza));
            scheduledExecutorService.schedule(new zzfkx(this), zzfkuVar.zza(), TimeUnit.MILLISECONDS);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzF(Throwable th2) {
        try {
            this.zzl.set(false);
            if ((th2 instanceof zzfka) && ((zzfka) th2).zza() == 0) {
                throw null;
            }
            zzN(true);
        } catch (Throwable th3) {
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzG(Object obj) {
        try {
            boolean z10 = false;
            this.zzl.set(false);
            if (obj != null) {
                this.zzj.zzc();
                this.zzo.set(true);
                zzE(obj);
            }
            if (obj == null) {
                z10 = true;
            }
            zzN(z10);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzH(@Nullable com.google.android.gms.ads.internal.client.zzea zzeaVar) {
        com.google.android.gms.ads.internal.client.zzce zzceVar = this.zzh;
        if (zzceVar != null) {
            try {
                zzceVar.zze(this.zze);
            } catch (RemoteException unused) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to call onAdsAvailable");
            }
        }
        com.google.android.gms.ads.internal.client.zzch zzchVar = this.zzg;
        if (zzchVar != null) {
            try {
                zzchVar.zzf(this.zzk, zzeaVar);
            } catch (RemoteException unused2) {
                int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to call onAdPreloaded");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzI() {
        com.google.android.gms.ads.internal.client.zzce zzceVar = this.zzh;
        if (zzceVar != null) {
            try {
                zzceVar.zzf(this.zze);
            } catch (RemoteException unused) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to call onAdsExhausted");
            }
        }
        com.google.android.gms.ads.internal.client.zzch zzchVar = this.zzg;
        if (zzchVar != null) {
            try {
                zzchVar.zzg(this.zzk);
            } catch (RemoteException unused2) {
                int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to call onAdsExhausted");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzJ(com.google.android.gms.ads.internal.client.zze zzeVar) {
        com.google.android.gms.ads.internal.client.zzch zzchVar = this.zzg;
        if (zzchVar != null) {
            try {
                zzchVar.zze(this.zzk, zzeVar);
            } catch (RemoteException unused) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to call onAdFailedToPreload");
            }
        }
    }

    private final synchronized void zzK() {
        try {
            if (this.zzo.get() && this.zzi.isEmpty()) {
                this.zzo.set(false);
                if (this.zzn.get()) {
                    com.google.android.gms.ads.internal.util.zzs.zza.post(new zzflb(this));
                }
                this.zzm.execute(new zzflc(this));
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzL(com.google.android.gms.ads.internal.client.zze zzeVar) {
        try {
            if (this.zzn.get()) {
                com.google.android.gms.ads.internal.util.zzs.zza.post(new zzfla(this, zzeVar));
            }
            this.zzl.set(false);
            int i10 = zzeVar.zza;
            if (i10 != 1 && i10 != 8 && i10 != 10 && i10 != 11) {
                zzN(true);
                return;
            }
            com.google.android.gms.ads.internal.client.zzfv zzfvVar = this.zze;
            String str = "Preloading " + zzfvVar.zzb + ", for adUnitId:" + zzfvVar.zza + ", Ad load failed. Stop preloading due to non-retriable error:";
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(str);
            this.zzf.set(false);
            zzfkr zzfkrVar = new zzfkr(this.zze.zza, zze());
            zzfkrVar.zzb(this.zzk);
            this.zzp.zzk(this.zzq.currentTimeMillis(), new zzfkt(zzfkrVar, null), zzeVar, this.zze.zzd, zzd(), zzD());
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private final synchronized void zzM() {
        Iterator it = this.zzi.iterator();
        while (it.hasNext()) {
            if (((zzfku) it.next()).zzd()) {
                it.remove();
            }
        }
    }

    private final synchronized void zzN(boolean z10) {
        try {
            zzfkg zzfkgVar = this.zzj;
            if (!zzfkgVar.zze()) {
                if (z10) {
                    zzfkgVar.zzb();
                }
                this.zzm.schedule(new zzfkx(this), zzfkgVar.zza(), TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static final String zzO(@Nullable com.google.android.gms.ads.internal.client.zzea zzeaVar) {
        if (!(zzeaVar instanceof zzcvr)) {
            return null;
        }
        return ((zzcvr) zzeaVar).zzl();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ double zzc(zzfld zzfldVar, com.google.android.gms.ads.internal.client.zzea zzeaVar) {
        if (!(zzeaVar instanceof zzcvr)) {
            return 0.0d;
        }
        return ((zzcvr) zzeaVar).zzc();
    }

    public final void zzA() {
        this.zzf.set(false);
        this.zzn.set(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzB(int i10) {
        boolean z10;
        int i11;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Preconditions.checkArgument(z10);
        AdFormat adFormat = AdFormat.getAdFormat(this.zze.zzb);
        int i12 = this.zze.zzd;
        synchronized (this) {
            try {
                com.google.android.gms.ads.internal.client.zzfv zzfvVar = this.zze;
                String str = zzfvVar.zza;
                int i13 = zzfvVar.zzb;
                com.google.android.gms.ads.internal.client.zzm zzmVar = zzfvVar.zzc;
                if (i10 > 0) {
                    i11 = i10;
                } else {
                    i11 = zzfvVar.zzd;
                }
                this.zze = new com.google.android.gms.ads.internal.client.zzfv(str, i13, zzmVar, i11);
                Queue queue = this.zzi;
                if (queue.size() > i10) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzv)).booleanValue()) {
                        ArrayList arrayList = new ArrayList();
                        for (int i14 = 0; i14 < i10; i14++) {
                            zzfku zzfkuVar = (zzfku) queue.poll();
                            if (zzfkuVar != null) {
                                arrayList.add(zzfkuVar);
                            }
                        }
                        queue.clear();
                        queue.addAll(arrayList);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        zzfkl zzfklVar = this.zzp;
        if (zzfklVar != null && adFormat != null) {
            zzfklVar.zza(i12, i10, this.zzq.currentTimeMillis(), new zzfkt(new zzfkr(this.zze.zza, adFormat), null));
        }
    }

    public final synchronized boolean zzC() {
        zzM();
        if (!this.zzi.isEmpty()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public abstract com.google.android.gms.ads.internal.client.zzea zza(Object obj);

    protected abstract com.google.common.util.concurrent.e zzb(Context context);

    /* JADX INFO: Access modifiers changed from: protected */
    public final synchronized int zzd() {
        return this.zzi.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final AdFormat zze() {
        return AdFormat.getAdFormat(this.zze.zzb);
    }

    public final synchronized zzfld zzh() {
        this.zzm.submit(new zzfkx(this));
        return this;
    }

    @Nullable
    protected final synchronized Object zzj() {
        zzfku zzfkuVar = (zzfku) this.zzi.peek();
        if (zzfkuVar == null) {
            return null;
        }
        return zzfkuVar.zzc();
    }

    @Nullable
    public final synchronized Object zzk() {
        boolean z10;
        try {
            this.zzj.zzc();
            Queue queue = this.zzi;
            zzfku zzfkuVar = (zzfku) queue.poll();
            AtomicBoolean atomicBoolean = this.zzo;
            if (zzfkuVar != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            atomicBoolean.set(z10);
            if (zzfkuVar != null) {
                if (!queue.isEmpty()) {
                    zzfku zzfkuVar2 = (zzfku) queue.peek();
                    AdFormat adFormat = AdFormat.getAdFormat(this.zze.zzb);
                    String zzO = zzO(zza(zzfkuVar.zzc()));
                    if (zzfkuVar2 != null && adFormat != null && zzO != null && zzfkuVar2.zzb() < zzfkuVar.zzb()) {
                        this.zzp.zzn(this.zzq.currentTimeMillis(), this.zze.zzd, zzd(), zzO, this.zzr, zzD());
                    }
                }
            } else {
                zzfkuVar = null;
            }
            zzw();
            if (zzfkuVar == null) {
                return null;
            }
            return zzfkuVar.zzc();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String zzn() {
        return this.zzk;
    }

    @Nullable
    public final synchronized String zzo() {
        com.google.android.gms.ads.internal.client.zzea zza;
        Object zzj = zzj();
        if (zzj == null) {
            zza = null;
        } else {
            zza = zza(zzj);
        }
        return zzO(zza);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzv() {
        this.zzi.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final synchronized void zzw() {
        com.google.common.util.concurrent.e zzb;
        try {
            zzM();
            zzK();
            if (!this.zzl.get() && this.zzf.get() && this.zzi.size() < this.zze.zzd) {
                this.zzl.set(true);
                Activity zza = com.google.android.gms.ads.internal.zzv.zzb().zza();
                if (zza == null) {
                    String valueOf = String.valueOf(this.zze.zza);
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Empty activity context at preloading: ".concat(valueOf));
                    zzb = zzb(this.zzb);
                } else {
                    zzb = zzb(zza);
                }
                zzgdn.zzr(zzb, new zzfkv(this), this.zzm);
            }
        } finally {
        }
    }

    public final synchronized void zzx(int i10) {
        boolean z10;
        if (i10 >= 5) {
            z10 = true;
        } else {
            z10 = false;
        }
        Preconditions.checkArgument(z10);
        this.zzj.zzd(i10);
    }

    public final synchronized void zzy() {
        this.zzf.set(true);
        this.zzn.set(true);
        this.zzm.submit(new zzfkx(this));
    }

    public final void zzz(zzfkl zzfklVar) {
        this.zzp = zzfklVar;
    }

    public zzfld(String str, ClientApi clientApi, Context context, int i10, zzbpq zzbpqVar, @NonNull com.google.android.gms.ads.internal.client.zzfv zzfvVar, @Nullable com.google.android.gms.ads.internal.client.zzch zzchVar, @NonNull ScheduledExecutorService scheduledExecutorService, zzfkg zzfkgVar, Clock clock) {
        this(str, clientApi, context, i10, zzbpqVar, zzfvVar, scheduledExecutorService, zzfkgVar, clock);
        this.zzg = zzchVar;
    }

    private zzfld(String str, ClientApi clientApi, Context context, int i10, zzbpq zzbpqVar, @NonNull com.google.android.gms.ads.internal.client.zzfv zzfvVar, @NonNull ScheduledExecutorService scheduledExecutorService, zzfkg zzfkgVar, Clock clock) {
        this.zzk = str;
        this.zza = clientApi;
        this.zzb = context;
        this.zzc = i10;
        this.zzd = zzbpqVar;
        this.zze = zzfvVar;
        this.zzi = new PriorityQueue(Math.max(1, zzfvVar.zzd), new zzfkw(this));
        this.zzf = new AtomicBoolean(true);
        this.zzl = new AtomicBoolean(false);
        this.zzm = scheduledExecutorService;
        this.zzj = zzfkgVar;
        this.zzn = new AtomicBoolean(true);
        this.zzo = new AtomicBoolean(false);
        this.zzq = clock;
        zzfkr zzfkrVar = new zzfkr(zzfvVar.zza, AdFormat.getAdFormat(this.zze.zzb));
        zzfkrVar.zzb(str);
        this.zzr = new zzfkt(zzfkrVar, null);
    }
}
