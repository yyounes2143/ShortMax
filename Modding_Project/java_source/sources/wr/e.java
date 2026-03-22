package wr;

import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: HeaderValueWithParameters.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHeaderValueWithParameters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeaderValueWithParameters.kt\nio/ktor/http/HeaderValueWithParametersKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"})
/* loaded from: classes8.dex */
public final class e {
    @NotNull

    /* renamed from: a */
    private static final Set<Character> f70137a = y0.j('(', ')', '<', '>', '@', ',', ';', ':', '\\', '\"', '/', '[', ']', '?', '=', '{', '}', ' ', '\t', '\n', '\r');

    private static final boolean b(String str) {
        if (str.length() < 2 || StringsKt.C1(str) != '\"' || StringsKt.E1(str) != '\"') {
            return false;
        }
        int i10 = 1;
        do {
            int p02 = StringsKt.p0(str, '\"', i10, false, 4, null);
            if (p02 == StringsKt.k0(str)) {
                break;
            }
            int i11 = 0;
            for (int i12 = p02 - 1; str.charAt(i12) == '\\'; i12--) {
                i11++;
            }
            if (i11 % 2 == 0) {
                return false;
            }
            i10 = p02 + 1;
        } while (i10 < str.length());
        return true;
    }

    public static final boolean c(String str) {
        if (str.length() == 0) {
            return true;
        }
        if (b(str)) {
            return false;
        }
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (f70137a.contains(Character.valueOf(str.charAt(i10)))) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final String d(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        StringBuilder sb2 = new StringBuilder();
        e(str, sb2);
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    private static final void e(String str, StringBuilder sb2) {
        sb2.append("\"");
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (charAt == '\\') {
                sb2.append("\\\\");
            } else if (charAt == '\n') {
                sb2.append("\\n");
            } else if (charAt == '\r') {
                sb2.append("\\r");
            } else if (charAt == '\t') {
                sb2.append("\\t");
            } else if (charAt == '\"') {
                sb2.append("\\\"");
            } else {
                sb2.append(charAt);
            }
        }
        sb2.append("\"");
    }
}
