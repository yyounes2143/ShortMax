package com.unity3d.ads.core.extensions;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kt.b;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: FlowExtensions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class FlowExtensionsKt {
    @NotNull
    public static final <T> b<T> timeoutAfter(@NotNull b<? extends T> bVar, long j10, boolean z10, @NotNull Function2<? super Function0<Unit>, ? super c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return kotlinx.coroutines.flow.c.k(new FlowExtensionsKt$timeoutAfter$1(j10, z10, block, bVar, null));
    }

    public static /* synthetic */ b timeoutAfter$default(b bVar, long j10, boolean z10, Function2 function2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return timeoutAfter(bVar, j10, z10, function2);
    }
}
