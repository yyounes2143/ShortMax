package ar;

import android.content.Context;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.r;
/* compiled from: FileUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f2042a = new a();

    private a() {
    }

    public static final boolean a() {
        return r.n();
    }

    @NotNull
    public static final File b(@Nullable File file) {
        return c(file, "temp");
    }

    @NotNull
    public static final File c(@Nullable File file, @NotNull String tempFilePrefix) {
        Intrinsics.checkNotNullParameter(tempFilePrefix, "tempFilePrefix");
        return b.b(file, tempFilePrefix);
    }

    public static final boolean d(@Nullable File file) {
        return b.c(file);
    }

    @Nullable
    public static final File e(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return b.e(context);
    }

    public static final boolean f(@Nullable File file) {
        return b.g(file);
    }

    public static final boolean g(@NotNull File from, @NotNull File to2) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to2, "to");
        return b.i(from, to2);
    }
}
