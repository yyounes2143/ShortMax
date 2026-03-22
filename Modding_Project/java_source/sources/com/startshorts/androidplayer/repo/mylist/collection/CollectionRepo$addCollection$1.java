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
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo", f = "CollectionRepo.kt", l = {39}, m = "addCollection-hUnOzRk")
/* loaded from: classes7.dex */
public final class CollectionRepo$addCollection$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44248h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CollectionRepo f44249i;

    /* renamed from: j  reason: collision with root package name */
    int f44250j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRepo$addCollection$1(CollectionRepo collectionRepo, c<? super CollectionRepo$addCollection$1> cVar) {
        super(cVar);
        this.f44249i = collectionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44248h = obj;
        this.f44250j |= Integer.MIN_VALUE;
        Object b10 = this.f44249i.b(null, 0, 0, 0, 0, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
