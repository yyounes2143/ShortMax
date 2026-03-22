package com.facebook.fresco.ui.common;

import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: VitoUtils.kt */
@Metadata
/* loaded from: classes3.dex */
public final class VitoUtils {
    @NotNull
    public static final VitoUtils INSTANCE = new VitoUtils();
    @NotNull
    private static final AtomicLong idCounter = new AtomicLong();

    private VitoUtils() {
    }

    public static final long generateIdentifier() {
        return idCounter.incrementAndGet();
    }

    @NotNull
    public static final String getStringId(long j10) {
        return "v" + j10;
    }
}
