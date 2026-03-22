package j9;

import com.google.firebase.sessions.EventType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SessionEvent.kt */
@Metadata
/* loaded from: classes5.dex */
public final class b0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final EventType f60250a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final h0 f60251b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final b f60252c;

    public b0(@NotNull EventType eventType, @NotNull h0 sessionData, @NotNull b applicationInfo) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(sessionData, "sessionData");
        Intrinsics.checkNotNullParameter(applicationInfo, "applicationInfo");
        this.f60250a = eventType;
        this.f60251b = sessionData;
        this.f60252c = applicationInfo;
    }

    @NotNull
    public final b a() {
        return this.f60252c;
    }

    @NotNull
    public final EventType b() {
        return this.f60250a;
    }

    @NotNull
    public final h0 c() {
        return this.f60251b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b0)) {
            return false;
        }
        b0 b0Var = (b0) obj;
        if (this.f60250a == b0Var.f60250a && Intrinsics.areEqual(this.f60251b, b0Var.f60251b) && Intrinsics.areEqual(this.f60252c, b0Var.f60252c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f60250a.hashCode() * 31) + this.f60251b.hashCode()) * 31) + this.f60252c.hashCode();
    }

    @NotNull
    public String toString() {
        return "SessionEvent(eventType=" + this.f60250a + ", sessionData=" + this.f60251b + ", applicationInfo=" + this.f60252c + ')';
    }
}
