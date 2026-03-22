package bq;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tp.s;
@Metadata
/* loaded from: classes8.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f2808a = new c();

    private c() {
    }

    @NotNull
    public static final b a(@NotNull Context context, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (Intrinsics.areEqual(str, "exo")) {
            s.g("PlayerFactory", "Create player (ExoPlayerImpl)", new Object[0]);
            return new cq.a(context);
        }
        s.g("PlayerFactory", "Create player (MediaPlayerImpl)", new Object[0]);
        return new dq.a(context);
    }
}
