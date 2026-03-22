package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.InitializationState;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SetInitializationState.kt */
@Metadata
/* loaded from: classes7.dex */
public interface SetInitializationState {

    /* compiled from: SetInitializationState.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void invoke$default(SetInitializationState setInitializationState, InitializationState initializationState, boolean z10, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 2) != 0) {
                    z10 = false;
                }
                setInitializationState.invoke(initializationState, z10);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
        }
    }

    void invoke(@NotNull InitializationState initializationState, boolean z10);
}
