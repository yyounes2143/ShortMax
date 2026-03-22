package com.unity3d.services.core.di;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: IServiceProvider.kt */
@Metadata
/* loaded from: classes7.dex */
public interface IServiceProvider {
    @NotNull
    IServicesRegistry getRegistry();

    @NotNull
    IServicesRegistry initialize();
}
