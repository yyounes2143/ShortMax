package am;

import com.yy.mobile.rollingtextview.strategy.Direction;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CharOrderStrategy.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class c implements a {
    @Override // am.a
    @NotNull
    public Pair<List<Character>, Direction> a(@NotNull CharSequence sourceText, @NotNull CharSequence targetText, int i10, @NotNull List<? extends Collection<Character>> charPool) {
        char c10;
        Intrinsics.checkNotNullParameter(sourceText, "sourceText");
        Intrinsics.checkNotNullParameter(targetText, "targetText");
        Intrinsics.checkNotNullParameter(charPool, "charPool");
        int max = Math.max(sourceText.length(), targetText.length());
        int length = max - sourceText.length();
        int length2 = max - targetText.length();
        char c11 = 0;
        if (i10 >= length) {
            c10 = sourceText.charAt(i10 - length);
        } else {
            c10 = 0;
        }
        if (i10 >= length2) {
            c11 = targetText.charAt(i10 - length2);
        }
        return f(c10, c11, i10, charPool);
    }

    @Override // am.a
    @NotNull
    public zl.b c(@NotNull zl.c previousProgress, int i10, @NotNull List<? extends List<Character>> columns, int i11) {
        double d10;
        Intrinsics.checkNotNullParameter(previousProgress, "previousProgress");
        Intrinsics.checkNotNullParameter(columns, "columns");
        int size = columns.size();
        List<Character> list = columns.get(i10);
        double g10 = g(previousProgress, i10, size, list);
        double size2 = (list.size() - 1) * previousProgress.a();
        int i12 = (int) size2;
        double d11 = 1.0d / g10;
        double d12 = 1.0d - g10;
        double d13 = d12 * d11;
        double d14 = size2 - i12;
        if (d14 >= d12) {
            d10 = (d14 * d11) - d13;
        } else {
            d10 = 0.0d;
        }
        return new zl.b(i12, d10, previousProgress.a());
    }

    @Override // am.a
    public void d(@NotNull CharSequence sourceText, @NotNull CharSequence targetText, @NotNull List<? extends Collection<Character>> charPool) {
        Intrinsics.checkNotNullParameter(sourceText, "sourceText");
        Intrinsics.checkNotNullParameter(targetText, "targetText");
        Intrinsics.checkNotNullParameter(charPool, "charPool");
    }

    @NotNull
    public abstract Pair<List<Character>, Direction> e(char c10, char c11, int i10, @Nullable Iterable<Character> iterable);

    @NotNull
    public Pair<List<Character>, Direction> f(char c10, char c11, int i10, @NotNull List<? extends Collection<Character>> charPool) {
        Object obj;
        Intrinsics.checkNotNullParameter(charPool, "charPool");
        Iterator<T> it = charPool.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                Collection collection = (Collection) obj;
                if (collection.contains(Character.valueOf(c10)) && collection.contains(Character.valueOf(c11))) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        return e(c10, c11, i10, (Collection) obj);
    }

    public double g(@NotNull zl.c previousProgress, int i10, int i11, @NotNull List<Character> charList) {
        Intrinsics.checkNotNullParameter(previousProgress, "previousProgress");
        Intrinsics.checkNotNullParameter(charList, "charList");
        return 1.0d;
    }

    @Override // am.a
    public void b() {
    }
}
