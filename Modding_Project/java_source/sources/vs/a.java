package vs;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JDK8PlatformImplementations.kt */
@Metadata
/* loaded from: classes8.dex */
public class a extends us.a {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JDK8PlatformImplementations.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nJDK8PlatformImplementations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JDK8PlatformImplementations.kt\nkotlin/internal/jdk8/JDK8PlatformImplementations$ReflectSdkVersion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"})
    /* renamed from: vs.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0954a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0954a f69373a = new C0954a();
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public static final Integer f69374b;

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
                f69374b = num2;
            }
            num = null;
            if (num != null) {
                num2 = num;
            }
            f69374b = num2;
        }

        private C0954a() {
        }
    }

    private final boolean d(int i10) {
        Integer num = C0954a.f69374b;
        if (num != null && num.intValue() < i10) {
            return false;
        }
        return true;
    }

    @Override // ts.a
    @NotNull
    public Random b() {
        if (d(34)) {
            return new ct.a();
        }
        return super.b();
    }
}
