package kotlin.text;

import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Indent.kt */
@Metadata
@SourceDebugExtension({"SMAP\nIndent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,129:1\n119#1,2:131\n121#1,4:146\n126#1,2:159\n119#1,2:168\n121#1,4:183\n126#1,2:190\n1#2:130\n1#2:156\n1#2:187\n1#2:211\n1577#3,11:133\n1872#3,2:144\n1874#3:157\n1588#3:158\n774#3:161\n865#3,2:162\n1557#3:164\n1628#3,3:165\n1577#3,11:170\n1872#3,2:181\n1874#3:188\n1588#3:189\n1577#3,11:198\n1872#3,2:209\n1874#3:212\n1588#3:213\n158#4,6:150\n158#4,6:192\n*S KotlinDebug\n*F\n+ 1 Indent.kt\nkotlin/text/StringsKt__IndentKt\n*L\n42#1:131,2\n42#1:146,4\n42#1:159,2\n83#1:168,2\n83#1:183,4\n83#1:190,2\n42#1:156\n83#1:187\n120#1:211\n42#1:133,11\n42#1:144,2\n42#1:157\n42#1:158\n79#1:161\n79#1:162,2\n80#1:164\n80#1:165,3\n83#1:170,11\n83#1:181,2\n83#1:188\n83#1:189\n120#1:198,11\n120#1:209,2\n120#1:212\n120#1:213\n43#1:150,6\n107#1:192,6\n*E\n"})
/* loaded from: classes8.dex */
public class q extends m {
    private static final Function1<String, String> e(final String str) {
        if (str.length() == 0) {
            return new Function1() { // from class: kotlin.text.o
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    String f10;
                    f10 = q.f((String) obj);
                    return f10;
                }
            };
        }
        return new Function1() { // from class: kotlin.text.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String g10;
                g10 = q.g(str, (String) obj);
                return g10;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String f(String line) {
        Intrinsics.checkNotNullParameter(line, "line");
        return line;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String g(String str, String line) {
        Intrinsics.checkNotNullParameter(line, "line");
        return str + line;
    }

    private static final int h(String str) {
        int length = str.length();
        int i10 = 0;
        while (true) {
            if (i10 < length) {
                if (!CharsKt.b(str.charAt(i10))) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 == -1) {
            return str.length();
        }
        return i10;
    }

    @NotNull
    public static final String i(@NotNull String str, @NotNull final String indent) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(indent, "indent");
        return kotlin.sequences.j.D(kotlin.sequences.j.F(StringsKt.A0(str), new Function1() { // from class: kotlin.text.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                String k10;
                k10 = q.k(indent, (String) obj);
                return k10;
            }
        }), "\n", null, null, 0, null, null, 62, null);
    }

    public static /* synthetic */ String j(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = "    ";
        }
        return i(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String k(String str, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (StringsKt.t0(it)) {
            if (it.length() >= str.length()) {
                return it;
            }
            return str;
        }
        return str + it;
    }

    @NotNull
    public static final String l(@NotNull String str, @NotNull String newIndent) {
        int i10;
        String invoke;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(newIndent, "newIndent");
        List<String> B0 = StringsKt.B0(str);
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : B0) {
            if (!StringsKt.t0((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.z(arrayList, 10));
        for (String str2 : arrayList) {
            arrayList2.add(Integer.valueOf(h(str2)));
        }
        Integer num = (Integer) CollectionsKt.G0(arrayList2);
        int i11 = 0;
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = 0;
        }
        int length = str.length() + (newIndent.length() * B0.size());
        Function1<String, String> e10 = e(newIndent);
        int p10 = CollectionsKt.p(B0);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : B0) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.y();
            }
            String str3 = (String) obj2;
            if ((i11 == 0 || i11 == p10) && StringsKt.t0(str3)) {
                str3 = null;
            } else {
                String z12 = StringsKt.z1(str3, i10);
                if (z12 != null && (invoke = e10.invoke(z12)) != null) {
                    str3 = invoke;
                }
            }
            if (str3 != null) {
                arrayList3.add(str3);
            }
            i11 = i12;
        }
        return ((StringBuilder) CollectionsKt.y0(arrayList3, new StringBuilder(length), "\n", null, null, 0, null, null, 124, null)).toString();
    }

    @NotNull
    public static final String m(@NotNull String str, @NotNull String newIndent, @NotNull String marginPrefix) {
        int i10;
        String invoke;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(newIndent, "newIndent");
        Intrinsics.checkNotNullParameter(marginPrefix, "marginPrefix");
        if (!StringsKt.t0(marginPrefix)) {
            List<String> B0 = StringsKt.B0(str);
            int length = str.length() + (newIndent.length() * B0.size());
            Function1<String, String> e10 = e(newIndent);
            int p10 = CollectionsKt.p(B0);
            ArrayList arrayList = new ArrayList();
            int i11 = 0;
            for (Object obj : B0) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.y();
                }
                String str2 = (String) obj;
                String str3 = null;
                if ((i11 == 0 || i11 == p10) && StringsKt.t0(str2)) {
                    str2 = null;
                } else {
                    int length2 = str2.length();
                    int i13 = 0;
                    while (true) {
                        if (i13 < length2) {
                            if (!CharsKt.b(str2.charAt(i13))) {
                                i10 = i13;
                                break;
                            }
                            i13++;
                        } else {
                            i10 = -1;
                            break;
                        }
                    }
                    if (i10 != -1) {
                        int i14 = i10;
                        if (StringsKt.U(str2, marginPrefix, i10, false, 4, null)) {
                            Intrinsics.checkNotNull(str2, "null cannot be cast to non-null type java.lang.String");
                            str3 = str2.substring(i14 + marginPrefix.length());
                            Intrinsics.checkNotNullExpressionValue(str3, "substring(...)");
                        }
                    }
                    if (str3 != null && (invoke = e10.invoke(str3)) != null) {
                        str2 = invoke;
                    }
                }
                if (str2 != null) {
                    arrayList.add(str2);
                }
                i11 = i12;
            }
            return ((StringBuilder) CollectionsKt.y0(arrayList, new StringBuilder(length), "\n", null, null, 0, null, null, 124, null)).toString();
        }
        throw new IllegalArgumentException("marginPrefix must be non-blank string.");
    }

    @NotNull
    public static String n(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return l(str, "");
    }

    @NotNull
    public static final String o(@NotNull String str, @NotNull String marginPrefix) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(marginPrefix, "marginPrefix");
        return m(str, "", marginPrefix);
    }

    public static /* synthetic */ String p(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = HiAnalyticsConstant.REPORT_VAL_SEPARATOR;
        }
        return o(str, str2);
    }
}
