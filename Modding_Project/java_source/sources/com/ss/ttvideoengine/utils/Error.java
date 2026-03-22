package com.ss.ttvideoengine.utils;

import android.text.TextUtils;
import com.bytedance.vodsetting.Module;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.ss.ttm.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class Error {
    public static final int AVErrorHttpForbidden = -499897;
    public static final int AVErrorInvalidData = -1094995529;
    public static final int AVErrorStartCodecFailed = -499981;
    public static final int AsyncIniting = -7898;
    public static final int AuthEmpty = -9970;
    public static final int AuthFail = -9969;
    public static final int BashCheckFailed = -310002;
    public static final int ConfigResolutionNoVideoModel = -110002;
    public static final int ConfigResolutionSameParameter = -110001;
    public static final int CreateDBFail = -9943;
    public static final int CreatePLuginPlayerFailed = -9989;
    public static final int CreatePlayerFailed = -9993;
    public static final int DashCheckFailed = -310001;
    public static final String DataLoaderPreload = "kTTVideoErrorDomainDataLoaderPreload";
    public static final int DecodeEncryptionKeyError = -9988;
    public static final int DnsParseError = -9968;
    public static final String Download = "kTTVideoErrorDomainDownload";
    public static final int DurationNotSupport = -7885;
    public static final int ERROR_DRM_EXPIRED = -499697;
    public static final int ERROR_DRM_LOCAL_TIME_DECRYPT = -499696;
    public static final int ERROR_TYPE_API = 1000;
    public static final int ERROR_TYPE_CDN = 1003;
    public static final int ERROR_TYPE_DNS = 1001;
    public static final int ERROR_TYPE_PLAYER = 1002;
    public static final int ExecuteFail = -7895;
    public static final int FPSNotSupport = -7892;
    public static final int FallbackApiEmpty = -10002;
    public static final int FetchDecryptError = -9977;
    public static final int FetchEncryptError = -9978;
    public static final int FetchStatusException = -10005;
    public static final String FetchingInfo = "kTTVideoErrorDomainFetchingInfo";
    public static final String FetchingSmartUrlInfo = "kTTVideoErrorDomainFetchingSmartUrlInfo";
    public static final int FileHashInvalid = -10003;
    public static final int FmtsOVERLAY = -9928;
    public static final int FormatNotSupport = -7887;
    public static final String HTTPDNS = "kTTVideoErrorDomainHTTPDNS";
    public static final int HTTPNotOK = -9994;
    public static final int HdrNotSupport = -7883;
    public static final int InitFail = -7896;
    public static final int InitedUseOtherRender = -7894;
    public static final String IntertrustDRM = "kTTVideoErrorDomainIntertrustDRM";
    public static final int IntertrustDrmInitializeFail = -9938;
    public static final int IntertrustDrmInternalError = -9935;
    public static final int IntertrustDrmInvalidTemplate = -9937;
    public static final int IntertrustDrmLibUnload = -9939;
    public static final int IntertrustDrmMakeUrlFail = -9936;
    public static final int IntertrustDrmPluginUnload = -9933;
    public static final int IntertrustDrmTokenProcessError = -9934;
    public static final int InvalidSource = -9965;
    public static final int InvalidUrl = -9966;
    public static final int InvalidVideoInfoRequest = -9990;
    public static final int LicenceFailed = -30001;
    public static final String LicenseCheck = "kTTVideoErrorDomainLicenseCheck";
    public static final String LocalDNS = "kTTVideoErrorDomainLocalDNS";
    public static final int MDLFetcherListenerEmpty = -10001;
    public static final String MDLRetry = "kTTVideoErrorDomainMDLRetry";
    public static final int MediaLoaderNeedStart = -9946;
    public static final int MissingSelectorConfig = -7998;
    public static final int ModelUrlExpired = -9959;
    public static final int NOTRETRY_IN_ERROR = 10;
    public static final int NetworkNotAvailable = -9960;
    public static final int NoSRBenchmark = -7878;
    public static final int NotEnoughDiskSpace = -9947;
    public static final int NotInit = -7889;
    public static final int ParameterNull = -9999;
    public static final int ParseApiStringError = -9980;
    public static final int ParseJsonError = -9979;
    public static final int ParsingResponse = -9998;
    public static final int PlayNotCall = -7897;
    public static final int PlayerStateIllegal = -9992;
    public static final int PowerTooLow = -7886;
    public static final int PreloadInvalidParameter = -100001;
    public static final int RETRY_STRATEGY_CHANGE_URL = 2;
    public static final int RETRY_STRATEGY_CLEAR_DONE = 11;
    public static final int RETRY_STRATEGY_CODEC_STRATEGY = 12;
    public static final int RETRY_STRATEGY_FETCH = 1;
    public static final int RETRY_STRATEGY_NONE = 0;
    public static final int RETRY_STRATEGY_RESTART_PLAYER = 3;
    public static final int RenderException = -8000;
    public static final int ResolutionChanged = -7879;
    public static final int ResolutionNotSupport = -7891;
    public static final int ResultEmpty = -9997;
    public static final int ResultExpired = -10004;
    public static final int ResultNotApplicable = -9996;
    public static final int SRDisabled = -7888;
    public static final int SRDowngradeSizeTooSmall = -7875;
    public static final int SRInstanceNotExist = -7877;
    public static final int SROpenFail = -7874;
    public static final int SRPercentNotSatisfied = -7881;
    public static final int SRReset = -7880;
    public static final int SRSizeOverMax = -7876;
    public static final int SaveTaskItem = -9949;
    public static final int SaveTaskWriteFile = -9948;
    public static final int SceneNotSupport = -7884;
    public static final String Selector = "kTTVideoSelector";
    public static final int ServiceInaccessible = -9944;
    public static final String SetStrategySource = "kTTVideoErrorDomainSetStrategySource";
    public static final int SourceRefreshError = -10006;
    public static final int SpeedNotSupport = -7882;
    public static final int StartupResultEmpty = -7997;
    public static final int SubAuthFail = -9929;
    public static final String SubFetchingInfo = "kTTVideoErrorDomainSubFetchingInfo";
    public static final int SubInvalidVideoInfoRequest = -9932;
    public static final int SubParameterNull = -9930;
    public static final int SubResultEmpty = -9931;
    public static final int TOPAUTHAccessDenied = 100013;
    public static final int TOPAUTHFlowLimitExceeded = 100018;
    public static final int TOPAUTHInternalError = 100014;
    public static final int TOPAUTHInternalServiceTimeout = 100016;
    public static final int TOPAUTHInvalidClientTokenId = 100009;
    public static final int TOPAUTHInvalidTimestamp = 100006;
    public static final int TOPAUTHLackPolicy = 100012;
    public static final int TOPAUTHMethodNotAllowed = 100020;
    public static final int TOPAUTHMissingSignature = 100005;
    public static final int TOPAUTHServiceUnavailableTemp = 100019;
    public static final int TOPAUTHSignatureDoesNotMatch = 100010;
    public static final String TextureRender = "kTTVideoErrorTextureRender";
    public static final int TextureRenderNotInit = -7893;
    public static final int Timeout = -10000;
    public static final int URLUnavailable = -9945;
    public static final int UrlEmpty = -9967;
    public static final int UserCancel = -9995;
    public static final int UserClose = -7890;
    public static final int UserNotCallOpen = -7899;
    public static final int VideoDecryptFailed = -9987;
    public static final String VideoExoPlayer = "kTTVideoErrorDomainVideoExoPlayer";
    public static final int VideoFormatOpenFailed = -499975;
    public static final int VideoInfoEmpty = -7999;
    public static final int VideoInfoStatusInvalid = -7996;
    public static final int VideoModelExtractError = -9976;
    public static final String VideoOSPlayer = "kTTVideoErrorDomainVideoOSPlayer";
    public static final String VideoOwnPlayer = "kTTVideoErrorDomainVideoOwnPlayer";
    public static final int VideoValiateFail = -9991;
    public static final int h265CheckFailed = -310000;
    public static final int h266CheckFailed = -310003;
    public int code;
    public String description;
    public String domain;
    public int internalCode;
    public Map parameters;

    public Error(String str, int i10) {
        this(str, i10, 0);
    }

    public static Error createForPlayer(MediaPlayer mediaPlayer, int i10, String str) {
        return new Error(getDomainForPlayer(mediaPlayer), i10, str);
    }

    public static String getDomainForPlayer(MediaPlayer mediaPlayer) {
        if (mediaPlayer == null) {
            return "";
        }
        int playerType = mediaPlayer.getPlayerType();
        if (playerType != 0) {
            if (playerType != 1 && playerType != 2 && playerType != 3 && playerType != 4) {
                if (playerType != 5) {
                    return "";
                }
                return VideoExoPlayer;
            }
            return VideoOwnPlayer;
        }
        return VideoOSPlayer;
    }

    private boolean needChangeURL() {
        int i10 = this.code;
        if (i10 != -499988 && i10 != -499987 && i10 != -499986 && i10 != -499985 && i10 != -499899 && i10 != -499898 && i10 != -499896 && i10 != -499894 && i10 != -499893 && i10 != -499891 && i10 != 251658241 && i10 != -499799 && i10 != -499795 && i10 != -499794 && i10 != -499793 && i10 != -499792) {
            return false;
        }
        return true;
    }

    private boolean needFetch() {
        if (this.code == -499897) {
            return true;
        }
        return false;
    }

    private boolean needRestartPlayer() {
        int i10 = this.code;
        if (i10 != -499999 && i10 != -499997 && i10 != -499996 && i10 != -499992 && i10 != -499991 && i10 != -499990 && i10 != -499989 && i10 != -2139062143) {
            return false;
        }
        return true;
    }

    public int getRetryStrategy() {
        if (!this.domain.equals(HTTPDNS) && !this.domain.equals(LocalDNS)) {
            if (this.domain.equals(FetchingInfo)) {
                return 1;
            }
            if (this.domain.equals(VideoOwnPlayer)) {
                if (needChangeURL()) {
                    return 2;
                }
                if (needRestartPlayer()) {
                    return 3;
                }
                if (needFetch()) {
                    return 1;
                }
            }
            if (this.domain.equals(VideoExoPlayer) && needFetch()) {
                return 1;
            }
        }
        return 2;
    }

    public int getType() {
        if (this.domain.equals(FetchingInfo)) {
            return 1000;
        }
        if (!this.domain.equals(LocalDNS) && !this.domain.equals(HTTPDNS)) {
            if (this.domain.equals(VideoOwnPlayer) && needRestartPlayer()) {
                return 1002;
            }
            return 1003;
        }
        return 1001;
    }

    public boolean isPlayerErrorDomain() {
        if (TextUtils.isEmpty(this.domain)) {
            return false;
        }
        if (!this.domain.equals(VideoOwnPlayer) && !this.domain.equals(VideoOSPlayer) && !this.domain.equals(VideoExoPlayer)) {
            return false;
        }
        return true;
    }

    public HashMap toMap() {
        HashMap hashMap = new HashMap();
        hashMap.put("domain", this.domain);
        hashMap.put(Module.ResponseKey.Code, Integer.valueOf(this.code));
        int i10 = this.internalCode;
        if (i10 != 0) {
            hashMap.put("internalCode", Integer.valueOf(i10));
        }
        String str = this.description;
        if (str != null) {
            hashMap.put(InMobiNetworkValues.DESCRIPTION, str);
        }
        return hashMap;
    }

    public String toString() {
        String str = this.domain;
        Integer valueOf = Integer.valueOf(this.code);
        Integer valueOf2 = Integer.valueOf(this.internalCode);
        String str2 = this.description;
        if (str2 == null) {
            str2 = "";
        }
        return String.format("domain:%s, code:%d, internalCode:%d, description:%s", str, valueOf, valueOf2, str2);
    }

    public Error(String str, int i10, int i11) {
        this(str, i10, i11, null);
    }

    public Error(String str, int i10, String str2) {
        this(str, i10, 0, str2);
    }

    public Error(String str, int i10, int i11, String str2) {
        this.domain = str;
        this.code = i10;
        this.internalCode = i11;
        this.description = str2;
        this.parameters = new HashMap();
    }
}
