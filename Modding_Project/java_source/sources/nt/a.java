package nt;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.DispatchException;
import mt.i;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: Cancellable.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCancellable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n1#1,65:1\n45#1,6:66\n45#1,6:72\n45#1,6:78\n*S KotlinDebug\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n15#1:66,6\n25#1:72,6\n34#1:78,6\n*E\n"})
/* loaded from: classes8.dex */
public final class a {
    private static final void a(c<?> cVar, Throwable th2) {
        if (th2 instanceof DispatchException) {
            th2 = ((DispatchException) th2).getCause();
        }
        Result.a aVar = Result.f60901b;
        cVar.resumeWith(Result.d(f.a(th2)));
        throw th2;
    }

    public static final <R, T> void b(@NotNull Function2<? super R, ? super c<? super T>, ? extends Object> function2, R r10, @NotNull c<? super T> cVar) {
        try {
            c c10 = kotlin.coroutines.intrinsics.a.c(kotlin.coroutines.intrinsics.a.a(function2, r10, cVar));
            Result.a aVar = Result.f60901b;
            i.b(c10, Result.d(Unit.f60915a));
        } catch (Throwable th2) {
            a(cVar, th2);
        }
    }

    public static final void c(@NotNull c<? super Unit> cVar, @NotNull c<?> cVar2) {
        try {
            c c10 = kotlin.coroutines.intrinsics.a.c(cVar);
            Result.a aVar = Result.f60901b;
            i.b(c10, Result.d(Unit.f60915a));
        } catch (Throwable th2) {
            a(cVar2, th2);
        }
    }
}
