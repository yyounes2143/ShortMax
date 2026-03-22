package rq;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class c0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f66020a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, String> f66021b;

    public c0(@NotNull String name, @Nullable Map<String, String> map) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f66020a = name;
        this.f66021b = map;
    }

    @NotNull
    public final String a() {
        return this.f66020a;
    }

    @Nullable
    public final Map<String, String> b() {
        return this.f66021b;
    }
}
