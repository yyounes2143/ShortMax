package androidx.privacysandbox.ads.adservices.java.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.e;
import gt.k0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineAdapter.kt */
@Metadata
/* loaded from: classes2.dex */
public final class CoroutineAdapterKt {
    @NotNull
    public static final <T> e<T> asListenableFuture(@NotNull final k0<? extends T> k0Var, @Nullable final Object obj) {
        Intrinsics.checkNotNullParameter(k0Var, "<this>");
        e<T> future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.privacysandbox.ads.adservices.java.internal.a
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object asListenableFuture$lambda$0;
                asListenableFuture$lambda$0 = CoroutineAdapterKt.asListenableFuture$lambda$0(k0.this, obj, completer);
                return asListenableFuture$lambda$0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(future, "getFuture { completer ->…      }\n        tag\n    }");
        return future;
    }

    public static /* synthetic */ e asListenableFuture$default(k0 k0Var, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = "Deferred.asListenableFuture";
        }
        return asListenableFuture(k0Var, obj);
    }

    public static final Object asListenableFuture$lambda$0(final k0 this_asListenableFuture, Object obj, final CallbackToFutureAdapter.Completer completer) {
        Intrinsics.checkNotNullParameter(this_asListenableFuture, "$this_asListenableFuture");
        Intrinsics.checkNotNullParameter(completer, "completer");
        this_asListenableFuture.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt$asListenableFuture$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th2) {
                if (th2 != null) {
                    if (th2 instanceof CancellationException) {
                        completer.setCancelled();
                        return;
                    } else {
                        completer.setException(th2);
                        return;
                    }
                }
                completer.set(this_asListenableFuture.getCompleted());
            }
        });
        return obj;
    }
}
