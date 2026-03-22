package gs;

import hs.i;
import hs.j;
import hs.l;
import hs.n;
import is.f;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Encoding.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEncoding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Encoding.kt\nio/ktor/utils/io/charsets/EncodingKt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 4 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,204:1\n12#2,11:205\n12#2,11:216\n507#3,13:227\n488#3,4:240\n492#3,6:246\n507#3,6:252\n513#3,7:260\n74#4:244\n74#4:245\n74#4:258\n74#4:259\n*S KotlinDebug\n*F\n+ 1 Encoding.kt\nio/ktor/utils/io/charsets/EncodingKt\n*L\n63#1:205,11\n67#1:216,11\n76#1:227,13\n161#1:240,4\n161#1:246,6\n187#1:252,6\n187#1:260,7\n162#1:244\n168#1:245\n188#1:258\n192#1:259\n*E\n"})
/* loaded from: classes8.dex */
public final class b {
    @NotNull
    public static final String a(@NotNull CharsetDecoder charsetDecoder, @NotNull l input, int i10) {
        Intrinsics.checkNotNullParameter(charsetDecoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        StringBuilder sb2 = new StringBuilder((int) Math.min(i10, g(input)));
        a.a(charsetDecoder, input, sb2, i10);
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder(capacity).…builderAction).toString()");
        return sb3;
    }

    public static /* synthetic */ String b(CharsetDecoder charsetDecoder, l lVar, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = Integer.MAX_VALUE;
        }
        return a(charsetDecoder, lVar, i10);
    }

    @NotNull
    public static final j c(@NotNull CharsetEncoder charsetEncoder, @NotNull CharSequence input, int i10, int i11) {
        Intrinsics.checkNotNullParameter(charsetEncoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        i iVar = new i(null, 1, null);
        try {
            f(charsetEncoder, iVar, input, i10, i11);
            return iVar.h0();
        } catch (Throwable th2) {
            iVar.release();
            throw th2;
        }
    }

    public static /* synthetic */ j d(CharsetEncoder charsetEncoder, CharSequence charSequence, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = charSequence.length();
        }
        return c(charsetEncoder, charSequence, i10, i11);
    }

    private static final int e(CharsetEncoder charsetEncoder, n nVar) {
        is.a d10 = f.d(nVar, 1, null);
        int i10 = 1;
        int i11 = 0;
        while (true) {
            try {
                int f10 = d10.f() - d10.j();
                if (a.e(charsetEncoder, d10)) {
                    i10 = 0;
                } else {
                    i10++;
                }
                i11 += f10 - (d10.f() - d10.j());
                if (i10 > 0) {
                    d10 = f.d(nVar, 1, d10);
                } else {
                    return i11;
                }
            } finally {
                nVar.k();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0058, code lost:
        throw new java.lang.IllegalStateException("Check failed.");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int f(@org.jetbrains.annotations.NotNull java.nio.charset.CharsetEncoder r8, @org.jetbrains.annotations.NotNull hs.n r9, @org.jetbrains.annotations.NotNull java.lang.CharSequence r10, int r11, int r12) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "destination"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "input"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            r0 = 0
            if (r11 < r12) goto L13
            return r0
        L13:
            r1 = 0
            r2 = 1
            is.a r1 = is.f.d(r9, r2, r1)
            r3 = r0
        L1a:
            int r4 = r1.f()     // Catch: java.lang.Throwable -> L46
            int r5 = r1.j()     // Catch: java.lang.Throwable -> L46
            int r4 = r4 - r5
            int r5 = gs.a.f(r8, r10, r11, r12, r1)     // Catch: java.lang.Throwable -> L46
            if (r5 < 0) goto L51
            int r11 = r11 + r5
            int r6 = r1.f()     // Catch: java.lang.Throwable -> L46
            int r7 = r1.j()     // Catch: java.lang.Throwable -> L46
            int r6 = r6 - r7
            int r4 = r4 - r6
            int r3 = r3 + r4
            if (r11 < r12) goto L39
            r4 = r0
            goto L3f
        L39:
            if (r5 != 0) goto L3e
            r4 = 8
            goto L3f
        L3e:
            r4 = r2
        L3f:
            if (r4 <= 0) goto L48
            is.a r1 = is.f.d(r9, r4, r1)     // Catch: java.lang.Throwable -> L46
            goto L1a
        L46:
            r8 = move-exception
            goto L59
        L48:
            r9.k()
            int r8 = e(r8, r9)
            int r3 = r3 + r8
            return r3
        L51:
            java.lang.String r8 = "Check failed."
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L46
            r10.<init>(r8)     // Catch: java.lang.Throwable -> L46
            throw r10     // Catch: java.lang.Throwable -> L46
        L59:
            r9.k()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: gs.b.f(java.nio.charset.CharsetEncoder, hs.n, java.lang.CharSequence, int, int):int");
    }

    public static final long g(@NotNull l lVar) {
        Intrinsics.checkNotNullParameter(lVar, "<this>");
        if (lVar instanceof j) {
            return lVar.a0();
        }
        return Math.max(lVar.a0(), 16L);
    }
}
