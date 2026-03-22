package com.unity3d.ads.adplayer;

import androidx.annotation.CallSuper;
import com.unity3d.ads.adplayer.model.LoadEvent;
import com.unity3d.ads.core.data.model.OfferwallShowEvent;
import com.unity3d.ads.core.data.model.ScarEvent;
import com.unity3d.ads.core.data.model.ShowEvent;
import com.unity3d.scar.adapter.common.GMAEvent;
import com.unity3d.services.ads.offerwall.OfferwallEvent;
import com.unity3d.services.banners.bridge.BannerBridge;
import gt.g0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kt.d;
import kt.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AdPlayer.kt */
@Metadata
/* loaded from: classes7.dex */
public interface AdPlayer {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int OFFERWALL_EVENT_QUEUE_SIZE = 5;
    public static final int SCAR_EVENT_QUEUE_SIZE = 10;

    /* compiled from: AdPlayer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public static final int OFFERWALL_EVENT_QUEUE_SIZE = 5;
        public static final int SCAR_EVENT_QUEUE_SIZE = 10;
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        private static final d<String> broadcastEventChannel = g.b(0, 0, null, 7, null);

        private Companion() {
        }

        @NotNull
        public final d<String> getBroadcastEventChannel() {
            return broadcastEventChannel;
        }
    }

    /* compiled from: AdPlayer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        @CallSuper
        @Nullable
        public static Object destroy(@NotNull AdPlayer adPlayer, @NotNull c<? super Unit> cVar) {
            i.e(adPlayer.getScope(), null, 1, null);
            return Unit.f60915a;
        }

        public static void show(@NotNull AdPlayer adPlayer, @NotNull ShowOptions showOptions) {
            Intrinsics.checkNotNullParameter(showOptions, "showOptions");
            throw new NotImplementedError(null, 1, null);
        }
    }

    @CallSuper
    @Nullable
    Object destroy(@NotNull c<? super Unit> cVar);

    void dispatchShowCompleted();

    @NotNull
    kt.b<LoadEvent> getOnLoadEvent();

    @NotNull
    kt.b<OfferwallShowEvent> getOnOfferwallEvent();

    @NotNull
    kt.b<ScarEvent> getOnScarEvent();

    @NotNull
    kt.b<ShowEvent> getOnShowEvent();

    @NotNull
    g0 getScope();

    @NotNull
    WebViewContainer getWebViewContainer();

    @Nullable
    Object onAllowedPiiChange(@NotNull byte[] bArr, @NotNull c<? super Unit> cVar);

    @Nullable
    Object onBroadcastEvent(@NotNull String str, @NotNull c<? super Unit> cVar);

    @Nullable
    Object requestShow(@Nullable Map<String, ? extends Object> map, @NotNull c<? super Unit> cVar);

    @Nullable
    Object sendActivityDestroyed(@NotNull c<? super Unit> cVar);

    @Nullable
    Object sendFocusChange(boolean z10, @NotNull c<? super Unit> cVar);

    @Nullable
    Object sendGmaEvent(@NotNull GMAEvent gMAEvent, @NotNull c<? super Unit> cVar);

    @Nullable
    Object sendMuteChange(boolean z10, @NotNull c<? super Unit> cVar);

    @Nullable
    Object sendOfferwallEvent(@NotNull OfferwallEvent offerwallEvent, @NotNull c<? super Unit> cVar);

    @Nullable
    Object sendPrivacyFsmChange(@NotNull byte[] bArr, @NotNull c<? super Unit> cVar);

    @Nullable
    Object sendScarBannerEvent(@NotNull BannerBridge.BannerEvent bannerEvent, @NotNull c<? super Unit> cVar);

    @Nullable
    Object sendUserConsentChange(@NotNull byte[] bArr, @NotNull c<? super Unit> cVar);

    @Nullable
    Object sendVisibilityChange(boolean z10, @NotNull c<? super Unit> cVar);

    @Nullable
    Object sendVolumeChange(double d10, @NotNull c<? super Unit> cVar);

    void show(@NotNull ShowOptions showOptions);
}
