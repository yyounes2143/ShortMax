package com.moloco.sdk.internal.error.crash.filters;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
@SourceDebugExtension({"SMAP\nMolocoSDKExceptionFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MolocoSDKExceptionFilter.kt\ncom/moloco/sdk/internal/error/crash/filters/MolocoSDKExceptionFilter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,36:1\n13409#2,2:37\n13409#2,2:39\n*S KotlinDebug\n*F\n+ 1 MolocoSDKExceptionFilter.kt\ncom/moloco/sdk/internal/error/crash/filters/MolocoSDKExceptionFilter\n*L\n14#1:37,2\n24#1:39,2\n*E\n"})
/* loaded from: classes6.dex */
public final class b implements a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f32116a = "MolocoSDKExceptionFilter";

    @Override // com.moloco.sdk.internal.error.crash.filters.a
    public boolean a(@NotNull Throwable crash) {
        Intrinsics.checkNotNullParameter(crash, "crash");
        StackTraceElement[] stackTrace = crash.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
            if (StringsKt.b0(className, "com.moloco.sdk", false, 2, null)) {
                MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f32116a, "SDK detected in stacktrace", null, false, 12, null);
                return true;
            }
        }
        Throwable cause = crash.getCause();
        if (cause == null) {
            return false;
        }
        StackTraceElement[] stackTrace2 = cause.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace2, "getStackTrace(...)");
        for (StackTraceElement stackTraceElement2 : stackTrace2) {
            String className2 = stackTraceElement2.getClassName();
            Intrinsics.checkNotNullExpressionValue(className2, "getClassName(...)");
            if (StringsKt.b0(className2, "com.moloco.sdk", false, 2, null)) {
                MolocoLogger.error$default(MolocoLogger.INSTANCE, this.f32116a, "SDK detected in stacktrace", null, false, 12, null);
                return true;
            }
        }
        return false;
    }
}
