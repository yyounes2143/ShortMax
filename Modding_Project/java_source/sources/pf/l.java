package pf;

import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.model.BareVideoInfo;
import com.ss.ttvideoengine.model.BareVideoModel;
import com.ss.ttvideoengine.source.DirectUrlSource;
import com.ss.ttvideoengine.source.VideoModelSource;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.EpisodeBitrate;
import com.startshorts.androidplayer.bean.shorts.EpisodeCodec;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import java.util.ArrayList;
import java.util.List;
import jk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StrategySourceUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStrategySourceUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StrategySourceUtil.kt\ncom/startshorts/androidplayer/manager/player/util/StrategySourceUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n1863#2,2:154\n*S KotlinDebug\n*F\n+ 1 StrategySourceUtil.kt\ncom/startshorts/androidplayer/manager/player/util/StrategySourceUtil\n*L\n80#1:154,2\n*E\n"})
/* loaded from: classes6.dex */
public final class l {
    @NotNull

    /* renamed from: a */
    public static final l f64869a = new l();

    private l() {
    }

    private final BareVideoInfo a(String str, String str2, String str3, long j10, Resolution resolution, Long l10, String str4, boolean z10) {
        long j11;
        if (z10) {
            Logger logger = Logger.f41511a;
            logger.h("StrategySourceUtil", "createBareVideoInfo -> fileHash(" + str + ") url(" + str2 + ") expiryTime(" + str3 + ") duration(" + j10 + ") resolution(" + resolution + ") bitrate(" + l10 + ") codec(" + str4 + ')');
        }
        BareVideoInfo.Builder format = new BareVideoInfo.Builder().fileHash(str).mediaType(0).addUrl(str2).addUrlExpire(str3).duration(j10).format(TTVideoEngineInterface.FORMAT_TYPE_HLS);
        if (l10 != null) {
            j11 = l10.longValue();
        } else {
            j11 = 0;
        }
        BareVideoInfo build = format.bitrate(j11).codecType(str4).resolution(resolution).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    private final StrategySource d(String str, long j10, ArrayList<BareVideoInfo> arrayList, Resolution resolution, boolean z10) {
        if (z10) {
            Logger logger = Logger.f41511a;
            logger.h("StrategySourceUtil", "createVideoModelSource -> cacheKey(" + str + ") duration(" + j10 + ") resolution(" + resolution + ')');
        }
        VideoModelSource build = new VideoModelSource.Builder().setVid(str).setVideoModel(new BareVideoModel.Builder().vid(str).duration(j10).setVideoInfos(arrayList).adaptive(true).build()).setResolution(resolution).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    public static /* synthetic */ StrategySource e(l lVar, BaseEpisode baseEpisode, PlayResolution playResolution, PlayResolution playResolution2, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            playResolution2 = null;
        }
        if ((i10 & 8) != 0) {
            z10 = true;
        }
        return lVar.c(baseEpisode, playResolution, playResolution2, z10);
    }

    @NotNull
    public final DirectUrlSource b(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        long e10 = v.e(url);
        String a10 = a.f64858a.a(url);
        Logger logger = Logger.f41511a;
        logger.h("StrategySourceUtil", "createDirectUrlSource -> url(" + url + ") cacheKey(" + a10 + ") expiryTime(" + e10 + ')');
        DirectUrlSource build = new DirectUrlSource.Builder().setVid(a10).addItem(new DirectUrlSource.UrlItem.Builder().setUrl(url).setCacheKey(a10).setUrlExpire(String.valueOf(e10)).build()).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    @Nullable
    public final StrategySource c(@Nullable BaseEpisode baseEpisode, @Nullable PlayResolution playResolution, @Nullable PlayResolution playResolution2, boolean z10) {
        boolean z11;
        String parseVideoUrl$default;
        Resolution resolution;
        Long l10;
        String str;
        String parseVideoUrl;
        if (baseEpisode != null) {
            z11 = baseEpisode.isDownloadFinished();
        } else {
            z11 = false;
        }
        if (z11 && (parseVideoUrl = baseEpisode.parseVideoUrl(baseEpisode.getDownloadResolution())) != null) {
            return f64869a.b(parseVideoUrl);
        }
        Long l11 = null;
        if (playResolution == null) {
            return null;
        }
        k kVar = k.f64864a;
        List<PlayResolution> l12 = kVar.l(baseEpisode, z10);
        if (l12.isEmpty()) {
            Logger.f41511a.e("StrategySourceUtil", "createVideoModelSource failed -> playableResolution is empty");
            EventManager eventManager = EventManager.f42463a;
            EventManager.s0(eventManager, "reel_playable_resolution_empty", eventManager.C(baseEpisode), 0L, 4, null);
            return null;
        } else if (baseEpisode == null || (parseVideoUrl$default = BaseEpisode.parseVideoUrl$default(baseEpisode, 0, 1, null)) == null) {
            return null;
        } else {
            PlayResolution p10 = kVar.p(baseEpisode, playResolution, z10);
            if (p10 == null && playResolution.isAuto()) {
                p10 = playResolution2;
            }
            if (p10 == null) {
                p10 = kVar.j(l12);
            }
            PlayResolution playResolution3 = p10;
            long e10 = v.e(parseVideoUrl$default);
            String a10 = a.f64858a.a(parseVideoUrl$default);
            long videoDuration = baseEpisode.getVideoDuration();
            ArrayList<BareVideoInfo> arrayList = new ArrayList<>();
            for (PlayResolution playResolution4 : kVar.r(baseEpisode)) {
                l lVar = f64869a;
                String a11 = a.f64858a.a(playResolution4.getUrl());
                String url = playResolution4.getUrl();
                String valueOf = String.valueOf(e10);
                Resolution resolution2 = playResolution4.getResolution();
                EpisodeBitrate parsedBitrate = baseEpisode.getParsedBitrate();
                if (parsedBitrate != null) {
                    l10 = parsedBitrate.getBitrate(playResolution4.getResolutionValue());
                } else {
                    l10 = l11;
                }
                EpisodeCodec parsedCodec = baseEpisode.getParsedCodec();
                if (parsedCodec != null) {
                    str = parsedCodec.getCodec(playResolution4.getResolutionValue());
                } else {
                    str = l11;
                }
                ArrayList<BareVideoInfo> arrayList2 = arrayList;
                arrayList2.add(lVar.a(a11, url, valueOf, videoDuration, resolution2, l10, str, z10));
                arrayList = arrayList2;
                l11 = null;
            }
            ArrayList<BareVideoInfo> arrayList3 = arrayList;
            if (playResolution3 != null) {
                resolution = playResolution3.getResolution();
            } else {
                resolution = null;
            }
            return d(a10, videoDuration, arrayList3, resolution, z10);
        }
    }
}
