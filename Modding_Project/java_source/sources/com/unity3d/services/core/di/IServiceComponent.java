package com.unity3d.services.core.di;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: IServiceComponent.kt */
@Metadata
/* loaded from: classes7.dex */
public interface IServiceComponent {

    /* compiled from: IServiceComponent.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        @NotNull
        public static IServiceProvider getServiceProvider(@NotNull IServiceComponent iServiceComponent) {
            return ServiceProvider.INSTANCE;
        }
    }

    @NotNull
    IServiceProvider getServiceProvider();
}
