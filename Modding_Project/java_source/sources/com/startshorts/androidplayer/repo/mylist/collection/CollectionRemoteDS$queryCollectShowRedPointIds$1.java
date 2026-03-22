package com.startshorts.androidplayer.repo.mylist.collection;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CollectionRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS", f = "CollectionRemoteDS.kt", l = {79}, m = "queryCollectShowRedPointIds-IoAF18A")
/* loaded from: classes7.dex */
public final class CollectionRemoteDS$queryCollectShowRedPointIds$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44225h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CollectionRemoteDS f44226i;

    /* renamed from: j  reason: collision with root package name */
    int f44227j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRemoteDS$queryCollectShowRedPointIds$1(CollectionRemoteDS collectionRemoteDS, c<? super CollectionRemoteDS$queryCollectShowRedPointIds$1> cVar) {
        super(cVar);
        this.f44226i = collectionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44225h = obj;
        this.f44227j |= Integer.MIN_VALUE;
        Object e10 = this.f44226i.e(this);
        if (e10 == a.f()) {
            return e10;
        }
        return Result.b(e10);
    }
}
