package com.startshorts.androidplayer.startup;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppLifecycleInitializer.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.startup.AppLifecycleInitializer$doWorkOnForeground$1", f = "AppLifecycleInitializer.kt", l = {136}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AppLifecycleInitializer$doWorkOnForeground$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    boolean f44838h;

    /* renamed from: i  reason: collision with root package name */
    int f44839i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AppLifecycleInitializer f44840j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLifecycleInitializer$doWorkOnForeground$1(AppLifecycleInitializer appLifecycleInitializer, c<? super AppLifecycleInitializer$doWorkOnForeground$1> cVar) {
        super(2, cVar);
        this.f44840j = appLifecycleInitializer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AppLifecycleInitializer$doWorkOnForeground$1(this.f44840j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((AppLifecycleInitializer$doWorkOnForeground$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e9  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.startup.AppLifecycleInitializer$doWorkOnForeground$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
