package com.vungle.ads.internal.util;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConcurrencyTimeoutProvider.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ConcurrencyTimeoutProvider {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long OPERATION_TIMEOUT = TimeUnit.SECONDS.toMillis(4);

    /* compiled from: ConcurrencyTimeoutProvider.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final long getTimeout() {
        if (ThreadUtil.INSTANCE.isMainThread()) {
            return OPERATION_TIMEOUT;
        }
        return Long.MAX_VALUE;
    }
}
