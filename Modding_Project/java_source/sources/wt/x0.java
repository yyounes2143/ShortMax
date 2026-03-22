package wt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StringOps.kt */
@Metadata
/* loaded from: classes8.dex */
public final class x0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f70356a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f70357b;

    static {
        String[] strArr = new String[93];
        for (int i10 = 0; i10 < 32; i10++) {
            strArr[i10] = "\\u" + e(i10 >> 12) + e(i10 >> 8) + e(i10 >> 4) + e(i10);
        }
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        f70356a = strArr;
        byte[] bArr = new byte[93];
        for (int i11 = 0; i11 < 32; i11++) {
            bArr[i11] = 1;
        }
        bArr[34] = 34;
        bArr[92] = 92;
        bArr[9] = 116;
        bArr[8] = 98;
        bArr[10] = 110;
        bArr[13] = 114;
        bArr[12] = 102;
        f70357b = bArr;
    }

    @NotNull
    public static final byte[] a() {
        return f70357b;
    }

    @NotNull
    public static final String[] b() {
        return f70356a;
    }

    public static final void c(@NotNull StringBuilder sb2, @NotNull String value) {
        Intrinsics.checkNotNullParameter(sb2, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        sb2.append('\"');
        int length = value.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char charAt = value.charAt(i11);
            String[] strArr = f70356a;
            if (charAt < strArr.length && strArr[charAt] != null) {
                sb2.append((CharSequence) value, i10, i11);
                sb2.append(strArr[charAt]);
                i10 = i11 + 1;
            }
        }
        if (i10 != 0) {
            sb2.append((CharSequence) value, i10, value.length());
        } else {
            sb2.append(value);
        }
        sb2.append('\"');
    }

    @Nullable
    public static final Boolean d(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (StringsKt.G(str, "true", true)) {
            return Boolean.TRUE;
        }
        if (StringsKt.G(str, "false", true)) {
            return Boolean.FALSE;
        }
        return null;
    }

    private static final char e(int i10) {
        int i11;
        int i12 = i10 & 15;
        if (i12 < 10) {
            i11 = i12 + 48;
        } else {
            i11 = i12 + 87;
        }
        return (char) i11;
    }
}
