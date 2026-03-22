package kotlinx.coroutines;

import gt.h0;
import gt.m1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CancellableContinuationImpl.kt */
@Metadata
/* loaded from: classes8.dex */
public interface d extends m1 {

    /* compiled from: CancellableContinuationImpl.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Function1<Throwable, Unit> f61389a;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull Function1<? super Throwable, Unit> function1) {
            this.f61389a = function1;
        }

        @Override // kotlinx.coroutines.d
        public void a(@Nullable Throwable th2) {
            this.f61389a.invoke(th2);
        }

        @NotNull
        public String toString() {
            return "CancelHandler.UserSupplied[" + h0.a(this.f61389a) + '@' + h0.b(this) + ']';
        }
    }

    void a(@Nullable Throwable th2);
}
