package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.InitializationState;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AwaitInitialization.kt */
@Metadata
/* loaded from: classes7.dex */
public interface AwaitInitialization {

    /* compiled from: AwaitInitialization.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object invoke$default(AwaitInitialization awaitInitialization, long j10, c cVar, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    j10 = Long.MAX_VALUE;
                }
                return awaitInitialization.invoke(j10, cVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
        }
    }

    @Nullable
    Object invoke(long j10, @NotNull c<? super InitializationState> cVar);
}
