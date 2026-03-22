package com.moloco.sdk.internal.services.init;

import com.moloco.sdk.Init$SDKInitResponse;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.internal.services.init.i;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import wr.o;
/* loaded from: classes6.dex */
public final class k {
    public static final boolean a(int i10) {
        o.a aVar = o.f70214c;
        if (i10 != aVar.U().e0() && i10 != aVar.K().e0() && i10 >= 400 && i10 < 500) {
            return false;
        }
        return true;
    }

    public static final boolean b(@NotNull g0.a<Init$SDKInitResponse, i> aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        if (aVar.a() instanceof i.b) {
            return a(((i.b) aVar.a()).a());
        }
        return true;
    }
}
