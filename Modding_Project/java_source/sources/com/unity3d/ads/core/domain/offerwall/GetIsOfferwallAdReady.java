package com.unity3d.ads.core.domain.offerwall;

import com.unity3d.ads.core.data.manager.OfferwallManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: GetIsOfferwallAdReady.kt */
@Metadata
/* loaded from: classes7.dex */
public final class GetIsOfferwallAdReady {
    @NotNull
    private final OfferwallManager offerwallManager;

    public GetIsOfferwallAdReady(@NotNull OfferwallManager offerwallManager) {
        Intrinsics.checkNotNullParameter(offerwallManager, "offerwallManager");
        this.offerwallManager = offerwallManager;
    }

    @Nullable
    public final Object invoke(@NotNull String str, @NotNull c<? super Boolean> cVar) {
        return this.offerwallManager.isAdReady(str, cVar);
    }
}
