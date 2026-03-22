package gt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineName.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f0 extends kotlin.coroutines.a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f52534b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f52535a;

    /* compiled from: CoroutineName.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements CoroutineContext.b<f0> {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public f0(@NotNull String str) {
        super(f52534b);
        this.f52535a = str;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof f0) && Intrinsics.areEqual(this.f52535a, ((f0) obj).f52535a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f52535a.hashCode();
    }

    @NotNull
    public final String m() {
        return this.f52535a;
    }

    @NotNull
    public String toString() {
        return "CoroutineName(" + this.f52535a + ')';
    }
}
