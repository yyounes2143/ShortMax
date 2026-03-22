package com.applovin.shadow.okhttp3;

import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okhttp3.internal.http.DatesKt;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
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
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Headers.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Headers implements Iterable<Pair<? extends String, ? extends String>>, KMappedMarker {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final String[] namesAndValues;

    /* compiled from: Headers.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Headers.kt\nokhttp3/Headers$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,458:1\n1#2:459\n37#3,2:460\n*S KotlinDebug\n*F\n+ 1 Headers.kt\nokhttp3/Headers$Builder\n*L\n359#1:460,2\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Builder {
        @NotNull
        private final List<String> namesAndValues = new ArrayList(20);

        @NotNull
        public final Builder add(@NotNull String line) {
            Intrinsics.checkNotNullParameter(line, "line");
            int p02 = StringsKt.p0(line, ':', 0, false, 6, null);
            if (p02 != -1) {
                String substring = line.substring(0, p02);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                String obj = StringsKt.v1(substring).toString();
                String substring2 = line.substring(p02 + 1);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                add(obj, substring2);
                return this;
            }
            throw new IllegalArgumentException(("Unexpected header: " + line).toString());
        }

        @NotNull
        public final Builder addAll(@NotNull Headers headers) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                addLenient$okhttp(headers.name(i10), headers.value(i10));
            }
            return this;
        }

        @NotNull
        public final Builder addLenient$okhttp(@NotNull String line) {
            Intrinsics.checkNotNullParameter(line, "line");
            int p02 = StringsKt.p0(line, ':', 1, false, 4, null);
            if (p02 != -1) {
                String substring = line.substring(0, p02);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                String substring2 = line.substring(p02 + 1);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                addLenient$okhttp(substring, substring2);
            } else if (line.charAt(0) == ':') {
                String substring3 = line.substring(1);
                Intrinsics.checkNotNullExpressionValue(substring3, "this as java.lang.String).substring(startIndex)");
                addLenient$okhttp("", substring3);
            } else {
                addLenient$okhttp("", line);
            }
            return this;
        }

        @NotNull
        public final Builder addUnsafeNonAscii(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            Headers.Companion.checkName(name);
            addLenient$okhttp(name, value);
            return this;
        }

        @NotNull
        public final Headers build() {
            return new Headers((String[]) this.namesAndValues.toArray(new String[0]), null);
        }

        @Nullable
        public final String get(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            int size = this.namesAndValues.size() - 2;
            int b10 = ts.c.b(size, 0, -2);
            if (b10 <= size) {
                while (!StringsKt.G(name, this.namesAndValues.get(size), true)) {
                    if (size != b10) {
                        size -= 2;
                    } else {
                        return null;
                    }
                }
                return this.namesAndValues.get(size + 1);
            }
            return null;
        }

        @NotNull
        public final List<String> getNamesAndValues$okhttp() {
            return this.namesAndValues;
        }

        @NotNull
        public final Builder removeAll(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            int i10 = 0;
            while (i10 < this.namesAndValues.size()) {
                if (StringsKt.G(name, this.namesAndValues.get(i10), true)) {
                    this.namesAndValues.remove(i10);
                    this.namesAndValues.remove(i10);
                    i10 -= 2;
                }
                i10 += 2;
            }
            return this;
        }

        @NotNull
        public final Builder set(@NotNull String name, @NotNull Date value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            set(name, DatesKt.toHttpDateString(value));
            return this;
        }

        @IgnoreJRERequirement
        @NotNull
        public final Builder set(@NotNull String name, @NotNull Instant value) {
            long epochMilli;
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            epochMilli = value.toEpochMilli();
            return set(name, new Date(epochMilli));
        }

        @NotNull
        public final Builder set(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            Companion companion = Headers.Companion;
            companion.checkName(name);
            companion.checkValue(value, name);
            removeAll(name);
            addLenient$okhttp(name, value);
            return this;
        }

        @NotNull
        public final Builder add(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            Companion companion = Headers.Companion;
            companion.checkName(name);
            companion.checkValue(value, name);
            addLenient$okhttp(name, value);
            return this;
        }

        @NotNull
        public final Builder add(@NotNull String name, @NotNull Date value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            add(name, DatesKt.toHttpDateString(value));
            return this;
        }

        @NotNull
        public final Builder addLenient$okhttp(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            this.namesAndValues.add(name);
            this.namesAndValues.add(StringsKt.v1(value).toString());
            return this;
        }

        @IgnoreJRERequirement
        @NotNull
        public final Builder add(@NotNull String name, @NotNull Instant value) {
            long epochMilli;
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            epochMilli = value.toEpochMilli();
            add(name, new Date(epochMilli));
            return this;
        }
    }

    /* compiled from: Headers.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Headers.kt\nokhttp3/Headers$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,458:1\n1#2:459\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkName(String str) {
            if (str.length() > 0) {
                int length = str.length();
                for (int i10 = 0; i10 < length; i10++) {
                    char charAt = str.charAt(i10);
                    if ('!' > charAt || charAt >= 127) {
                        throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i10), str).toString());
                    }
                }
                return;
            }
            throw new IllegalArgumentException("name is empty");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkValue(String str, String str2) {
            String str3;
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                char charAt = str.charAt(i10);
                if (charAt != '\t' && (' ' > charAt || charAt >= 127)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(Util.format("Unexpected char %#04x at %d in %s value", Integer.valueOf(charAt), Integer.valueOf(i10), str2));
                    if (Util.isSensitiveHeader(str2)) {
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
        public final String get(String[] strArr, String str) {
            int length = strArr.length - 2;
            int b10 = ts.c.b(length, 0, -2);
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

        @ms.c
        @NotNull
        /* renamed from: -deprecated_of  reason: not valid java name */
        public final Headers m4518deprecated_of(@NotNull String... namesAndValues) {
            Intrinsics.checkNotNullParameter(namesAndValues, "namesAndValues");
            return of((String[]) Arrays.copyOf(namesAndValues, namesAndValues.length));
        }

        @NotNull
        public final Headers of(@NotNull String... namesAndValues) {
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
                int b10 = ts.c.b(0, strArr.length - 1, 2);
                if (b10 >= 0) {
                    while (true) {
                        String str2 = strArr[i10];
                        String str3 = strArr[i10 + 1];
                        checkName(str2);
                        checkValue(str3, str2);
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

        @ms.c
        @NotNull
        /* renamed from: -deprecated_of  reason: not valid java name */
        public final Headers m4517deprecated_of(@NotNull Map<String, String> headers) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            return of(headers);
        }

        @NotNull
        public final Headers of(@NotNull Map<String, String> map) {
            Intrinsics.checkNotNullParameter(map, "<this>");
            String[] strArr = new String[map.size() * 2];
            int i10 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String obj = StringsKt.v1(entry.getKey()).toString();
                String obj2 = StringsKt.v1(entry.getValue()).toString();
                checkName(obj);
                checkValue(obj2, obj);
                strArr[i10] = obj;
                strArr[i10 + 1] = obj2;
                i10 += 2;
            }
            return new Headers(strArr, null);
        }
    }

    public /* synthetic */ Headers(String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(strArr);
    }

    @NotNull
    public static final Headers of(@NotNull Map<String, String> map) {
        return Companion.of(map);
    }

    @ms.c
    /* renamed from: -deprecated_size  reason: not valid java name */
    public final int m4516deprecated_size() {
        return size();
    }

    public final long byteCount() {
        String[] strArr = this.namesAndValues;
        long length = strArr.length * 2;
        for (int i10 = 0; i10 < strArr.length; i10++) {
            length += this.namesAndValues[i10].length();
        }
        return length;
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof Headers) && Arrays.equals(this.namesAndValues, ((Headers) obj).namesAndValues)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String get(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return Companion.get(this.namesAndValues, name);
    }

    @Nullable
    public final Date getDate(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        String str = get(name);
        if (str != null) {
            return DatesKt.toHttpDateOrNull(str);
        }
        return null;
    }

    @IgnoreJRERequirement
    @Nullable
    public final Instant getInstant(@NotNull String name) {
        Instant instant;
        Intrinsics.checkNotNullParameter(name, "name");
        Date date = getDate(name);
        if (date != null) {
            instant = date.toInstant();
            return instant;
        }
        return null;
    }

    public int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Pair<? extends String, ? extends String>> iterator() {
        int size = size();
        Pair[] pairArr = new Pair[size];
        for (int i10 = 0; i10 < size; i10++) {
            pairArr[i10] = k.a(name(i10), value(i10));
        }
        return ArrayIteratorKt.iterator(pairArr);
    }

    @NotNull
    public final String name(int i10) {
        return this.namesAndValues[i10 * 2];
    }

    @NotNull
    public final Set<String> names() {
        TreeSet treeSet = new TreeSet(StringsKt.I(StringCompanionObject.INSTANCE));
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            treeSet.add(name(i10));
        }
        Set<String> unmodifiableSet = Collections.unmodifiableSet(treeSet);
        Intrinsics.checkNotNullExpressionValue(unmodifiableSet, "unmodifiableSet(result)");
        return unmodifiableSet;
    }

    @NotNull
    public final Builder newBuilder() {
        Builder builder = new Builder();
        CollectionsKt.G(builder.getNamesAndValues$okhttp(), this.namesAndValues);
        return builder;
    }

    public final int size() {
        return this.namesAndValues.length / 2;
    }

    @NotNull
    public final Map<String, List<String>> toMultimap() {
        TreeMap treeMap = new TreeMap(StringsKt.I(StringCompanionObject.INSTANCE));
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            String name = name(i10);
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = name.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            List list = (List) treeMap.get(lowerCase);
            if (list == null) {
                list = new ArrayList(2);
                treeMap.put(lowerCase, list);
            }
            list.add(value(i10));
        }
        return treeMap;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            String name = name(i10);
            String value = value(i10);
            sb2.append(name);
            sb2.append(": ");
            if (Util.isSensitiveHeader(name)) {
                value = "██";
            }
            sb2.append(value);
            sb2.append("\n");
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    @NotNull
    public final String value(int i10) {
        return this.namesAndValues[(i10 * 2) + 1];
    }

    @NotNull
    public final List<String> values(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        int size = size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            if (StringsKt.G(name, name(i10), true)) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(value(i10));
            }
        }
        if (arrayList != null) {
            List<String> unmodifiableList = Collections.unmodifiableList(arrayList);
            Intrinsics.checkNotNullExpressionValue(unmodifiableList, "{\n      Collections.unmodifiableList(result)\n    }");
            return unmodifiableList;
        }
        return CollectionsKt.n();
    }

    private Headers(String[] strArr) {
        this.namesAndValues = strArr;
    }

    @NotNull
    public static final Headers of(@NotNull String... strArr) {
        return Companion.of(strArr);
    }
}
