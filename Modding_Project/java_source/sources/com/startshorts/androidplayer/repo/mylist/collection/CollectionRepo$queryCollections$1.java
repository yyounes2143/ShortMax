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
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo", f = "CollectionRepo.kt", l = {29}, m = "queryCollections-yxL6bBk")
/* loaded from: classes7.dex */
public final class CollectionRepo$queryCollections$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44263h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CollectionRepo f44264i;

    /* renamed from: j  reason: collision with root package name */
    int f44265j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRepo$queryCollections$1(CollectionRepo collectionRepo, c<? super CollectionRepo$queryCollections$1> cVar) {
        super(cVar);
        this.f44264i = collectionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44263h = obj;
        this.f44265j |= Integer.MIN_VALUE;
        Object i10 = this.f44264i.i(0L, 0, 0, null, this);
        if (i10 == a.f()) {
            return i10;
        }
        return Result.b(i10);
    }
}
