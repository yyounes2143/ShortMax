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
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo", f = "CollectionRepo.kt", l = {53}, m = "cancelCollections-0E7RQCE")
/* loaded from: classes7.dex */
public final class CollectionRepo$cancelCollections$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44254h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CollectionRepo f44255i;

    /* renamed from: j  reason: collision with root package name */
    int f44256j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRepo$cancelCollections$1(CollectionRepo collectionRepo, c<? super CollectionRepo$cancelCollections$1> cVar) {
        super(cVar);
        this.f44255i = collectionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44254h = obj;
        this.f44256j |= Integer.MIN_VALUE;
        Object d10 = this.f44255i.d(null, null, this);
        if (d10 == a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
