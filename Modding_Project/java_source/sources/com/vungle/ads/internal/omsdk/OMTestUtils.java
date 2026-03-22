package com.vungle.ads.internal.omsdk;

import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.vungle.Omid;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: OMTestUtils.kt */
@Metadata
/* loaded from: classes7.dex */
public final class OMTestUtils {
    @NotNull
    public static final OMTestUtils INSTANCE = new OMTestUtils();

    private OMTestUtils() {
    }

    @VisibleForTesting
    public final boolean isOmidActive() {
        return Omid.isActive();
    }
}
