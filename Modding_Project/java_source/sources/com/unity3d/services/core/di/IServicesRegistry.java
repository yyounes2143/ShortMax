package com.unity3d.services.core.di;

import java.util.Map;
import kotlin.Metadata;
import kotlin.reflect.KClass;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IServicesRegistry.kt */
@Metadata
/* loaded from: classes7.dex */
public interface IServicesRegistry {

    /* compiled from: IServicesRegistry.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object getService$default(IServicesRegistry iServicesRegistry, String str, KClass kClass, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    str = "";
                }
                return iServicesRegistry.getService(str, kClass);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getService");
        }
    }

    <T> T getService(@NotNull String str, @NotNull KClass<?> kClass);

    @NotNull
    Map<ServiceKey, i<?>> getServices();

    <T> T resolveService(@NotNull ServiceKey serviceKey);

    @Nullable
    <T> T resolveServiceOrNull(@NotNull ServiceKey serviceKey);

    <T> void updateService(@NotNull ServiceKey serviceKey, @NotNull i<? extends T> iVar);
}
