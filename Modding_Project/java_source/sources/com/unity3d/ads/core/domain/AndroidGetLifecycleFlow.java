package com.unity3d.ads.core.domain;

import android.app.Application;
import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.c;
import kt.b;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidGetLifecycleFlow.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidGetLifecycleFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetLifecycleFlow.kt\ncom/unity3d/ads/core/domain/AndroidGetLifecycleFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidGetLifecycleFlow {
    @NotNull
    private final Context applicationContext;

    public AndroidGetLifecycleFlow(@NotNull Context applicationContext) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        this.applicationContext = applicationContext;
    }

    @NotNull
    public final b<LifecycleEvent> invoke() {
        if (this.applicationContext instanceof Application) {
            return c.k(new AndroidGetLifecycleFlow$invoke$2(this, null));
        }
        throw new IllegalArgumentException("Application context is required");
    }
}
