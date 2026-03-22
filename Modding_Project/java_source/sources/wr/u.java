package wr;

import io.ktor.http.CodecsKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UrlDecodedParametersBuilder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUrlDecodedParametersBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UrlDecodedParametersBuilder.kt\nio/ktor/http/UrlDecodedParametersBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n1549#2:89\n1620#2,3:90\n1549#2:93\n1620#2,3:94\n1549#2:97\n1620#2,3:98\n1549#2:101\n1620#2,3:102\n*S KotlinDebug\n*F\n+ 1 UrlDecodedParametersBuilder.kt\nio/ktor/http/UrlDecodedParametersBuilder\n*L\n18#1:89\n18#1:90,3\n26#1:93\n26#1:94,3\n44#1:97\n44#1:98,3\n50#1:101\n50#1:102,3\n*E\n"})
/* loaded from: classes8.dex */
public final class u implements q {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final q f70244a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f70245b;

    public u(@NotNull q encodedParametersBuilder) {
        Intrinsics.checkNotNullParameter(encodedParametersBuilder, "encodedParametersBuilder");
        this.f70244a = encodedParametersBuilder;
        this.f70245b = encodedParametersBuilder.c();
    }

    @Override // yr.q
    @Nullable
    public List<String> a(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        ArrayList arrayList = null;
        List<String> a10 = this.f70244a.a(CodecsKt.m(name, false, 1, null));
        if (a10 != null) {
            List<String> list = a10;
            arrayList = new ArrayList(CollectionsKt.z(list, 10));
            for (String str : list) {
                arrayList.add(CodecsKt.k(str, 0, 0, true, null, 11, null));
            }
        }
        return arrayList;
    }

    @Override // yr.q
    @NotNull
    public Set<Map.Entry<String, List<String>>> b() {
        return v.d(this.f70244a).b();
    }

    @Override // wr.q
    @NotNull
    public io.ktor.http.e build() {
        return v.d(this.f70244a);
    }

    @Override // yr.q
    public boolean c() {
        return this.f70245b;
    }

    @Override // yr.q
    public void clear() {
        this.f70244a.clear();
    }

    @Override // yr.q
    public boolean contains(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.f70244a.contains(CodecsKt.m(name, false, 1, null));
    }

    @Override // yr.q
    public void d(@NotNull String name, @NotNull Iterable<String> values) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(values, "values");
        q qVar = this.f70244a;
        String m10 = CodecsKt.m(name, false, 1, null);
        ArrayList arrayList = new ArrayList(CollectionsKt.z(values, 10));
        for (String str : values) {
            arrayList.add(CodecsKt.n(str));
        }
        qVar.d(m10, arrayList);
    }

    @Override // yr.q
    public void e(@NotNull yr.p stringValues) {
        Intrinsics.checkNotNullParameter(stringValues, "stringValues");
        v.a(this.f70244a, stringValues);
    }

    @Override // yr.q
    public void f(@NotNull String name, @NotNull String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f70244a.f(CodecsKt.m(name, false, 1, null), CodecsKt.n(value));
    }

    @Override // yr.q
    public boolean isEmpty() {
        return this.f70244a.isEmpty();
    }

    @Override // yr.q
    @NotNull
    public Set<String> names() {
        Set<String> names = this.f70244a.names();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(names, 10));
        for (String str : names) {
            arrayList.add(CodecsKt.k(str, 0, 0, false, null, 15, null));
        }
        return CollectionsKt.i1(arrayList);
    }
}
