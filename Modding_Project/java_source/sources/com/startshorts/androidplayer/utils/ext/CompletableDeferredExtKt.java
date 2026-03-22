package com.startshorts.androidplayer.utils.ext;

import com.startshorts.androidplayer.utils.DeviceUtil;
import gt.p;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompletableDeferredExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CompletableDeferredExtKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0044  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object b(@org.jetbrains.annotations.NotNull gt.p<T> r9, @org.jetbrains.annotations.Nullable java.lang.Long r10, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends kotlin.Pair<java.lang.Long, ? extends T>>> r11) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.utils.ext.CompletableDeferredExtKt.b(gt.p, java.lang.Long, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long c(long j10) {
        return DeviceUtil.f48146a.K() - j10;
    }

    public static final <T> void d(@NotNull p<T> pVar, T t10) {
        Intrinsics.checkNotNullParameter(pVar, "<this>");
        if (pVar.isActive()) {
            pVar.i(t10);
        }
    }
}
