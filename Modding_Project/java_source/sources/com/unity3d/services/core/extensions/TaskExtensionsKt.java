package com.unity3d.services.core.extensions;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* compiled from: TaskExtensions.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTaskExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskExtensions.kt\ncom/unity3d/services/core/extensions/TaskExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,40:1\n1#2:41\n*E\n"})
/* loaded from: classes7.dex */
public final class TaskExtensionsKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x011e -> B:45:0x0124). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x013c -> B:49:0x0145). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object withRetry(long r20, int r22, double r23, @org.jetbrains.annotations.NotNull java.lang.Exception r25, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super java.lang.Integer, ? super rs.c<? super T>, ? extends java.lang.Object> r26, @org.jetbrains.annotations.NotNull rs.c<? super T> r27) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.extensions.TaskExtensionsKt.withRetry(long, int, double, java.lang.Exception, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    public static /* synthetic */ Object withRetry$default(long j10, int i10, double d10, Exception exc, Function2 function2, c cVar, int i11, Object obj) {
        long j11;
        int i12;
        double d11;
        if ((i11 & 1) != 0) {
            j11 = 5000;
        } else {
            j11 = j10;
        }
        if ((i11 & 2) != 0) {
            i12 = 6;
        } else {
            i12 = i10;
        }
        if ((i11 & 4) != 0) {
            d11 = 2.0d;
        } else {
            d11 = d10;
        }
        return withRetry(j11, i12, d11, exc, function2, cVar);
    }
}
