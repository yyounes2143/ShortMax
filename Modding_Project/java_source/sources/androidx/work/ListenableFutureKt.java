package androidx.work;

import androidx.annotation.RestrictTo;
import com.google.common.util.concurrent.e;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ListenableFuture.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ListenableFutureKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public static final <R> Object await(@NotNull e<R> eVar, @NotNull c<? super R> cVar) {
        if (eVar.isDone()) {
            try {
                return eVar.get();
            } catch (ExecutionException e10) {
                Throwable cause = e10.getCause();
                if (cause == null) {
                    throw e10;
                }
                throw cause;
            }
        }
        kotlinx.coroutines.e eVar2 = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar2.H();
        eVar.addListener(new ListenableFutureKt$await$2$1(eVar2, eVar), DirectExecutor.INSTANCE);
        eVar2.u(new ListenableFutureKt$await$2$2(eVar));
        Object B = eVar2.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            f.c(cVar);
        }
        return B;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    private static final <R> Object await$$forInline(e<R> eVar, c<? super R> cVar) {
        if (eVar.isDone()) {
            try {
                return eVar.get();
            } catch (ExecutionException e10) {
                Throwable cause = e10.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw e10;
            }
        }
        InlineMarker.mark(0);
        kotlinx.coroutines.e eVar2 = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar2.H();
        eVar.addListener(new ListenableFutureKt$await$2$1(eVar2, eVar), DirectExecutor.INSTANCE);
        eVar2.u(new ListenableFutureKt$await$2$2(eVar));
        Unit unit = Unit.f60915a;
        Object B = eVar2.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            f.c(cVar);
        }
        InlineMarker.mark(1);
        return B;
    }
}
