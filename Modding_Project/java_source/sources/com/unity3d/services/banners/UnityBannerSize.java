package com.unity3d.services.banners;

import android.content.Context;
import com.ss.ttm.player.MediaPlayer;
import com.unity3d.services.core.misc.ViewUtilities;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UnityBannerSize.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UnityBannerSize {
    private final int height;
    private final int width;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final UnityBannerSize leaderboard = new UnityBannerSize(728, 90);
    @NotNull
    private static final UnityBannerSize iabStandard = new UnityBannerSize(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RATE, 60);
    @NotNull
    private static final UnityBannerSize standard = new UnityBannerSize(320, 50);

    /* compiled from: UnityBannerSize.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final UnityBannerSize getDynamicSize(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            int c10 = bt.a.c(ViewUtilities.dpFromPx(context, context.getResources().getDisplayMetrics().widthPixels));
            if (c10 >= getLeaderboard().getWidth()) {
                return getLeaderboard();
            }
            if (c10 >= getIabStandard().getWidth()) {
                return getIabStandard();
            }
            return getStandard();
        }

        @NotNull
        public final UnityBannerSize getIabStandard() {
            return UnityBannerSize.iabStandard;
        }

        @NotNull
        public final UnityBannerSize getLeaderboard() {
            return UnityBannerSize.leaderboard;
        }

        @NotNull
        public final UnityBannerSize getStandard() {
            return UnityBannerSize.standard;
        }

        private Companion() {
        }
    }

    public UnityBannerSize(int i10, int i11) {
        this.width = i10;
        this.height = i11;
    }

    @NotNull
    public static final UnityBannerSize getDynamicSize(@NotNull Context context) {
        return Companion.getDynamicSize(context);
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }
}
