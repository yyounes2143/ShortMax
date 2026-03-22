package com.unity3d.ads.core.extensions;

import com.unity3d.services.SDKErrorHandler;
import java.io.PrintWriter;
import java.io.StringWriter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.j;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import ws.b;
/* compiled from: ExceptionExtensions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ExceptionExtensionsKt {
    @NotNull
    public static final String getShortenedStackTrace(@NotNull Throwable th2, int i10) {
        Intrinsics.checkNotNullParameter(th2, "<this>");
        try {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            try {
                th2.printStackTrace(printWriter);
                String stringWriter2 = stringWriter.toString();
                Intrinsics.checkNotNullExpressionValue(stringWriter2, "stringWriter.toString()");
                String D = j.D(j.M(StringsKt.A0(StringsKt.v1(stringWriter2).toString()), i10), "\n", null, null, 0, null, null, 62, null);
                b.a(printWriter, null);
                b.a(stringWriter, null);
                return D;
            } finally {
            }
        } catch (Throwable unused) {
            return "";
        }
    }

    public static /* synthetic */ String getShortenedStackTrace$default(Throwable th2, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 15;
        }
        return getShortenedStackTrace(th2, i10);
    }

    @NotNull
    public static final String retrieveUnityCrashValue(@NotNull Throwable th2) {
        StackTraceElement stackTraceElement;
        boolean z10;
        String className;
        Intrinsics.checkNotNullParameter(th2, "<this>");
        StackTraceElement[] stackTrace = th2.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "this.stackTrace");
        int length = stackTrace.length;
        int i10 = 0;
        while (true) {
            stackTraceElement = null;
            if (i10 >= length) {
                break;
            }
            StackTraceElement stackTraceElement2 = stackTrace[i10];
            if (stackTraceElement2 != null && (className = stackTraceElement2.getClassName()) != null) {
                Intrinsics.checkNotNullExpressionValue(className, "className");
                z10 = StringsKt.b0(className, SDKErrorHandler.UNITY_PACKAGE, false, 2, null);
            } else {
                z10 = false;
            }
            if (z10) {
                stackTraceElement = stackTraceElement2;
                break;
            }
            i10++;
        }
        if (stackTraceElement == null) {
            return "unknown";
        }
        String fileName = stackTraceElement.getFileName();
        if (fileName == null) {
            fileName = "unknown";
        } else {
            Intrinsics.checkNotNullExpressionValue(fileName, "it.fileName ?: SDKErrorHandler.UNKNOWN_FILE");
        }
        String str = fileName + '_' + stackTraceElement.getLineNumber();
        if (str == null) {
            return "unknown";
        }
        return str;
    }
}
