package com.startshorts.androidplayer.repo.notification;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NotificationRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.notification.NotificationRemoteDS", f = "NotificationRemoteDS.kt", l = {13}, m = "acceptNotificationReward-IoAF18A")
/* loaded from: classes7.dex */
public final class NotificationRemoteDS$acceptNotificationReward$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44297h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ NotificationRemoteDS f44298i;

    /* renamed from: j  reason: collision with root package name */
    int f44299j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationRemoteDS$acceptNotificationReward$1(NotificationRemoteDS notificationRemoteDS, c<? super NotificationRemoteDS$acceptNotificationReward$1> cVar) {
        super(cVar);
        this.f44298i = notificationRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44297h = obj;
        this.f44299j |= Integer.MIN_VALUE;
        Object a10 = this.f44298i.a(this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
