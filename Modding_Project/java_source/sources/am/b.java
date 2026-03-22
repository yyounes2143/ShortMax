package am;

import com.yy.mobile.rollingtextview.strategy.Direction;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NormalAnimationStrategy.kt */
@Metadata
/* loaded from: classes7.dex */
public class b extends c {
    private final <T> List<T> h(Iterable<? extends T> iterable, int i10, int i11) {
        ArrayList arrayList = new ArrayList();
        int i12 = 0;
        for (T t10 : iterable) {
            int i13 = i12 + 1;
            if (i12 < 0) {
                CollectionsKt.y();
            }
            if (i10 <= i12 && i12 <= i11) {
                arrayList.add(t10);
            }
            i12 = i13;
        }
        return arrayList;
    }

    @Override // am.c
    @NotNull
    public Pair<List<Character>, Direction> e(char c10, char c11, int i10, @Nullable Iterable<Character> iterable) {
        if (c10 == c11) {
            return k.a(CollectionsKt.e(Character.valueOf(c11)), Direction.SCROLL_DOWN);
        }
        if (iterable == null) {
            return k.a(CollectionsKt.q(Character.valueOf(c10), Character.valueOf(c11)), Direction.SCROLL_DOWN);
        }
        int u02 = CollectionsKt.u0(iterable, Character.valueOf(c10));
        int u03 = CollectionsKt.u0(iterable, Character.valueOf(c11));
        if (u02 < u03) {
            return k.a(h(iterable, u02, u03), Direction.SCROLL_DOWN);
        }
        return k.a(CollectionsKt.Y(h(iterable, u03, u02)), Direction.SCROLL_UP);
    }
}
