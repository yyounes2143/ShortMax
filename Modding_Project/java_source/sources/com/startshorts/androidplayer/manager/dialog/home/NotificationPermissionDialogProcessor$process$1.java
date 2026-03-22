package com.startshorts.androidplayer.manager.dialog.home;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NotificationPermissionDialogProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.NotificationPermissionDialogProcessor", f = "NotificationPermissionDialogProcessor.kt", l = {57}, m = "process")
/* loaded from: classes6.dex */
public final class NotificationPermissionDialogProcessor$process$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f42400h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ NotificationPermissionDialogProcessor f42401i;

    /* renamed from: j  reason: collision with root package name */
    int f42402j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationPermissionDialogProcessor$process$1(NotificationPermissionDialogProcessor notificationPermissionDialogProcessor, rs.c<? super NotificationPermissionDialogProcessor$process$1> cVar) {
        super(cVar);
        this.f42401i = notificationPermissionDialogProcessor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42400h = obj;
        this.f42402j |= Integer.MIN_VALUE;
        return this.f42401i.b(null, null, this);
    }
}
