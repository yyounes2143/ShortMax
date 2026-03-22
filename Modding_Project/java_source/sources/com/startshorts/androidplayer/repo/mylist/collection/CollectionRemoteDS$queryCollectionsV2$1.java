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
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS", f = "CollectionRemoteDS.kt", l = {20}, m = "queryCollectionsV2-hUnOzRk")
/* loaded from: classes7.dex */
public final class CollectionRemoteDS$queryCollectionsV2$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44237h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CollectionRemoteDS f44238i;

    /* renamed from: j  reason: collision with root package name */
    int f44239j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRemoteDS$queryCollectionsV2$1(CollectionRemoteDS collectionRemoteDS, c<? super CollectionRemoteDS$queryCollectionsV2$1> cVar) {
        super(cVar);
        this.f44238i = collectionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44237h = obj;
        this.f44239j |= Integer.MIN_VALUE;
        Object g10 = this.f44238i.g(0L, 0, 0, null, 0, this);
        if (g10 == a.f()) {
            return g10;
        }
        return Result.b(g10);
    }
}
