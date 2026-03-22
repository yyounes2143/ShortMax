package rs;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Continuation.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d {
    @NotNull
    public static final <R, T> c<Unit> a(@NotNull Function2<? super R, ? super c<? super T>, ? extends Object> function2, R r10, @NotNull c<? super T> completion) {
        Intrinsics.checkNotNullParameter(function2, "<this>");
        Intrinsics.checkNotNullParameter(completion, "completion");
        return new f(kotlin.coroutines.intrinsics.a.c(kotlin.coroutines.intrinsics.a.a(function2, r10, completion)), kotlin.coroutines.intrinsics.a.f());
    }

    public static final <R, T> void b(@NotNull Function2<? super R, ? super c<? super T>, ? extends Object> function2, R r10, @NotNull c<? super T> completion) {
        Intrinsics.checkNotNullParameter(function2, "<this>");
        Intrinsics.checkNotNullParameter(completion, "completion");
        c c10 = kotlin.coroutines.intrinsics.a.c(kotlin.coroutines.intrinsics.a.a(function2, r10, completion));
        Result.a aVar = Result.f60901b;
        c10.resumeWith(Result.d(Unit.f60915a));
    }
}
