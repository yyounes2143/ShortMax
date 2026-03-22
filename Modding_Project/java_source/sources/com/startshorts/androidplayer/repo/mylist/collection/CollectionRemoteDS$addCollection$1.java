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
@d(c = "com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS", f = "CollectionRemoteDS.kt", l = {44}, m = "addCollection-hUnOzRk")
/* loaded from: classes7.dex */
public final class CollectionRemoteDS$addCollection$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44200h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CollectionRemoteDS f44201i;

    /* renamed from: j  reason: collision with root package name */
    int f44202j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionRemoteDS$addCollection$1(CollectionRemoteDS collectionRemoteDS, c<? super CollectionRemoteDS$addCollection$1> cVar) {
        super(cVar);
        this.f44201i = collectionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44200h = obj;
        this.f44202j |= Integer.MIN_VALUE;
        Object a10 = this.f44201i.a(null, 0, 0, 0, 0, this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
