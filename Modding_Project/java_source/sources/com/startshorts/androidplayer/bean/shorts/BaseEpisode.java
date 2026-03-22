package com.startshorts.androidplayer.bean.shorts;

import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.immersion.ImmersionRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.ResourceHandler;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.List;
import jk.g;
import jk.l;
import jk.v;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import se.a;
import ud.b;
/* compiled from: BaseEpisode.kt */
@Metadata
/* loaded from: classes6.dex */
public class BaseEpisode {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int NOT_VIP_FREE = 2;
    private static final int SHORTS_COLLECTED = 1;
    private static final int SHORTS_UNCOLLECTED = 2;
    public static final int STATUS_COMPLETE = 2;
    public static final int STATUS_FOLLOWING = 1;
    private static final int STATUS_LOCKED = 2;
    private static final int STATUS_UNLOCKED = 1;
    public static final int SUBSCRIPT_AI_FOLLOWING = 8;
    public static final int SUBSCRIPT_DUBBED = 4;
    public static final int SUBSCRIPT_EXCLUSIVE = 2;
    public static final int SUBSCRIPT_FREE = 7;
    public static final int SUBSCRIPT_HOT = 3;
    public static final int SUBSCRIPT_MEMBERS_ONLY = 6;
    public static final int SUBSCRIPT_NEW = 5;
    public static final int SUBSCRIPT_RECOMMEND = 9;
    public static final int SUBSCRIPT_VIP = 1;
    @NotNull
    private static final String TAG = "BaseEpisode";
    private static final int TYPE_NEED_UNLOCK = 1;
    private static final int TYPE_NOT_NEED_UNLOCK = 2;
    public static final int UNLOCK_BY_DISCOUNT = 1;
    public static final int UNLOCK_BY_FREE = 7;
    public static final int UNLOCK_BY_MEMBERS_ONLY = 5;
    public static final int UNLOCK_BY_ONLY_COINS = 1;
    public static final int VIDEO_TYPE_NORMAL = 1;
    public static final int VIDEO_TYPE_TRAILER = 4;
    public static final int VIDEO_TYPE_VIRTUAL = 99;
    public static final int VIP_FREE = 1;
    private int alreadyLock;
    @Nullable
    private final String bitRate;
    @Nullable
    private final String codec;
    private long collectNum;
    private int completionStatus;
    @Nullable
    private String coordinate;
    private int cornerLabelStyle;
    @Nullable
    private String coverId;
    private int episodeNum;
    @Nullable
    private String frameExtractionCover;
    @Nullable
    private String ggVideoDramaGenre;
    @Nullable
    private String ggVideoTags;

    /* renamed from: id  reason: collision with root package name */
    private int f38125id;
    private int isCollect;
    private boolean isDownloadFinished;
    private boolean isMergeShortPlay;
    @Nullable
    private final List<ShortsLabel> labelList;
    private int lock;
    private boolean needDecrypt;
    @Nullable
    private EpisodeBitrate parsedBitrate;
    @Nullable
    private EpisodeCodec parsedCodec;
    @Nullable
    private EpisodeVideo parsedVideo;
    @Nullable
    private EpisodeSize parsedVideoSize;
    private int price;
    @Nullable
    private Integer referVideoHeight;
    @Nullable
    private Integer referVideoWidth;
    @Nullable
    private String shortPlayCode;
    @Nullable
    private ShortPlayContentInfo shortPlayContentRatingResponse;
    private int shortPlayId;
    @Nullable
    private String shortPlayName;
    @Nullable
    private String subtitling;
    @Nullable
    private SubtitleConfig subtitlingConfig;
    @Nullable
    private String summary;
    private int totalEpisodes;
    @Nullable
    private String transedEncryptedSize;
    @Nullable
    private String transedSize;
    private int unlockBy;
    private boolean unlockJustNow;
    private int unlockType;
    private long videoDuration;
    private int videoType;
    @Nullable
    private String videoUrl;
    private int vipFree;
    private float aspectRatio = 0.5625f;
    private int bindShortPlayId = -1;
    private int firstDramId = -1;
    private int lockBegin = -1;
    @NotNull
    private final Object parseVideoUrlLock = new Object();
    @NotNull
    private final Object collectLock = new Object();
    private int immersionShortsRecordIndex = -1;
    @Nullable
    private Boolean shortPlayIsRelease = Boolean.FALSE;
    @NotNull
    private String upack = "";
    @Nullable
    private String cornerLabelText = "";
    private int downloadResolution = 720;

    /* compiled from: BaseEpisode.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public static /* synthetic */ Long getVideoSize$default(BaseEpisode baseEpisode, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 1) != 0) {
                i10 = 720;
            }
            return baseEpisode.getVideoSize(i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getVideoSize");
    }

    private final boolean isIaaUser() {
        return AccountRepo.f43052a.F0();
    }

    public static /* synthetic */ String parseVideoUrl$default(BaseEpisode baseEpisode, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 1) != 0) {
                i10 = 720;
            }
            return baseEpisode.parseVideoUrl(i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: parseVideoUrl");
    }

    public final void cancelCollected() {
        synchronized (this.collectLock) {
            try {
                if (isCollected()) {
                    this.isCollect = 2;
                    long j10 = this.collectNum - 1;
                    this.collectNum = j10;
                    if (j10 < 0) {
                        this.collectNum = 0L;
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean contains1080pUrl() {
        String str = this.videoUrl;
        if (str == null) {
            return false;
        }
        return StringsKt.b0(str, "video_1080", false, 2, null);
    }

    public final boolean contains720pUrl() {
        String str = this.videoUrl;
        if (str == null) {
            return false;
        }
        return StringsKt.b0(str, "video_720", false, 2, null);
    }

    @NotNull
    public final ImmersionShortsInfo createShortsInfo() {
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setVideoType(this.videoType);
        immersionShortsInfo.setShortsId(this.shortPlayId);
        immersionShortsInfo.setShortPlayCode(this.shortPlayCode);
        immersionShortsInfo.setShortsName(this.shortPlayName);
        immersionShortsInfo.setCover(this.coverId);
        immersionShortsInfo.setBindShortsId(this.bindShortPlayId);
        immersionShortsInfo.setCollected(isCollected());
        immersionShortsInfo.setCollectNum(this.collectNum);
        immersionShortsInfo.setRelease(this.shortPlayIsRelease);
        return immersionShortsInfo;
    }

    public final boolean enableSubtitle() {
        SubtitleConfig subtitleConfig = this.subtitlingConfig;
        if (subtitleConfig != null) {
            return subtitleConfig.isEnable();
        }
        return false;
    }

    public final int getAlreadyLock() {
        return this.alreadyLock;
    }

    public final float getAspectRatio() {
        float f10 = this.aspectRatio;
        if (f10 == 0.0f) {
            return 0.5625f;
        }
        return f10;
    }

    public final int getBindShortPlayId() {
        return this.bindShortPlayId;
    }

    @Nullable
    public final String getCheckedShortPlayName() {
        String shortPlayName;
        ShortsDetail m10 = ImmersionRepo.f44129a.m(this.shortPlayId);
        if (m10 != null && (shortPlayName = m10.getShortPlayName()) != null && shortPlayName.length() != 0) {
            return m10.getShortPlayName();
        }
        return this.shortPlayName;
    }

    public final long getCollectNum() {
        return this.collectNum;
    }

    public final int getCompletionStatus() {
        return this.completionStatus;
    }

    @Nullable
    public final String getCoordinate() {
        return this.coordinate;
    }

    public final int getCornerLabelStyle() {
        return this.cornerLabelStyle;
    }

    @Nullable
    public final String getCornerLabelText() {
        return this.cornerLabelText;
    }

    public final int getCoverHeightForAdOfShorts() {
        return Math.round(DeviceUtil.f48146a.G() / getAspectRatio());
    }

    public final int getCoverHeightForImmersion() {
        return Math.round(DeviceUtil.f48146a.G() / getAspectRatio());
    }

    public final int getCoverHeightForShorts() {
        return DeviceUtil.f48146a.G() - g.a(49.0f);
    }

    @Nullable
    public final String getCoverId() {
        return this.coverId;
    }

    public final int getCoverWidthForAdOfShorts() {
        return DeviceUtil.f48146a.G();
    }

    public final int getCoverWidthForImmersion() {
        return DeviceUtil.f48146a.G();
    }

    public final int getCoverWidthForShorts() {
        return DeviceUtil.f48146a.G();
    }

    public final int getDownloadResolution() {
        return this.downloadResolution;
    }

    @NotNull
    public final String getDownloadSubKey() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.shortPlayId);
        sb2.append(':');
        sb2.append(this.f38125id);
        sb2.append(':');
        sb2.append(this.episodeNum);
        return sb2.toString();
    }

    public final int getEpisodeNum() {
        return this.episodeNum;
    }

    public final int getFirstDramId() {
        return this.firstDramId;
    }

    public final int getFirstFrameHeightForAdOfShorts() {
        return Math.round((DeviceUtil.f48146a.G() / getAspectRatio()) / 6.0f);
    }

    public final int getFirstFrameHeightForImmersion() {
        return Math.round((DeviceUtil.f48146a.G() / getAspectRatio()) / 6.0f);
    }

    public final int getFirstFrameHeightForShorts() {
        return Math.round((DeviceUtil.f48146a.F() - g.a(49.0f)) / 6.0f);
    }

    public final int getFirstFrameWidthForAdOfShorts() {
        return Math.round(DeviceUtil.f48146a.G() / 6.0f);
    }

    public final int getFirstFrameWidthForImmersion() {
        return Math.round(DeviceUtil.f48146a.G() / 6.0f);
    }

    public final int getFirstFrameWidthForShorts() {
        return Math.round(DeviceUtil.f48146a.G() / 6.0f);
    }

    @Nullable
    public final String getGgVideoDramaGenre() {
        return this.ggVideoDramaGenre;
    }

    @Nullable
    public final String getGgVideoTags() {
        return this.ggVideoTags;
    }

    public final int getId() {
        return this.f38125id;
    }

    public final int getImmersionShortsRecordIndex() {
        return this.immersionShortsRecordIndex;
    }

    @Nullable
    public final List<ShortsLabel> getLabelList() {
        return this.labelList;
    }

    public final int getLockBegin() {
        return this.lockBegin;
    }

    public final boolean getNeedDecrypt() {
        return this.needDecrypt;
    }

    @Nullable
    public final EpisodeBitrate getParsedBitrate() {
        return this.parsedBitrate;
    }

    @Nullable
    public final EpisodeCodec getParsedCodec() {
        return this.parsedCodec;
    }

    @Nullable
    public final EpisodeVideo getParsedVideo() {
        return this.parsedVideo;
    }

    @Nullable
    public final EpisodeSize getParsedVideoSize() {
        return this.parsedVideoSize;
    }

    public final int getPrice() {
        return this.price;
    }

    @Nullable
    public final Integer getReferVideoHeight() {
        return this.referVideoHeight;
    }

    @Nullable
    public final Integer getReferVideoWidth() {
        return this.referVideoWidth;
    }

    @Nullable
    public final String getRowDramaCover() {
        return this.frameExtractionCover;
    }

    public final int getRowLock() {
        return this.lock;
    }

    @NotNull
    public final String getShareUrl() {
        return a.f66346a.value().getShareUrlEn() + "?shortPlayId=" + this.shortPlayId + "&shortPlayCode=" + this.shortPlayCode + "&shareSource=1&utm_id=SHARE&campaign_name=app-shortmax_channel-SHARE_shortid-" + this.shortPlayCode;
    }

    @Nullable
    public final String getShortPlayCode() {
        return this.shortPlayCode;
    }

    @Nullable
    public final ShortPlayContentInfo getShortPlayContentRatingResponse() {
        return this.shortPlayContentRatingResponse;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    @Nullable
    public final Boolean getShortPlayIsRelease() {
        return this.shortPlayIsRelease;
    }

    @Nullable
    public final String getShortPlayName() {
        return this.shortPlayName;
    }

    @Nullable
    public final String getSubtitling() {
        return this.subtitling;
    }

    @Nullable
    public final SubtitleConfig getSubtitlingConfig() {
        return this.subtitlingConfig;
    }

    @Nullable
    public final String getSummary() {
        return this.summary;
    }

    public final int getTotalEpisodes() {
        return this.totalEpisodes;
    }

    @Nullable
    public final String getTransedEncryptedSize() {
        return this.transedEncryptedSize;
    }

    @Nullable
    public final String getTransedSize() {
        return this.transedSize;
    }

    public final int getUnlockBy() {
        return this.unlockBy;
    }

    public final boolean getUnlockJustNow() {
        return this.unlockJustNow;
    }

    public final int getUnlockType() {
        return this.unlockType;
    }

    @NotNull
    public final String getUpack() {
        return this.upack;
    }

    @NotNull
    public final String getVideoCover(boolean z10, int i10, int i11, int i12, int i13) {
        int t02;
        String str = this.videoUrl;
        if (str != null && str.length() != 0) {
            if (z10) {
                t02 = ud.a.f68411a.j(this.f38125id);
            } else {
                t02 = b.f68412a.t0(this.f38125id);
            }
            String parseVideoUrl$default = parseVideoUrl$default(this, 0, 1, null);
            if (t02 == 0) {
                return parseVideoUrl$default + "&x-oss-process=1/m_fill,w_" + i10 + ",h_" + i11;
            }
            return parseVideoUrl$default + "&x-oss-process=" + TimeUtil.f48175a.c(bt.a.e(t02 / 1000.0f), true) + "/m_fill,w_" + i10 + ",h_" + i11;
        }
        String str2 = this.frameExtractionCover;
        if (str2 != null && str2.length() != 0) {
            return this.frameExtractionCover + "&x-oss-process=1/m_fill,w_" + i12 + ",h_" + i13;
        }
        return this.coverId + "&x-oss-process=1/m_fill,w_" + i12 + ",h_" + i13;
    }

    public final long getVideoDuration() {
        return this.videoDuration;
    }

    @Nullable
    public final Long getVideoSize(int i10) {
        String str;
        if (this.needDecrypt) {
            str = this.transedEncryptedSize;
        } else {
            str = this.transedSize;
        }
        if (str == null) {
            return 0L;
        }
        if (this.parsedVideoSize == null) {
            this.parsedVideoSize = (EpisodeSize) l.b(str, EpisodeSize.class);
        }
        EpisodeSize episodeSize = this.parsedVideoSize;
        if (episodeSize != null && episodeSize != null) {
            return Long.valueOf(episodeSize.getSize(i10));
        }
        return 0L;
    }

    public final int getVideoType() {
        return this.videoType;
    }

    @Nullable
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public final int getVipFree() {
        return this.vipFree;
    }

    public final boolean isCollected() {
        boolean z10;
        synchronized (this.collectLock) {
            z10 = true;
            if (this.isCollect != 1) {
                z10 = false;
            }
        }
        return z10;
    }

    public final boolean isDownloadFinished() {
        return this.isDownloadFinished;
    }

    public final boolean isFreeEpisode() {
        return false;
    }

    public final boolean isIaaUserEpisode() {
        if (isIaaUser() && this.unlockType != 1) {
            return true;
        }
        return false;
    }

    public final boolean isLastEpisode() {
        if (isTrailer()) {
            return false;
        }
        ShortsDetail m10 = ImmersionRepo.f44129a.m(this.shortPlayId);
        if (m10 != null) {
            if (m10.getTotalEpisodes() == m10.getUpdateEpisode()) {
                if (this.episodeNum < this.totalEpisodes) {
                    return false;
                }
            } else if (this.episodeNum < m10.getUpdateEpisode()) {
                return false;
            }
        } else if (this.episodeNum < this.totalEpisodes) {
            return false;
        }
        return true;
    }

    public final boolean isLocked() {
        if (isTrailer() || isVipFree()) {
            return false;
        }
        return isRealLocked();
    }

    public final boolean isMembersOnly() {
        if (this.unlockType == 5) {
            return true;
        }
        return false;
    }

    public final boolean isMergeShortPlay() {
        return this.isMergeShortPlay;
    }

    public final boolean isRealLocked() {
        if (this.lock == 2 || this.alreadyLock != 2) {
            return false;
        }
        return true;
    }

    public final boolean isTrailer() {
        if (this.videoType == 4) {
            return true;
        }
        return false;
    }

    public final boolean isUnlockByDiscount() {
        if (this.unlockBy == 1) {
            return true;
        }
        return false;
    }

    public final boolean isUnlockByOnlyCoins() {
        if (this.unlockType == 1) {
            return true;
        }
        return false;
    }

    public final boolean isUpdateFinished() {
        ShortsDetail m10 = ImmersionRepo.f44129a.m(this.shortPlayId);
        if (m10 != null) {
            Logger logger = Logger.f41511a;
            logger.h(TAG, "isUpdateFinished -> shortPlayId(" + this.shortPlayId + ") totalEpisodes(" + this.totalEpisodes + ") updateEpisode(" + m10.getUpdateEpisode() + ')');
            if (m10.getTotalEpisodes() != m10.getUpdateEpisode()) {
                return false;
            }
            return true;
        }
        Logger logger2 = Logger.f41511a;
        logger2.h(TAG, "isUpdateFinished -> shortPlayId(" + this.shortPlayId + "), detail is null");
        return false;
    }

    public final boolean isVideoExpired() {
        long j10;
        String parseVideoUrl$default = parseVideoUrl$default(this, 0, 1, null);
        if (parseVideoUrl$default != null) {
            j10 = v.e(parseVideoUrl$default);
        } else {
            j10 = -1;
        }
        if (j10 <= 0 || DeviceUtil.f48146a.K() < j10 * 1000) {
            return false;
        }
        return true;
    }

    public final boolean isVipFree() {
        if (this.vipFree == 1) {
            return true;
        }
        return false;
    }

    public final boolean isVirtual() {
        return false;
    }

    @Nullable
    public String parseVideoUrl(int i10) {
        String str;
        EpisodeVideo episodeVideo;
        EpisodeBitrate episodeBitrate;
        EpisodeCodec episodeCodec;
        synchronized (this.parseVideoUrlLock) {
            try {
                String str2 = this.videoUrl;
                if (str2 != null && str2.length() != 0) {
                    if (this.parsedVideo == null) {
                        String str3 = this.videoUrl;
                        if (str3 != null) {
                            episodeVideo = (EpisodeVideo) l.b(str3, EpisodeVideo.class);
                        } else {
                            episodeVideo = null;
                        }
                        this.parsedVideo = episodeVideo;
                        Result.a aVar = Result.f60901b;
                        String str4 = this.bitRate;
                        if (str4 != null) {
                            episodeBitrate = (EpisodeBitrate) l.b(str4, EpisodeBitrate.class);
                        } else {
                            episodeBitrate = null;
                        }
                        this.parsedBitrate = episodeBitrate;
                        String str5 = this.codec;
                        if (str5 != null) {
                            episodeCodec = (EpisodeCodec) l.b(str5, EpisodeCodec.class);
                        } else {
                            episodeCodec = null;
                        }
                        this.parsedCodec = episodeCodec;
                        Result.d(Unit.f60915a);
                    }
                    EpisodeVideo episodeVideo2 = this.parsedVideo;
                    if (episodeVideo2 == null) {
                        return null;
                    }
                    if (episodeVideo2 != null) {
                        str = episodeVideo2.targetUrl(i10);
                    } else {
                        str = null;
                    }
                    if (str != null && str.length() != 0) {
                        return ResourceHandler.f48167a.o(str);
                    }
                    return null;
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void setAlreadyLock(int i10) {
        this.alreadyLock = i10;
    }

    public final void setAspectRatio(float f10) {
        this.aspectRatio = f10;
    }

    public final void setBindShortPlayId(int i10) {
        this.bindShortPlayId = i10;
    }

    public final void setCollectNum(long j10) {
        this.collectNum = j10;
    }

    public final void setCollected() {
        synchronized (this.collectLock) {
            try {
                if (!isCollected()) {
                    this.isCollect = 1;
                    this.collectNum++;
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void setCompletionStatus(int i10) {
        this.completionStatus = i10;
    }

    public final void setCoordinate(@Nullable String str) {
        this.coordinate = str;
    }

    public final void setCornerLabelStyle(int i10) {
        this.cornerLabelStyle = i10;
    }

    public final void setCornerLabelText(@Nullable String str) {
        this.cornerLabelText = str;
    }

    public final void setCoverId(@Nullable String str) {
        this.coverId = str;
    }

    public final void setDownloadFinished(boolean z10) {
        this.isDownloadFinished = z10;
    }

    public final void setDownloadResolution(int i10) {
        this.downloadResolution = i10;
    }

    public final void setEpisodeNum(int i10) {
        this.episodeNum = i10;
    }

    public final void setFirstDramId(int i10) {
        this.firstDramId = i10;
    }

    public final void setGgVideoDramaGenre(@Nullable String str) {
        this.ggVideoDramaGenre = str;
    }

    public final void setGgVideoTags(@Nullable String str) {
        this.ggVideoTags = str;
    }

    public final void setId(int i10) {
        this.f38125id = i10;
    }

    public final void setImmersionShortsRecordIndex(int i10) {
        this.immersionShortsRecordIndex = i10;
    }

    public final void setLockBegin(int i10) {
        this.lockBegin = i10;
    }

    public final void setMergeShortPlay(boolean z10) {
        this.isMergeShortPlay = z10;
    }

    public final void setNeedDecrypt(boolean z10) {
        this.needDecrypt = z10;
    }

    public final void setNotVipFree() {
        updateVipFree(2);
    }

    public final void setParsedBitrate(@Nullable EpisodeBitrate episodeBitrate) {
        this.parsedBitrate = episodeBitrate;
    }

    public final void setParsedCodec(@Nullable EpisodeCodec episodeCodec) {
        this.parsedCodec = episodeCodec;
    }

    public final void setParsedVideo(@Nullable EpisodeVideo episodeVideo) {
        this.parsedVideo = episodeVideo;
    }

    public final void setParsedVideoSize(@Nullable EpisodeSize episodeSize) {
        this.parsedVideoSize = episodeSize;
    }

    public final void setPrice(int i10) {
        this.price = i10;
    }

    public final void setReferVideoHeight(@Nullable Integer num) {
        this.referVideoHeight = num;
    }

    public final void setReferVideoWidth(@Nullable Integer num) {
        this.referVideoWidth = num;
    }

    public final void setShortPlayCode(@Nullable String str) {
        this.shortPlayCode = str;
    }

    public final void setShortPlayContentRatingResponse(@Nullable ShortPlayContentInfo shortPlayContentInfo) {
        this.shortPlayContentRatingResponse = shortPlayContentInfo;
    }

    public final void setShortPlayId(int i10) {
        this.shortPlayId = i10;
    }

    public final void setShortPlayIsRelease(@Nullable Boolean bool) {
        this.shortPlayIsRelease = bool;
    }

    public final void setShortPlayName(@Nullable String str) {
        this.shortPlayName = str;
    }

    public final void setSubtitling(@Nullable String str) {
        this.subtitling = str;
    }

    public final void setSubtitlingConfig(@Nullable SubtitleConfig subtitleConfig) {
        this.subtitlingConfig = subtitleConfig;
    }

    public final void setSummary(@Nullable String str) {
        this.summary = str;
    }

    public final void setTotalEpisodes(int i10) {
        this.totalEpisodes = i10;
    }

    public final void setTransedEncryptedSize(@Nullable String str) {
        this.transedEncryptedSize = str;
    }

    public final void setTransedSize(@Nullable String str) {
        this.transedSize = str;
    }

    public final void setUnlockBy(int i10) {
        this.unlockBy = i10;
    }

    public final void setUnlockJustNow(boolean z10) {
        this.unlockJustNow = z10;
    }

    public final void setUnlockType(int i10) {
        this.unlockType = i10;
    }

    public final void setUnlocked() {
        this.alreadyLock = 1;
        this.unlockJustNow = true;
    }

    public final void setUpack(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.upack = str;
    }

    public final void setVideoDuration(long j10) {
        this.videoDuration = j10;
    }

    public final void setVideoType(int i10) {
        this.videoType = i10;
    }

    public final void setVideoUrl(@Nullable String str) {
        this.videoUrl = str;
    }

    @NotNull
    public String toString() {
        return "BaseEpisode(id=" + this.f38125id + ", shortPlayId=" + this.shortPlayId + ", shortPlayCode=" + this.shortPlayCode + ", shortPlayName=" + this.shortPlayName + ", coverId=" + this.coverId + ", summary=" + this.summary + ", videoType=" + this.videoType + ", videoUrl=" + this.videoUrl + ", isCollect=" + this.isCollect + ", collectNum=" + this.collectNum + ", episodeNum=" + this.episodeNum + ", totalEpisodes=" + this.totalEpisodes + ", price=" + this.price + ", lock=" + this.lock + ", alreadyLock=" + this.alreadyLock + ", subtitlingConfig=" + this.subtitlingConfig + ", videoDuration=" + this.videoDuration + ", unlockType=" + this.unlockType + ", bitRate=" + this.bitRate + ", codec=" + this.codec + ", aspectRatio=" + getAspectRatio() + ", coordinate=" + this.coordinate + ", referVideoWidth=" + this.referVideoWidth + ", referVideoHeight=" + this.referVideoHeight + ", frameExtractionCover=" + this.frameExtractionCover + ", bindShortPlayId=" + this.bindShortPlayId + ", firstDramId=" + this.firstDramId + ", isMergeShortPlay=" + this.isMergeShortPlay + ", vipFree=" + this.vipFree + ", unlockBy=" + this.unlockBy + ", lockBegin=" + this.lockBegin + ", needDecrypt=" + this.needDecrypt + ", unlockJustNow=" + this.unlockJustNow + ", parsedVideo=" + this.parsedVideo + ", parsedBitrate=" + this.parsedBitrate + ", parsedCodec=" + this.parsedCodec + ", parseVideoUrlLock=" + this.parseVideoUrlLock + ", collectLock=" + this.collectLock + ", immersionShortsRecordIndex=" + this.immersionShortsRecordIndex + ",shortPlayContentRatingResponse=" + this.shortPlayContentRatingResponse + ')';
    }

    public final void updateVipFree(int i10) {
        this.vipFree = i10;
    }

    @NotNull
    /* renamed from: getUnlockType  reason: collision with other method in class */
    public final String m4705getUnlockType() {
        if (AccountRepo.f43052a.i1()) {
            if (isMembersOnly()) {
                return "3";
            }
            if (isUnlockByDiscount()) {
                return "1,2";
            }
            return "1";
        } else if (isMembersOnly()) {
            return "3";
        } else {
            if (isUnlockByDiscount()) {
                return "2";
            }
            return "";
        }
    }
}
