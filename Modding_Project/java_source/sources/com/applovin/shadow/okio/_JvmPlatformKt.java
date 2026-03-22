package com.applovin.shadow.okio;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
/* compiled from: -JvmPlatform.kt */
@Metadata
/* loaded from: classes2.dex */
public final class _JvmPlatformKt {
    @NotNull
    public static final byte[] asUtf8ToByteArray(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @NotNull
    public static final ReentrantLock newLock() {
        return new ReentrantLock();
    }

    @NotNull
    public static final String toUtf8String(@NotNull byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return new String(bArr, Charsets.UTF_8);
    }

    public static final <T> T withLock(@NotNull ReentrantLock reentrantLock, @NotNull Function0<? extends T> action) {
        Intrinsics.checkNotNullParameter(reentrantLock, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        reentrantLock.lock();
        try {
            return action.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            reentrantLock.unlock();
            InlineMarker.finallyEnd(1);
        }
    }
}
