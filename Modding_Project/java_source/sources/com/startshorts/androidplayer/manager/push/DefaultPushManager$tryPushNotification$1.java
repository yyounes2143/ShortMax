package com.startshorts.androidplayer.manager.push;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultPushManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.DefaultPushManager", f = "DefaultPushManager.kt", l = {215}, m = "tryPushNotification")
/* loaded from: classes6.dex */
public final class DefaultPushManager$tryPushNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42827h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42828i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DefaultPushManager f42829j;

    /* renamed from: k  reason: collision with root package name */
    int f42830k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultPushManager$tryPushNotification$1(DefaultPushManager defaultPushManager, c<? super DefaultPushManager$tryPushNotification$1> cVar) {
        super(cVar);
        this.f42829j = defaultPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object S;
        this.f42828i = obj;
        this.f42830k |= Integer.MIN_VALUE;
        S = this.f42829j.S(this);
        return S;
    }
}
