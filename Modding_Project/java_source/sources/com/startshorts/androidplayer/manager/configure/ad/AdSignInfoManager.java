package com.startshorts.androidplayer.manager.configure.ad;

import com.startshorts.androidplayer.bean.checkin.CheckInInfoResult;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import kotlin.Metadata;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdSignInfoManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AdSignInfoManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AdSignInfoManager f42264a = new AdSignInfoManager();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static CheckInInfoResult f42265b;

    private AdSignInfoManager() {
    }

    @Nullable
    public final CheckInInfoResult a() {
        return f42265b;
    }

    @NotNull
    public final r b() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "querySignInAdInfo", false, new AdSignInfoManager$querySignInAdInfo$1(null), 2, null);
    }

    public final void c(@Nullable CheckInInfoResult checkInInfoResult) {
        f42265b = checkInInfoResult;
    }
}
