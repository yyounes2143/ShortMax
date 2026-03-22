package io.ktor.http;

import io.ktor.http.e;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.y0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Parameters.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b implements e {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final b f59256c = new b();

    private b() {
    }

    @Override // yr.p
    @Nullable
    public List<String> a(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return null;
    }

    @Override // yr.p
    @NotNull
    public Set<Map.Entry<String, List<String>>> b() {
        return y0.f();
    }

    @Override // yr.p
    public boolean c() {
        return true;
    }

    @Override // yr.p
    public void d(@NotNull Function2<? super String, ? super List<String>, Unit> function2) {
        e.b.a(this, function2);
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof e) && ((e) obj).isEmpty()) {
            return true;
        }
        return false;
    }

    @Override // yr.p
    public boolean isEmpty() {
        return true;
    }

    @Override // yr.p
    @NotNull
    public Set<String> names() {
        return y0.f();
    }

    @NotNull
    public String toString() {
        return "Parameters " + b();
    }
}
