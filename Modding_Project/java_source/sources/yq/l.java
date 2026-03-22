package yq;

import androidx.annotation.CallSuper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SafeExecutable.kt */
@Metadata
/* loaded from: classes8.dex */
public interface l<T> extends d<T> {
    void a(T t10) throws Throwable;

    default void b(@NotNull Throwable throwable) throws Throwable {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
    }

    @Override // yq.d
    @CallSuper
    default void execute(T t10) {
        try {
            a(t10);
        } catch (Throwable th2) {
            try {
                b(th2);
                Unit unit = Unit.f60915a;
            } catch (Throwable unused) {
            }
        }
    }
}
