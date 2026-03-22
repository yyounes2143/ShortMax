package am;

import com.yy.mobile.rollingtextview.strategy.Direction;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Strategy.kt */
@Metadata
/* loaded from: classes7.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d f693a = new d();

    /* compiled from: Strategy.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends c {
        a() {
        }

        @Override // am.c
        @NotNull
        public Pair<List<Character>, Direction> e(char c10, char c11, int i10, @Nullable Iterable<Character> iterable) {
            return k.a(CollectionsKt.e(Character.valueOf(c11)), Direction.SCROLL_DOWN);
        }
    }

    private d() {
    }

    @NotNull
    public static final am.a a() {
        return new a();
    }

    @NotNull
    public static final am.a b() {
        return new b();
    }
}
