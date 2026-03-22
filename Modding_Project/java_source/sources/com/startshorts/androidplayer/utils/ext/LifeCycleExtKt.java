package com.startshorts.androidplayer.utils.ext;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LifeCycleExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class LifeCycleExtKt {
    @NotNull
    public static final LifecycleOwner a(@NotNull final Lifecycle lifecycle) {
        Intrinsics.checkNotNullParameter(lifecycle, "<this>");
        return new LifecycleOwner() { // from class: com.startshorts.androidplayer.utils.ext.LifeCycleExtKt$toLifecycleOwner$1
            @Override // androidx.lifecycle.LifecycleOwner
            public Lifecycle getLifecycle() {
                return Lifecycle.this;
            }
        };
    }
}
