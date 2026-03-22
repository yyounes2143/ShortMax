package com.startshorts.androidplayer.db;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DbManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.db.DbManager", f = "DbManager.kt", l = {29}, m = "getEventDao")
/* loaded from: classes6.dex */
public final class DbManager$getEventDao$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f41471h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DbManager f41472i;

    /* renamed from: j  reason: collision with root package name */
    int f41473j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DbManager$getEventDao$1(DbManager dbManager, c<? super DbManager$getEventDao$1> cVar) {
        super(cVar);
        this.f41472i = dbManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f41471h = obj;
        this.f41473j |= Integer.MIN_VALUE;
        return this.f41472i.b(this);
    }
}
