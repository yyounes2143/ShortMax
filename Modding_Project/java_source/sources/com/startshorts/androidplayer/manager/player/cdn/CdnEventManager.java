package com.startshorts.androidplayer.manager.player.cdn;

import android.net.Uri;
import com.jiuzhou.cdn.model.request.CdnEvent;
import com.jiuzhou.cdn.model.request.CdnEventType;
import com.jiuzhou.cdn.repo.CdnRepo;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.Resolution;
import com.startshorts.androidplayer.bean.player.PlayerHeaderInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.k;
/* compiled from: CdnEventManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCdnEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CdnEventManager.kt\ncom/startshorts/androidplayer/manager/player/cdn/CdnEventManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,424:1\n1863#2,2:425\n*S KotlinDebug\n*F\n+ 1 CdnEventManager.kt\ncom/startshorts/androidplayer/manager/player/cdn/CdnEventManager\n*L\n78#1:425,2\n*E\n"})
/* loaded from: classes6.dex */
public final class CdnEventManager {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f42683c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<CdnEvent> f42684a = new ArrayList();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f42685b;

    /* compiled from: CdnEventManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final String a(Resolution resolution) {
        String resolution2 = resolution.toString();
        Intrinsics.checkNotNullExpressionValue(resolution2, "toString(...)");
        return resolution2;
    }

    private final String b(PlayResolution playResolution) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(playResolution.getResolutionValue());
        sb2.append('p');
        return sb2.toString();
    }

    private final String c(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        if (StringsKt.b0(str, "_720", false, 2, null)) {
            return "720p";
        }
        if (StringsKt.b0(str, "_1080", false, 2, null)) {
            return "1080p";
        }
        if (!StringsKt.b0(str, "_480", false, 2, null)) {
            return "";
        }
        return "480p";
    }

    private final PlayResolution d(BaseEpisode baseEpisode, PlayResolution playResolution) {
        k kVar = k.f64864a;
        PlayResolution p10 = kVar.p(baseEpisode, playResolution, false);
        if (p10 == null && playResolution.isAuto()) {
            return kVar.j(kVar.l(baseEpisode, false));
        }
        return p10;
    }

    private final String e(BaseEpisode baseEpisode, Resolution resolution) {
        String resolution2 = resolution.toString();
        Intrinsics.checkNotNullExpressionValue(resolution2, "toString(...)");
        return baseEpisode.parseVideoUrl(Integer.parseInt(StringsKt.P(resolution2, TtmlNode.TAG_P, "", false, 4, null)));
    }

    private final boolean f() {
        return true;
    }

    public final void g(@NotNull BaseEpisode episode, @NotNull PlayResolution resolution, long j10, @NotNull String networkType) {
        String str;
        String parseVideoUrl;
        Uri parse;
        String c10;
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (!f()) {
            return;
        }
        String str2 = this.f42685b;
        if (str2 != null && str2.length() != 0) {
            try {
                PlayResolution d10 = d(episode, resolution);
                if (d10 == null || (parseVideoUrl = episode.parseVideoUrl(d10.getResolutionValue())) == null) {
                    return;
                }
                String str3 = parse.getScheme() + "://" + parse.getHost();
                String path = Uri.parse(parseVideoUrl).getPath();
                if (episode.getNeedDecrypt()) {
                    c10 = b(d10);
                } else {
                    c10 = c(path);
                }
                str = "CdnEventManager";
                try {
                    this.f42684a.add(CdnRepo.b(CdnRepo.f25579a, CdnEventType.TYPE_VIDEO_FIRST_FRAME, str3, path, c10, j10, this.f42685b, null, null, null, null, null, (int) episode.getVideoDuration(), networkType, null, 10176, null));
                } catch (Exception e10) {
                    e = e10;
                    Logger.f41511a.e(str, "logFirstFrame failed -> " + e.getMessage());
                }
            } catch (Exception e11) {
                e = e11;
                str = "CdnEventManager";
            }
        } else {
            Logger.f41511a.e("CdnEventManager", "logFirstFrame failed -> mPlayId is null");
        }
    }

    public final void h(@NotNull BaseEpisode episode, @NotNull PlayResolution resolution, long j10, @NotNull String action, @NotNull String networkType) {
        String str;
        String parseVideoUrl;
        Uri parse;
        String c10;
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (!f()) {
            return;
        }
        String str2 = this.f42685b;
        if (str2 != null && str2.length() != 0) {
            try {
                PlayResolution d10 = d(episode, resolution);
                if (d10 == null || (parseVideoUrl = episode.parseVideoUrl(d10.getResolutionValue())) == null) {
                    return;
                }
                String str3 = parse.getScheme() + "://" + parse.getHost();
                String path = Uri.parse(parseVideoUrl).getPath();
                if (episode.getNeedDecrypt()) {
                    c10 = b(d10);
                } else {
                    c10 = c(path);
                }
                str = "CdnEventManager";
                try {
                    this.f42684a.add(CdnRepo.b(CdnRepo.f25579a, CdnEventType.TYPE_VIDEO_BUFFER_END, str3, path, c10, j10, this.f42685b, null, null, null, null, action, (int) episode.getVideoDuration(), networkType, null, 9152, null));
                } catch (Exception e10) {
                    e = e10;
                    Logger.f41511a.e(str, "logPlayBufferEnd failed -> " + e.getMessage());
                }
            } catch (Exception e11) {
                e = e11;
                str = "CdnEventManager";
            }
        } else {
            Logger.f41511a.e("CdnEventManager", "logPlayBufferEnd failed -> mPlayId is null");
        }
    }

    public final void i(@NotNull BaseEpisode episode, @NotNull PlayResolution resolution, @NotNull String action, @NotNull String networkType) {
        String str;
        String parseVideoUrl;
        Uri parse;
        String c10;
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (!f()) {
            return;
        }
        String str2 = this.f42685b;
        if (str2 != null && str2.length() != 0) {
            try {
                PlayResolution d10 = d(episode, resolution);
                if (d10 == null || (parseVideoUrl = episode.parseVideoUrl(d10.getResolutionValue())) == null) {
                    return;
                }
                String str3 = parse.getScheme() + "://" + parse.getHost();
                String path = Uri.parse(parseVideoUrl).getPath();
                if (episode.getNeedDecrypt()) {
                    c10 = b(d10);
                } else {
                    c10 = c(path);
                }
                str = "CdnEventManager";
                try {
                    this.f42684a.add(CdnRepo.b(CdnRepo.f25579a, CdnEventType.TYPE_VIDEO_BUFFER_START, str3, path, c10, 0L, this.f42685b, null, null, null, null, action, (int) episode.getVideoDuration(), networkType, null, 9168, null));
                } catch (Exception e10) {
                    e = e10;
                    Logger.f41511a.e(str, "logPlayBufferStart failed -> " + e.getMessage());
                }
            } catch (Exception e11) {
                e = e11;
                str = "CdnEventManager";
            }
        } else {
            Logger.f41511a.e("CdnEventManager", "logPlayBufferStart failed -> mPlayId is null");
        }
    }

    public final void j(@NotNull BaseEpisode episode, @NotNull PlayResolution resolution, @NotNull String networkType) {
        String str;
        String parseVideoUrl;
        Uri parse;
        String c10;
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (!f()) {
            return;
        }
        String str2 = this.f42685b;
        if (str2 != null && str2.length() != 0) {
            try {
                PlayResolution d10 = d(episode, resolution);
                if (d10 == null || (parseVideoUrl = episode.parseVideoUrl(d10.getResolutionValue())) == null) {
                    return;
                }
                String str3 = parse.getScheme() + "://" + parse.getHost();
                String path = Uri.parse(parseVideoUrl).getPath();
                if (episode.getNeedDecrypt()) {
                    c10 = b(d10);
                } else {
                    c10 = c(path);
                }
                str = "CdnEventManager";
                try {
                    this.f42684a.add(CdnRepo.b(CdnRepo.f25579a, CdnEventType.TYPE_VIDEO_PLAY_COMPLETE, str3, path, c10, episode.getVideoDuration(), this.f42685b, null, null, null, null, null, (int) episode.getVideoDuration(), networkType, null, 10176, null));
                } catch (Exception e10) {
                    e = e10;
                    Logger.f41511a.e(str, "logPlayComplete failed -> " + e.getMessage());
                }
            } catch (Exception e11) {
                e = e11;
                str = "CdnEventManager";
            }
        } else {
            Logger.f41511a.e("CdnEventManager", "logPlayComplete failed -> mPlayId is null");
        }
    }

    public final void k(@NotNull BaseEpisode episode, @NotNull PlayResolution resolution, long j10, @NotNull String networkType) {
        String parseVideoUrl;
        Uri parse;
        String c10;
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (!f()) {
            return;
        }
        try {
            Logger.f41511a.h("CdnEventManager", "logPlayEnd -> mPlayId(" + this.f42685b + ") playTime(" + j10 + ')');
            String str = this.f42685b;
            if (str != null && str.length() != 0) {
                PlayResolution d10 = d(episode, resolution);
                if (d10 == null || (parseVideoUrl = episode.parseVideoUrl(d10.getResolutionValue())) == null) {
                    return;
                }
                String str2 = parse.getScheme() + "://" + parse.getHost();
                String path = Uri.parse(parseVideoUrl).getPath();
                if (episode.getNeedDecrypt()) {
                    c10 = b(d10);
                } else {
                    c10 = c(path);
                }
                this.f42684a.add(CdnRepo.b(CdnRepo.f25579a, CdnEventType.TYPE_VIDEO_PLAY_END, str2, path, c10, j10, this.f42685b, null, null, null, null, null, (int) episode.getVideoDuration(), networkType, null, 10176, null));
            }
            this.f42685b = null;
            if (!this.f42684a.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (CdnEvent cdnEvent : this.f42684a) {
                    arrayList.add(cdnEvent);
                }
                this.f42684a.clear();
                CoroutineUtil.l(CoroutineUtil.f48072a, "playEnd:logEvents", false, new CdnEventManager$logPlayEnd$2(arrayList, null), 2, null);
            }
        } catch (Exception e10) {
            Logger.f41511a.e("CdnEventManager", "logPlayEnd failed -> " + e10.getMessage());
        }
    }

    public final void l(@NotNull PlayerHeaderInfo headerInfo, @NotNull BaseEpisode episode, @Nullable PlayResolution playResolution, @NotNull String networkType) {
        String str;
        Uri parse;
        String c10;
        PlayResolution d10;
        Intrinsics.checkNotNullParameter(headerInfo, "headerInfo");
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (!f()) {
            return;
        }
        String str2 = this.f42685b;
        if (str2 != null && str2.length() != 0) {
            try {
                String url = headerInfo.getUrl();
                if (url == null) {
                    return;
                }
                String str3 = parse.getScheme() + "://" + parse.getHost();
                String path = Uri.parse(url).getPath();
                if (episode.getNeedDecrypt()) {
                    if (playResolution == null) {
                        d10 = null;
                    } else {
                        d10 = d(episode, playResolution);
                    }
                    if (d10 != null) {
                        c10 = b(d10);
                    } else {
                        c10 = "";
                    }
                } else {
                    c10 = c(path);
                }
                String str4 = c10;
                str = "CdnEventManager";
                try {
                    this.f42684a.add(CdnRepo.b(CdnRepo.f25579a, CdnEventType.TYPE_VIDEO_PLAY_FAILED, str3, path, str4, 0L, this.f42685b, headerInfo.getReqHeaders(), headerInfo.getRespHeaders(), String.valueOf(headerInfo.getErrorCode()), String.valueOf(headerInfo.getStatusCode()), null, (int) episode.getVideoDuration(), networkType, null, 9232, null));
                } catch (Exception e10) {
                    e = e10;
                    Logger.f41511a.e(str, "logPlayFailed failed -> " + e.getMessage());
                }
            } catch (Exception e11) {
                e = e11;
                str = "CdnEventManager";
            }
        } else {
            Logger.f41511a.e("CdnEventManager", "logPlayFailed failed -> mPlayId is null");
        }
    }

    public final void m(@NotNull BaseEpisode episode, @NotNull PlayResolution resolution, @NotNull String errorCode, @Nullable String str, @NotNull String networkType) {
        String str2;
        String parseVideoUrl;
        Uri parse;
        String c10;
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (!f()) {
            return;
        }
        String str3 = this.f42685b;
        if (str3 != null && str3.length() != 0) {
            try {
                PlayResolution d10 = d(episode, resolution);
                if (d10 == null || (parseVideoUrl = episode.parseVideoUrl(d10.getResolutionValue())) == null) {
                    return;
                }
                String str4 = parse.getScheme() + "://" + parse.getHost();
                String path = Uri.parse(parseVideoUrl).getPath();
                if (episode.getNeedDecrypt()) {
                    c10 = b(d10);
                } else {
                    c10 = c(path);
                }
                str2 = "CdnEventManager";
                try {
                    this.f42684a.add(CdnRepo.b(CdnRepo.f25579a, CdnEventType.TYPE_VIDEO_PLAY_REAL_FAILED, str4, path, c10, 0L, this.f42685b, null, null, errorCode, null, null, (int) episode.getVideoDuration(), networkType, str, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIOTRACK_CONTENTTYPE, null));
                } catch (Exception e10) {
                    e = e10;
                    Logger.f41511a.e(str2, "logPlayRealFailed failed -> " + e.getMessage());
                }
            } catch (Exception e11) {
                e = e11;
                str2 = "CdnEventManager";
            }
        } else {
            Logger.f41511a.e("CdnEventManager", "logPlayRealFailed failed -> mPlayId is null");
        }
    }

    public final void n(@NotNull BaseEpisode episode, @NotNull String videoUrl, int i10, @NotNull String errCode, @Nullable String str, @NotNull String networkType) {
        String str2;
        Uri parse;
        String str3;
        String path;
        CdnRepo cdnRepo;
        StringBuilder sb2;
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(videoUrl, "videoUrl");
        Intrinsics.checkNotNullParameter(errCode, "errCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (!f()) {
            return;
        }
        String str4 = this.f42685b;
        if (str4 != null && str4.length() != 0) {
            try {
                str3 = parse.getScheme() + "://" + parse.getHost();
                path = Uri.parse(videoUrl).getPath();
                cdnRepo = CdnRepo.f25579a;
                sb2 = new StringBuilder();
                sb2.append(i10);
                sb2.append('p');
                str2 = "CdnEventManager";
            } catch (Exception e10) {
                e = e10;
                str2 = "CdnEventManager";
            }
            try {
                this.f42684a.add(CdnRepo.b(cdnRepo, CdnEventType.TYPE_VIDEO_PLAY_REAL_FAILED, str3, path, sb2.toString(), 0L, this.f42685b, null, null, errCode, null, null, (int) episode.getVideoDuration(), networkType, str, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIOTRACK_CONTENTTYPE, null));
                return;
            } catch (Exception e11) {
                e = e11;
                Logger.f41511a.e(str2, "logPlayRealFailed failed -> " + e.getMessage());
                return;
            }
        }
        Logger.f41511a.e("CdnEventManager", "logPlayRealFailed failed -> mPlayId is null");
    }

    public final void o(@NotNull BaseEpisode episode, @NotNull Resolution resolution, @NotNull String networkType) {
        String str;
        Uri parse;
        String c10;
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (!f()) {
            return;
        }
        String str2 = this.f42685b;
        if (str2 != null && str2.length() != 0) {
            try {
                String e10 = e(episode, resolution);
                if (e10 == null) {
                    return;
                }
                String str3 = parse.getScheme() + "://" + parse.getHost();
                String path = Uri.parse(e10).getPath();
                if (episode.getNeedDecrypt()) {
                    c10 = a(resolution);
                } else {
                    c10 = c(path);
                }
                str = "CdnEventManager";
                try {
                    this.f42684a.add(CdnRepo.b(CdnRepo.f25579a, CdnEventType.TYPE_VIDEO_PLAY_RETRY, str3, path, c10, 0L, this.f42685b, null, null, null, null, null, (int) episode.getVideoDuration(), networkType, null, 10192, null));
                } catch (Exception e11) {
                    e = e11;
                    Logger.f41511a.e(str, "logPlayRetry failed -> " + e.getMessage());
                }
            } catch (Exception e12) {
                e = e12;
                str = "CdnEventManager";
            }
        } else {
            Logger.f41511a.e("CdnEventManager", "logPlayRetry failed -> mPlayId is null");
        }
    }

    public final void p(@NotNull BaseEpisode episode, @NotNull PlayResolution resolution, @NotNull String networkType) {
        String str;
        String parseVideoUrl;
        Uri parse;
        String c10;
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (!f()) {
            return;
        }
        String str2 = this.f42685b;
        if (str2 != null && str2.length() != 0) {
            try {
                PlayResolution d10 = d(episode, resolution);
                if (d10 == null || (parseVideoUrl = episode.parseVideoUrl(d10.getResolutionValue())) == null) {
                    return;
                }
                String str3 = parse.getScheme() + "://" + parse.getHost();
                String path = Uri.parse(parseVideoUrl).getPath();
                if (episode.getNeedDecrypt()) {
                    c10 = b(d10);
                } else {
                    c10 = c(path);
                }
                str = "CdnEventManager";
                try {
                    this.f42684a.add(CdnRepo.b(CdnRepo.f25579a, CdnEventType.TYPE_VIDEO_PLAY_RETRY, str3, path, c10, 0L, this.f42685b, null, null, null, null, null, (int) episode.getVideoDuration(), networkType, null, 10192, null));
                } catch (Exception e10) {
                    e = e10;
                    Logger.f41511a.e(str, "logPlayRetry failed -> " + e.getMessage());
                }
            } catch (Exception e11) {
                e = e11;
                str = "CdnEventManager";
            }
        } else {
            Logger.f41511a.e("CdnEventManager", "logPlayRetry failed -> mPlayId is null");
        }
    }

    public final void q(@NotNull BaseEpisode episode, @NotNull PlayResolution resolution, @NotNull String networkType) {
        String str;
        String parseVideoUrl;
        Uri parse;
        String c10;
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (!f()) {
            return;
        }
        String str2 = this.f42685b;
        if (str2 != null && str2.length() != 0) {
            try {
                PlayResolution d10 = d(episode, resolution);
                if (d10 == null || (parseVideoUrl = episode.parseVideoUrl(d10.getResolutionValue())) == null) {
                    return;
                }
                String str3 = parse.getScheme() + "://" + parse.getHost();
                String path = Uri.parse(parseVideoUrl).getPath();
                if (episode.getNeedDecrypt()) {
                    c10 = b(d10);
                } else {
                    c10 = c(path);
                }
                str = "CdnEventManager";
                try {
                    this.f42684a.add(CdnRepo.b(CdnRepo.f25579a, CdnEventType.TYPE_VIDEO_SEEK, str3, path, c10, 0L, this.f42685b, null, null, null, null, null, (int) episode.getVideoDuration(), networkType, null, 10192, null));
                } catch (Exception e10) {
                    e = e10;
                    Logger.f41511a.e(str, "logPlaySeek failed -> " + e.getMessage());
                }
            } catch (Exception e11) {
                e = e11;
                str = "CdnEventManager";
            }
        } else {
            Logger.f41511a.e("CdnEventManager", "logPlaySeek failed -> mPlayId is null");
        }
    }

    public final void r(@NotNull BaseEpisode episode, @NotNull PlayResolution resolution, @NotNull String networkType) {
        String parseVideoUrl;
        Uri parse;
        String c10;
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (!f()) {
            return;
        }
        try {
            this.f42685b = UUID.randomUUID().toString();
            PlayResolution d10 = d(episode, resolution);
            if (d10 == null || (parseVideoUrl = episode.parseVideoUrl(d10.getResolutionValue())) == null) {
                return;
            }
            Logger.f41511a.h("CdnEventManager", "logPlayStart -> mPlayId(" + this.f42685b + ')');
            String str = parse.getScheme() + "://" + parse.getHost();
            String path = Uri.parse(parseVideoUrl).getPath();
            if (episode.getNeedDecrypt()) {
                c10 = b(d10);
            } else {
                c10 = c(path);
            }
            this.f42684a.add(CdnRepo.b(CdnRepo.f25579a, CdnEventType.TYPE_VIDEO_PLAY_START, str, path, c10, 0L, this.f42685b, null, null, null, null, null, (int) episode.getVideoDuration(), networkType, null, 10192, null));
        } catch (Exception e10) {
            Logger.f41511a.e("CdnEventManager", "logPlayStart failed -> " + e10.getMessage());
        }
    }
}
