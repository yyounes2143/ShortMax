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
/* compiled from: CollectionRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo", f = "CollectionRepo.kt", l = {20}, m = "queryCollectionsV2-hUnOzRk")
/* loaded from: classes7.dex */
public final class CollectionRepo$queryCollectionsV2$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44266h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CollectionRepo f44267i;

    /* renamed from: j  reason: collision with root package name */
    int f44268j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRepo$queryCollectionsV2$1(CollectionRepo collectionRepo, c<? super CollectionRepo$queryCollectionsV2$1> cVar) {
        super(cVar);
        this.f44267i = collectionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44266h = obj;
        this.f44268j |= Integer.MIN_VALUE;
        Object j10 = this.f44267i.j(0L, 0, 0, null, 0, this);
        if (j10 == a.f()) {
            return j10;
        }
        return Result.b(j10);
    }
}
