package com.unity3d.services.core.domain;

import androidx.exifinterface.media.ExifInterface;
import com.unity3d.services.core.domain.task.InitializationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ResultExtensions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ResultExtensionsKt {
    public static final /* synthetic */ <E extends Exception> E getCustomExceptionOrNull(Object obj) {
        Throwable g10 = Result.g(obj);
        Intrinsics.reifiedOperationMarker(3, ExifInterface.LONGITUDE_EAST);
        if (g10 instanceof Exception) {
            return (E) g10;
        }
        return null;
    }

    public static final /* synthetic */ <E extends Exception> E getCustomExceptionOrThrow(Object obj) {
        Throwable g10 = Result.g(obj);
        Intrinsics.reifiedOperationMarker(3, ExifInterface.LONGITUDE_EAST);
        if (g10 instanceof Exception) {
            return (E) g10;
        }
        throw new IllegalArgumentException("Wrong Exception type found");
    }

    @Nullable
    public static final InitializationException getInitializationExceptionOrNull(@NotNull Object obj) {
        Throwable g10 = Result.g(obj);
        if (g10 instanceof InitializationException) {
            return (InitializationException) g10;
        }
        return null;
    }

    @NotNull
    public static final InitializationException getInitializationExceptionOrThrow(@NotNull Object obj) {
        Throwable g10 = Result.g(obj);
        if (g10 instanceof InitializationException) {
            return (InitializationException) g10;
        }
        throw new IllegalArgumentException("Wrong Exception type found");
    }
}
