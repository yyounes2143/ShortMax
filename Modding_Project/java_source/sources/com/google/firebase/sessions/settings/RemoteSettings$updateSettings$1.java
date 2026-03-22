package com.google.firebase.sessions.settings;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteSettings.kt */
@Metadata
@d(c = "com.google.firebase.sessions.settings.RemoteSettings", f = "RemoteSettings.kt", l = {165, 78, 95}, m = "updateSettings")
/* loaded from: classes5.dex */
public final class RemoteSettings$updateSettings$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f21640h;

    /* renamed from: i  reason: collision with root package name */
    Object f21641i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f21642j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ RemoteSettings f21643k;

    /* renamed from: l  reason: collision with root package name */
    int f21644l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteSettings$updateSettings$1(RemoteSettings remoteSettings, c<? super RemoteSettings$updateSettings$1> cVar) {
        super(cVar);
        this.f21643k = remoteSettings;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21642j = obj;
        this.f21644l |= Integer.MIN_VALUE;
        return this.f21643k.c(this);
    }
}
