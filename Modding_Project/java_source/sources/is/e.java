package is;

import com.ss.ttm.player.MediaPlayer;
import io.ktor.utils.io.core.internal.MalformedUTF8InputException;
import java.nio.ByteBuffer;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.s;
import org.jetbrains.annotations.NotNull;
/* compiled from: UTF8.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUTF8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 3 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 4 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 5 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,379:1\n123#1,5:401\n128#1,2:411\n130#1,61:415\n193#1:478\n319#1,3:517\n322#1,4:522\n326#1,18:527\n309#1,7:545\n319#1,3:552\n322#1,4:557\n326#1,18:562\n372#2,5:380\n377#2,2:387\n372#2,5:406\n377#2,2:476\n372#2,5:506\n377#2,2:513\n84#3:385\n84#3:413\n84#3:511\n99#3:526\n99#3:561\n99#3:582\n99#3:585\n99#3:588\n99#3:591\n99#3:594\n99#3:597\n99#3:600\n99#3:603\n99#3:606\n26#4:386\n26#4:414\n26#4:512\n37#4,2:515\n37#4,2:520\n37#4,2:555\n37#4,2:580\n37#4,2:583\n37#4,2:586\n37#4,2:589\n37#4,2:592\n37#4,2:595\n37#4,2:598\n37#4,2:601\n37#4,2:604\n37#4,2:607\n852#5,8:389\n862#5,3:398\n866#5,11:479\n877#5,15:491\n69#6:397\n59#6:490\n*S KotlinDebug\n*F\n+ 1 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n*L\n42#1:401,5\n42#1:411,2\n42#1:415,61\n42#1:478\n255#1:517,3\n255#1:522,4\n255#1:527,18\n297#1:545,7\n301#1:552,3\n301#1:557,4\n301#1:562,18\n9#1:380,5\n9#1:387,2\n42#1:406,5\n42#1:476,2\n127#1:506,5\n127#1:513,2\n11#1:385\n42#1:413\n129#1:511\n255#1:526\n301#1:561\n325#1:582\n326#1:585\n330#1:588\n331#1:591\n332#1:594\n336#1:597\n337#1:600\n338#1:603\n339#1:606\n11#1:386\n42#1:414\n129#1:512\n211#1:515,2\n255#1:520,2\n301#1:555,2\n321#1:580,2\n325#1:583,2\n326#1:586,2\n330#1:589,2\n331#1:592,2\n332#1:595,2\n336#1:598,2\n337#1:601,2\n338#1:604,2\n339#1:607,2\n40#1:389,8\n40#1:398,3\n40#1:479,11\n40#1:491,15\n40#1:397\n40#1:490\n*E\n"})
/* loaded from: classes8.dex */
public final class e {
    public static final int a(char c10, char c11) {
        return ((c10 - 55232) << 10) | (c11 - CharCompanionObject.MIN_LOW_SURROGATE);
    }

    public static final int b(@NotNull ByteBuffer encodeUTF8, @NotNull CharSequence text, int i10, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(encodeUTF8, "$this$encodeUTF8");
        Intrinsics.checkNotNullParameter(text, "text");
        int min = Math.min(i11, i10 + 65535);
        int j10 = kotlin.ranges.e.j(i13, 65535);
        int i14 = i10;
        int i15 = i12;
        while (i15 < j10 && i14 < min) {
            int i16 = i14 + 1;
            char charAt = text.charAt(i14);
            int i17 = charAt & CharCompanionObject.MAX_VALUE;
            if ((charAt & 65408) == 0) {
                encodeUTF8.put(i15, (byte) i17);
                i14 = i16;
                i15++;
            } else {
                return c(encodeUTF8, text, i14, min, i10, i15, j10, i12);
            }
        }
        return c.d(s.b((short) (i14 - i10)), s.b((short) (i15 - i12)));
    }

    private static final int c(ByteBuffer byteBuffer, CharSequence charSequence, int i10, int i11, int i12, int i13, int i14, int i15) {
        int i16;
        int i17;
        int i18 = i14 - 3;
        int i19 = i10;
        int i20 = i13;
        while (i18 - i20 > 0 && i19 < i11) {
            int i21 = i19 + 1;
            char charAt = charSequence.charAt(i19);
            if (Character.isHighSurrogate(charAt)) {
                if (i21 != i11 && Character.isLowSurrogate(charSequence.charAt(i21))) {
                    i19 += 2;
                    i16 = a(charAt, charSequence.charAt(i21));
                } else {
                    i19 = i21;
                    i16 = 63;
                }
            } else {
                i19 = i21;
                i16 = charAt;
            }
            if (i16 >= 0 && i16 < 128) {
                byteBuffer.put(i20, (byte) i16);
                i17 = 1;
            } else if (128 <= i16 && i16 < 2048) {
                byteBuffer.put(i20, (byte) (((i16 >> 6) & 31) | 192));
                byteBuffer.put(i20 + 1, (byte) (128 | (i16 & 63)));
                i17 = 2;
            } else if (2048 <= i16 && i16 < 65536) {
                byteBuffer.put(i20, (byte) (((i16 >> 12) & 15) | 224));
                byteBuffer.put(i20 + 1, (byte) ((63 & (i16 >> 6)) | 128));
                byteBuffer.put(i20 + 2, (byte) (128 | (i16 & 63)));
                i17 = 3;
            } else if (65536 <= i16 && i16 < 1114112) {
                byteBuffer.put(i20, (byte) (((i16 >> 18) & 7) | 240));
                byteBuffer.put(i20 + 1, (byte) (((i16 >> 12) & 63) | 128));
                byteBuffer.put(i20 + 2, (byte) ((63 & (i16 >> 6)) | 128));
                byteBuffer.put(i20 + 3, (byte) (128 | (i16 & 63)));
                i17 = 4;
            } else {
                j(i16);
                throw new KotlinNothingValueException();
            }
            i20 += i17;
        }
        if (i20 == i18) {
            return d(byteBuffer, charSequence, i19, i11, i12, i20, i14, i15);
        }
        return c.d(s.b((short) (i19 - i12)), s.b((short) (i20 - i15)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e2, code lost:
        j(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ea, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00fd, code lost:
        return is.c.d(ms.s.b((short) (r3 - r20)), ms.s.b((short) (r4 - r23)));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final int d(java.nio.ByteBuffer r16, java.lang.CharSequence r17, int r18, int r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: is.e.d(java.nio.ByteBuffer, java.lang.CharSequence, int, int, int, int, int, int):int");
    }

    public static final int e(int i10) {
        return (i10 >>> 10) + 55232;
    }

    public static final boolean f(int i10) {
        if ((i10 >>> 16) == 0) {
            return true;
        }
        return false;
    }

    public static final boolean g(int i10) {
        if (i10 <= 1114111) {
            return true;
        }
        return false;
    }

    public static final int h(int i10) {
        return (i10 & MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD) + 56320;
    }

    @NotNull
    public static final Void i(int i10) {
        throw new MalformedUTF8InputException("Expected " + i10 + " more character bytes");
    }

    @NotNull
    public static final Void j(int i10) {
        throw new IllegalArgumentException("Malformed code-point " + i10 + " found");
    }
}
