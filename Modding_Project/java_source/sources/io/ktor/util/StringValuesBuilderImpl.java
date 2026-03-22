package io.ktor.util;

import java.util.ArrayList;
import java.util.LinkedHashMap;
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
import yr.h;
import yr.i;
import yr.p;
import yr.q;
/* compiled from: StringValues.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStringValues.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringValues.kt\nio/ktor/util/StringValuesBuilderImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,422:1\n1855#2,2:423\n766#2:425\n857#2,2:426\n515#3:428\n500#3,6:429\n1#4:435\n*S KotlinDebug\n*F\n+ 1 StringValues.kt\nio/ktor/util/StringValuesBuilderImpl\n*L\n248#1:423,2\n258#1:425\n258#1:426,2\n266#1:428\n266#1:429,6\n*E\n"})
/* loaded from: classes8.dex */
public class StringValuesBuilderImpl implements q {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f59293a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, List<String>> f59294b;

    public StringValuesBuilderImpl(boolean z10, int i10) {
        Map<String, List<String>> linkedHashMap;
        this.f59293a = z10;
        if (z10) {
            linkedHashMap = i.a();
        } else {
            linkedHashMap = new LinkedHashMap<>(i10);
        }
        this.f59294b = linkedHashMap;
    }

    private final List<String> g(String str) {
        List<String> list = this.f59294b.get(str);
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            l(str);
            this.f59294b.put(str, arrayList);
            return arrayList;
        }
        return list;
    }

    @Override // yr.q
    @Nullable
    public List<String> a(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.f59294b.get(name);
    }

    @Override // yr.q
    @NotNull
    public Set<Map.Entry<String, List<String>>> b() {
        return h.a(this.f59294b.entrySet());
    }

    @Override // yr.q
    public final boolean c() {
        return this.f59293a;
    }

    @Override // yr.q
    public void clear() {
        this.f59294b.clear();
    }

    @Override // yr.q
    public boolean contains(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.f59294b.containsKey(name);
    }

    @Override // yr.q
    public void d(@NotNull String name, @NotNull Iterable<String> values) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(values, "values");
        List<String> g10 = g(name);
        for (String str : values) {
            m(str);
            g10.add(str);
        }
    }

    @Override // yr.q
    public void e(@NotNull p stringValues) {
        Intrinsics.checkNotNullParameter(stringValues, "stringValues");
        stringValues.d(new Function2<String, List<? extends String>, Unit>() { // from class: io.ktor.util.StringValuesBuilderImpl$appendAll$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            public final void b(@NotNull String name, @NotNull List<String> values) {
                Intrinsics.checkNotNullParameter(name, "name");
                Intrinsics.checkNotNullParameter(values, "values");
                StringValuesBuilderImpl.this.d(name, values);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(String str, List<? extends String> list) {
                b(str, list);
                return Unit.f60915a;
            }
        });
    }

    @Override // yr.q
    public void f(@NotNull String name, @NotNull String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        m(value);
        g(name).add(value);
    }

    @Nullable
    public String h(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        List<String> a10 = a(name);
        if (a10 != null) {
            return (String) CollectionsKt.firstOrNull(a10);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final Map<String, List<String>> i() {
        return this.f59294b;
    }

    @Override // yr.q
    public boolean isEmpty() {
        return this.f59294b.isEmpty();
    }

    public void j(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f59294b.remove(name);
    }

    public void k(@NotNull String name, @NotNull String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        m(value);
        List<String> g10 = g(name);
        g10.clear();
        g10.add(value);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void l(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void m(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
    }

    @Override // yr.q
    @NotNull
    public Set<String> names() {
        return this.f59294b.keySet();
    }
}
