package com.vungle.ads.internal.util;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThreadUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ThreadUtil {
    @NotNull
    public static final ThreadUtil INSTANCE = new ThreadUtil();
    @NotNull
    private static final Handler UI_HANDLER = new Handler(Looper.getMainLooper());
    @Nullable
    private static Executor uiExecutor;

    private ThreadUtil() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: runOnUiThread$lambda-0  reason: not valid java name */
    public static final void m4849runOnUiThread$lambda0(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: runOnUiThread$lambda-1  reason: not valid java name */
    public static final void m4850runOnUiThread$lambda1(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    @Nullable
    public final Executor getUiExecutor$vungle_ads_release() {
        return uiExecutor;
    }

    public final boolean isMainThread() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null) {
            return false;
        }
        return mainLooper.isCurrentThread();
    }

    public final void runOnUiThread(@NotNull final Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (isMainThread()) {
            block.invoke();
            return;
        }
        Executor executor = uiExecutor;
        if (executor != null) {
            if (executor != null) {
                executor.execute(new Runnable() { // from class: com.vungle.ads.internal.util.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        ThreadUtil.m4849runOnUiThread$lambda0(Function0.this);
                    }
                });
                return;
            }
            return;
        }
        UI_HANDLER.post(new Runnable() { // from class: com.vungle.ads.internal.util.e
            @Override // java.lang.Runnable
            public final void run() {
                ThreadUtil.m4850runOnUiThread$lambda1(Function0.this);
            }
        });
    }

    public final void setUiExecutor$vungle_ads_release(@Nullable Executor executor) {
        uiExecutor = executor;
    }

    @VisibleForTesting
    public static /* synthetic */ void getUiExecutor$vungle_ads_release$annotations() {
    }
}
