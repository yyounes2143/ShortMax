package com.google.android.gms.internal.ads;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzch {
    private final AudioManager.OnAudioFocusChangeListener zzb;
    private final Handler zzc;
    private final zze zzd;
    @Nullable
    private final Object zzf;
    private final int zza = 1;
    private final boolean zze = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzch(int i10, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, zze zzeVar, boolean z10) {
        AudioFocusRequest audioFocusRequest;
        AudioFocusRequest.Builder audioAttributes;
        AudioFocusRequest.Builder willPauseWhenDucked;
        AudioFocusRequest.Builder onAudioFocusChangeListener2;
        this.zzc = handler;
        this.zzd = zzeVar;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 26) {
            this.zzb = new zzcg(onAudioFocusChangeListener, handler);
        } else {
            this.zzb = onAudioFocusChangeListener;
        }
        if (i11 >= 26) {
            audioAttributes = o5.a.a(1).setAudioAttributes(zzeVar.zza().zza);
            willPauseWhenDucked = audioAttributes.setWillPauseWhenDucked(false);
            onAudioFocusChangeListener2 = willPauseWhenDucked.setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler);
            audioFocusRequest = onAudioFocusChangeListener2.build();
        } else {
            audioFocusRequest = null;
        }
        this.zzf = audioFocusRequest;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzch)) {
            return false;
        }
        zzch zzchVar = (zzch) obj;
        int i10 = zzchVar.zza;
        if (Objects.equals(this.zzb, zzchVar.zzb) && Objects.equals(this.zzc, zzchVar.zzc) && Objects.equals(this.zzd, zzchVar.zzd)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(1, this.zzb, this.zzc, this.zzd, Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(26)
    public final AudioFocusRequest zza() {
        Object obj = this.zzf;
        obj.getClass();
        return androidx.media.b.a(obj);
    }

    public final AudioManager.OnAudioFocusChangeListener zzb() {
        return this.zzb;
    }

    public final zze zzc() {
        return this.zzd;
    }
}
