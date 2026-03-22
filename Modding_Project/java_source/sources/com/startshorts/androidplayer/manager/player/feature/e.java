package com.startshorts.androidplayer.manager.player.feature;

import com.ss.ttvideoengine.TTVideoEngine;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import lf.s;
import org.jetbrains.annotations.NotNull;
/* compiled from: SeamlessSwitchFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class e extends b {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f42726d = new a(null);

    /* compiled from: SeamlessSwitchFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.b, com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    public void a(@NotNull TTVideoEngine player, @NotNull s params) {
        Intrinsics.checkNotNullParameter(player, "player");
        Intrinsics.checkNotNullParameter(params, "params");
        super.a(player, params);
        player.setIntOption(671, 1);
        player.setIntOption(258, 1);
    }

    public final void c(@NotNull PlayResolution resolution) {
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        TTVideoEngine b10 = b();
        if (b10 != null) {
            b10.configResolution(resolution.getResolution());
            Unit unit = Unit.f60915a;
            Logger logger = Logger.f41511a;
            logger.h("SeamlessSwitchFeature", "updatePlayResolution -> " + resolution);
        }
    }

    @Override // com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature
    @NotNull
    public IVideoPlayerFeature.FeatureType type() {
        return IVideoPlayerFeature.FeatureType.SEAMLESS_SWITCH;
    }
}
