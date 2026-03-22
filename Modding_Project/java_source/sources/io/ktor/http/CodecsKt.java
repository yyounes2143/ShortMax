package io.ktor.http;

import com.inmobi.commons.core.configs.AdConfig;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Codecs.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCodecs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Codecs.kt\nio/ktor/http/CodecsKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 Strings.kt\nio/ktor/utils/io/core/StringsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 StringsJVM.kt\nio/ktor/utils/io/core/StringsJVMKt\n+ 6 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 7 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,296:1\n1099#2,3:297\n8#3,3:300\n13586#4,2:303\n11#5:305\n823#6,6:306\n829#6,13:313\n355#7:312\n1549#8:326\n1620#8,3:327\n1549#8:330\n1620#8,3:331\n1549#8:334\n1620#8,3:335\n*S KotlinDebug\n*F\n+ 1 Codecs.kt\nio/ktor/http/CodecsKt\n*L\n130#1:297,3\n133#1:300,3\n141#1:303,2\n250#1:305\n289#1:306,6\n289#1:313,13\n290#1:312\n9#1:326\n9#1:327,3\n20#1:330\n20#1:331,3\n42#1:334\n42#1:335,3\n*E\n"})
/* loaded from: classes8.dex */
public final class CodecsKt {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final Set<Byte> f59175a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Set<Character> f59176b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Set<Character> f59177c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final List<Byte> f59178d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Set<Character> f59179e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final Set<Character> f59180f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final List<Byte> f59181g;

    static {
        List<Character> K0 = CollectionsKt.K0(CollectionsKt.J0(new kotlin.ranges.b('a', 'z'), new kotlin.ranges.b('A', 'Z')), new kotlin.ranges.b('0', '9'));
        ArrayList arrayList = new ArrayList(CollectionsKt.z(K0, 10));
        for (Character ch2 : K0) {
            arrayList.add(Byte.valueOf((byte) ch2.charValue()));
        }
        f59175a = CollectionsKt.i1(arrayList);
        f59176b = CollectionsKt.i1(CollectionsKt.K0(CollectionsKt.J0(new kotlin.ranges.b('a', 'z'), new kotlin.ranges.b('A', 'Z')), new kotlin.ranges.b('0', '9')));
        f59177c = CollectionsKt.i1(CollectionsKt.K0(CollectionsKt.J0(new kotlin.ranges.b('a', 'f'), new kotlin.ranges.b('A', 'F')), new kotlin.ranges.b('0', '9')));
        Set<Character> j10 = y0.j(':', '/', '?', '#', '[', ']', '@', '!', '$', '&', '\'', '(', ')', '*', ',', ';', '=', '-', '.', '_', '~', '+');
        ArrayList arrayList2 = new ArrayList(CollectionsKt.z(j10, 10));
        for (Character ch3 : j10) {
            arrayList2.add(Byte.valueOf((byte) ch3.charValue()));
        }
        f59178d = arrayList2;
        f59179e = y0.j(':', '@', '!', '$', '&', '\'', '(', ')', '*', '+', ',', ';', '=', '-', '.', '_', '~');
        f59180f = y0.m(f59176b, y0.j('!', '#', '$', '&', '+', '-', '.', '^', '_', '`', '|', '~'));
        List<Character> q10 = CollectionsKt.q('-', '.', '_', '~');
        ArrayList arrayList3 = new ArrayList(CollectionsKt.z(q10, 10));
        for (Character ch4 : q10) {
            arrayList3.add(Byte.valueOf((byte) ch4.charValue()));
        }
        f59181g = arrayList3;
    }

    private static final int e(char c10) {
        if ('0' <= c10 && c10 < ':') {
            return c10 - '0';
        }
        if ('A' <= c10 && c10 < 'G') {
            return c10 - '7';
        }
        if ('a' <= c10 && c10 < 'g') {
            return c10 - 'W';
        }
        return -1;
    }

    private static final String f(CharSequence charSequence, int i10, int i11, int i12, boolean z10, Charset charset) {
        int i13;
        int i14 = i11 - i10;
        if (i14 > 255) {
            i14 /= 3;
        }
        StringBuilder sb2 = new StringBuilder(i14);
        if (i12 > i10) {
            sb2.append(charSequence, i10, i12);
        }
        byte[] bArr = null;
        while (i12 < i11) {
            char charAt = charSequence.charAt(i12);
            if (z10 && charAt == '+') {
                sb2.append(' ');
            } else if (charAt == '%') {
                if (bArr == null) {
                    bArr = new byte[(i11 - i12) / 3];
                }
                int i15 = 0;
                while (i12 < i11 && charSequence.charAt(i12) == '%') {
                    int i16 = i12 + 2;
                    if (i16 < i11) {
                        int e10 = e(charSequence.charAt(i12 + 1));
                        int e11 = e(charSequence.charAt(i16));
                        if (e10 != -1 && e11 != -1) {
                            bArr[i15] = (byte) ((e10 * 16) + e11);
                            i12 += 3;
                            i15++;
                        } else {
                            throw new URLDecodeException("Wrong HEX escape: %" + charSequence.charAt(i13) + charSequence.charAt(i16) + ", in " + ((Object) charSequence) + ", at " + i12);
                        }
                    } else {
                        throw new URLDecodeException("Incomplete trailing HEX escape: " + charSequence.subSequence(i12, charSequence.length()).toString() + ", in " + ((Object) charSequence) + " at " + i12);
                    }
                }
                sb2.append(new String(bArr, 0, i15, charset));
            } else {
                sb2.append(charAt);
            }
            i12++;
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "sb.toString()");
        return sb3;
    }

    private static final String g(String str, int i10, int i11, boolean z10, Charset charset) {
        for (int i12 = i10; i12 < i11; i12++) {
            char charAt = str.charAt(i12);
            if (charAt == '%' || (z10 && charAt == '+')) {
                return f(str, i10, i11, i12, z10, charset);
            }
        }
        if (i10 == 0 && i11 == str.length()) {
            return str.toString();
        }
        String substring = str.substring(i10, i11);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    @NotNull
    public static final String h(@NotNull String str, int i10, int i11, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return g(str, i10, i11, false, charset);
    }

    public static /* synthetic */ String i(String str, int i10, int i11, Charset charset, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            charset = Charsets.UTF_8;
        }
        return h(str, i10, i11, charset);
    }

    @NotNull
    public static final String j(@NotNull String str, int i10, int i11, boolean z10, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return g(str, i10, i11, z10, charset);
    }

    public static /* synthetic */ String k(String str, int i10, int i11, boolean z10, Charset charset, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            charset = Charsets.UTF_8;
        }
        return j(str, i10, i11, z10, charset);
    }

    @NotNull
    public static final String l(@NotNull String str, final boolean z10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        final StringBuilder sb2 = new StringBuilder();
        CharsetEncoder newEncoder = Charsets.UTF_8.newEncoder();
        Intrinsics.checkNotNullExpressionValue(newEncoder, "UTF_8.newEncoder()");
        s(gs.b.d(newEncoder, str, 0, 0, 6, null), new Function1<Byte, Unit>() { // from class: io.ktor.http.CodecsKt$encodeURLParameter$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final void b(byte b10) {
                Set set;
                List list;
                String u10;
                set = CodecsKt.f59175a;
                if (!set.contains(Byte.valueOf(b10))) {
                    list = CodecsKt.f59181g;
                    if (!list.contains(Byte.valueOf(b10))) {
                        if (z10 && b10 == 32) {
                            sb2.append('+');
                            return;
                        }
                        StringBuilder sb3 = sb2;
                        u10 = CodecsKt.u(b10);
                        sb3.append(u10);
                        return;
                    }
                }
                sb2.append((char) b10);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Byte b10) {
                b(b10.byteValue());
                return Unit.f60915a;
            }
        });
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    public static /* synthetic */ String m(String str, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return l(str, z10);
    }

    @NotNull
    public static final String n(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return l(str, true);
    }

    @NotNull
    public static final String o(@NotNull String str, boolean z10) {
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(str, "<this>");
        final StringBuilder sb2 = new StringBuilder();
        Charset charset = Charsets.UTF_8;
        int i12 = 0;
        while (i12 < str.length()) {
            char charAt = str.charAt(i12);
            if ((z10 || charAt != '/') && !f59176b.contains(Character.valueOf(charAt)) && !f59179e.contains(Character.valueOf(charAt))) {
                if (charAt == '%' && (i11 = i12 + 2) < str.length()) {
                    Set<Character> set = f59177c;
                    int i13 = i12 + 1;
                    if (set.contains(Character.valueOf(str.charAt(i13))) && set.contains(Character.valueOf(str.charAt(i11)))) {
                        sb2.append(charAt);
                        sb2.append(str.charAt(i13));
                        sb2.append(str.charAt(i11));
                        i12 += 3;
                    }
                }
                if (CharsKt.h(charAt)) {
                    i10 = 2;
                } else {
                    i10 = 1;
                }
                CharsetEncoder newEncoder = charset.newEncoder();
                Intrinsics.checkNotNullExpressionValue(newEncoder, "charset.newEncoder()");
                int i14 = i10 + i12;
                s(gs.b.c(newEncoder, str, i12, i14), new Function1<Byte, Unit>() { // from class: io.ktor.http.CodecsKt$encodeURLPath$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    public final void b(byte b10) {
                        String u10;
                        StringBuilder sb3 = sb2;
                        u10 = CodecsKt.u(b10);
                        sb3.append(u10);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Byte b10) {
                        b(b10.byteValue());
                        return Unit.f60915a;
                    }
                });
                i12 = i14;
            } else {
                sb2.append(charAt);
                i12++;
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    @NotNull
    public static final String p(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return o(str, true);
    }

    @NotNull
    public static final String q(@NotNull String str, final boolean z10, final boolean z11, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        final StringBuilder sb2 = new StringBuilder();
        CharsetEncoder newEncoder = charset.newEncoder();
        Intrinsics.checkNotNullExpressionValue(newEncoder, "charset.newEncoder()");
        s(gs.b.d(newEncoder, str, 0, 0, 6, null), new Function1<Byte, Unit>() { // from class: io.ktor.http.CodecsKt$encodeURLQueryComponent$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
                if (r0.contains(java.lang.Byte.valueOf(r3)) != false) goto L18;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void b(byte r3) {
                /*
                    r2 = this;
                    r0 = 32
                    if (r3 != r0) goto L18
                    boolean r3 = r1
                    if (r3 == 0) goto L10
                    java.lang.StringBuilder r3 = r2
                    r0 = 43
                    r3.append(r0)
                    goto L49
                L10:
                    java.lang.StringBuilder r3 = r2
                    java.lang.String r0 = "%20"
                    r3.append(r0)
                    goto L49
                L18:
                    java.util.Set r0 = io.ktor.http.CodecsKt.b()
                    java.lang.Byte r1 = java.lang.Byte.valueOf(r3)
                    boolean r0 = r0.contains(r1)
                    if (r0 != 0) goto L43
                    boolean r0 = r3
                    if (r0 != 0) goto L39
                    java.util.List r0 = io.ktor.http.CodecsKt.c()
                    java.lang.Byte r1 = java.lang.Byte.valueOf(r3)
                    boolean r0 = r0.contains(r1)
                    if (r0 == 0) goto L39
                    goto L43
                L39:
                    java.lang.StringBuilder r0 = r2
                    java.lang.String r3 = io.ktor.http.CodecsKt.d(r3)
                    r0.append(r3)
                    goto L49
                L43:
                    java.lang.StringBuilder r0 = r2
                    char r3 = (char) r3
                    r0.append(r3)
                L49:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: io.ktor.http.CodecsKt$encodeURLQueryComponent$1$1.b(byte):void");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Byte b10) {
                b(b10.byteValue());
                return Unit.f60915a;
            }
        });
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    public static /* synthetic */ String r(String str, boolean z10, boolean z11, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        if ((i10 & 4) != 0) {
            charset = Charsets.UTF_8;
        }
        return q(str, z10, z11, charset);
    }

    private static final void s(hs.j jVar, Function1<? super Byte, Unit> function1) {
        boolean z10 = true;
        is.a b10 = is.f.b(jVar, 1);
        if (b10 == null) {
            return;
        }
        while (true) {
            try {
                if (b10.j() > b10.h()) {
                    function1.invoke(Byte.valueOf(b10.k()));
                } else {
                    try {
                        b10 = is.f.c(jVar, b10);
                        if (b10 == null) {
                            return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        z10 = false;
                        if (z10) {
                            is.f.a(jVar, b10);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    private static final char t(int i10) {
        int i11;
        if (i10 >= 0 && i10 < 10) {
            i11 = i10 + 48;
        } else {
            i11 = ((char) (i10 + 65)) - '\n';
        }
        return (char) i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String u(byte b10) {
        return StringsKt.x(new char[]{'%', t((b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> 4), t(b10 & 15)});
    }
}
