package yr;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StringValues.kt */
@Metadata
/* loaded from: classes8.dex */
public interface p {

    /* compiled from: StringValues.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nStringValues.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringValues.kt\nio/ktor/util/StringValues$DefaultImpls\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,422:1\n1855#2,2:423\n*S KotlinDebug\n*F\n+ 1 StringValues.kt\nio/ktor/util/StringValues$DefaultImpls\n*L\n68#1:423,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a {
        public static void a(@NotNull p pVar, @NotNull Function2<? super String, ? super List<String>, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Iterator<T> it = pVar.b().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                body.invoke((String) entry.getKey(), (List) entry.getValue());
            }
        }

        @Nullable
        public static String b(@NotNull p pVar, @NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            List<String> a10 = pVar.a(name);
            if (a10 != null) {
                return (String) CollectionsKt.firstOrNull(a10);
            }
            return null;
        }
    }

    @Nullable
    List<String> a(@NotNull String str);

    @NotNull
    Set<Map.Entry<String, List<String>>> b();

    boolean c();

    void d(@NotNull Function2<? super String, ? super List<String>, Unit> function2);

    @Nullable
    String get(@NotNull String str);

    boolean isEmpty();

    @NotNull
    Set<String> names();
}
