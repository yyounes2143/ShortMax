package us;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JDK7PlatformImplementations.kt */
@Metadata
/* loaded from: classes8.dex */
public class a extends ts.a {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JDK7PlatformImplementations.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nJDK7PlatformImplementations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JDK7PlatformImplementations.kt\nkotlin/internal/jdk7/JDK7PlatformImplementations$ReflectSdkVersion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,38:1\n1#2:39\n*E\n"})
    /* renamed from: us.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0944a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0944a f68595a = new C0944a();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public static final Integer f68596b;

        static {
            Integer num;
            Object obj;
            Integer num2 = null;
            try {
                obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Throwable unused) {
            }
            if (obj instanceof Integer) {
                num = (Integer) obj;
                if (num != null && num.intValue() > 0) {
                    num2 = num;
                }
                f68596b = num2;
            }
            num = null;
            if (num != null) {
                num2 = num;
            }
            f68596b = num2;
        }

        private C0944a() {
        }
    }

    private final boolean d(int i10) {
        Integer num = C0944a.f68596b;
        if (num != null && num.intValue() < i10) {
            return false;
        }
        return true;
    }

    @Override // ts.a
    public void a(@NotNull Throwable cause, @NotNull Throwable exception) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        Intrinsics.checkNotNullParameter(exception, "exception");
        if (d(19)) {
            cause.addSuppressed(exception);
        } else {
            super.a(cause, exception);
        }
    }

    @Override // ts.a
    @NotNull
    public List<Throwable> c(@NotNull Throwable exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        if (d(19)) {
            Throwable[] suppressed = exception.getSuppressed();
            Intrinsics.checkNotNullExpressionValue(suppressed, "getSuppressed(...)");
            return n.g(suppressed);
        }
        return super.c(exception);
    }
}
