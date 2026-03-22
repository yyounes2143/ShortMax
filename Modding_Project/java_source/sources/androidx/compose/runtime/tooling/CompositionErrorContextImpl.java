package androidx.compose.runtime.tooling;

import androidx.compose.runtime.ComposerImpl;
import androidx.compose.runtime.changelist.OperationErrorContext;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompositionErrorContext.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class CompositionErrorContextImpl implements CompositionErrorContext, OperationErrorContext, CoroutineContext.Element {
    @NotNull
    private final ComposerImpl composer;
    @NotNull
    public static final Key Key = new Key(null);
    public static final int $stable = 8;

    /* compiled from: CompositionErrorContext.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Key implements CoroutineContext.b<CompositionErrorContextImpl> {
        public /* synthetic */ Key(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public String toString() {
            return "CompositionErrorContext";
        }

        private Key() {
        }
    }

    public CompositionErrorContextImpl(@NotNull ComposerImpl composerImpl) {
        this.composer = composerImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List attachComposeStackTrace$lambda$0(CompositionErrorContextImpl compositionErrorContextImpl, Object obj) {
        return compositionErrorContextImpl.composer.stackTraceForValue$runtime(obj);
    }

    @Override // androidx.compose.runtime.tooling.CompositionErrorContext
    public boolean attachComposeStackTrace(@NotNull Throwable th2, @NotNull final Object obj) {
        return ComposeStackTraceKt.tryAttachComposeStackTrace(th2, new Function0() { // from class: androidx.compose.runtime.tooling.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List attachComposeStackTrace$lambda$0;
                attachComposeStackTrace$lambda$0 = CompositionErrorContextImpl.attachComposeStackTrace$lambda$0(CompositionErrorContextImpl.this, obj);
                return attachComposeStackTrace$lambda$0;
            }
        });
    }

    @Override // androidx.compose.runtime.changelist.OperationErrorContext
    @NotNull
    public List<ComposeStackTraceFrame> buildStackTrace(@Nullable Integer num) {
        return this.composer.parentStackTrace();
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) CoroutineContext.Element.a.a(this, r10, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> bVar) {
        return (E) CoroutineContext.Element.a.b(this, bVar);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public CoroutineContext.b<?> getKey() {
        return Key;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> bVar) {
        return CoroutineContext.Element.a.c(this, bVar);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return CoroutineContext.Element.a.d(this, coroutineContext);
    }
}
