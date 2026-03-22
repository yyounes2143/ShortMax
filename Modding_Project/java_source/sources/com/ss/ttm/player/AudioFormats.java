package com.ss.ttm.player;

import android.media.audiofx.AudioEffect;
import com.startshorts.androidplayer.bean.search.RedeemCodeVip;
@Keep
/* loaded from: classes6.dex */
public class AudioFormats {
    private static final int[] validSampleRates = {4000, 8000, 11025, 16000, 22050, RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM, 37800, 44056, 44100, 47250, 48000, 50000, 50400, 88200, 96000, 176400, 192000, 352800, 2822400, 5644800};
    private static boolean sDetectDlbDevices = false;
    private static boolean sDlbDevice = false;

    public static int getDefaultSampleRatesNB() {
        return validSampleRates.length;
    }

    public static int getMaxSupportedSampleRates(int[] iArr) {
        int length = validSampleRates.length - 3;
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = validSampleRates[i10];
        }
        return length;
    }

    @CalledByNative
    public static boolean isLicencedDolbyDevice() {
        if (sDetectDlbDevices) {
            return sDlbDevice;
        }
        AudioEffect.Descriptor[] queryEffects = AudioEffect.queryEffects();
        int length = queryEffects.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            } else if (queryEffects[i10].implementor.contains("Dolby Laboratories")) {
                sDlbDevice = true;
                break;
            } else {
                i10++;
            }
        }
        sDetectDlbDevices = true;
        return sDlbDevice;
    }
}
