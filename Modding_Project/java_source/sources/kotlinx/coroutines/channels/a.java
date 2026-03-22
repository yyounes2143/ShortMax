package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Channel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channel.kt\nkotlinx/coroutines/channels/ChannelResult\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1485:1\n1#2:1486\n*E\n"})
/* loaded from: classes8.dex */
public final class a<T> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final b f61379b = new b(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final c f61380c = new c();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Object f61381a;

    /* compiled from: Channel.kt */
    @Metadata
    /* renamed from: kotlinx.coroutines.channels.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0855a extends c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final Throwable f61382a;

        public C0855a(@Nullable Throwable th2) {
            this.f61382a = th2;
        }

        public boolean equals(@Nullable Object obj) {
            if ((obj instanceof C0855a) && Intrinsics.areEqual(this.f61382a, ((C0855a) obj).f61382a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            Throwable th2 = this.f61382a;
            if (th2 != null) {
                return th2.hashCode();
            }
            return 0;
        }

        @Override // kotlinx.coroutines.channels.a.c
        @NotNull
        public String toString() {
            return "Closed(" + this.f61382a + ')';
        }
    }

    /* compiled from: Channel.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final <E> Object a(@Nullable Throwable th2) {
            return a.c(new C0855a(th2));
        }

        @NotNull
        public final <E> Object b() {
            return a.c(a.f61380c);
        }

        @NotNull
        public final <E> Object c(E e10) {
            return a.c(e10);
        }

        private b() {
        }
    }

    /* compiled from: Channel.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static class c {
        @NotNull
        public String toString() {
            return "Failed";
        }
    }

    private /* synthetic */ a(Object obj) {
        this.f61381a = obj;
    }

    public static final /* synthetic */ a b(Object obj) {
        return new a(obj);
    }

    public static boolean d(Object obj, Object obj2) {
        if (!(obj2 instanceof a) || !Intrinsics.areEqual(obj, ((a) obj2).k())) {
            return false;
        }
        return true;
    }

    @Nullable
    public static final Throwable e(Object obj) {
        C0855a c0855a;
        if (obj instanceof C0855a) {
            c0855a = (C0855a) obj;
        } else {
            c0855a = null;
        }
        if (c0855a == null) {
            return null;
        }
        return c0855a.f61382a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final T f(Object obj) {
        if (obj instanceof c) {
            return null;
        }
        return obj;
    }

    public static int g(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean h(Object obj) {
        return obj instanceof C0855a;
    }

    public static final boolean i(Object obj) {
        return !(obj instanceof c);
    }

    @NotNull
    public static String j(Object obj) {
        if (obj instanceof C0855a) {
            return ((C0855a) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f61381a, obj);
    }

    public int hashCode() {
        return g(this.f61381a);
    }

    public final /* synthetic */ Object k() {
        return this.f61381a;
    }

    @NotNull
    public String toString() {
        return j(this.f61381a);
    }

    @NotNull
    public static <T> Object c(@Nullable Object obj) {
        return obj;
    }
}
