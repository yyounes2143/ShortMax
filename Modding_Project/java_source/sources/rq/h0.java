package rq;

import android.content.Context;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class h0 {
    public static final void a(@NotNull View view, @Nullable g0 g0Var) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (g0Var == null) {
            return;
        }
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        int j10 = yq.s.j(context, g0Var.b());
        Context context2 = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "context");
        int j11 = yq.s.j(context2, g0Var.d());
        Context context3 = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "context");
        int j12 = yq.s.j(context3, g0Var.c());
        Context context4 = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context4, "context");
        view.setPadding(j10, j11, j12, yq.s.j(context4, g0Var.a()));
    }
}
