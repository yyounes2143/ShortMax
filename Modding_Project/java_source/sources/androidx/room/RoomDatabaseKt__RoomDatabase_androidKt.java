package androidx.room;

import gt.g0;
import gt.t1;
import java.util.Arrays;
import java.util.Set;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoomDatabase.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRoomDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabaseKt__RoomDatabase_androidKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,2191:1\n318#2,11:2192\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabaseKt__RoomDatabase_androidKt\n*L\n2077#1:2192,11\n*E\n"})
/* loaded from: classes2.dex */
public final /* synthetic */ class RoomDatabaseKt__RoomDatabase_androidKt {
    @Nullable
    public static final <R> Object compatTransactionCoroutineExecute(@NotNull RoomDatabase roomDatabase, @NotNull Function1<? super rs.c<? super R>, ? extends Object> function1, @NotNull rs.c<? super R> cVar) {
        if (roomDatabase.inCompatibilityMode() && roomDatabase.isOpenInternal$room_runtime() && roomDatabase.inTransaction()) {
            return function1.invoke(cVar);
        }
        if (cVar.getContext().get(RoomExternalOperationElement.INSTANCE) == null) {
            return function1.invoke(cVar);
        }
        return RoomDatabaseKt.withTransactionContext(roomDatabase, function1, cVar);
    }

    public static final CoroutineContext createTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt(RoomDatabase roomDatabase, kotlin.coroutines.c cVar) {
        CoroutineContext plus = cVar.plus(new TransactionElement(cVar));
        return plus.plus(t1.a(roomDatabase.getSuspendingTransactionContext(), plus));
    }

    @ms.c
    @NotNull
    public static final kt.b<Set<String>> invalidationTrackerFlow(@NotNull RoomDatabase roomDatabase, @NotNull String[] tables, boolean z10) {
        Intrinsics.checkNotNullParameter(roomDatabase, "<this>");
        Intrinsics.checkNotNullParameter(tables, "tables");
        return roomDatabase.getInvalidationTracker().createFlow((String[]) Arrays.copyOf(tables, tables.length), z10);
    }

    public static /* synthetic */ kt.b invalidationTrackerFlow$default(RoomDatabase roomDatabase, String[] strArr, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return RoomDatabaseKt.invalidationTrackerFlow(roomDatabase, strArr, z10);
    }

    public static final <R> Object startTransactionCoroutine$RoomDatabaseKt__RoomDatabase_androidKt(final RoomDatabase roomDatabase, final Function2<? super g0, ? super rs.c<? super R>, ? extends Object> function2, rs.c<? super R> cVar) {
        final kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        try {
            roomDatabase.getTransactionExecutor().execute(new Runnable() { // from class: androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1

                /* compiled from: RoomDatabase.android.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1", f = "RoomDatabase.android.kt", l = {2087}, m = "invokeSuspend")
                /* renamed from: androidx.room.RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
                    final /* synthetic */ gt.i<R> $continuation;
                    final /* synthetic */ RoomDatabase $this_startTransactionCoroutine;
                    final /* synthetic */ Function2<g0, rs.c<? super R>, Object> $transactionBlock;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    AnonymousClass1(RoomDatabase roomDatabase, gt.i<? super R> iVar, Function2<? super g0, ? super rs.c<? super R>, ? extends Object> function2, rs.c<? super AnonymousClass1> cVar) {
                        super(2, cVar);
                        this.$this_startTransactionCoroutine = roomDatabase;
                        this.$continuation = iVar;
                        this.$transactionBlock = function2;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_startTransactionCoroutine, this.$continuation, this.$transactionBlock, cVar);
                        anonymousClass1.L$0 = obj;
                        return anonymousClass1;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
                        return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        CoroutineContext createTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt;
                        rs.c cVar;
                        Object f10 = kotlin.coroutines.intrinsics.a.f();
                        int i10 = this.label;
                        if (i10 != 0) {
                            if (i10 == 1) {
                                cVar = (rs.c) this.L$0;
                                kotlin.f.b(obj);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            kotlin.f.b(obj);
                            CoroutineContext.Element element = ((g0) this.L$0).getCoroutineContext().get(kotlin.coroutines.c.F8);
                            Intrinsics.checkNotNull(element);
                            createTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt = RoomDatabaseKt__RoomDatabase_androidKt.createTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt(this.$this_startTransactionCoroutine, (kotlin.coroutines.c) element);
                            rs.c cVar2 = this.$continuation;
                            Result.a aVar = Result.f60901b;
                            Function2<g0, rs.c<? super R>, Object> function2 = this.$transactionBlock;
                            this.L$0 = cVar2;
                            this.label = 1;
                            obj = gt.e.g(createTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt, function2, this);
                            if (obj == f10) {
                                return f10;
                            }
                            cVar = cVar2;
                        }
                        cVar.resumeWith(Result.d(obj));
                        return Unit.f60915a;
                    }
                }

                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        gt.e.e(eVar.getContext().minusKey(kotlin.coroutines.c.F8), new AnonymousClass1(roomDatabase, eVar, function2, null));
                    } catch (Throwable th2) {
                        eVar.cancel(th2);
                    }
                }
            });
        } catch (RejectedExecutionException e10) {
            eVar.cancel(new IllegalStateException("Unable to acquire a thread to perform the database transaction.", e10));
        }
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    @Nullable
    public static final <R> Object withTransaction(@NotNull RoomDatabase roomDatabase, @NotNull Function1<? super rs.c<? super R>, ? extends Object> function1, @NotNull rs.c<? super R> cVar) {
        return RoomDatabaseKt.withTransactionContext(roomDatabase, new RoomDatabaseKt__RoomDatabase_androidKt$withTransaction$2(roomDatabase, function1, null), cVar);
    }

    @Nullable
    public static final <R> Object withTransactionContext(@NotNull RoomDatabase roomDatabase, @NotNull Function1<? super rs.c<? super R>, ? extends Object> function1, @NotNull rs.c<? super R> cVar) {
        kotlin.coroutines.c cVar2 = null;
        RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 = new RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1(function1, null);
        TransactionElement transactionElement = (TransactionElement) cVar.getContext().get(TransactionElement.Key);
        if (transactionElement != null) {
            cVar2 = transactionElement.getTransactionDispatcher$room_runtime();
        }
        if (cVar2 != null) {
            return gt.e.g(cVar2, roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1, cVar);
        }
        return startTransactionCoroutine$RoomDatabaseKt__RoomDatabase_androidKt(roomDatabase, roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1, cVar);
    }
}
