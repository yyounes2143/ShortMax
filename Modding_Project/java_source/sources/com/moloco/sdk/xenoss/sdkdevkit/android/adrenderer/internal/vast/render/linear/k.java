package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear;

import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.r;
import ms.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class k {
    @NotNull
    public static final j d(@Nullable Boolean bool, int i10, @Nullable t tVar) {
        if (Intrinsics.areEqual(bool, Boolean.FALSE)) {
            tVar = null;
        } else if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            tVar = new t.b(i10 * 1000);
        } else if (bool != null) {
            throw new NoWhenBranchMatchedException();
        }
        return new h(tVar);
    }

    public static final int f(IntRange intRange, int i10) {
        return u.a(kotlin.ranges.e.c(((kotlin.ranges.e.e(intRange.d() - intRange.c(), 0) * i10) / 100.0d) / 1000, 0.0d));
    }

    public static final long g(long j10) {
        return j10 / 1000;
    }

    public static final d.a h(int i10) {
        if (i10 == 0) {
            return d.a.C0583a.f36165a;
        }
        return new d.a.b(i10, null);
    }

    public static final boolean i(r rVar) {
        if (rVar != null && !rVar.isCancelled() && !rVar.isCompleted()) {
            return false;
        }
        return true;
    }
}
