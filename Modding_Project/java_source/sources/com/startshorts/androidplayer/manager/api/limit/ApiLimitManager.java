package com.startshorts.androidplayer.manager.api.limit;

import com.startshorts.androidplayer.utils.TimeUtil;
import gt.e;
import gt.g;
import gt.g0;
import gt.q0;
import gt.r1;
import java.util.Date;
import java.util.concurrent.atomic.AtomicBoolean;
import jk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
import ud.b;
/* compiled from: ApiLimitManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ApiLimitManager {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static r f41830d;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ApiLimitManager f41827a = new ApiLimitManager();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicBoolean f41828b = new AtomicBoolean(false);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final g0 f41829c = i.a(r1.b(null, 1, null).plus(q0.c().m()));
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static volatile String f41831e = "";

    /* renamed from: f  reason: collision with root package name */
    private static volatile int f41832f = -1;

    private ApiLimitManager() {
    }

    private final String f() {
        return TimeUtil.f48175a.f(f.a(new Date()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object g(c<? super Unit> cVar) {
        Object g10 = e.g(q0.b(), new ApiLimitManager$incrementLaunchCount$2(f(), null), cVar);
        if (g10 == a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    public final void e() {
        r d10;
        if (f41828b.get() || !ud.a.f68411a.e()) {
            return;
        }
        r rVar = f41830d;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        d10 = g.d(f41829c, null, null, new ApiLimitManager$checkShouldLimit$1(null), 3, null);
        f41830d = d10;
    }

    public final boolean h() {
        String f10 = f();
        if (!Intrinsics.areEqual(f41831e, f10) || f41832f == -1) {
            f41832f = b.f68412a.k1(f10);
            f41831e = f10;
        }
        if (f41832f >= 30) {
            return true;
        }
        return false;
    }
}
