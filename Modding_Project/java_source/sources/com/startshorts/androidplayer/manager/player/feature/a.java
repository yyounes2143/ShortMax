package com.startshorts.androidplayer.manager.player.feature;

import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConfig;
import com.ss.ttvideoengine.selector.strategy.IGearStrategyListener;
import com.ss.ttvideoengine.strategy.StrategyManager;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature;
import com.startshorts.androidplayer.ui.view.immersion.adapter.BaseImmersionAdapterView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import lf.s;
import org.jetbrains.annotations.NotNull;
/* compiled from: ABRStartUpFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a extends com.startshorts.androidplayer.manager.player.feature.b {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final C0625a f42705d = new C0625a(null);

    /* renamed from: e  reason: collision with root package name */
    private static boolean f42706e;

    /* compiled from: ABRStartUpFeature.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.manager.player.feature.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0625a {
        public /* synthetic */ C0625a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0625a() {
        }
    }

    /* compiled from: ABRStartUpFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b implements IGearStrategyListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PlayResolution f42707a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ s f42708b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Resolution f42709c;

        b(PlayResolution playResolution, s sVar, Resolution resolution) {
            this.f42707a = playResolution;
            this.f42708b = sVar;
            this.f42709c = resolution;
        }

        @Override // com.ss.ttvideoengine.selector.strategy.IGearStrategyListener
        public void onAfterSelect(IVideoModel videoModel, Map<String, String> result, int i10, Object obj) {
            Intrinsics.checkNotNullParameter(videoModel, "videoModel");
            Intrinsics.checkNotNullParameter(result, "result");
            Logger logger = Logger.f41511a;
            logger.e("ABRStartUpFeature", "onAfterSelect -> maxResolution(" + this.f42707a + ") userExpectedPlayResolution(" + this.f42708b.l() + ") finalResolution(" + this.f42709c + ") userData(" + obj + ") selectType(" + i10 + ") speed(" + result.get("speed") + ") videoBitrate(" + result.get(GearStrategy.GEAR_STRATEGY_KEY_VIDEO_BITRATE) + ") audioBitrate(" + result.get(GearStrategy.GEAR_STRATEGY_KEY_AUDIO_BITRATE) + ") errCode(" + result.get(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE) + ") error_desc(" + result.get(GearStrategy.GEAR_STRATEGY_KEY_ERROR_DESC) + ')');
        }
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.b, com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    public void a(@NotNull TTVideoEngine player, @NotNull s params) {
        Resolution resolution;
        Intrinsics.checkNotNullParameter(player, "player");
        Intrinsics.checkNotNullParameter(params, "params");
        super.a(player, params);
        PlayResolution d10 = params.d();
        if (d10 == null) {
            return;
        }
        if (!f42706e) {
            f42706e = true;
            StrategyManager instance = StrategyManager.instance();
            instance.startSpeedPredictor();
            instance.initGearGlobalConfig();
            GearStrategyConfig globalConfig = GearStrategy.getGlobalConfig();
            globalConfig.setIntValue(52, 2);
            GearStrategy.setGlobalConfig(globalConfig);
        }
        int index = d10.getResolution().getIndex();
        PlayResolution l10 = params.l();
        if (l10 == null || (resolution = l10.getResolution()) == null) {
            resolution = d10.getResolution();
        }
        Logger logger = Logger.f41511a;
        logger.h("ABRStartUpFeature", "init -> maxResolution(" + d10 + ") userExpectedPlayResolution(" + params.l() + ") finalResolution(" + resolution + ')');
        player.setIntOption(583, 1);
        player.setIntOption(521, 1);
        player.setIntOption(29, 0);
        player.setIntOption(1001, 0);
        GearStrategyConfig gearStrategyEngineConfig = player.getGearStrategyEngineConfig();
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        gearStrategyEngineConfig.setIntValue(24, deviceUtil.G());
        gearStrategyEngineConfig.setIntValue(25, deviceUtil.F());
        BaseImmersionAdapterView.a aVar = BaseImmersionAdapterView.H;
        gearStrategyEngineConfig.setIntValue(26, aVar.b());
        gearStrategyEngineConfig.setIntValue(27, aVar.a());
        gearStrategyEngineConfig.setIntValue(23, 0);
        gearStrategyEngineConfig.setIntValue(12, 0);
        gearStrategyEngineConfig.setIntValue(19, index);
        gearStrategyEngineConfig.setIntValue(21, index);
        gearStrategyEngineConfig.setIntValue(17, index);
        gearStrategyEngineConfig.setIntValue(18, index);
        gearStrategyEngineConfig.setIntValue(5, resolution.getIndex());
        gearStrategyEngineConfig.setGearStrategyListener(new b(d10, params, resolution));
        player.setGearStrategyEngineConfig(gearStrategyEngineConfig);
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    @NotNull
    public IVideoPlayerFeature.FeatureType type() {
        return IVideoPlayerFeature.FeatureType.ABR_STARTUP;
    }
}
