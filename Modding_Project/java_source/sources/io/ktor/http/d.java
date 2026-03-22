package io.ktor.http;

import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wr.l;
/* compiled from: HttpMessageProperties.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpMessageProperties.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpMessageProperties.kt\nio/ktor/http/HttpMessagePropertiesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n1#2:173\n1360#3:174\n1446#3,2:175\n1549#3:177\n1620#3,3:178\n1448#3,3:181\n1360#3:184\n1446#3,2:185\n1549#3:187\n1620#3,3:188\n1448#3,3:191\n1360#3:194\n1446#3,5:195\n1549#3:200\n1620#3,3:201\n1549#3:204\n1620#3,3:205\n*S KotlinDebug\n*F\n+ 1 HttpMessageProperties.kt\nio/ktor/http/HttpMessagePropertiesKt\n*L\n64#1:174\n64#1:175,2\n65#1:177\n65#1:178,3\n64#1:181,3\n91#1:184\n91#1:185,2\n92#1:187\n92#1:188,3\n91#1:191,3\n104#1:194\n104#1:195,5\n105#1:200\n105#1:201,3\n112#1:204\n112#1:205,3\n*E\n"})
/* loaded from: classes8.dex */
public final class d {
    @Nullable
    public static final Charset a(@NotNull wr.k kVar) {
        Intrinsics.checkNotNullParameter(kVar, "<this>");
        a c10 = c(kVar);
        if (c10 != null) {
            return wr.a.a(c10);
        }
        return null;
    }

    @Nullable
    public static final Long b(@NotNull wr.k kVar) {
        Intrinsics.checkNotNullParameter(kVar, "<this>");
        String str = kVar.a().get(wr.i.f70141a.g());
        if (str != null) {
            return Long.valueOf(Long.parseLong(str));
        }
        return null;
    }

    @Nullable
    public static final a c(@NotNull wr.k kVar) {
        Intrinsics.checkNotNullParameter(kVar, "<this>");
        String str = kVar.a().get(wr.i.f70141a.i());
        if (str != null) {
            return a.f59220f.b(str);
        }
        return null;
    }

    @Nullable
    public static final a d(@NotNull l lVar) {
        Intrinsics.checkNotNullParameter(lVar, "<this>");
        String h10 = lVar.a().h(wr.i.f70141a.i());
        if (h10 != null) {
            return a.f59220f.b(h10);
        }
        return null;
    }

    public static final void e(@NotNull l lVar, @NotNull a type) {
        Intrinsics.checkNotNullParameter(lVar, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        lVar.a().k(wr.i.f70141a.i(), type.toString());
    }
}
