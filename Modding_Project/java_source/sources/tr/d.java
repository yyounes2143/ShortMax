package tr;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpResponsePipeline.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final es.a f67685a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Object f67686b;

    public d(@NotNull es.a expectedType, @NotNull Object response) {
        Intrinsics.checkNotNullParameter(expectedType, "expectedType");
        Intrinsics.checkNotNullParameter(response, "response");
        this.f67685a = expectedType;
        this.f67686b = response;
    }

    @NotNull
    public final es.a a() {
        return this.f67685a;
    }

    @NotNull
    public final Object b() {
        return this.f67686b;
    }

    @NotNull
    public final Object c() {
        return this.f67686b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (Intrinsics.areEqual(this.f67685a, dVar.f67685a) && Intrinsics.areEqual(this.f67686b, dVar.f67686b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f67685a.hashCode() * 31) + this.f67686b.hashCode();
    }

    @NotNull
    public String toString() {
        return "HttpResponseContainer(expectedType=" + this.f67685a + ", response=" + this.f67686b + ')';
    }
}
