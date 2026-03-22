package kotlin;

import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Result.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Result<T> implements Serializable {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f60901b = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Object f60902a;

    /* compiled from: Result.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Failure implements Serializable {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final Throwable f60903a;

        public Failure(@NotNull Throwable exception) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            this.f60903a = exception;
        }

        public boolean equals(@Nullable Object obj) {
            if ((obj instanceof Failure) && Intrinsics.areEqual(this.f60903a, ((Failure) obj).f60903a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f60903a.hashCode();
        }

        @NotNull
        public String toString() {
            return "Failure(" + this.f60903a + ')';
        }
    }

    /* compiled from: Result.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private /* synthetic */ Result(Object obj) {
        this.f60902a = obj;
    }

    public static final /* synthetic */ Result b(Object obj) {
        return new Result(obj);
    }

    public static boolean e(Object obj, Object obj2) {
        if (!(obj2 instanceof Result) || !Intrinsics.areEqual(obj, ((Result) obj2).n())) {
            return false;
        }
        return true;
    }

    public static final boolean f(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    @Nullable
    public static final Throwable g(Object obj) {
        if (obj instanceof Failure) {
            return ((Failure) obj).f60903a;
        }
        return null;
    }

    public static int h(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean i(Object obj) {
        return obj instanceof Failure;
    }

    public static final boolean j(Object obj) {
        return !(obj instanceof Failure);
    }

    @NotNull
    public static String k(Object obj) {
        if (obj instanceof Failure) {
            return ((Failure) obj).toString();
        }
        return "Success(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return e(this.f60902a, obj);
    }

    public int hashCode() {
        return h(this.f60902a);
    }

    public final /* synthetic */ Object n() {
        return this.f60902a;
    }

    @NotNull
    public String toString() {
        return k(this.f60902a);
    }

    @NotNull
    public static <T> Object d(@Nullable Object obj) {
        return obj;
    }
}
