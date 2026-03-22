package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.InitializationState;
import com.unity3d.ads.core.data.repository.SessionRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: CommonAwaitInitialization.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonAwaitInitialization implements AwaitInitialization {
    @NotNull
    private final SessionRepository sessionRepository;

    public CommonAwaitInitialization(@NotNull SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.sessionRepository = sessionRepository;
    }

    @Override // com.unity3d.ads.core.domain.AwaitInitialization
    @Nullable
    public Object invoke(long j10, @NotNull c<? super InitializationState> cVar) {
        return TimeoutKt.e(j10, new CommonAwaitInitialization$invoke$2(this, null), cVar);
    }
}
