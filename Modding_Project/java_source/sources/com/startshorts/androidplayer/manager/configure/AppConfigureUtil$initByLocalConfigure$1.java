package com.startshorts.androidplayer.manager.configure;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppConfigureUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.configure.AppConfigureUtil", f = "AppConfigureUtil.kt", l = {55}, m = "initByLocalConfigure")
/* loaded from: classes6.dex */
public final class AppConfigureUtil$initByLocalConfigure$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42210h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42211i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AppConfigureUtil f42212j;

    /* renamed from: k  reason: collision with root package name */
    int f42213k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigureUtil$initByLocalConfigure$1(AppConfigureUtil appConfigureUtil, c<? super AppConfigureUtil$initByLocalConfigure$1> cVar) {
        super(cVar);
        this.f42212j = appConfigureUtil;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42211i = obj;
        this.f42213k |= Integer.MIN_VALUE;
        return this.f42212j.g(null, null, null, this);
    }
}
