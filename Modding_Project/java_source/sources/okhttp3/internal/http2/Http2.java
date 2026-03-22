package okhttp3.internal.http2;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.Util;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
/* compiled from: Http2.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Http2 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Http2 f63946a = new Http2();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final ByteString f63947b = ByteString.Companion.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f63948c = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f63949d = new String[64];
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f63950e;

    static {
        int i10;
        String[] strArr = new String[256];
        for (int i11 = 0; i11 < 256; i11++) {
            String binaryString = Integer.toBinaryString(i11);
            Intrinsics.checkNotNullExpressionValue(binaryString, "toBinaryString(it)");
            strArr[i11] = StringsKt.O(Util.t("%8s", binaryString), ' ', '0', false, 4, null);
        }
        f63950e = strArr;
        String[] strArr2 = f63949d;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        strArr2[iArr[0] | 8] = strArr2[i10] + "|PADDED";
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i12 = 0; i12 < 3; i12++) {
            int i13 = iArr2[i12];
            int i14 = iArr[0];
            String[] strArr3 = f63949d;
            int i15 = i14 | i13;
            strArr3[i15] = strArr3[i14] + '|' + strArr3[i13];
            strArr3[i15 | 8] = strArr3[i14] + '|' + strArr3[i13] + "|PADDED";
        }
        int length = f63949d.length;
        for (int i16 = 0; i16 < length; i16++) {
            String[] strArr4 = f63949d;
            if (strArr4[i16] == null) {
                strArr4[i16] = f63950e[i16];
            }
        }
    }

    private Http2() {
    }

    @NotNull
    public final String a(int i10, int i11) {
        String str;
        if (i11 == 0) {
            return "";
        }
        if (i10 != 2 && i10 != 3) {
            if (i10 != 4 && i10 != 6) {
                if (i10 != 7 && i10 != 8) {
                    String[] strArr = f63949d;
                    if (i11 < strArr.length) {
                        str = strArr[i11];
                        Intrinsics.checkNotNull(str);
                    } else {
                        str = f63950e[i11];
                    }
                    String str2 = str;
                    if (i10 == 5 && (i11 & 4) != 0) {
                        return StringsKt.P(str2, "HEADERS", "PUSH_PROMISE", false, 4, null);
                    }
                    if (i10 == 0 && (i11 & 32) != 0) {
                        return StringsKt.P(str2, "PRIORITY", "COMPRESSED", false, 4, null);
                    }
                    return str2;
                }
            } else if (i11 == 1) {
                return "ACK";
            } else {
                return f63950e[i11];
            }
        }
        return f63950e[i11];
    }

    @NotNull
    public final String b(int i10) {
        String[] strArr = f63948c;
        if (i10 < strArr.length) {
            return strArr[i10];
        }
        return Util.t("0x%02x", Integer.valueOf(i10));
    }

    @NotNull
    public final String c(boolean z10, int i10, int i11, int i12, int i13) {
        String str;
        String b10 = b(i12);
        String a10 = a(i12, i13);
        if (z10) {
            str = "<<";
        } else {
            str = ">>";
        }
        return Util.t("%s 0x%08x %5d %-13s %s", str, Integer.valueOf(i10), Integer.valueOf(i11), b10, a10);
    }
}
