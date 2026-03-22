package com.startshorts.androidplayer.repo.config.appConfig;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppConfigRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.appConfig.AppConfigRemoteDS", f = "AppConfigRemoteDS.kt", l = {19}, m = "queryShortcutsConfig-IoAF18A")
/* loaded from: classes7.dex */
public final class AppConfigRemoteDS$queryShortcutsConfig$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43820h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AppConfigRemoteDS f43821i;

    /* renamed from: j  reason: collision with root package name */
    int f43822j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigRemoteDS$queryShortcutsConfig$1(AppConfigRemoteDS appConfigRemoteDS, c<? super AppConfigRemoteDS$queryShortcutsConfig$1> cVar) {
        super(cVar);
        this.f43821i = appConfigRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43820h = obj;
        this.f43822j |= Integer.MIN_VALUE;
        Object b10 = this.f43821i.b(this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
