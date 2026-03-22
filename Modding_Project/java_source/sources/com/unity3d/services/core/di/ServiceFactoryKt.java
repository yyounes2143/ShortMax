package com.unity3d.services.core.di;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: ServiceFactory.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ServiceFactoryKt {
    @NotNull
    public static final <T> i<T> factoryOf(@NotNull Function0<? extends T> initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        return new Factory(initializer);
    }
}
