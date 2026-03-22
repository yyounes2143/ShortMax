package com.unity3d.ads.core.data.datasource;

import kotlin.Metadata;
import kt.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: LifecycleDataSource.kt */
@Metadata
/* loaded from: classes7.dex */
public interface LifecycleDataSource {
    boolean appIsForeground();

    @NotNull
    i<Boolean> getAppActive();
}
