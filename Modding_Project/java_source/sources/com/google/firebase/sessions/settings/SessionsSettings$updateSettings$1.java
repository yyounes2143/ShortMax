package com.google.firebase.sessions.settings;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SessionsSettings.kt */
@Metadata
@d(c = "com.google.firebase.sessions.settings.SessionsSettings", f = "SessionsSettings.kt", l = {98, 99}, m = "updateSettings")
/* loaded from: classes5.dex */
public final class SessionsSettings$updateSettings$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f21663h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f21664i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SessionsSettings f21665j;

    /* renamed from: k  reason: collision with root package name */
    int f21666k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SessionsSettings$updateSettings$1(SessionsSettings sessionsSettings, c<? super SessionsSettings$updateSettings$1> cVar) {
        super(cVar);
        this.f21665j = sessionsSettings;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21664i = obj;
        this.f21666k |= Integer.MIN_VALUE;
        return this.f21665j.f(this);
    }
}
