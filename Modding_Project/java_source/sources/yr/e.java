package yr;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Attributes.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Attributes.kt\nio/ktor/util/AttributesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1855#2,2:115\n*S KotlinDebug\n*F\n+ 1 Attributes.kt\nio/ktor/util/AttributesKt\n*L\n109#1:115,2\n*E\n"})
/* loaded from: classes8.dex */
public final class e {
    public static final void a(@NotNull b bVar, @NotNull b other) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        Iterator<T> it = other.b().iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            Intrinsics.checkNotNull(aVar, "null cannot be cast to non-null type io.ktor.util.AttributeKey<kotlin.Any>");
            bVar.a(aVar, other.d(aVar));
        }
    }
}
