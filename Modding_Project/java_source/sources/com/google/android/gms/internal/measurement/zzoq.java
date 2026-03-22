package com.google.android.gms.internal.measurement;

import com.ss.ttm.player.MediaPlayer;
/* compiled from: com.google.android.gms:play-services-measurement-base@@23.0.0 */
/* loaded from: classes5.dex */
final class zzoq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean zza(byte b10) {
        if (b10 >= 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzb(byte b10, byte b11, char[] cArr, int i10) {
        if (b10 >= -62 && !zze(b11)) {
            cArr[i10] = (char) (((b10 & 31) << 6) | (b11 & 63));
            return;
        }
        throw new zzmr("Protocol message had invalid UTF-8.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzc(byte b10, byte b11, byte b12, char[] cArr, int i10) {
        if (!zze(b11)) {
            if (b10 == -32) {
                if (b11 >= -96) {
                    b10 = -32;
                }
            }
            if (b10 == -19) {
                if (b11 < -96) {
                    b10 = -19;
                }
            }
            if (!zze(b12)) {
                cArr[i10] = (char) (((b10 & 15) << 12) | ((b11 & 63) << 6) | (b12 & 63));
                return;
            }
        }
        throw new zzmr("Protocol message had invalid UTF-8.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzd(byte b10, byte b11, byte b12, byte b13, char[] cArr, int i10) {
        if (!zze(b11) && (((b10 << 28) + (b11 + 112)) >> 30) == 0 && !zze(b12) && !zze(b13)) {
            int i11 = ((b10 & 7) << 18) | ((b11 & 63) << 12) | ((b12 & 63) << 6) | (b13 & 63);
            cArr[i10] = (char) ((i11 >>> 10) + 55232);
            cArr[i10 + 1] = (char) ((i11 & MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD) + 56320);
            return;
        }
        throw new zzmr("Protocol message had invalid UTF-8.");
    }

    private static boolean zze(byte b10) {
        if (b10 > -65) {
            return true;
        }
        return false;
    }
}
