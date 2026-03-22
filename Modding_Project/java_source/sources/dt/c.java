package dt;

import java.lang.Comparable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Range.kt */
@Metadata
/* loaded from: classes8.dex */
public interface c<T extends Comparable<? super T>> {

    /* compiled from: Range.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public static <T extends Comparable<? super T>> boolean a(@NotNull c<T> cVar, @NotNull T value) {
            Intrinsics.checkNotNullParameter(value, "value");
            if (value.compareTo(cVar.getStart()) >= 0 && value.compareTo(cVar.getEndInclusive()) <= 0) {
                return true;
            }
            return false;
        }

        public static <T extends Comparable<? super T>> boolean b(@NotNull c<T> cVar) {
            if (cVar.getStart().compareTo(cVar.getEndInclusive()) > 0) {
                return true;
            }
            return false;
        }
    }

    @NotNull
    T getEndInclusive();

    @NotNull
    T getStart();

    boolean isEmpty();
}
