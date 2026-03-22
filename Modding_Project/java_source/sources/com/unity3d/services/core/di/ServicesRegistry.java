package com.unity3d.services.core.di;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ServicesRegistry.kt */
@Metadata
@SourceDebugExtension({"SMAP\nServicesRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServicesRegistry.kt\ncom/unity3d/services/core/di/ServicesRegistry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1#2:108\n*E\n"})
/* loaded from: classes7.dex */
public final class ServicesRegistry implements IServicesRegistry {
    @NotNull
    private final ConcurrentHashMap<ServiceKey, i<?>> _services = new ConcurrentHashMap<>();

    public static /* synthetic */ ServiceKey factory$default(ServicesRegistry servicesRegistry, String named, Function0 instance, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            named = "";
        }
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.reifiedOperationMarker(4, "T");
        ServiceKey serviceKey = new ServiceKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        servicesRegistry.updateService(serviceKey, ServiceFactoryKt.factoryOf(instance));
        return serviceKey;
    }

    public static /* synthetic */ Object get$default(ServicesRegistry servicesRegistry, String named, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            named = "";
        }
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.reifiedOperationMarker(4, "T");
        return servicesRegistry.resolveService(new ServiceKey(named, Reflection.getOrCreateKotlinClass(Object.class)));
    }

    public static /* synthetic */ Object getOrNull$default(ServicesRegistry servicesRegistry, String named, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            named = "";
        }
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.reifiedOperationMarker(4, "T");
        return servicesRegistry.resolveServiceOrNull(new ServiceKey(named, Reflection.getOrCreateKotlinClass(Object.class)));
    }

    public static /* synthetic */ ServiceKey single$default(ServicesRegistry servicesRegistry, String named, Function0 instance, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            named = "";
        }
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.reifiedOperationMarker(4, "T");
        ServiceKey serviceKey = new ServiceKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        servicesRegistry.updateService(serviceKey, c.b(instance));
        return serviceKey;
    }

    public final /* synthetic */ <T> ServiceKey factory(String named, Function0<? extends T> instance) {
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.reifiedOperationMarker(4, "T");
        ServiceKey serviceKey = new ServiceKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        updateService(serviceKey, ServiceFactoryKt.factoryOf(instance));
        return serviceKey;
    }

    public final /* synthetic */ <T> T get(String named) {
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) resolveService(new ServiceKey(named, Reflection.getOrCreateKotlinClass(Object.class)));
    }

    public final /* synthetic */ <T> T getOrNull(String named) {
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) resolveServiceOrNull(new ServiceKey(named, Reflection.getOrCreateKotlinClass(Object.class)));
    }

    @Override // com.unity3d.services.core.di.IServicesRegistry
    public <T> T getService(@NotNull String named, @NotNull KClass<?> instance) {
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(instance, "instance");
        return (T) resolveService(new ServiceKey(named, instance));
    }

    @Override // com.unity3d.services.core.di.IServicesRegistry
    @NotNull
    public Map<ServiceKey, i<?>> getServices() {
        return this._services;
    }

    @Override // com.unity3d.services.core.di.IServicesRegistry
    public <T> T resolveService(@NotNull ServiceKey key) {
        Intrinsics.checkNotNullParameter(key, "key");
        i<?> iVar = getServices().get(key);
        if (iVar != null) {
            return (T) iVar.getValue();
        }
        throw new IllegalStateException("No service instance found for " + key);
    }

    @Override // com.unity3d.services.core.di.IServicesRegistry
    @Nullable
    public <T> T resolveServiceOrNull(@NotNull ServiceKey key) {
        Intrinsics.checkNotNullParameter(key, "key");
        i<?> iVar = getServices().get(key);
        if (iVar == null) {
            return null;
        }
        return (T) iVar.getValue();
    }

    public final /* synthetic */ <T> ServiceKey single(String named, Function0<? extends T> instance) {
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.reifiedOperationMarker(4, "T");
        ServiceKey serviceKey = new ServiceKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        updateService(serviceKey, c.b(instance));
        return serviceKey;
    }

    @Override // com.unity3d.services.core.di.IServicesRegistry
    public <T> void updateService(@NotNull ServiceKey key, @NotNull i<? extends T> instance) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (!getServices().containsKey(key)) {
            this._services.put(key, instance);
            return;
        }
        throw new IllegalStateException(("Cannot have multiple identical services: " + key).toString());
    }
}
