package com.unity3d.services.core.di;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: IServiceComponent.kt */
@Metadata
@SourceDebugExtension({"SMAP\nIServiceComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt$inject$1\n+ 2 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n*L\n1#1,33:1\n19#2:34\n*S KotlinDebug\n*F\n+ 1 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt$inject$1\n*L\n33#1:34\n*E\n"})
/* loaded from: classes7.dex */
public final class IServiceComponentKt$inject$1<T> extends Lambda implements Function0<T> {
    final /* synthetic */ String $named;
    final /* synthetic */ IServiceComponent $this_inject;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IServiceComponentKt$inject$1(IServiceComponent iServiceComponent, String str) {
        super(0);
        this.$this_inject = iServiceComponent;
        this.$named = str;
    }

    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final T invoke() {
        IServiceComponent iServiceComponent = this.$this_inject;
        String str = this.$named;
        IServicesRegistry registry = iServiceComponent.getServiceProvider().getRegistry();
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) registry.getService(str, Reflection.getOrCreateKotlinClass(Object.class));
    }
}
