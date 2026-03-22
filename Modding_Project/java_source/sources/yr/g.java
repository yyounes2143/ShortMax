package yr;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Charset.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g {
    public static final boolean a(char c10) {
        if (Character.toLowerCase(c10) == c10) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final char[] b(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        char[] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = str.charAt(i10);
        }
        return cArr;
    }
}
