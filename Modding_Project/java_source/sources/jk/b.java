package jk;

import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BundleExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b {
    @NotNull
    public static final Bundle a(@NotNull Bundle bundle, @NotNull Bundle bundle2) {
        Intrinsics.checkNotNullParameter(bundle, "<this>");
        Intrinsics.checkNotNullParameter(bundle2, "bundle");
        bundle.putAll(bundle2);
        return bundle;
    }
}
