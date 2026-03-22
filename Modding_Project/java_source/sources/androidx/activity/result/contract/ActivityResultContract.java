package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActivityResultContract.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class ActivityResultContract<I, O> {

    /* compiled from: ActivityResultContract.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class SynchronousResult<T> {
        private final T value;

        public SynchronousResult(T t10) {
            this.value = t10;
        }

        public final T getValue() {
            return this.value;
        }
    }

    @NotNull
    public abstract Intent createIntent(@NotNull Context context, I i10);

    @Nullable
    public SynchronousResult<O> getSynchronousResult(@NotNull Context context, I i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        return null;
    }

    public abstract O parseResult(int i10, @Nullable Intent intent);
}
