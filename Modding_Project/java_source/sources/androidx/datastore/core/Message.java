package androidx.datastore.core;

import gt.p;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Message.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class Message<T> {

    /* compiled from: Message.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Read<T> extends Message<T> {
        @Nullable
        private final State<T> lastState;

        public Read(@Nullable State<T> state) {
            super(null);
            this.lastState = state;
        }

        @Override // androidx.datastore.core.Message
        @Nullable
        public State<T> getLastState() {
            return this.lastState;
        }
    }

    /* compiled from: Message.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Update<T> extends Message<T> {
        @NotNull
        private final p<T> ack;
        @NotNull
        private final CoroutineContext callerContext;
        @Nullable
        private final State<T> lastState;
        @NotNull
        private final Function2<T, c<? super T>, Object> transform;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Update(@NotNull Function2<? super T, ? super c<? super T>, ? extends Object> transform, @NotNull p<T> ack, @Nullable State<T> state, @NotNull CoroutineContext callerContext) {
            super(null);
            Intrinsics.checkNotNullParameter(transform, "transform");
            Intrinsics.checkNotNullParameter(ack, "ack");
            Intrinsics.checkNotNullParameter(callerContext, "callerContext");
            this.transform = transform;
            this.ack = ack;
            this.lastState = state;
            this.callerContext = callerContext;
        }

        @NotNull
        public final p<T> getAck() {
            return this.ack;
        }

        @NotNull
        public final CoroutineContext getCallerContext() {
            return this.callerContext;
        }

        @Override // androidx.datastore.core.Message
        @Nullable
        public State<T> getLastState() {
            return this.lastState;
        }

        @NotNull
        public final Function2<T, c<? super T>, Object> getTransform() {
            return this.transform;
        }
    }

    public /* synthetic */ Message(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Nullable
    public abstract State<T> getLastState();

    private Message() {
    }
}
