package com.unity3d.ads.core.domain.scar;

import com.unity3d.ads.core.data.manager.ScarManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: LoadScarAd.kt */
@Metadata
/* loaded from: classes7.dex */
public final class LoadScarAd {
    @NotNull
    private final ScarManager scarManager;

    public LoadScarAd(@NotNull ScarManager scarManager) {
        Intrinsics.checkNotNullParameter(scarManager, "scarManager");
        this.scarManager = scarManager;
    }

    @Nullable
    public final Object invoke(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, int i10, @NotNull c<? super Unit> cVar) {
        if (Intrinsics.areEqual(str, "banner")) {
            return Unit.f60915a;
        }
        Object loadAd = this.scarManager.loadAd(str, str2, str4, str3, str5, i10, cVar);
        if (loadAd == a.f()) {
            return loadAd;
        }
        return Unit.f60915a;
    }
}
