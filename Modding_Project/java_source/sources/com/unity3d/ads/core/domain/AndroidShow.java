package com.unity3d.ads.core.domain;

import android.app.Activity;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.core.configuration.GameServerIdReader;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.ShowEvent;
import com.unity3d.ads.core.data.repository.AdRepository;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.c;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidShow.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidShow implements Show {
    @NotNull
    private final AdRepository adRepository;
    @NotNull
    private final GameServerIdReader gameServerIdReader;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;

    public AndroidShow(@NotNull AdRepository adRepository, @NotNull GameServerIdReader gameServerIdReader, @NotNull SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(gameServerIdReader, "gameServerIdReader");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.adRepository = adRepository;
        this.gameServerIdReader = gameServerIdReader;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    @Override // com.unity3d.ads.core.domain.Show
    @NotNull
    public b<ShowEvent> invoke(@NotNull Activity activity, @NotNull AdObject adObject, @Nullable UnityAdsShowOptions unityAdsShowOptions) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return c.F(new AndroidShow$invoke$1(adObject, this, activity, unityAdsShowOptions, null));
    }

    @Override // com.unity3d.ads.core.domain.Show
    @Nullable
    public Object terminate(@NotNull AdObject adObject, @NotNull rs.c<? super Unit> cVar) {
        AdPlayer adPlayer = adObject.getAdPlayer();
        if (adPlayer != null) {
            Object destroy = adPlayer.destroy(cVar);
            if (destroy == kotlin.coroutines.intrinsics.a.f()) {
                return destroy;
            }
            return Unit.f60915a;
        }
        return Unit.f60915a;
    }
}
