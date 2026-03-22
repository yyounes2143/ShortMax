package hs;

import androidx.collection.SieveCacheKt;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
/* compiled from: Strings.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nio/ktor/utils/io/core/StringsKt\n+ 2 Packet.kt\nio/ktor/utils/io/core/PacketKt\n+ 3 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 4 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 5 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 7 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 8 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 9 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 10 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n+ 11 Output.kt\nio/ktor/utils/io/core/OutputKt\n*L\n1#1,482:1\n358#1:640\n358#1:641\n39#2:483\n852#3,8:484\n862#3,3:493\n866#3,11:574\n877#3,15:586\n823#3,6:601\n829#3,13:627\n823#3,6:658\n829#3,13:686\n852#3,8:699\n862#3,3:708\n866#3,11:791\n877#3,15:803\n852#3,8:818\n862#3,3:827\n866#3,11:908\n877#3,15:920\n69#4:492\n59#4:585\n69#4:664\n69#4:685\n69#4:707\n69#4:711\n69#4:790\n59#4:802\n69#4:826\n59#4:919\n123#5,5:496\n128#5,2:506\n130#5,61:510\n193#5:573\n9#5:607\n10#5,2:613\n12#5,7:617\n21#5:626\n9#5:665\n10#5,2:671\n12#5,7:675\n21#5:684\n123#5,5:712\n128#5,2:722\n130#5,61:726\n193#5:789\n123#5,5:830\n128#5,2:840\n130#5,61:844\n193#5:907\n372#6,5:501\n377#6,2:571\n372#6,5:608\n377#6,2:624\n372#6,5:666\n377#6,2:682\n372#6,5:717\n377#6,2:787\n372#6,5:835\n377#6,2:905\n84#7:508\n84#7:615\n84#7:673\n84#7:724\n84#7:842\n26#8:509\n26#8:616\n26#8:674\n26#8:725\n26#8:843\n1#9:642\n98#10,2:643\n507#11,13:645\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n156#1:640\n158#1:641\n30#1:483\n57#1:484,8\n57#1:493,3\n57#1:574,11\n57#1:586,15\n125#1:601,6\n125#1:627,13\n365#1:658,6\n365#1:686,13\n405#1:699,8\n405#1:708,3\n405#1:791,11\n405#1:803,15\n445#1:818,8\n445#1:827,3\n445#1:908,11\n445#1:920,15\n57#1:492\n57#1:585\n366#1:664\n379#1:685\n405#1:707\n406#1:711\n420#1:790\n405#1:802\n445#1:826\n445#1:919\n59#1:496,5\n59#1:506,2\n59#1:510,61\n59#1:573\n126#1:607\n126#1:613,2\n126#1:617,7\n126#1:626\n368#1:665\n368#1:671,2\n368#1:675,7\n368#1:684\n408#1:712,5\n408#1:722,2\n408#1:726,61\n408#1:789\n446#1:830,5\n446#1:840,2\n446#1:844,61\n446#1:907\n59#1:501,5\n59#1:571,2\n126#1:608,5\n126#1:624,2\n368#1:666,5\n368#1:682,2\n408#1:717,5\n408#1:787,2\n446#1:835,5\n446#1:905,2\n59#1:508\n126#1:615\n368#1:673\n408#1:724\n446#1:842\n59#1:509\n126#1:616\n368#1:674\n408#1:725\n446#1:843\n170#1:643,2\n337#1:645,13\n*E\n"})
/* loaded from: classes8.dex */
public final class q {
    @NotNull
    public static final Void a(int i10) {
        throw new EOFException("Premature end of stream: expected " + i10 + " bytes");
    }

    @NotNull
    public static final byte[] b(@NotNull j jVar, int i10) {
        Intrinsics.checkNotNullParameter(jVar, "<this>");
        if (i10 != 0) {
            byte[] bArr = new byte[i10];
            m.b(jVar, bArr, 0, i10);
            return bArr;
        }
        return is.f.f60081a;
    }

    public static /* synthetic */ byte[] c(j jVar, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            long a02 = jVar.a0();
            if (a02 <= SieveCacheKt.NodeLinkMask) {
                i10 = (int) a02;
            } else {
                throw new IllegalArgumentException("Unable to convert to a ByteArray: packet is too big");
            }
        }
        return b(jVar, i10);
    }

    @NotNull
    public static final String d(@NotNull l lVar, @NotNull Charset charset, int i10) {
        Intrinsics.checkNotNullParameter(lVar, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        CharsetDecoder newDecoder = charset.newDecoder();
        Intrinsics.checkNotNullExpressionValue(newDecoder, "charset.newDecoder()");
        return gs.b.a(newDecoder, lVar, i10);
    }

    public static /* synthetic */ String e(l lVar, Charset charset, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        if ((i11 & 2) != 0) {
            i10 = Integer.MAX_VALUE;
        }
        return d(lVar, charset, i10);
    }

    @NotNull
    public static final String f(@NotNull l lVar, int i10, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(lVar, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        CharsetDecoder newDecoder = charset.newDecoder();
        Intrinsics.checkNotNullExpressionValue(newDecoder, "charset.newDecoder()");
        return gs.a.b(newDecoder, lVar, i10);
    }

    public static /* synthetic */ String g(l lVar, int i10, Charset charset, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        return f(lVar, i10, charset);
    }

    public static final void h(@NotNull n nVar, @NotNull CharSequence text, int i10, int i11, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(nVar, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (charset == Charsets.UTF_8) {
            i(nVar, text, i10, i11);
            return;
        }
        CharsetEncoder newEncoder = charset.newEncoder();
        Intrinsics.checkNotNullExpressionValue(newEncoder, "charset.newEncoder()");
        gs.b.f(newEncoder, nVar, text, i10, i11);
    }

    private static final void i(n nVar, CharSequence charSequence, int i10, int i11) {
        int i12;
        is.a d10 = is.f.d(nVar, 1, null);
        while (true) {
            try {
                int b10 = is.e.b(d10.g(), charSequence, i10, i11, d10.j(), d10.f());
                int a10 = is.c.a(b10) & 65535;
                i10 += a10;
                d10.a(is.c.b(b10) & 65535);
                if (a10 == 0 && i10 < i11) {
                    i12 = 8;
                } else if (i10 < i11) {
                    i12 = 1;
                } else {
                    i12 = 0;
                }
                if (i12 > 0) {
                    d10 = is.f.d(nVar, i12, d10);
                } else {
                    return;
                }
            } finally {
                nVar.k();
            }
        }
    }
}
