package androidx.room;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RoomDatabase.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final /* synthetic */ class RoomDatabase$createConnectionManager$2 extends FunctionReferenceImpl implements Function2<Function1<? super rs.c<? super Object>, ? extends Object>, rs.c<? super Object>, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public RoomDatabase$createConnectionManager$2(Object obj) {
        super(2, obj, RoomDatabaseKt__RoomDatabase_androidKt.class, "compatTransactionCoroutineExecute", "compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 1);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Function1<? super rs.c<? super Object>, ? extends Object> function1, rs.c<? super Object> cVar) {
        return invoke2((Function1<? super rs.c<Object>, ? extends Object>) function1, (rs.c<Object>) cVar);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(Function1<? super rs.c<Object>, ? extends Object> function1, rs.c<Object> cVar) {
        return RoomDatabaseKt.compatTransactionCoroutineExecute((RoomDatabase) this.receiver, function1, cVar);
    }
}
