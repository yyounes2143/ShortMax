package com.google.android.gms.internal.ads;

import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@RequiresApi(24)
/* loaded from: classes4.dex */
public final class zzrh {
    private final AudioTrack zza;
    private final zzpo zzb;
    @Nullable
    private AudioRouting.OnRoutingChangedListener zzc = new AudioRouting.OnRoutingChangedListener() { // from class: com.google.android.gms.internal.ads.zzrg
        @Override // android.media.AudioRouting.OnRoutingChangedListener
        public final void onRoutingChanged(AudioRouting audioRouting) {
            zzrh.zza(zzrh.this, audioRouting);
        }
    };

    public zzrh(AudioTrack audioTrack, zzpo zzpoVar) {
        this.zza = audioTrack;
        this.zzb = zzpoVar;
        audioTrack.addOnRoutingChangedListener(this.zzc, new Handler(Looper.myLooper()));
    }

    public static /* synthetic */ void zza(zzrh zzrhVar, AudioRouting audioRouting) {
        AudioDeviceInfo routedDevice;
        if (zzrhVar.zzc != null && (routedDevice = audioRouting.getRoutedDevice()) != null) {
            zzrhVar.zzb.zzi(routedDevice);
        }
    }

    public final void zzb() {
        AudioRouting.OnRoutingChangedListener onRoutingChangedListener = this.zzc;
        onRoutingChangedListener.getClass();
        this.zza.removeOnRoutingChangedListener(onRoutingChangedListener);
        this.zzc = null;
    }
}
