package ts;

import java.lang.reflect.Method;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlatformImplementations.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPlatformImplementations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlatformImplementations.kt\nkotlin/internal/PlatformImplementations\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"})
/* loaded from: classes8.dex */
public class a {

    /* compiled from: PlatformImplementations.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nPlatformImplementations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlatformImplementations.kt\nkotlin/internal/PlatformImplementations$ReflectThrowable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"})
    /* renamed from: ts.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    private static final class C0937a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0937a f67694a = new C0937a();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public static final Method f67695b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public static final Method f67696c;

        static {
            Method method;
            Method method2;
            Method[] methods = Throwable.class.getMethods();
            Intrinsics.checkNotNull(methods);
            int length = methods.length;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                method = null;
                if (i11 < length) {
                    method2 = methods[i11];
                    if (Intrinsics.areEqual(method2.getName(), "addSuppressed")) {
                        Class<?>[] parameterTypes = method2.getParameterTypes();
                        Intrinsics.checkNotNullExpressionValue(parameterTypes, "getParameterTypes(...)");
                        if (Intrinsics.areEqual(n.g1(parameterTypes), Throwable.class)) {
                            break;
                        }
                    }
                    i11++;
                } else {
                    method2 = null;
                    break;
                }
            }
            f67695b = method2;
            int length2 = methods.length;
            while (true) {
                if (i10 >= length2) {
                    break;
                }
                Method method3 = methods[i10];
                if (Intrinsics.areEqual(method3.getName(), "getSuppressed")) {
                    method = method3;
                    break;
                }
                i10++;
            }
            f67696c = method;
        }

        private C0937a() {
        }
    }

    public void a(@NotNull Throwable cause, @NotNull Throwable exception) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        Intrinsics.checkNotNullParameter(exception, "exception");
        Method method = C0937a.f67695b;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }

    @NotNull
    public Random b() {
        return new kotlin.random.b();
    }

    @NotNull
    public List<Throwable> c(@NotNull Throwable exception) {
        Object invoke;
        List<Throwable> g10;
        Intrinsics.checkNotNullParameter(exception, "exception");
        Method method = C0937a.f67696c;
        if (method == null || (invoke = method.invoke(exception, new Object[0])) == null || (g10 = n.g((Throwable[]) invoke)) == null) {
            return CollectionsKt.n();
        }
        return g10;
    }
}
