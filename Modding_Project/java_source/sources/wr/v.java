package wr;

import io.ktor.http.CodecsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: UrlDecodedParametersBuilder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUrlDecodedParametersBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UrlDecodedParametersBuilder.kt\nio/ktor/http/UrlDecodedParametersBuilderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n1#2:89\n1855#3:90\n1549#3:91\n1620#3,3:92\n1856#3:95\n1855#3:96\n1549#3:97\n1620#3,3:98\n1856#3:101\n*S KotlinDebug\n*F\n+ 1 UrlDecodedParametersBuilder.kt\nio/ktor/http/UrlDecodedParametersBuilderKt\n*L\n72#1:90\n76#1:91\n76#1:92,3\n72#1:95\n83#1:96\n85#1:97\n85#1:98,3\n83#1:101\n*E\n"})
/* loaded from: classes8.dex */
public final class v {
    public static final /* synthetic */ void a(yr.q qVar, yr.p pVar) {
        c(qVar, pVar);
    }

    private static final void b(yr.q qVar, yr.q qVar2) {
        for (String str : qVar2.names()) {
            List<String> a10 = qVar2.a(str);
            if (a10 == null) {
                a10 = CollectionsKt.n();
            }
            String k10 = CodecsKt.k(str, 0, 0, false, null, 15, null);
            List<String> list = a10;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
            for (String str2 : list) {
                arrayList.add(CodecsKt.k(str2, 0, 0, true, null, 11, null));
            }
            qVar.d(k10, arrayList);
        }
    }

    public static final void c(yr.q qVar, yr.p pVar) {
        for (String str : pVar.names()) {
            List<String> a10 = pVar.a(str);
            if (a10 == null) {
                a10 = CollectionsKt.n();
            }
            String m10 = CodecsKt.m(str, false, 1, null);
            List<String> list = a10;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
            for (String str2 : list) {
                arrayList.add(CodecsKt.n(str2));
            }
            qVar.d(m10, arrayList);
        }
    }

    @NotNull
    public static final io.ktor.http.e d(@NotNull yr.q parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        q b10 = io.ktor.http.f.b(0, 1, null);
        b(b10, parameters);
        return b10.build();
    }

    @NotNull
    public static final q e(@NotNull yr.p parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        q b10 = io.ktor.http.f.b(0, 1, null);
        c(b10, parameters);
        return b10;
    }
}
