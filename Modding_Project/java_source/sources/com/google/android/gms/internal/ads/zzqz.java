package com.google.android.gms.internal.ads;

import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@RequiresApi(23)
/* loaded from: classes4.dex */
final class zzqz {
    public static void zza(AudioTrack audioTrack, @Nullable zzpp zzppVar) {
        AudioDeviceInfo audioDeviceInfo;
        if (zzppVar == null) {
            audioDeviceInfo = null;
        } else {
            audioDeviceInfo = zzppVar.zza;
        }
        audioTrack.setPreferredDevice(audioDeviceInfo);
    }
}
