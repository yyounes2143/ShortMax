package com.unity3d.ads.injection;

import java.util.Map;
import kotlin.Metadata;
import kotlin.c;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.o;
import kt.e;
import ms.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: Registry.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Registry.kt\ncom/unity3d/ads/injection/Registry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,74:1\n1#2:75\n230#3,5:76\n*S KotlinDebug\n*F\n+ 1 Registry.kt\ncom/unity3d/ads/injection/Registry\n*L\n46#1:76,5\n*E\n"})
/* loaded from: classes7.dex */
public final class Registry {
    @NotNull
    private final e<Map<EntryKey, i<?>>> _services = o.a(p0.i());

    public static /* synthetic */ EntryKey factory$default(Registry registry, String named, Function0 instance, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            named = "";
        }
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.reifiedOperationMarker(4, "T");
        EntryKey entryKey = new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        registry.add(entryKey, new Factory(instance));
        return entryKey;
    }

    public static /* synthetic */ Object get$default(Registry registry, String named, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            named = "";
        }
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.reifiedOperationMarker(4, "T");
        EntryKey entryKey = new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        i<?> iVar = registry.getServices().get(entryKey);
        if (iVar != null) {
            Object value = iVar.getValue();
            Intrinsics.reifiedOperationMarker(1, "T");
            return value;
        }
        throw new IllegalStateException("No entry found for " + entryKey);
    }

    public static /* synthetic */ Object getOrNull$default(Registry registry, String named, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            named = "";
        }
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.reifiedOperationMarker(4, "T");
        i<?> iVar = registry.getServices().get(new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class)));
        if (iVar == null) {
            return null;
        }
        Object value = iVar.getValue();
        Intrinsics.reifiedOperationMarker(1, "T");
        return value;
    }

    public static /* synthetic */ EntryKey single$default(Registry registry, String named, Function0 instance, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            named = "";
        }
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.reifiedOperationMarker(4, "T");
        EntryKey entryKey = new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        registry.add(entryKey, c.b(instance));
        return entryKey;
    }

    public final <T> void add(@NotNull EntryKey key, @NotNull i<? extends T> instance) {
        Map<EntryKey, i<?>> value;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (!getServices().containsKey(key)) {
            e<Map<EntryKey, i<?>>> eVar = this._services;
            do {
                value = eVar.getValue();
            } while (!eVar.b(value, p0.q(value, p0.f(k.a(key, instance)))));
            return;
        }
        throw new IllegalStateException("Cannot have identical entries.");
    }

    public final /* synthetic */ <T> EntryKey factory(String named, Function0<? extends T> instance) {
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.reifiedOperationMarker(4, "T");
        EntryKey entryKey = new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        add(entryKey, new Factory(instance));
        return entryKey;
    }

    public final /* synthetic */ <T> T get(String named) {
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.reifiedOperationMarker(4, "T");
        EntryKey entryKey = new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        i<?> iVar = getServices().get(entryKey);
        if (iVar != null) {
            T t10 = (T) iVar.getValue();
            Intrinsics.reifiedOperationMarker(1, "T");
            return t10;
        }
        throw new IllegalStateException("No entry found for " + entryKey);
    }

    public final /* synthetic */ <T> T getOrNull(String named) {
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.reifiedOperationMarker(4, "T");
        i<?> iVar = getServices().get(new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class)));
        if (iVar == null) {
            return null;
        }
        T t10 = (T) iVar.getValue();
        Intrinsics.reifiedOperationMarker(1, "T");
        return t10;
    }

    @NotNull
    public final Map<EntryKey, i<?>> getServices() {
        return this._services.getValue();
    }

    public final /* synthetic */ <T> EntryKey single(String named, Function0<? extends T> instance) {
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.reifiedOperationMarker(4, "T");
        EntryKey entryKey = new EntryKey(named, Reflection.getOrCreateKotlinClass(Object.class));
        add(entryKey, c.b(instance));
        return entryKey;
    }
}
