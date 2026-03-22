package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzrl extends AudioTrack$StreamEventCallback {
    final /* synthetic */ zzrm zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzrl(zzrm zzrmVar) {
        Objects.requireNonNull(zzrmVar);
        this.zza = zzrmVar;
    }

    public final void onDataRequest(AudioTrack audioTrack, int i10) {
        AudioTrack audioTrack2;
        zzql zzqlVar;
        boolean z10;
        zzql zzqlVar2;
        zzro zzroVar = this.zza.zza;
        audioTrack2 = zzroVar.zzu;
        if (audioTrack.equals(audioTrack2)) {
            zzqlVar = zzroVar.zzq;
            if (zzqlVar != null) {
                z10 = zzroVar.zzS;
                if (z10) {
                    zzqlVar2 = zzroVar.zzq;
                    zzqlVar2.zzb();
                }
            }
        }
    }

    public final void onPresentationEnded(AudioTrack audioTrack) {
        AudioTrack audioTrack2;
        zzro zzroVar = this.zza.zza;
        audioTrack2 = zzroVar.zzu;
        if (audioTrack.equals(audioTrack2)) {
            zzroVar.zzR = true;
        }
    }

    public final void onTearDown(AudioTrack audioTrack) {
        AudioTrack audioTrack2;
        zzql zzqlVar;
        boolean z10;
        zzql zzqlVar2;
        zzro zzroVar = this.zza.zza;
        audioTrack2 = zzroVar.zzu;
        if (audioTrack.equals(audioTrack2)) {
            zzqlVar = zzroVar.zzq;
            if (zzqlVar != null) {
                z10 = zzroVar.zzS;
                if (z10) {
                    zzqlVar2 = zzroVar.zzq;
                    zzqlVar2.zzb();
                }
            }
        }
    }
}
