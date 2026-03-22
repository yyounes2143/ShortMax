package com.unity3d.ads.injection;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: Factory.kt */
@Metadata
/* loaded from: classes7.dex */
public final class Factory<T> implements i<T> {
    @NotNull
    private final Function0<T> initializer;

    /* JADX WARN: Multi-variable type inference failed */
    public Factory(@NotNull Function0<? extends T> initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        this.initializer = initializer;
    }

    @Override // ms.i
    public T getValue() {
        return this.initializer.invoke();
    }

    @Override // ms.i
    public boolean isInitialized() {
        return false;
    }
}
