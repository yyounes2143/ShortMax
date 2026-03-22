package m0;

import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Tags.kt */
@Metadata
/* loaded from: classes2.dex */
public final class n {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f62436b = new a(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final n f62437c = new n(p0.i());
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, Object> f62438a;

    /* compiled from: Tags.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final n a(@NotNull Map<Class<?>, ? extends Object> map) {
            return new n(r0.c.b(map), null);
        }

        private a() {
        }
    }

    public /* synthetic */ n(Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(map);
    }

    @NotNull
    public final Map<Class<?>, Object> a() {
        return this.f62438a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof n) && Intrinsics.areEqual(this.f62438a, ((n) obj).f62438a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f62438a.hashCode();
    }

    @NotNull
    public String toString() {
        return "Tags(tags=" + this.f62438a + ')';
    }

    private n(Map<Class<?>, ? extends Object> map) {
        this.f62438a = map;
    }
}
