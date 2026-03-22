package androidx.core.util;

import android.annotation.SuppressLint;
import android.util.Range;
import androidx.annotation.RequiresApi;
import dt.c;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Range.kt */
@Metadata
@SuppressLint({"ClassVerificationFailure"})
/* loaded from: classes.dex */
public final class RangeKt {
    @RequiresApi(21)
    @NotNull
    public static final <T extends Comparable<? super T>> Range<T> and(@NotNull Range<T> range, @NotNull Range<T> range2) {
        return range.intersect(range2);
    }

    @RequiresApi(21)
    @NotNull
    public static final <T extends Comparable<? super T>> Range<T> plus(@NotNull Range<T> range, @NotNull T t10) {
        return range.extend((Range<T>) t10);
    }

    @RequiresApi(21)
    @NotNull
    public static final <T extends Comparable<? super T>> Range<T> rangeTo(@NotNull T t10, @NotNull T t11) {
        return new Range<>(t10, t11);
    }

    @RequiresApi(21)
    @NotNull
    public static final <T extends Comparable<? super T>> dt.c<T> toClosedRange(@NotNull final Range<T> range) {
        return (dt.c<T>) new dt.c<T>() { // from class: androidx.core.util.RangeKt$toClosedRange$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Z */
            public boolean contains(@NotNull Comparable comparable) {
                return c.a.a(this, comparable);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Comparable] */
            @Override // dt.c
            public Comparable getEndInclusive() {
                return range.getUpper();
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Comparable] */
            @Override // dt.c
            public Comparable getStart() {
                return range.getLower();
            }

            @Override // dt.c
            public boolean isEmpty() {
                return c.a.b(this);
            }
        };
    }

    @RequiresApi(21)
    @NotNull
    public static final <T extends Comparable<? super T>> Range<T> toRange(@NotNull dt.c<T> cVar) {
        return new Range<>(cVar.getStart(), cVar.getEndInclusive());
    }

    @RequiresApi(21)
    @NotNull
    public static final <T extends Comparable<? super T>> Range<T> plus(@NotNull Range<T> range, @NotNull Range<T> range2) {
        return range.extend(range2);
    }
}
