package com.moloco.sdk.acm;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class i {
    @NotNull
    public static final String a(@NotNull c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        return cVar.a() + ':' + cVar.b();
    }
}
