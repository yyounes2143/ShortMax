package com.unity3d.ads.core.extensions;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationUnit;
import kotlin.time.TimeMark;
import kotlin.time.b;
import org.jetbrains.annotations.NotNull;
/* compiled from: TimeExtensions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TimeExtensionsKt {
    public static final double elapsedMillis(@NotNull TimeMark timeMark) {
        Intrinsics.checkNotNullParameter(timeMark, "<this>");
        return b.H(timeMark.a(), DurationUnit.MILLISECONDS);
    }
}
