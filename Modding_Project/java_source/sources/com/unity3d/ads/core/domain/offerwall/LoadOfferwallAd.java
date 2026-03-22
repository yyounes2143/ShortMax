package com.unity3d.ads.core.domain.offerwall;

import com.unity3d.ads.core.data.manager.OfferwallManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: LoadOfferwallAd.kt */
@Metadata
/* loaded from: classes7.dex */
public final class LoadOfferwallAd {
    @NotNull
    private final OfferwallManager offerwallManager;

    public LoadOfferwallAd(@NotNull OfferwallManager offerwallManager) {
        Intrinsics.checkNotNullParameter(offerwallManager, "offerwallManager");
        this.offerwallManager = offerwallManager;
    }

    @Nullable
    public final Object invoke(@NotNull String str, @NotNull c<? super Unit> cVar) {
        Object loadAd = this.offerwallManager.loadAd(str, cVar);
        if (loadAd == a.f()) {
            return loadAd;
        }
        return Unit.f60915a;
    }
}
