package com.moloco.sdk.internal.ortb.model;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class f {
    @NotNull
    public static final String a(@NotNull c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        String d10 = cVar.d().d();
        if (d10 == null) {
            return "UNKNOWN_MTID";
        }
        return d10;
    }
}
