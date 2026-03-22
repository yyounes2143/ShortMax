package androidx.activity.contextaware;

import android.content.Context;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ContextAware.kt */
@Metadata
@SourceDebugExtension({"SMAP\nContextAware.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextAware.kt\nandroidx/activity/contextaware/ContextAwareKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,94:1\n314#2,11:95\n*S KotlinDebug\n*F\n+ 1 ContextAware.kt\nandroidx/activity/contextaware/ContextAwareKt\n*L\n81#1:95,11\n*E\n"})
/* loaded from: classes.dex */
public final class ContextAwareKt {
    @Nullable
    public static final <R> Object withContextAvailable(@NotNull ContextAware contextAware, @NotNull Function1<Context, R> function1, @NotNull c<R> cVar) {
        Context peekAvailableContext = contextAware.peekAvailableContext();
        if (peekAvailableContext != null) {
            return function1.invoke(peekAvailableContext);
        }
        e eVar = new e(a.c(cVar), 1);
        eVar.H();
        ContextAwareKt$withContextAvailable$2$listener$1 contextAwareKt$withContextAvailable$2$listener$1 = new ContextAwareKt$withContextAvailable$2$listener$1(eVar, function1);
        contextAware.addOnContextAvailableListener(contextAwareKt$withContextAvailable$2$listener$1);
        eVar.u(new ContextAwareKt$withContextAvailable$2$1(contextAware, contextAwareKt$withContextAvailable$2$listener$1));
        Object B = eVar.B();
        if (B == a.f()) {
            f.c(cVar);
        }
        return B;
    }

    private static final <R> Object withContextAvailable$$forInline(ContextAware contextAware, Function1<Context, R> function1, c<R> cVar) {
        Context peekAvailableContext = contextAware.peekAvailableContext();
        if (peekAvailableContext != null) {
            return function1.invoke(peekAvailableContext);
        }
        InlineMarker.mark(0);
        e eVar = new e(a.c(cVar), 1);
        eVar.H();
        ContextAwareKt$withContextAvailable$2$listener$1 contextAwareKt$withContextAvailable$2$listener$1 = new ContextAwareKt$withContextAvailable$2$listener$1(eVar, function1);
        contextAware.addOnContextAvailableListener(contextAwareKt$withContextAvailable$2$listener$1);
        eVar.u(new ContextAwareKt$withContextAvailable$2$1(contextAware, contextAwareKt$withContextAvailable$2$listener$1));
        Unit unit = Unit.f60915a;
        Object B = eVar.B();
        if (B == a.f()) {
            f.c(cVar);
        }
        InlineMarker.mark(1);
        return B;
    }
}
