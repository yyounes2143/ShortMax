package okhttp3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt;
import ms.k;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ts.c;
/* compiled from: Headers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Headers implements Iterable<Pair<? extends String, ? extends String>>, KMappedMarker {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Companion f63454b = new Companion(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String[] f63455a;

    /* compiled from: Headers.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Headers.kt\nokhttp3/Headers$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,458:1\n1#2:459\n37#3,2:460\n*S KotlinDebug\n*F\n+ 1 Headers.kt\nokhttp3/Headers$Builder\n*L\n359#1:460,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Builder {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f63456a = new ArrayList(20);

        @NotNull
        public final Builder a(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            Companion companion = Headers.f63454b;
            companion.d(name);
            companion.e(value, name);
            d(name, value);
            return this;
        }

        @NotNull
        public final Builder b(@NotNull Headers headers) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                d(headers.d(i10), headers.i(i10));
            }
            return this;
        }

        @NotNull
        public final Builder c(@NotNull String line) {
            Intrinsics.checkNotNullParameter(line, "line");
            int p02 = StringsKt.p0(line, ':', 1, false, 4, null);
            if (p02 != -1) {
                String substring = line.substring(0, p02);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                String substring2 = line.substring(p02 + 1);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                d(substring, substring2);
            } else if (line.charAt(0) == ':') {
                String substring3 = line.substring(1);
                Intrinsics.checkNotNullExpressionValue(substring3, "this as java.lang.String).substring(startIndex)");
                d("", substring3);
            } else {
                d("", line);
            }
            return this;
        }

        @NotNull
        public final Builder d(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            this.f63456a.add(name);
            this.f63456a.add(StringsKt.v1(value).toString());
            return this;
        }

        @NotNull
        public final Builder e(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            Headers.f63454b.d(name);
            d(name, value);
            return this;
        }

        @NotNull
        public final Headers f() {
            return new Headers((String[]) this.f63456a.toArray(new String[0]), null);
        }

        @Nullable
        public final String g(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            int size = this.f63456a.size() - 2;
            int b10 = c.b(size, 0, -2);
            if (b10 <= size) {
                while (!StringsKt.G(name, this.f63456a.get(size), true)) {
                    if (size != b10) {
                        size -= 2;
                    } else {
                        return null;
                    }
                }
                return this.f63456a.get(size + 1);
            }
            return null;
        }

        @NotNull
        public final List<String> h() {
            return this.f63456a;
        }

        @NotNull
        public final Builder i(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            int i10 = 0;
            while (i10 < this.f63456a.size()) {
                if (StringsKt.G(name, this.f63456a.get(i10), true)) {
                    this.f63456a.remove(i10);
                    this.f63456a.remove(i10);
                    i10 -= 2;
                }
                i10 += 2;
            }
            return this;
        }

        @NotNull
        public final Builder j(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            Companion companion = Headers.f63454b;
            companion.d(name);
            companion.e(value, name);
            i(name);
            d(name, value);
            return this;
        }
    }

    /* compiled from: Headers.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Headers.kt\nokhttp3/Headers$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,458:1\n1#2:459\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void d(String str) {
            if (str.length() > 0) {
                int length = str.length();
                for (int i10 = 0; i10 < length; i10++) {
                    char charAt = str.charAt(i10);
                    if ('!' > charAt || charAt >= 127) {
                        throw new IllegalArgumentException(Util.t("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i10), str).toString());
                    }
                }
                return;
            }
            throw new IllegalArgumentException("name is empty");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void e(String str, String str2) {
            String str3;
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                char charAt = str.charAt(i10);
                if (charAt != '\t' && (' ' > charAt || charAt >= 127)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(Util.t("Unexpected char %#04x at %d in %s value", Integer.valueOf(charAt), Integer.valueOf(i10), str2));
                    if (Util.H(str2)) {
                        str3 = "";
                    } else {
                        str3 = ": " + str;
                    }
                    sb2.append(str3);
                    throw new IllegalArgumentException(sb2.toString().toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String f(String[] strArr, String str) {
            int length = strArr.length - 2;
            int b10 = c.b(length, 0, -2);
            if (b10 <= length) {
                while (!StringsKt.G(str, strArr[length], true)) {
                    if (length != b10) {
                        length -= 2;
                    } else {
                        return null;
                    }
                }
                return strArr[length + 1];
            }
            return null;
        }

        @NotNull
        public final Headers g(@NotNull Map<String, String> map) {
            Intrinsics.checkNotNullParameter(map, "<this>");
            String[] strArr = new String[map.size() * 2];
            int i10 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String obj = StringsKt.v1(entry.getKey()).toString();
                String obj2 = StringsKt.v1(entry.getValue()).toString();
                d(obj);
                e(obj2, obj);
                strArr[i10] = obj;
                strArr[i10 + 1] = obj2;
                i10 += 2;
            }
            return new Headers(strArr, null);
        }

        @NotNull
        public final Headers h(@NotNull String... namesAndValues) {
            Intrinsics.checkNotNullParameter(namesAndValues, "namesAndValues");
            if (namesAndValues.length % 2 == 0) {
                String[] strArr = (String[]) namesAndValues.clone();
                int length = strArr.length;
                int i10 = 0;
                for (int i11 = 0; i11 < length; i11++) {
                    String str = strArr[i11];
                    if (str != null) {
                        strArr[i11] = StringsKt.v1(str).toString();
                    } else {
                        throw new IllegalArgumentException("Headers cannot be null");
                    }
                }
                int b10 = c.b(0, strArr.length - 1, 2);
                if (b10 >= 0) {
                    while (true) {
                        String str2 = strArr[i10];
                        String str3 = strArr[i10 + 1];
                        d(str2);
                        e(str3, str2);
                        if (i10 == b10) {
                            break;
                        }
                        i10 += 2;
                    }
                }
                return new Headers(strArr, null);
            }
            throw new IllegalArgumentException("Expected alternating header names and values");
        }

        private Companion() {
        }
    }

    public /* synthetic */ Headers(String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(strArr);
    }

    @NotNull
    public static final Headers f(@NotNull String... strArr) {
        return f63454b.h(strArr);
    }

    @Nullable
    public final String a(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return f63454b.f(this.f63455a, name);
    }

    @Nullable
    public final Date c(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        String a10 = a(name);
        if (a10 != null) {
            return DatesKt.a(a10);
        }
        return null;
    }

    @NotNull
    public final String d(int i10) {
        return this.f63455a[i10 * 2];
    }

    @NotNull
    public final Builder e() {
        Builder builder = new Builder();
        CollectionsKt.G(builder.h(), this.f63455a);
        return builder;
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof Headers) && Arrays.equals(this.f63455a, ((Headers) obj).f63455a)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Map<String, List<String>> h() {
        TreeMap treeMap = new TreeMap(StringsKt.I(StringCompanionObject.INSTANCE));
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            String d10 = d(i10);
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = d10.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            List list = (List) treeMap.get(lowerCase);
            if (list == null) {
                list = new ArrayList(2);
                treeMap.put(lowerCase, list);
            }
            list.add(i(i10));
        }
        return treeMap;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f63455a);
    }

    @NotNull
    public final String i(int i10) {
        return this.f63455a[(i10 * 2) + 1];
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Pair<? extends String, ? extends String>> iterator() {
        int size = size();
        Pair[] pairArr = new Pair[size];
        for (int i10 = 0; i10 < size; i10++) {
            pairArr[i10] = k.a(d(i10), i(i10));
        }
        return ArrayIteratorKt.iterator(pairArr);
    }

    @NotNull
    public final List<String> j(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        int size = size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            if (StringsKt.G(name, d(i10), true)) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(i(i10));
            }
        }
        if (arrayList != null) {
            List<String> unmodifiableList = Collections.unmodifiableList(arrayList);
            Intrinsics.checkNotNullExpressionValue(unmodifiableList, "{\n      Collections.unmodifiableList(result)\n    }");
            return unmodifiableList;
        }
        return CollectionsKt.n();
    }

    public final int size() {
        return this.f63455a.length / 2;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            String d10 = d(i10);
            String i11 = i(i10);
            sb2.append(d10);
            sb2.append(": ");
            if (Util.H(d10)) {
                i11 = "██";
            }
            sb2.append(i11);
            sb2.append("\n");
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    private Headers(String[] strArr) {
        this.f63455a = strArr;
    }
}
