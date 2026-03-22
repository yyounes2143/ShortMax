package rq;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class t {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f66124b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f66125a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final t a(@NotNull Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            String message = throwable.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            return new t(message);
        }

        private a() {
        }
    }

    public t(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.f66125a = message;
    }

    @NotNull
    public static final t a(@NotNull Throwable th2) {
        return f66124b.a(th2);
    }

    @NotNull
    public final String b() {
        return this.f66125a;
    }

    @NotNull
    public String toString() {
        return this.f66125a;
    }
}
