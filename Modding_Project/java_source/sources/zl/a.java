package zl;

import com.yy.mobile.rollingtextview.strategy.Direction;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CharOrderManager.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private am.a f71681a = am.d.b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<LinkedHashSet<Character>> f71682b = new ArrayList();

    public final void a(@NotNull Iterable<Character> orderList) {
        Intrinsics.checkNotNullParameter(orderList, "orderList");
        List t10 = CollectionsKt.t(0);
        CollectionsKt.E(t10, orderList);
        this.f71682b.add(new LinkedHashSet<>(t10));
    }

    public final void b() {
        this.f71681a.b();
    }

    public final void c(@NotNull CharSequence sourceText, @NotNull CharSequence targetText) {
        Intrinsics.checkNotNullParameter(sourceText, "sourceText");
        Intrinsics.checkNotNullParameter(targetText, "targetText");
        this.f71681a.d(sourceText, targetText, this.f71682b);
    }

    @NotNull
    public final Pair<List<Character>, Direction> d(@NotNull CharSequence sourceText, @NotNull CharSequence targetText, int i10) {
        Intrinsics.checkNotNullParameter(sourceText, "sourceText");
        Intrinsics.checkNotNullParameter(targetText, "targetText");
        return this.f71681a.a(sourceText, targetText, i10, this.f71682b);
    }

    @NotNull
    public final am.a e() {
        return this.f71681a;
    }

    @NotNull
    public final b f(@NotNull c previousProgress, int i10, @NotNull List<? extends List<Character>> columns, int i11) {
        Intrinsics.checkNotNullParameter(previousProgress, "previousProgress");
        Intrinsics.checkNotNullParameter(columns, "columns");
        return this.f71681a.c(previousProgress, i10, columns, i11);
    }

    public final void g(@NotNull am.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f71681a = aVar;
    }
}
