package com.google.android.gms.internal.ads;

import android.media.LoudnessCodecController;
import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.HashSet;
import java.util.Iterator;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@RequiresApi(35)
/* loaded from: classes4.dex */
public final class zztb {
    private final HashSet zza;
    @Nullable
    private LoudnessCodecController zzb;

    public zztb() {
        throw null;
    }

    public final void zza(MediaCodec mediaCodec) {
        boolean addMediaCodec;
        LoudnessCodecController loudnessCodecController = this.zzb;
        if (loudnessCodecController != null) {
            addMediaCodec = loudnessCodecController.addMediaCodec(mediaCodec);
            if (!addMediaCodec) {
                return;
            }
        }
        zzdd.zzf(this.zza.add(mediaCodec));
    }

    public final void zzb() {
        this.zza.clear();
        LoudnessCodecController loudnessCodecController = this.zzb;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
        }
    }

    public final void zzc(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController;
        if (this.zza.remove(mediaCodec) && (loudnessCodecController = this.zzb) != null) {
            loudnessCodecController.removeMediaCodec(mediaCodec);
        }
    }

    public final void zzd(int i10) {
        LoudnessCodecController create;
        boolean addMediaCodec;
        LoudnessCodecController loudnessCodecController = this.zzb;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
            this.zzb = null;
        }
        create = LoudnessCodecController.create(i10, zzgef.zzc(), new zzsy(this));
        this.zzb = create;
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            addMediaCodec = create.addMediaCodec((MediaCodec) it.next());
            if (!addMediaCodec) {
                it.remove();
            }
        }
    }

    public zztb(zzta zztaVar) {
        this.zza = new HashSet();
    }
}
