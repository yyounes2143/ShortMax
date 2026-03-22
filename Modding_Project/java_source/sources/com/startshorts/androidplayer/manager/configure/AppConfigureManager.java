package com.startshorts.androidplayer.manager.configure;

import android.content.Context;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import gt.e;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AppConfigureManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AppConfigureManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AppConfigureManager f42186a = new AppConfigureManager();

    private AppConfigureManager() {
    }

    @Nullable
    public final Object a(@NotNull Context context, boolean z10, @NotNull c<? super Unit> cVar) {
        Object g10 = e.g(q0.b(), new AppConfigureManager$init$2(z10, context, null), cVar);
        if (g10 == a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @NotNull
    public final r b(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return CoroutineUtil.l(CoroutineUtil.f48072a, "AppConfigureManager:initConfigure", false, new AppConfigureManager$initConfigure$1(context, null), 2, null);
    }

    @NotNull
    public final r c() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "refreshAdConfigure", false, new AppConfigureManager$refreshAdConfigure$1(null), 2, null);
    }
}
