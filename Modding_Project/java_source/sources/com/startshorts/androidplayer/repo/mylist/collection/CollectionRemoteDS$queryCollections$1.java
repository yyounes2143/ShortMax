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
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS", f = "CollectionRemoteDS.kt", l = {30}, m = "queryCollections-yxL6bBk")
/* loaded from: classes7.dex */
public final class CollectionRemoteDS$queryCollections$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44229h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CollectionRemoteDS f44230i;

    /* renamed from: j  reason: collision with root package name */
    int f44231j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRemoteDS$queryCollections$1(CollectionRemoteDS collectionRemoteDS, c<? super CollectionRemoteDS$queryCollections$1> cVar) {
        super(cVar);
        this.f44230i = collectionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44229h = obj;
        this.f44231j |= Integer.MIN_VALUE;
        Object f10 = this.f44230i.f(0L, 0, 0, null, this);
        if (f10 == a.f()) {
            return f10;
        }
        return Result.b(f10);
    }
}
