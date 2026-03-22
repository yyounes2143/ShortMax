package androidx.room.util;

import androidx.room.RoomDatabase;
import androidx.sqlite.SQLiteConnection;
import gt.e;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: DBUtil.android.kt */
@Metadata
@d(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1", f = "DBUtil.android.kt", l = {72}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DBUtil__DBUtil_androidKt$performBlocking$1<R> extends SuspendLambda implements Function2<g0, c<? super R>, Object> {
    final /* synthetic */ Function1<SQLiteConnection, R> $block;
    final /* synthetic */ CoroutineContext $context;
    final /* synthetic */ RoomDatabase $db;
    final /* synthetic */ boolean $inTransaction;
    final /* synthetic */ boolean $isReadOnly;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DBUtil.android.kt */
    @Metadata
    @d(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1$1", f = "DBUtil.android.kt", l = {260}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nDBUtil.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$1\n+ 2 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt\n*L\n1#1,259:1\n48#2:260\n67#2:261\n*S KotlinDebug\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$1\n*L\n77#1:260\n77#1:261\n*E\n"})
    /* renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super R>, Object> {
        final /* synthetic */ Function1<SQLiteConnection, R> $block;
        final /* synthetic */ RoomDatabase $db;
        final /* synthetic */ boolean $inTransaction;
        final /* synthetic */ boolean $isReadOnly;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(RoomDatabase roomDatabase, boolean z10, boolean z11, Function1<? super SQLiteConnection, ? extends R> function1, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$db = roomDatabase;
            this.$inTransaction = z10;
            this.$isReadOnly = z11;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.$db, this.$inTransaction, this.$isReadOnly, this.$block, cVar);
        }

        public final Object invoke(g0 g0Var, c<? super R> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            Object f10 = a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                if ((!this.$db.inCompatibilityMode() || !this.$db.inTransaction()) && this.$inTransaction) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                RoomDatabase roomDatabase = this.$db;
                boolean z11 = this.$isReadOnly;
                DBUtil__DBUtil_androidKt$performBlocking$1$1$invokeSuspend$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performBlocking$1$1$invokeSuspend$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performBlocking$1$1$invokeSuspend$$inlined$internalPerform$1(z10, z11, roomDatabase, null, this.$block);
                this.label = 1;
                obj = roomDatabase.useConnection(z11, dBUtil__DBUtil_androidKt$performBlocking$1$1$invokeSuspend$$inlined$internalPerform$1, this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
            return invoke(g0Var, (c) ((c) obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DBUtil__DBUtil_androidKt$performBlocking$1(CoroutineContext coroutineContext, RoomDatabase roomDatabase, boolean z10, boolean z11, Function1<? super SQLiteConnection, ? extends R> function1, c<? super DBUtil__DBUtil_androidKt$performBlocking$1> cVar) {
        super(2, cVar);
        this.$context = coroutineContext;
        this.$db = roomDatabase;
        this.$inTransaction = z10;
        this.$isReadOnly = z11;
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DBUtil__DBUtil_androidKt$performBlocking$1(this.$context, this.$db, this.$inTransaction, this.$isReadOnly, this.$block, cVar);
    }

    public final Object invoke(g0 g0Var, c<? super R> cVar) {
        return ((DBUtil__DBUtil_androidKt$performBlocking$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            CoroutineContext coroutineContext = this.$context;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$db, this.$inTransaction, this.$isReadOnly, this.$block, null);
            this.label = 1;
            obj = e.g(coroutineContext, anonymousClass1, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (c) ((c) obj));
    }
}
