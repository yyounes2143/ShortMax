package com.startshorts.androidplayer.manager.dialog.home;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LoginGuideDialogProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.LoginGuideDialogProcessor", f = "LoginGuideDialogProcessor.kt", l = {38}, m = "process")
/* loaded from: classes6.dex */
public final class LoginGuideDialogProcessor$process$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f42384h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ LoginGuideDialogProcessor f42385i;

    /* renamed from: j  reason: collision with root package name */
    int f42386j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginGuideDialogProcessor$process$1(LoginGuideDialogProcessor loginGuideDialogProcessor, rs.c<? super LoginGuideDialogProcessor$process$1> cVar) {
        super(cVar);
        this.f42385i = loginGuideDialogProcessor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42384h = obj;
        this.f42386j |= Integer.MIN_VALUE;
        return this.f42385i.b(null, null, this);
    }
}
