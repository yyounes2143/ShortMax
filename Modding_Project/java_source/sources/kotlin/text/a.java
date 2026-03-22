package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Char.kt */
@Metadata
@SourceDebugExtension({"SMAP\nChar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Char.kt\nkotlin/text/CharsKt__CharKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,349:1\n1#2:350\n*E\n"})
/* loaded from: classes8.dex */
public class a extends CharsKt__CharJVMKt {
    public static int f(char c10) {
        int a10 = CharsKt__CharJVMKt.a(c10, 10);
        if (a10 >= 0) {
            return a10;
        }
        throw new IllegalArgumentException("Char " + c10 + " is not a decimal digit");
    }

    public static final boolean g(char c10, char c11, boolean z10) {
        if (c10 == c11) {
            return true;
        }
        if (!z10) {
            return false;
        }
        char upperCase = Character.toUpperCase(c10);
        char upperCase2 = Character.toUpperCase(c11);
        if (upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2)) {
            return true;
        }
        return false;
    }

    public static boolean h(char c10) {
        if (55296 > c10 || c10 >= 57344) {
            return false;
        }
        return true;
    }

    @NotNull
    public static String i(char c10) {
        return e0.a(c10);
    }
}
