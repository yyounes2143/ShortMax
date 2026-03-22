package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* compiled from: IntervalList.kt */
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public interface IntervalList<T> {

    /* compiled from: IntervalList.kt */
    @StabilityInferred(parameters = 1)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Interval<T> {
        public static final int $stable = 0;
        private final int size;
        private final int startIndex;
        private final T value;

        public Interval(int i10, int i11, T t10) {
            this.startIndex = i10;
            this.size = i11;
            this.value = t10;
            if (i10 >= 0) {
                if (i11 > 0) {
                    return;
                }
                throw new IllegalArgumentException(("size should be >0, but was " + i11).toString());
            }
            throw new IllegalArgumentException(("startIndex should be >= 0, but was " + i10).toString());
        }

        public final int getSize() {
            return this.size;
        }

        public final int getStartIndex() {
            return this.startIndex;
        }

        public final T getValue() {
            return this.value;
        }
    }

    static /* synthetic */ void forEach$default(IntervalList intervalList, int i10, int i11, Function1 function1, int i12, Object obj) {
        if (obj == null) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            if ((i12 & 2) != 0) {
                i11 = intervalList.getSize() - 1;
            }
            intervalList.forEach(i10, i11, function1);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: forEach");
    }

    void forEach(int i10, int i11, @NotNull Function1<? super Interval<T>, Unit> function1);

    @NotNull
    Interval<T> get(int i10);

    int getSize();
}
