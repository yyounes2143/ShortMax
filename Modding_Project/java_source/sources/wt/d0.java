package wt;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.internal.JsonException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ut.l;
import ut.m;
import wt.y;
/* compiled from: JsonNamesMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nJsonNamesMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n808#2,11:153\n13409#3,2:164\n1#4:166\n*S KotlinDebug\n*F\n+ 1 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt\n*L\n35#1:153,11\n35#1:164,2\n*E\n"})
/* loaded from: classes8.dex */
public final class d0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final y.a<Map<String, Integer>> f70285a = new y.a<>();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final y.a<String[]> f70286b = new y.a<>();

    private static final Map<String, Integer> b(SerialDescriptor serialDescriptor, kotlinx.serialization.json.a aVar) {
        String str;
        String[] names;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        boolean d10 = d(aVar, serialDescriptor);
        m(serialDescriptor, aVar);
        int e10 = serialDescriptor.e();
        for (int i10 = 0; i10 < e10; i10++) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : serialDescriptor.g(i10)) {
                if (obj instanceof kotlinx.serialization.json.v) {
                    arrayList.add(obj);
                }
            }
            kotlinx.serialization.json.v vVar = (kotlinx.serialization.json.v) CollectionsKt.R0(arrayList);
            if (vVar != null && (names = vVar.names()) != null) {
                for (String str2 : names) {
                    if (d10) {
                        str2 = str2.toLowerCase(Locale.ROOT);
                        Intrinsics.checkNotNullExpressionValue(str2, "toLowerCase(...)");
                    }
                    c(linkedHashMap, serialDescriptor, str2, i10);
                }
            }
            if (d10) {
                str = serialDescriptor.f(i10).toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(str, "toLowerCase(...)");
            } else {
                str = null;
            }
            if (str != null) {
                c(linkedHashMap, serialDescriptor, str, i10);
            }
        }
        if (linkedHashMap.isEmpty()) {
            return kotlin.collections.p0.i();
        }
        return linkedHashMap;
    }

    private static final void c(Map<String, Integer> map, SerialDescriptor serialDescriptor, String str, int i10) {
        String str2;
        if (Intrinsics.areEqual(serialDescriptor.getKind(), l.b.f68627a)) {
            str2 = "enum value";
        } else {
            str2 = "property";
        }
        if (!map.containsKey(str)) {
            map.put(str, Integer.valueOf(i10));
            return;
        }
        throw new JsonException("The suggested name '" + str + "' for " + str2 + ' ' + serialDescriptor.f(i10) + " is already one of the names for " + str2 + ' ' + serialDescriptor.f(((Number) kotlin.collections.p0.j(map, str)).intValue()) + " in " + serialDescriptor);
    }

    private static final boolean d(kotlinx.serialization.json.a aVar, SerialDescriptor serialDescriptor) {
        if (aVar.d().h() && Intrinsics.areEqual(serialDescriptor.getKind(), l.b.f68627a)) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final Map<String, Integer> e(@NotNull final kotlinx.serialization.json.a aVar, @NotNull final SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return (Map) kotlinx.serialization.json.c0.a(aVar).b(descriptor, f70285a, new Function0() { // from class: wt.c0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Map f10;
                f10 = d0.f(SerialDescriptor.this, aVar);
                return f10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map f(SerialDescriptor serialDescriptor, kotlinx.serialization.json.a aVar) {
        return b(serialDescriptor, aVar);
    }

    @NotNull
    public static final y.a<Map<String, Integer>> g() {
        return f70285a;
    }

    @NotNull
    public static final String h(@NotNull SerialDescriptor serialDescriptor, @NotNull kotlinx.serialization.json.a json, int i10) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(json, "json");
        m(serialDescriptor, json);
        return serialDescriptor.f(i10);
    }

    public static final int i(@NotNull SerialDescriptor serialDescriptor, @NotNull kotlinx.serialization.json.a json, @NotNull String name) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(name, "name");
        if (d(json, serialDescriptor)) {
            String lowerCase = name.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            return l(serialDescriptor, json, lowerCase);
        }
        m(serialDescriptor, json);
        int c10 = serialDescriptor.c(name);
        if (c10 != -3) {
            return c10;
        }
        if (!json.d().o()) {
            return c10;
        }
        return l(serialDescriptor, json, name);
    }

    public static final int j(@NotNull SerialDescriptor serialDescriptor, @NotNull kotlinx.serialization.json.a json, @NotNull String name, @NotNull String suffix) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        int i10 = i(serialDescriptor, json, name);
        if (i10 != -3) {
            return i10;
        }
        throw new SerializationException(serialDescriptor.h() + " does not contain element with name '" + name + '\'' + suffix);
    }

    public static /* synthetic */ int k(SerialDescriptor serialDescriptor, kotlinx.serialization.json.a aVar, String str, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = "";
        }
        return j(serialDescriptor, aVar, str, str2);
    }

    private static final int l(SerialDescriptor serialDescriptor, kotlinx.serialization.json.a aVar, String str) {
        Integer num = e(aVar, serialDescriptor).get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Nullable
    public static final kotlinx.serialization.json.w m(@NotNull SerialDescriptor serialDescriptor, @NotNull kotlinx.serialization.json.a json) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(json, "json");
        if (Intrinsics.areEqual(serialDescriptor.getKind(), m.a.f68628a)) {
            json.d().l();
            return null;
        }
        return null;
    }
}
