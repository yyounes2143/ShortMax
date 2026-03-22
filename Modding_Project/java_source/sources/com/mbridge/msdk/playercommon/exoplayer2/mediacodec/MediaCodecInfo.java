package com.mbridge.msdk.playercommon.exoplayer2.mediacodec;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import com.ss.texturerender.TextureRenderKeys;
@TargetApi(16)
/* loaded from: classes6.dex */
public final class MediaCodecInfo {
    public static final int MAX_SUPPORTED_INSTANCES_UNKNOWN = -1;
    public static final String TAG = "MediaCodecInfo";
    public final boolean adaptive;
    @Nullable
    public final MediaCodecInfo.CodecCapabilities capabilities;
    @Nullable
    public final String mimeType;
    public final String name;
    public final boolean passthrough;
    public final boolean secure;
    public final boolean tunneling;

    private MediaCodecInfo(String str, @Nullable String str2, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12) {
        boolean z13;
        boolean z14;
        this.name = (String) Assertions.checkNotNull(str);
        this.mimeType = str2;
        this.capabilities = codecCapabilities;
        this.passthrough = z10;
        boolean z15 = false;
        if (!z11 && codecCapabilities != null && isAdaptive(codecCapabilities)) {
            z13 = true;
        } else {
            z13 = false;
        }
        this.adaptive = z13;
        if (codecCapabilities != null && isTunneling(codecCapabilities)) {
            z14 = true;
        } else {
            z14 = false;
        }
        this.tunneling = z14;
        if (z12 || (codecCapabilities != null && isSecure(codecCapabilities))) {
            z15 = true;
        }
        this.secure = z15;
    }

    private static int adjustMaxInputChannelCount(String str, String str2, int i10) {
        int i11;
        if (i10 <= 1 && ((Util.SDK_INT < 26 || i10 <= 0) && !MimeTypes.AUDIO_MPEG.equals(str2) && !MimeTypes.AUDIO_AMR_NB.equals(str2) && !MimeTypes.AUDIO_AMR_WB.equals(str2) && !MimeTypes.AUDIO_AAC.equals(str2) && !MimeTypes.AUDIO_VORBIS.equals(str2) && !MimeTypes.AUDIO_OPUS.equals(str2) && !MimeTypes.AUDIO_RAW.equals(str2) && !MimeTypes.AUDIO_FLAC.equals(str2) && !MimeTypes.AUDIO_ALAW.equals(str2) && !MimeTypes.AUDIO_MLAW.equals(str2) && !MimeTypes.AUDIO_MSGSM.equals(str2))) {
            if (MimeTypes.AUDIO_AC3.equals(str2)) {
                i11 = 6;
            } else if (MimeTypes.AUDIO_E_AC3.equals(str2)) {
                i11 = 16;
            } else {
                i11 = 30;
            }
            Log.w(TAG, "AssumedMaxChannelAdjustment: " + str + ", [" + i10 + " to " + i11 + "]");
            return i11;
        }
        return i10;
    }

    @TargetApi(21)
    private static boolean areSizeAndRateSupportedV21(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
        if (d10 != -1.0d && d10 > 0.0d) {
            return videoCapabilities.areSizeAndRateSupported(i10, i11, d10);
        }
        return videoCapabilities.isSizeSupported(i10, i11);
    }

    @TargetApi(23)
    private static int getMaxSupportedInstancesV23(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.getMaxSupportedInstances();
    }

    private static boolean isAdaptive(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (Util.SDK_INT >= 19 && isAdaptiveV19(codecCapabilities)) {
            return true;
        }
        return false;
    }

    @TargetApi(19)
    private static boolean isAdaptiveV19(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    private static boolean isSecure(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (Util.SDK_INT >= 21 && isSecureV21(codecCapabilities)) {
            return true;
        }
        return false;
    }

    @TargetApi(21)
    private static boolean isSecureV21(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private static boolean isTunneling(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (Util.SDK_INT >= 21 && isTunnelingV21(codecCapabilities)) {
            return true;
        }
        return false;
    }

    @TargetApi(21)
    private static boolean isTunnelingV21(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private void logAssumedSupport(String str) {
        Log.d(TAG, "AssumedSupport [" + str + "] [" + this.name + ", " + this.mimeType + "] [" + Util.DEVICE_DEBUG_INFO + "]");
    }

    private void logNoSupport(String str) {
        Log.d(TAG, "NoSupport [" + str + "] [" + this.name + ", " + this.mimeType + "] [" + Util.DEVICE_DEBUG_INFO + "]");
    }

    public static MediaCodecInfo newInstance(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return new MediaCodecInfo(str, str2, codecCapabilities, false, false, false);
    }

    public static MediaCodecInfo newPassthroughInstance(String str) {
        return new MediaCodecInfo(str, null, null, true, false, false);
    }

    @TargetApi(21)
    public Point alignVideoSizeV21(int i10, int i11) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            logNoSupport("align.caps");
            return null;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            logNoSupport("align.vCaps");
            return null;
        }
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(Util.ceilDivide(i10, widthAlignment) * widthAlignment, Util.ceilDivide(i11, heightAlignment) * heightAlignment);
    }

    public int getMaxSupportedInstances() {
        MediaCodecInfo.CodecCapabilities codecCapabilities;
        if (Util.SDK_INT >= 23 && (codecCapabilities = this.capabilities) != null) {
            return getMaxSupportedInstancesV23(codecCapabilities);
        }
        return -1;
    }

    public MediaCodecInfo.CodecProfileLevel[] getProfileLevels() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
            return new MediaCodecInfo.CodecProfileLevel[0];
        }
        return codecProfileLevelArr;
    }

    @TargetApi(21)
    public boolean isAudioChannelCountSupportedV21(int i10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            logNoSupport("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            logNoSupport("channelCount.aCaps");
            return false;
        } else if (adjustMaxInputChannelCount(this.name, this.mimeType, audioCapabilities.getMaxInputChannelCount()) < i10) {
            logNoSupport("channelCount.support, " + i10);
            return false;
        } else {
            return true;
        }
    }

    @TargetApi(21)
    public boolean isAudioSampleRateSupportedV21(int i10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            logNoSupport("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            logNoSupport("sampleRate.aCaps");
            return false;
        } else if (!audioCapabilities.isSampleRateSupported(i10)) {
            logNoSupport("sampleRate.support, " + i10);
            return false;
        } else {
            return true;
        }
    }

    public boolean isCodecSupported(String str) {
        String mediaMimeType;
        MediaCodecInfo.CodecProfileLevel[] profileLevels;
        if (str == null || this.mimeType == null || (mediaMimeType = MimeTypes.getMediaMimeType(str)) == null) {
            return true;
        }
        if (!this.mimeType.equals(mediaMimeType)) {
            logNoSupport("codec.mime " + str + ", " + mediaMimeType);
            return false;
        }
        Pair<Integer, Integer> codecProfileAndLevel = MediaCodecUtil.getCodecProfileAndLevel(str);
        if (codecProfileAndLevel == null) {
            return true;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : getProfileLevels()) {
            if (codecProfileLevel.profile == ((Integer) codecProfileAndLevel.first).intValue() && codecProfileLevel.level >= ((Integer) codecProfileAndLevel.second).intValue()) {
                return true;
            }
        }
        logNoSupport("codec.profileLevel, " + str + ", " + mediaMimeType);
        return false;
    }

    @TargetApi(21)
    public boolean isVideoSizeAndRateSupportedV21(int i10, int i11, double d10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            logNoSupport("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            logNoSupport("sizeAndRate.vCaps");
            return false;
        } else if (!areSizeAndRateSupportedV21(videoCapabilities, i10, i11, d10)) {
            if (i10 < i11 && areSizeAndRateSupportedV21(videoCapabilities, i11, i10, d10)) {
                logAssumedSupport("sizeAndRate.rotated, " + i10 + TextureRenderKeys.KEY_IS_X + i11 + TextureRenderKeys.KEY_IS_X + d10);
                return true;
            }
            logNoSupport("sizeAndRate.support, " + i10 + TextureRenderKeys.KEY_IS_X + i11 + TextureRenderKeys.KEY_IS_X + d10);
            return false;
        } else {
            return true;
        }
    }

    public static MediaCodecInfo newInstance(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11) {
        return new MediaCodecInfo(str, str2, codecCapabilities, false, z10, z11);
    }
}
