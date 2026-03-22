package yr;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Text.kt */
@Metadata
@SourceDebugExtension({"SMAP\nText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Text.kt\nio/ktor/util/TextKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,115:1\n151#2,6:116\n151#2,6:122\n*S KotlinDebug\n*F\n+ 1 Text.kt\nio/ktor/util/TextKt\n*L\n50#1:116,6\n73#1:122,6\n*E\n"})
/* loaded from: classes8.dex */
public final class t {
    @NotNull
    public static final f a(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return new f(str);
    }

    private static final char b(char c10) {
        if ('A' <= c10 && c10 < '[') {
            return (char) (c10 + ' ');
        }
        if (c10 < 0 || c10 >= 128) {
            return Character.toLowerCase(c10);
        }
        return c10;
    }

    @NotNull
    public static final String c(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        int i10 = 0;
        while (true) {
            if (i10 < length) {
                char charAt = str.charAt(i10);
                if (b(charAt) != charAt) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 == -1) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(str.length());
        sb2.append((CharSequence) str, 0, i10);
        int k02 = StringsKt.k0(str);
        if (i10 <= k02) {
            while (true) {
                sb2.append(b(str.charAt(i10)));
                if (i10 == k02) {
                    break;
                }
                i10++;
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder(capacity).…builderAction).toString()");
        return sb3;
    }
}
