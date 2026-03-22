package com.unity3d.services.core.di;

import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import ms.i;
/* compiled from: IServiceComponent.kt */
@Metadata
/* loaded from: classes7.dex */
public final class IServiceComponentKt {
    public static final /* synthetic */ <T> T get(IServiceComponent iServiceComponent, String named) {
        Intrinsics.checkNotNullParameter(iServiceComponent, "<this>");
        Intrinsics.checkNotNullParameter(named, "named");
        IServicesRegistry registry = iServiceComponent.getServiceProvider().getRegistry();
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) registry.getService(named, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public static /* synthetic */ Object get$default(IServiceComponent iServiceComponent, String named, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            named = "";
        }
        Intrinsics.checkNotNullParameter(iServiceComponent, "<this>");
        Intrinsics.checkNotNullParameter(named, "named");
        IServicesRegistry registry = iServiceComponent.getServiceProvider().getRegistry();
        Intrinsics.reifiedOperationMarker(4, "T");
        return registry.getService(named, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public static final /* synthetic */ <T> i<T> inject(IServiceComponent iServiceComponent, String named, LazyThreadSafetyMode mode) {
        Intrinsics.checkNotNullParameter(iServiceComponent, "<this>");
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return c.a(mode, new IServiceComponentKt$inject$1(iServiceComponent, named));
    }

    public static /* synthetic */ i inject$default(IServiceComponent iServiceComponent, String named, LazyThreadSafetyMode mode, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            named = "";
        }
        if ((i10 & 2) != 0) {
            mode = LazyThreadSafetyMode.NONE;
        }
        Intrinsics.checkNotNullParameter(iServiceComponent, "<this>");
        Intrinsics.checkNotNullParameter(named, "named");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        return c.a(mode, new IServiceComponentKt$inject$1(iServiceComponent, named));
    }
}
