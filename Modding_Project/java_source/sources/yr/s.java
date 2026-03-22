package yr;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: StringValues.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStringValues.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringValues.kt\nio/ktor/util/StringValuesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,422:1\n1855#2,2:423\n1238#2,4:425\n1360#2:429\n1446#2,2:430\n1549#2:432\n1620#2,3:433\n1448#2,3:436\n1855#2:439\n857#2,2:440\n1856#2:442\n1855#2,2:443\n*S KotlinDebug\n*F\n+ 1 StringValues.kt\nio/ktor/util/StringValuesKt\n*L\n330#1:423,2\n338#1:425,4\n343#1:429\n343#1:430,2\n344#1:432\n344#1:433,3\n343#1:436,3\n363#1:439\n364#1:440,2\n363#1:442\n394#1:443,2\n*E\n"})
/* loaded from: classes8.dex */
public final class s {
    @NotNull
    public static final q c(@NotNull q qVar, @NotNull q builder) {
        Intrinsics.checkNotNullParameter(qVar, "<this>");
        Intrinsics.checkNotNullParameter(builder, "builder");
        Iterator<T> it = builder.b().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            qVar.d((String) entry.getKey(), (List) entry.getValue());
        }
        return qVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(Set<? extends Map.Entry<String, ? extends List<String>>> set, Set<? extends Map.Entry<String, ? extends List<String>>> set2) {
        return Intrinsics.areEqual(set, set2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int e(Set<? extends Map.Entry<String, ? extends List<String>>> set, int i10) {
        return (i10 * 31) + set.hashCode();
    }
}
