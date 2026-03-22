package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.jetbrains.annotations.NotNull;
import ut.l;
/* compiled from: SerialDescriptor.kt */
@Metadata
/* loaded from: classes8.dex */
public interface SerialDescriptor {

    /* compiled from: SerialDescriptor.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull
        public static List<Annotation> a(@NotNull SerialDescriptor serialDescriptor) {
            return CollectionsKt.n();
        }

        public static boolean b(@NotNull SerialDescriptor serialDescriptor) {
            return false;
        }

        public static boolean c(@NotNull SerialDescriptor serialDescriptor) {
            return false;
        }
    }

    boolean b();

    int c(@NotNull String str);

    @NotNull
    SerialDescriptor d(int i10);

    int e();

    @NotNull
    String f(int i10);

    @NotNull
    List<Annotation> g(int i10);

    @NotNull
    List<Annotation> getAnnotations();

    @NotNull
    l getKind();

    @NotNull
    String h();

    boolean i(int i10);

    boolean isInline();
}
