package gs;

import fs.c;
import hs.l;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.MalformedInputException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CharsetJVM.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCharsetJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharsetJVM.kt\nio/ktor/utils/io/charsets/CharsetJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n+ 4 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 6 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 7 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 8 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 9 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 10 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n+ 11 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 12 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 13 Input.kt\nio/ktor/utils/io/core/Input\n+ 14 StringsJVM.kt\nio/ktor/utils/io/core/StringsJVMKt\n*L\n1#1,389:1\n1#2:390\n1#2:404\n1#2:411\n1#2:517\n1#2:548\n1#2:578\n1#2:595\n1#2:643\n1#2:701\n111#3,5:391\n116#3,3:401\n120#3:405\n44#3:408\n45#3:410\n46#3,7:412\n111#3,5:504\n116#3,3:514\n120#3:518\n111#3,5:535\n116#3,3:545\n120#3:549\n54#3,6:559\n111#3,5:565\n116#3,3:575\n120#3:579\n95#3,5:582\n100#3,3:592\n104#3:596\n95#3,5:630\n100#3,3:640\n104#3:644\n95#3,5:688\n100#3,3:698\n104#3:702\n390#4,5:396\n395#4,2:406\n372#4,5:424\n377#4,2:494\n390#4,5:509\n395#4,2:519\n390#4,5:540\n395#4,2:550\n390#4,5:570\n395#4,2:580\n372#4,5:587\n377#4,2:597\n372#4,5:635\n377#4,2:645\n372#4,5:693\n377#4,2:703\n74#5:409\n69#5:599\n69#5:626\n59#5:658\n69#5:684\n59#5:716\n123#6,5:419\n128#6,2:429\n130#6,61:433\n193#6:496\n84#7:431\n26#8:432\n506#9,7:497\n513#9,7:521\n506#9,7:528\n513#9,7:552\n256#10,7:600\n12#11,11:607\n852#12,8:618\n862#12,3:627\n866#12,11:647\n877#12,15:659\n852#12,8:676\n862#12,3:685\n866#12,11:705\n877#12,15:717\n77#13:674\n11#14:675\n*S KotlinDebug\n*F\n+ 1 CharsetJVM.kt\nio/ktor/utils/io/charsets/CharsetJVMKt\n*L\n52#1:404\n71#1:411\n99#1:517\n121#1:548\n141#1:578\n160#1:595\n231#1:643\n323#1:701\n52#1:391,5\n52#1:401,3\n52#1:405\n71#1:408\n71#1:410\n71#1:412,7\n99#1:504,5\n99#1:514,3\n99#1:518\n121#1:535,5\n121#1:545,3\n121#1:549\n71#1:559,6\n141#1:565,5\n141#1:575,3\n141#1:579\n160#1:582,5\n160#1:592,3\n160#1:596\n231#1:630,5\n231#1:640,3\n231#1:644\n323#1:688,5\n323#1:698,3\n323#1:702\n52#1:396,5\n52#1:406,2\n83#1:424,5\n83#1:494,2\n99#1:509,5\n99#1:519,2\n121#1:540,5\n121#1:550,2\n141#1:570,5\n141#1:580,2\n160#1:587,5\n160#1:597,2\n231#1:635,5\n231#1:645,2\n323#1:693,5\n323#1:703,2\n71#1:409\n199#1:599\n227#1:626\n227#1:658\n320#1:684\n320#1:716\n83#1:419,5\n83#1:429,2\n83#1:433,61\n83#1:496\n83#1:431\n83#1:432\n98#1:497,7\n98#1:521,7\n120#1:528,7\n120#1:552,7\n200#1:600,7\n204#1:607,11\n227#1:618,8\n227#1:627,3\n227#1:647,11\n227#1:659,15\n320#1:676,8\n320#1:685,3\n320#1:705,11\n320#1:717,15\n274#1:674\n282#1:675\n*E\n"})
/* loaded from: classes8.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final CharBuffer f52525a = CharBuffer.allocate(0);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ByteBuffer f52526b;

    static {
        ByteBuffer allocate = ByteBuffer.allocate(0);
        Intrinsics.checkNotNull(allocate);
        f52526b = allocate;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a4, code lost:
        throw new java.lang.IllegalStateException("Buffer's limit change is not allowed");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int a(@org.jetbrains.annotations.NotNull java.nio.charset.CharsetDecoder r11, @org.jetbrains.annotations.NotNull hs.l r12, @org.jetbrains.annotations.NotNull java.lang.Appendable r13, int r14) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gs.a.a(java.nio.charset.CharsetDecoder, hs.l, java.lang.Appendable, int):int");
    }

    @NotNull
    public static final String b(@NotNull CharsetDecoder charsetDecoder, @NotNull l input, int i10) {
        Intrinsics.checkNotNullParameter(charsetDecoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        if (i10 == 0) {
            return "";
        }
        if (input.T() - input.Y() >= i10) {
            if (input.W().hasArray()) {
                ByteBuffer W = input.W();
                byte[] array = W.array();
                Intrinsics.checkNotNullExpressionValue(array, "bb.array()");
                Charset charset = charsetDecoder.charset();
                Intrinsics.checkNotNullExpressionValue(charset, "charset()");
                String str = new String(array, W.arrayOffset() + W.position() + input.R().h(), i10, charset);
                input.p(i10);
                return str;
            }
            return c(charsetDecoder, input, i10);
        }
        return d(charsetDecoder, input, i10);
    }

    private static final String c(CharsetDecoder charsetDecoder, l lVar, int i10) {
        CharBuffer allocate = CharBuffer.allocate(i10);
        ByteBuffer d10 = c.d(lVar.W(), lVar.R().h(), i10);
        CoderResult rc2 = charsetDecoder.decode(d10, allocate, true);
        if (rc2.isMalformed() || rc2.isUnmappable()) {
            Intrinsics.checkNotNullExpressionValue(rc2, "rc");
            j(rc2);
        }
        allocate.flip();
        lVar.p(d10.position());
        String charBuffer = allocate.toString();
        Intrinsics.checkNotNullExpressionValue(charBuffer, "cb.toString()");
        return charBuffer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a0, code lost:
        throw new java.lang.IllegalStateException("Buffer's limit change is not allowed");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.lang.String d(java.nio.charset.CharsetDecoder r17, hs.l r18, int r19) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gs.a.d(java.nio.charset.CharsetDecoder, hs.l, int):java.lang.String");
    }

    public static final boolean e(@NotNull CharsetEncoder charsetEncoder, @NotNull hs.a dst) {
        Intrinsics.checkNotNullParameter(charsetEncoder, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        ByteBuffer g10 = dst.g();
        int j10 = dst.j();
        int f10 = dst.f() - j10;
        ByteBuffer d10 = c.d(g10, j10, f10);
        CoderResult result = charsetEncoder.encode(f52525a, d10, true);
        if (result.isMalformed() || result.isUnmappable()) {
            Intrinsics.checkNotNullExpressionValue(result, "result");
            j(result);
        }
        boolean isUnderflow = result.isUnderflow();
        if (d10.limit() == f10) {
            dst.a(d10.position());
            return isUnderflow;
        }
        throw new IllegalStateException("Buffer's limit change is not allowed");
    }

    public static final int f(@NotNull CharsetEncoder charsetEncoder, @NotNull CharSequence input, int i10, int i11, @NotNull hs.a dst) {
        Intrinsics.checkNotNullParameter(charsetEncoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(dst, "dst");
        CharBuffer wrap = CharBuffer.wrap(input, i10, i11);
        int remaining = wrap.remaining();
        ByteBuffer g10 = dst.g();
        int j10 = dst.j();
        int f10 = dst.f() - j10;
        ByteBuffer d10 = c.d(g10, j10, f10);
        CoderResult result = charsetEncoder.encode(wrap, d10, false);
        if (result.isMalformed() || result.isUnmappable()) {
            Intrinsics.checkNotNullExpressionValue(result, "result");
            j(result);
        }
        if (d10.limit() == f10) {
            dst.a(d10.position());
            return remaining - wrap.remaining();
        }
        throw new IllegalStateException("Buffer's limit change is not allowed");
    }

    @NotNull
    public static final byte[] g(@NotNull CharsetEncoder charsetEncoder, @NotNull CharSequence input, int i10, int i11) {
        Intrinsics.checkNotNullParameter(charsetEncoder, "<this>");
        Intrinsics.checkNotNullParameter(input, "input");
        if (input instanceof String) {
            if (i10 == 0 && i11 == input.length()) {
                byte[] bytes = ((String) input).getBytes(charsetEncoder.charset());
                Intrinsics.checkNotNullExpressionValue(bytes, "input as java.lang.String).getBytes(charset())");
                return bytes;
            }
            String substring = ((String) input).substring(i10, i11);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            Intrinsics.checkNotNull(substring, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes2 = substring.getBytes(charsetEncoder.charset());
            Intrinsics.checkNotNullExpressionValue(bytes2, "input.substring(fromInde…ring).getBytes(charset())");
            return bytes2;
        }
        return h(charsetEncoder, input, i10, i11);
    }

    private static final byte[] h(CharsetEncoder charsetEncoder, CharSequence charSequence, int i10, int i11) {
        ByteBuffer encode = charsetEncoder.encode(CharBuffer.wrap(charSequence, i10, i11));
        byte[] bArr = null;
        if (encode.hasArray() && encode.arrayOffset() == 0) {
            byte[] array = encode.array();
            if (array.length == encode.remaining()) {
                bArr = array;
            }
        }
        if (bArr == null) {
            byte[] bArr2 = new byte[encode.remaining()];
            encode.get(bArr2);
            return bArr2;
        }
        return bArr;
    }

    @NotNull
    public static final String i(@NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "<this>");
        String name = charset.name();
        Intrinsics.checkNotNullExpressionValue(name, "name()");
        return name;
    }

    private static final void j(CoderResult coderResult) {
        try {
            coderResult.throwException();
        } catch (MalformedInputException e10) {
            String message = e10.getMessage();
            if (message == null) {
                message = "Failed to decode bytes";
            }
            throw new io.ktor.utils.io.charsets.MalformedInputException(message);
        }
    }
}
