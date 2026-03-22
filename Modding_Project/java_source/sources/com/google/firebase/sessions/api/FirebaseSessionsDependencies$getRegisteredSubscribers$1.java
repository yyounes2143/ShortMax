package com.google.firebase.sessions.api;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FirebaseSessionsDependencies.kt */
@Metadata
@d(c = "com.google.firebase.sessions.api.FirebaseSessionsDependencies", f = "FirebaseSessionsDependencies.kt", l = {110}, m = "getRegisteredSubscribers$com_google_firebase_firebase_sessions")
/* loaded from: classes5.dex */
public final class FirebaseSessionsDependencies$getRegisteredSubscribers$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f21594h;

    /* renamed from: i  reason: collision with root package name */
    Object f21595i;

    /* renamed from: j  reason: collision with root package name */
    Object f21596j;

    /* renamed from: k  reason: collision with root package name */
    Object f21597k;

    /* renamed from: l  reason: collision with root package name */
    Object f21598l;

    /* renamed from: m  reason: collision with root package name */
    Object f21599m;

    /* renamed from: n  reason: collision with root package name */
    /* synthetic */ Object f21600n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ FirebaseSessionsDependencies f21601o;

    /* renamed from: p  reason: collision with root package name */
    int f21602p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseSessionsDependencies$getRegisteredSubscribers$1(FirebaseSessionsDependencies firebaseSessionsDependencies, c<? super FirebaseSessionsDependencies$getRegisteredSubscribers$1> cVar) {
        super(cVar);
        this.f21601o = firebaseSessionsDependencies;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f21600n = obj;
        this.f21602p |= Integer.MIN_VALUE;
        return this.f21601o.c(this);
    }
}
