package am;

import com.yy.mobile.rollingtextview.strategy.Direction;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import org.jetbrains.annotations.NotNull;
/* compiled from: CharOrderStrategy.kt */
@Metadata
/* loaded from: classes7.dex */
public interface a {
    @NotNull
    Pair<List<Character>, Direction> a(@NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, int i10, @NotNull List<? extends Collection<Character>> list);

    void b();

    @NotNull
    zl.b c(@NotNull zl.c cVar, int i10, @NotNull List<? extends List<Character>> list, int i11);

    void d(@NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull List<? extends Collection<Character>> list);
}
