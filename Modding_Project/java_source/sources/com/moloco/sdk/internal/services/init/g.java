package com.moloco.sdk.internal.services.init;

import android.content.SharedPreferences;
import androidx.annotation.VisibleForTesting;
import com.moloco.sdk.Init$SDKInitResponse;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public interface g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f33444a = a.f33445a;

    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ a f33445a = new a();

        @NotNull
        public final g a(@NotNull SharedPreferences sharedPreferences) {
            Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
            return new h(sharedPreferences, com.moloco.sdk.internal.scheduling.c.a().getIo());
        }
    }

    @VisibleForTesting(otherwise = 5)
    @Nullable
    Object a(@NotNull rs.c<? super Unit> cVar);

    @Nullable
    Object b(@NotNull com.moloco.sdk.internal.services.init.a aVar, @NotNull com.moloco.sdk.acm.recorder.a aVar2, @NotNull rs.c<? super Unit> cVar);

    @Nullable
    Object c(@NotNull com.moloco.sdk.internal.services.init.a aVar, @NotNull com.moloco.sdk.acm.recorder.a aVar2, @NotNull rs.c<? super Init$SDKInitResponse> cVar);

    @Nullable
    Object d(@NotNull com.moloco.sdk.internal.services.init.a aVar, @NotNull com.moloco.sdk.acm.recorder.a aVar2, @NotNull Init$SDKInitResponse init$SDKInitResponse, @NotNull rs.c<? super Unit> cVar);
}
