package androidx.compose.ui;

import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MotionDurationScale.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface MotionDurationScale extends CoroutineContext.Element {
    @NotNull
    public static final Key Key = Key.$$INSTANCE;

    /* compiled from: MotionDurationScale.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static <R> R fold(@NotNull MotionDurationScale motionDurationScale, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) CoroutineContext.Element.a.a(motionDurationScale, r10, operation);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E get(@NotNull MotionDurationScale motionDurationScale, @NotNull CoroutineContext.b<E> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return (E) CoroutineContext.Element.a.b(motionDurationScale, key);
        }

        @NotNull
        public static CoroutineContext minusKey(@NotNull MotionDurationScale motionDurationScale, @NotNull CoroutineContext.b<?> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return CoroutineContext.Element.a.c(motionDurationScale, key);
        }

        @NotNull
        public static CoroutineContext plus(@NotNull MotionDurationScale motionDurationScale, @NotNull CoroutineContext context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return CoroutineContext.Element.a.d(motionDurationScale, context);
        }
    }

    /* compiled from: MotionDurationScale.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Key implements CoroutineContext.b<MotionDurationScale> {
        static final /* synthetic */ Key $$INSTANCE = new Key();

        private Key() {
        }
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    /* synthetic */ Object fold(Object obj, @NotNull Function2 function2);

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    /* synthetic */ CoroutineContext.Element get(@NotNull CoroutineContext.b bVar);

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    default CoroutineContext.b<?> getKey() {
        return Key;
    }

    float getScaleFactor();

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    /* synthetic */ CoroutineContext minusKey(@NotNull CoroutineContext.b bVar);

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    /* synthetic */ CoroutineContext plus(@NotNull CoroutineContext coroutineContext);
}
