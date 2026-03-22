package com.google.firebase.sessions;

import com.google.firebase.sessions.InstallationId;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InstallationId.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.google.firebase.sessions.InstallationId$Companion", f = "InstallationId.kt", l = {31, 39}, m = "create")
/* loaded from: classes5.dex */
public final class InstallationId$Companion$create$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f21500h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f21501i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ InstallationId.Companion f21502j;

    /* renamed from: k  reason: collision with root package name */
    int f21503k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstallationId$Companion$create$1(InstallationId.Companion companion, rs.c<? super InstallationId$Companion$create$1> cVar) {
        super(cVar);
        this.f21502j = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21501i = obj;
        this.f21503k |= Integer.MIN_VALUE;
        return this.f21502j.a(null, this);
    }
}
