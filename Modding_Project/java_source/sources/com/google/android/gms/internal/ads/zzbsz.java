package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbsz extends NativeAd {
    private final zzbij zza;
    @Nullable
    private final zzbsy zzc;
    @Nullable
    private final NativeAd.AdChoicesInfo zzd;
    private final List zzb = new ArrayList();
    private final List zze = new ArrayList();
    private final AtomicLong zzf = new AtomicLong();

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|(3:2|3|(2:5|(5:8|(1:10)(1:17)|(3:12|13|14)(1:16)|15|6)))|(3:19|20|(2:22|(5:25|(1:27)(1:34)|(3:29|30|31)(1:33)|32|23)))|36|37|(7:39|40|41|42|(2:44|45)|47|48)|53|40|41|42|(0)|47|48) */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b0, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b1, code lost:
        com.google.android.gms.ads.internal.util.client.zzo.zzh("", r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a3 A[Catch: RemoteException -> 0x00b0, TRY_LEAVE, TryCatch #1 {RemoteException -> 0x00b0, blocks: (B:42:0x009b, B:44:0x00a3), top: B:52:0x009b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbsz(com.google.android.gms.internal.ads.zzbij r6) {
        /*
            r5 = this;
            java.lang.String r0 = ""
            r5.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r5.zzb = r1
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r5.zze = r1
            java.util.concurrent.atomic.AtomicLong r1 = new java.util.concurrent.atomic.AtomicLong
            r1.<init>()
            r5.zzf = r1
            r5.zza = r6
            r1 = 0
            java.util.List r6 = r6.zzv()     // Catch: android.os.RemoteException -> L3c
            if (r6 == 0) goto L4f
            java.util.Iterator r6 = r6.iterator()     // Catch: android.os.RemoteException -> L3c
        L27:
            boolean r2 = r6.hasNext()     // Catch: android.os.RemoteException -> L3c
            if (r2 == 0) goto L4f
            java.lang.Object r2 = r6.next()     // Catch: android.os.RemoteException -> L3c
            boolean r3 = r2 instanceof android.os.IBinder     // Catch: android.os.RemoteException -> L3c
            if (r3 == 0) goto L3e
            android.os.IBinder r2 = (android.os.IBinder) r2     // Catch: android.os.RemoteException -> L3c
            com.google.android.gms.internal.ads.zzbgp r2 = com.google.android.gms.internal.ads.zzbgo.zzh(r2)     // Catch: android.os.RemoteException -> L3c
            goto L3f
        L3c:
            r6 = move-exception
            goto L4c
        L3e:
            r2 = r1
        L3f:
            if (r2 == 0) goto L27
            java.util.List r3 = r5.zzb     // Catch: android.os.RemoteException -> L3c
            com.google.android.gms.internal.ads.zzbsy r4 = new com.google.android.gms.internal.ads.zzbsy     // Catch: android.os.RemoteException -> L3c
            r4.<init>(r2)     // Catch: android.os.RemoteException -> L3c
            r3.add(r4)     // Catch: android.os.RemoteException -> L3c
            goto L27
        L4c:
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r0, r6)
        L4f:
            com.google.android.gms.internal.ads.zzbij r6 = r5.zza     // Catch: android.os.RemoteException -> L70
            java.util.List r6 = r6.zzw()     // Catch: android.os.RemoteException -> L70
            if (r6 == 0) goto L83
            java.util.Iterator r6 = r6.iterator()     // Catch: android.os.RemoteException -> L70
        L5b:
            boolean r2 = r6.hasNext()     // Catch: android.os.RemoteException -> L70
            if (r2 == 0) goto L83
            java.lang.Object r2 = r6.next()     // Catch: android.os.RemoteException -> L70
            boolean r3 = r2 instanceof android.os.IBinder     // Catch: android.os.RemoteException -> L70
            if (r3 == 0) goto L72
            android.os.IBinder r2 = (android.os.IBinder) r2     // Catch: android.os.RemoteException -> L70
            com.google.android.gms.ads.internal.client.zzdj r2 = com.google.android.gms.ads.internal.client.zzdi.zzb(r2)     // Catch: android.os.RemoteException -> L70
            goto L73
        L70:
            r6 = move-exception
            goto L80
        L72:
            r2 = r1
        L73:
            if (r2 == 0) goto L5b
            java.util.List r3 = r5.zze     // Catch: android.os.RemoteException -> L70
            com.google.android.gms.ads.internal.client.zzdk r4 = new com.google.android.gms.ads.internal.client.zzdk     // Catch: android.os.RemoteException -> L70
            r4.<init>(r2)     // Catch: android.os.RemoteException -> L70
            r3.add(r4)     // Catch: android.os.RemoteException -> L70
            goto L5b
        L80:
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r0, r6)
        L83:
            com.google.android.gms.internal.ads.zzbij r6 = r5.zza     // Catch: android.os.RemoteException -> L91
            com.google.android.gms.internal.ads.zzbgp r6 = r6.zzl()     // Catch: android.os.RemoteException -> L91
            if (r6 == 0) goto L93
            com.google.android.gms.internal.ads.zzbsy r2 = new com.google.android.gms.internal.ads.zzbsy     // Catch: android.os.RemoteException -> L91
            r2.<init>(r6)     // Catch: android.os.RemoteException -> L91
            goto L99
        L91:
            r6 = move-exception
            goto L95
        L93:
            r2 = r1
            goto L99
        L95:
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r0, r6)
            goto L93
        L99:
            r5.zzc = r2
            com.google.android.gms.internal.ads.zzbij r6 = r5.zza     // Catch: android.os.RemoteException -> Lb0
            com.google.android.gms.internal.ads.zzbgi r6 = r6.zzj()     // Catch: android.os.RemoteException -> Lb0
            if (r6 == 0) goto Lb4
            com.google.android.gms.internal.ads.zzbsw r6 = new com.google.android.gms.internal.ads.zzbsw     // Catch: android.os.RemoteException -> Lb0
            com.google.android.gms.internal.ads.zzbij r2 = r5.zza     // Catch: android.os.RemoteException -> Lb0
            com.google.android.gms.internal.ads.zzbgi r2 = r2.zzj()     // Catch: android.os.RemoteException -> Lb0
            r6.<init>(r2)     // Catch: android.os.RemoteException -> Lb0
            r1 = r6
            goto Lb4
        Lb0:
            r6 = move-exception
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r0, r6)
        Lb4:
            r5.zzd = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbsz.<init>(com.google.android.gms.internal.ads.zzbij):void");
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.zza.zzx();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to cancelUnconfirmedClick", e10);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void destroy() {
        try {
            this.zza.zzy();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void enableCustomClickGesture() {
        try {
            this.zza.zzE();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final String getAdvertiser() {
        try {
            return this.zza.zzo();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final String getBody() {
        try {
            return this.zza.zzp();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final String getCallToAction() {
        try {
            return this.zza.zzq();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final Bundle getExtras() {
        try {
            Bundle zzg = this.zza.zzg();
            if (zzg != null) {
                return zzg;
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final String getHeadline() {
        try {
            return this.zza.zzr();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final NativeAd.Image getIcon() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List<NativeAd.Image> getImages() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final MediaContent getMediaContent() {
        try {
            zzbij zzbijVar = this.zza;
            if (zzbijVar.zzk() != null) {
                return new com.google.android.gms.ads.internal.client.zzff(zzbijVar.zzk(), null);
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
        return null;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List<MuteThisAdReason> getMuteThisAdReasons() {
        return this.zze;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final long getPlacementId() {
        long j10;
        AtomicLong atomicLong = this.zzf;
        if (atomicLong.get() != 0) {
            return atomicLong.get();
        }
        synchronized (this) {
            try {
                try {
                    long zzf = this.zza.zzf();
                    AtomicLong atomicLong2 = this.zzf;
                    atomicLong2.set(zzf);
                    j10 = atomicLong2.get();
                } catch (RemoteException e10) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to getPlacementId", e10);
                    return 0L;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j10;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final String getPrice() {
        try {
            return this.zza.zzt();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final ResponseInfo getResponseInfo() {
        com.google.android.gms.ads.internal.client.zzea zzeaVar;
        try {
            zzeaVar = this.zza.zzh();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            zzeaVar = null;
        }
        return ResponseInfo.zza(zzeaVar);
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final Double getStarRating() {
        try {
            double zze = this.zza.zze();
            if (zze == -1.0d) {
                return null;
            }
            return Double.valueOf(zze);
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final String getStore() {
        try {
            return this.zza.zzu();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.zza.zzJ();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.zza.zzK();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        try {
            try {
                if (this.zza.zzK()) {
                    if (muteThisAdReason == null) {
                        this.zza.zzz(null);
                        return;
                    } else if (muteThisAdReason instanceof com.google.android.gms.ads.internal.client.zzdk) {
                        this.zza.zzz(((com.google.android.gms.ads.internal.client.zzdk) muteThisAdReason).zza());
                        return;
                    } else {
                        com.google.android.gms.ads.internal.util.client.zzo.zzg("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
                        return;
                    }
                }
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Ad is not custom mute enabled");
        } catch (RemoteException e11) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e11);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.zza.zzA(bundle);
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void recordCustomClickGesture() {
        try {
            this.zza.zzB();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    protected final void recordEvent(Bundle bundle) {
        try {
            this.zza.zzC(bundle);
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to record native event", e10);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.zza.zzL(bundle);
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.zza.zzD(bundle);
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.zza.zzF(new com.google.android.gms.ads.internal.client.zzdg(muteThisAdListener));
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        try {
            this.zza.zzG(new com.google.android.gms.ads.internal.client.zzfu(onPaidEventListener));
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to setOnPaidEventListener", e10);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setPlacementId(long j10) {
        try {
            this.zza.zzH(j10);
            this.zzf.set(j10);
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to setPlacementId", e10);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setUnconfirmedClickListener(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.zza.zzI(new zzbtg(unconfirmedClickListener));
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to setUnconfirmedClickListener", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.nativead.NativeAd
    @Nullable
    public final /* bridge */ /* synthetic */ Object zza() {
        try {
            return this.zza.zzn();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            return null;
        }
    }
}
