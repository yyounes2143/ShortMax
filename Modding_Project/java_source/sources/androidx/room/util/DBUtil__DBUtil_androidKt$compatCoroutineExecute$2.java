package androidx.room.util;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: DBUtil.android.kt */
@Metadata
@d(c = "androidx.room.util.DBUtil__DBUtil_androidKt$compatCoroutineExecute$2", f = "DBUtil.android.kt", l = {118}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDBUtil.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtil.android.kt\nandroidx/room/util/DBUtil__DBUtil_androidKt$compatCoroutineExecute$2\n*L\n1#1,259:1\n*E\n"})
/* loaded from: classes2.dex */
public final class DBUtil__DBUtil_androidKt$compatCoroutineExecute$2<R> extends SuspendLambda implements Function2<g0, c<? super R>, Object> {
    final /* synthetic */ Function1<c<? super R>, Object> $block;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DBUtil__DBUtil_androidKt$compatCoroutineExecute$2(Function1<? super c<? super R>, ? extends Object> function1, c<? super DBUtil__DBUtil_androidKt$compatCoroutineExecute$2> cVar) {
        super(2, cVar);
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DBUtil__DBUtil_androidKt$compatCoroutineExecute$2(this.$block, cVar);
    }

    public final Object invoke(g0 g0Var, c<? super R> cVar) {
        return ((DBUtil__DBUtil_androidKt$compatCoroutineExecute$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            Function1<c<? super R>, Object> function1 = this.$block;
            this.label = 1;
            obj = function1.invoke(this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        return this.$block.invoke(this);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Object obj) {
        return invoke(g0Var, (c) ((c) obj));
    }
}
