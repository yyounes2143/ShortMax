package androidx.room;

import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.m0;
import kotlin.collections.y0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AmbiguousColumnResolver.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@SourceDebugExtension({"SMAP\nAmbiguousColumnResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmbiguousColumnResolver.kt\nandroidx/room/AmbiguousColumnResolver\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,270:1\n37#2:271\n36#2,3:272\n37#2:297\n36#2,3:298\n1#3:275\n13472#4,2:276\n13537#4,3:278\n13537#4,2:281\n11228#4:283\n11563#4,2:284\n11565#4:288\n13539#4:289\n11228#4:303\n11563#4,2:304\n11565#4:308\n1869#5,2:286\n1740#5,3:290\n1563#5:293\n1634#5,3:294\n1869#5,2:301\n295#5,2:306\n*S KotlinDebug\n*F\n+ 1 AmbiguousColumnResolver.kt\nandroidx/room/AmbiguousColumnResolver\n*L\n65#1:271\n65#1:272,3\n171#1:297\n171#1:298,3\n102#1:276,2\n104#1:278,3\n113#1:281,2\n138#1:283\n138#1:284,2\n138#1:288\n113#1:289\n120#1:303\n120#1:304,2\n120#1:308\n140#1:286,2\n161#1:290,3\n171#1:293\n171#1:294,3\n208#1:301,2\n122#1:306,2\n*E\n"})
/* loaded from: classes2.dex */
public final class AmbiguousColumnResolver {
    @NotNull
    public static final AmbiguousColumnResolver INSTANCE = new AmbiguousColumnResolver();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AmbiguousColumnResolver.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Match {
        @NotNull
        private final List<Integer> resultIndices;
        @NotNull
        private final IntRange resultRange;

        public Match(@NotNull IntRange resultRange, @NotNull List<Integer> resultIndices) {
            Intrinsics.checkNotNullParameter(resultRange, "resultRange");
            Intrinsics.checkNotNullParameter(resultIndices, "resultIndices");
            this.resultRange = resultRange;
            this.resultIndices = resultIndices;
        }

        @NotNull
        public final List<Integer> getResultIndices() {
            return this.resultIndices;
        }

        @NotNull
        public final IntRange getResultRange() {
            return this.resultRange;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AmbiguousColumnResolver.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class ResultColumn {
        private final int index;
        @NotNull
        private final String name;

        public ResultColumn(@NotNull String name, int i10) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            this.index = i10;
        }

        public static /* synthetic */ ResultColumn copy$default(ResultColumn resultColumn, String str, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                str = resultColumn.name;
            }
            if ((i11 & 2) != 0) {
                i10 = resultColumn.index;
            }
            return resultColumn.copy(str, i10);
        }

        @NotNull
        public final String component1() {
            return this.name;
        }

        public final int component2() {
            return this.index;
        }

        @NotNull
        public final ResultColumn copy(@NotNull String name, int i10) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new ResultColumn(name, i10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ResultColumn)) {
                return false;
            }
            ResultColumn resultColumn = (ResultColumn) obj;
            if (Intrinsics.areEqual(this.name, resultColumn.name) && this.index == resultColumn.index) {
                return true;
            }
            return false;
        }

        public final int getIndex() {
            return this.index;
        }

        @NotNull
        public final String getName() {
            return this.name;
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + Integer.hashCode(this.index);
        }

        @NotNull
        public String toString() {
            return "ResultColumn(name=" + this.name + ", index=" + this.index + ')';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AmbiguousColumnResolver.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Solution implements Comparable<Solution> {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private static final Solution NO_SOLUTION = new Solution(CollectionsKt.n(), Integer.MAX_VALUE, Integer.MAX_VALUE);
        private final int coverageOffset;
        @NotNull
        private final List<Match> matches;
        private final int overlaps;

        /* compiled from: AmbiguousColumnResolver.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nAmbiguousColumnResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmbiguousColumnResolver.kt\nandroidx/room/AmbiguousColumnResolver$Solution$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,270:1\n1#2:271\n1788#3,3:272\n1869#3,2:275\n1791#3:277\n*S KotlinDebug\n*F\n+ 1 AmbiguousColumnResolver.kt\nandroidx/room/AmbiguousColumnResolver$Solution$Companion\n*L\n249#1:272,3\n251#1:275,2\n249#1:277\n*E\n"})
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final Solution build(@NotNull List<Match> matches) {
                Intrinsics.checkNotNullParameter(matches, "matches");
                List<Match> list = matches;
                int i10 = 0;
                int i11 = 0;
                for (Match match : list) {
                    i11 += ((match.getResultRange().d() - match.getResultRange().c()) + 1) - match.getResultIndices().size();
                }
                Iterator<T> it = list.iterator();
                if (it.hasNext()) {
                    int c10 = ((Match) it.next()).getResultRange().c();
                    while (it.hasNext()) {
                        int c11 = ((Match) it.next()).getResultRange().c();
                        if (c10 > c11) {
                            c10 = c11;
                        }
                    }
                    Iterator<T> it2 = list.iterator();
                    if (it2.hasNext()) {
                        int d10 = ((Match) it2.next()).getResultRange().d();
                        while (it2.hasNext()) {
                            int d11 = ((Match) it2.next()).getResultRange().d();
                            if (d10 < d11) {
                                d10 = d11;
                            }
                        }
                        IntRange intRange = new IntRange(c10, d10);
                        if (!(intRange instanceof Collection) || !((Collection) intRange).isEmpty()) {
                            Iterator<Integer> it3 = intRange.iterator();
                            int i12 = 0;
                            while (it3.hasNext()) {
                                int nextInt = ((m0) it3).nextInt();
                                Iterator<T> it4 = list.iterator();
                                int i13 = 0;
                                while (true) {
                                    if (!it4.hasNext()) {
                                        break;
                                    }
                                    if (((Match) it4.next()).getResultRange().i(nextInt)) {
                                        i13++;
                                        continue;
                                    }
                                    if (i13 > 1) {
                                        i12++;
                                        if (i12 < 0) {
                                            CollectionsKt.x();
                                        }
                                    }
                                }
                            }
                            i10 = i12;
                        }
                        return new Solution(matches, i11, i10);
                    }
                    throw new NoSuchElementException();
                }
                throw new NoSuchElementException();
            }

            @NotNull
            public final Solution getNO_SOLUTION() {
                return Solution.NO_SOLUTION;
            }

            private Companion() {
            }
        }

        public Solution(@NotNull List<Match> matches, int i10, int i11) {
            Intrinsics.checkNotNullParameter(matches, "matches");
            this.matches = matches;
            this.coverageOffset = i10;
            this.overlaps = i11;
        }

        public final int getCoverageOffset() {
            return this.coverageOffset;
        }

        @NotNull
        public final List<Match> getMatches() {
            return this.matches;
        }

        public final int getOverlaps() {
            return this.overlaps;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NotNull Solution other) {
            Intrinsics.checkNotNullParameter(other, "other");
            int compare = Intrinsics.compare(this.overlaps, other.overlaps);
            return compare != 0 ? compare : Intrinsics.compare(this.coverageOffset, other.coverageOffset);
        }
    }

    private AmbiguousColumnResolver() {
    }

    private final <T> void dfs(List<? extends List<? extends T>> list, List<T> list2, int i10, Function1<? super List<? extends T>, Unit> function1) {
        if (i10 == list.size()) {
            function1.invoke(CollectionsKt.d1(list2));
            return;
        }
        for (T t10 : list.get(i10)) {
            list2.add(t10);
            INSTANCE.dfs(list, list2, i10 + 1, function1);
            list2.remove(CollectionsKt.p(list2));
        }
    }

    static /* synthetic */ void dfs$default(AmbiguousColumnResolver ambiguousColumnResolver, List list, List list2, int i10, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            list2 = new ArrayList();
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        ambiguousColumnResolver.dfs(list, list2, i10, function1);
    }

    private final void rabinKarpSearch(List<ResultColumn> list, String[] strArr, at.n<? super Integer, ? super Integer, ? super List<ResultColumn>, Unit> nVar) {
        int i10 = 0;
        int i11 = 0;
        for (String str : strArr) {
            i11 += str.hashCode();
        }
        int length = strArr.length;
        int i12 = 0;
        for (ResultColumn resultColumn : list.subList(0, length)) {
            i12 += resultColumn.getName().hashCode();
        }
        while (true) {
            if (i11 == i12) {
                nVar.invoke(Integer.valueOf(i10), Integer.valueOf(length), list.subList(i10, length));
            }
            int i13 = i10 + 1;
            int i14 = length + 1;
            if (i14 > list.size()) {
                return;
            }
            i12 = (i12 - list.get(i10).getName().hashCode()) + list.get(length).getName().hashCode();
            i10 = i13;
            length = i14;
        }
    }

    @NotNull
    public static final int[][] resolve(@NotNull List<String> resultColumns, @NotNull String[][] mappings) {
        Intrinsics.checkNotNullParameter(resultColumns, "resultColumns");
        Intrinsics.checkNotNullParameter(mappings, "mappings");
        return resolve((String[]) resultColumns.toArray(new String[0]), mappings);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit resolve$lambda$16$lambda$15(List list, int i10, List indices) {
        Intrinsics.checkNotNullParameter(indices, "indices");
        List list2 = indices;
        Iterator it = list2.iterator();
        if (it.hasNext()) {
            int intValue = ((Number) it.next()).intValue();
            while (it.hasNext()) {
                int intValue2 = ((Number) it.next()).intValue();
                if (intValue > intValue2) {
                    intValue = intValue2;
                }
            }
            Iterator it2 = list2.iterator();
            if (it2.hasNext()) {
                int intValue3 = ((Number) it2.next()).intValue();
                while (it2.hasNext()) {
                    int intValue4 = ((Number) it2.next()).intValue();
                    if (intValue3 < intValue4) {
                        intValue3 = intValue4;
                    }
                }
                ((List) list.get(i10)).add(new Match(new IntRange(intValue, intValue3), indices));
                return Unit.f60915a;
            }
            throw new NoSuchElementException();
        }
        throw new NoSuchElementException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit resolve$lambda$16$lambda$7(String[] strArr, List list, int i10, int i11, int i12, List resultColumnsSublist) {
        Object obj;
        Intrinsics.checkNotNullParameter(resultColumnsSublist, "resultColumnsSublist");
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            Iterator it = resultColumnsSublist.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(str, ((ResultColumn) obj).component1())) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            ResultColumn resultColumn = (ResultColumn) obj;
            if (resultColumn != null) {
                arrayList.add(Integer.valueOf(resultColumn.getIndex()));
            } else {
                return Unit.f60915a;
            }
        }
        ((List) list.get(i10)).add(new Match(new IntRange(i11, i12 - 1), arrayList));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
    public static final Unit resolve$lambda$19(Ref.ObjectRef objectRef, List it) {
        Intrinsics.checkNotNullParameter(it, "it");
        ?? build = Solution.Companion.build(it);
        if (build.compareTo((Solution) objectRef.element) < 0) {
            objectRef.element = build;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
    @NotNull
    public static final int[][] resolve(@NotNull String[] resultColumns, @NotNull String[][] mappings) {
        Intrinsics.checkNotNullParameter(resultColumns, "resultColumns");
        Intrinsics.checkNotNullParameter(mappings, "mappings");
        int length = resultColumns.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            String str = resultColumns[i11];
            if (str.charAt(0) == '`' && str.charAt(str.length() - 1) == '`') {
                str = str.substring(1, str.length() - 1);
                Intrinsics.checkNotNullExpressionValue(str, "substring(...)");
            }
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            resultColumns[i11] = lowerCase;
        }
        int length2 = mappings.length;
        for (int i12 = 0; i12 < length2; i12++) {
            int length3 = mappings[i12].length;
            for (int i13 = 0; i13 < length3; i13++) {
                String[] strArr = mappings[i12];
                String lowerCase2 = strArr[i13].toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                strArr[i13] = lowerCase2;
            }
        }
        Set b10 = y0.b();
        for (String[] strArr2 : mappings) {
            CollectionsKt.G(b10, strArr2);
        }
        Set a10 = y0.a(b10);
        List c10 = CollectionsKt.c();
        int length4 = resultColumns.length;
        int i14 = 0;
        int i15 = 0;
        while (i14 < length4) {
            String str2 = resultColumns[i14];
            int i16 = i15 + 1;
            if (a10.contains(str2)) {
                c10.add(new ResultColumn(str2, i15));
            }
            i14++;
            i15 = i16;
        }
        List<ResultColumn> a11 = CollectionsKt.a(c10);
        int length5 = mappings.length;
        final ArrayList<List> arrayList = new ArrayList(length5);
        for (int i17 = 0; i17 < length5; i17++) {
            arrayList.add(new ArrayList());
        }
        int length6 = mappings.length;
        int i18 = 0;
        final int i19 = 0;
        while (i18 < length6) {
            final String[] strArr3 = mappings[i18];
            int i20 = i19 + 1;
            INSTANCE.rabinKarpSearch(a11, strArr3, new at.n() { // from class: androidx.room.a
                @Override // at.n
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Unit resolve$lambda$16$lambda$7;
                    resolve$lambda$16$lambda$7 = AmbiguousColumnResolver.resolve$lambda$16$lambda$7(strArr3, arrayList, i19, ((Integer) obj).intValue(), ((Integer) obj2).intValue(), (List) obj3);
                    return resolve$lambda$16$lambda$7;
                }
            });
            if (((List) arrayList.get(i19)).isEmpty()) {
                ArrayList arrayList2 = new ArrayList(strArr3.length);
                int length7 = strArr3.length;
                for (int i21 = i10; i21 < length7; i21++) {
                    String str3 = strArr3[i21];
                    List c11 = CollectionsKt.c();
                    for (ResultColumn resultColumn : a11) {
                        if (Intrinsics.areEqual(str3, resultColumn.getName())) {
                            c11.add(Integer.valueOf(resultColumn.getIndex()));
                        }
                    }
                    List a12 = CollectionsKt.a(c11);
                    if (!a12.isEmpty()) {
                        arrayList2.add(a12);
                    } else {
                        throw new IllegalStateException(("Column " + str3 + " not found in result").toString());
                    }
                }
                dfs$default(INSTANCE, arrayList2, null, 0, new Function1() { // from class: androidx.room.b
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit resolve$lambda$16$lambda$15;
                        resolve$lambda$16$lambda$15 = AmbiguousColumnResolver.resolve$lambda$16$lambda$15(arrayList, i19, (List) obj);
                        return resolve$lambda$16$lambda$15;
                    }
                }, 6, null);
            }
            i18++;
            i19 = i20;
            i10 = 0;
        }
        if (!arrayList.isEmpty()) {
            for (List list : arrayList) {
                if (list.isEmpty()) {
                    throw new IllegalStateException("Failed to find matches for all mappings");
                }
            }
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = Solution.Companion.getNO_SOLUTION();
        dfs$default(INSTANCE, arrayList, null, 0, new Function1() { // from class: androidx.room.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit resolve$lambda$19;
                resolve$lambda$19 = AmbiguousColumnResolver.resolve$lambda$19(Ref.ObjectRef.this, (List) obj);
                return resolve$lambda$19;
            }
        }, 6, null);
        List<Match> matches = ((Solution) objectRef.element).getMatches();
        ArrayList arrayList3 = new ArrayList(CollectionsKt.z(matches, 10));
        for (Match match : matches) {
            arrayList3.add(CollectionsKt.c1(match.getResultIndices()));
        }
        return (int[][]) arrayList3.toArray(new int[0]);
    }
}
