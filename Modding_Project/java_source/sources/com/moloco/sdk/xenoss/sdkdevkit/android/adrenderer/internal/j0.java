package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.i;
import com.vungle.ads.internal.Constants;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class j0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final j0 f34065a = new j0();

    public final boolean a(@NotNull String adm) {
        Intrinsics.checkNotNullParameter(adm, "adm");
        return StringsKt.Z(adm, Constants.AD_MRAID_JS_FILE_NAME, true);
    }

    public final boolean b(@NotNull String adm) {
        Intrinsics.checkNotNullParameter(adm, "adm");
        return StringsKt.Z(adm, "<VAST", true);
    }

    @NotNull
    public final i c(@NotNull String adm) {
        Intrinsics.checkNotNullParameter(adm, "adm");
        if (b(adm)) {
            return i.f33712a;
        }
        if (a(adm)) {
            return i.f33713b;
        }
        return i.f33714c;
    }
}
