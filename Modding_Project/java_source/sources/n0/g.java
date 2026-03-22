package n0;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import n0.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Size.kt */
@Metadata
/* loaded from: classes2.dex */
public final class g {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f62722c = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final g f62723d;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final c f62724a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final c f62725b;

    /* compiled from: Size.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static {
        c.b bVar = c.b.f62717a;
        f62723d = new g(bVar, bVar);
    }

    public g(@NotNull c cVar, @NotNull c cVar2) {
        this.f62724a = cVar;
        this.f62725b = cVar2;
    }

    @NotNull
    public final c a() {
        return this.f62725b;
    }

    @NotNull
    public final c b() {
        return this.f62724a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (Intrinsics.areEqual(this.f62724a, gVar.f62724a) && Intrinsics.areEqual(this.f62725b, gVar.f62725b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f62724a.hashCode() * 31) + this.f62725b.hashCode();
    }

    @NotNull
    public String toString() {
        return "Size(width=" + this.f62724a + ", height=" + this.f62725b + ')';
    }
}
