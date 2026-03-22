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
@d(c = "com.startshorts.androidplayer.manager.configure.AppConfigureUtil", f = "AppConfigureUtil.kt", l = {69}, m = "initByRemoteConfigure")
/* loaded from: classes6.dex */
public final class AppConfigureUtil$initByRemoteConfigure$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42214h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42215i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AppConfigureUtil f42216j;

    /* renamed from: k  reason: collision with root package name */
    int f42217k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigureUtil$initByRemoteConfigure$1(AppConfigureUtil appConfigureUtil, c<? super AppConfigureUtil$initByRemoteConfigure$1> cVar) {
        super(cVar);
        this.f42216j = appConfigureUtil;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42215i = obj;
        this.f42217k |= Integer.MIN_VALUE;
        return this.f42216j.h(null, null, this);
    }
}
