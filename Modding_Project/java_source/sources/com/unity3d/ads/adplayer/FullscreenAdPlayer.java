package com.unity3d.ads.adplayer;

import androidx.annotation.CallSuper;
import com.unity3d.ads.adplayer.AdPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: FullscreenAdPlayer.kt */
@Metadata
/* loaded from: classes7.dex */
public interface FullscreenAdPlayer extends AdPlayer {

    /* compiled from: FullscreenAdPlayer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        @CallSuper
        @Nullable
        public static Object destroy(@NotNull FullscreenAdPlayer fullscreenAdPlayer, @NotNull c<? super Unit> cVar) {
            Object destroy = AdPlayer.DefaultImpls.destroy(fullscreenAdPlayer, cVar);
            if (destroy == kotlin.coroutines.intrinsics.a.f()) {
                return destroy;
            }
            return Unit.f60915a;
        }

        public static void show(@NotNull FullscreenAdPlayer fullscreenAdPlayer, @NotNull ShowOptions showOptions) {
            Intrinsics.checkNotNullParameter(showOptions, "showOptions");
            AdPlayer.DefaultImpls.show(fullscreenAdPlayer, showOptions);
        }
    }
}
