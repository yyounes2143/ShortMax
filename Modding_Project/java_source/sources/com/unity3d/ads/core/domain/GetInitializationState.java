package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.InitializationState;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: GetInitializationState.kt */
@Metadata
/* loaded from: classes7.dex */
public interface GetInitializationState {

    /* compiled from: GetInitializationState.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ InitializationState invoke$default(GetInitializationState getInitializationState, boolean z10, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    z10 = false;
                }
                return getInitializationState.invoke(z10);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
        }
    }

    @NotNull
    InitializationState invoke(boolean z10);
}
