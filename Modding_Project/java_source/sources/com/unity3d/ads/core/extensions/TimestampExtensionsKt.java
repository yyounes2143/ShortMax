package com.unity3d.ads.core.extensions;

import com.google.protobuf.Timestamp;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TimestampExtensions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TimestampExtensionsKt {
    public static final long duration(long j10) {
        return System.nanoTime() - j10;
    }

    @NotNull
    public static final Timestamp fromMillis(long j10) {
        long j11 = 1000;
        Timestamp build = Timestamp.newBuilder().setSeconds(j10 / j11).setNanos((int) ((j10 % j11) * ((long) TTVideoEngineInterface.PLAYER_TIME_BASE))).build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder().setSeconds(…000000).toInt())).build()");
        return build;
    }
}
