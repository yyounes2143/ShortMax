package q0;

import kotlin.Metadata;
import m0.g;
import m0.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import q0.c;
/* compiled from: NoneTransition.kt */
@Metadata
/* loaded from: classes2.dex */
public final class b implements c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final d f65016a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final g f65017b;

    /* compiled from: NoneTransition.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a implements c.a {
        @Override // q0.c.a
        @NotNull
        public c a(@NotNull d dVar, @NotNull g gVar) {
            return new b(dVar, gVar);
        }

        public boolean equals(@Nullable Object obj) {
            return obj instanceof a;
        }

        public int hashCode() {
            return a.class.hashCode();
        }
    }

    public b(@NotNull d dVar, @NotNull g gVar) {
        this.f65016a = dVar;
        this.f65017b = gVar;
    }

    @Override // q0.c
    public void a() {
        g gVar = this.f65017b;
        if (gVar instanceof m) {
            this.f65016a.b(((m) gVar).a());
        } else if (gVar instanceof m0.d) {
            this.f65016a.d(gVar.a());
        }
    }
}
