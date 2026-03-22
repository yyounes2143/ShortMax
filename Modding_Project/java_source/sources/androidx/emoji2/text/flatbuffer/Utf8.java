package androidx.emoji2.text.flatbuffer;

import com.ss.ttm.player.MediaPlayer;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public abstract class Utf8 {
    private static Utf8 DEFAULT;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class DecodeUtil {
        DecodeUtil() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleFourBytes(byte b10, byte b11, byte b12, byte b13, char[] cArr, int i10) throws IllegalArgumentException {
            if (!isNotTrailingByte(b11) && (((b10 << 28) + (b11 + 112)) >> 30) == 0 && !isNotTrailingByte(b12) && !isNotTrailingByte(b13)) {
                int trailingByteValue = ((b10 & 7) << 18) | (trailingByteValue(b11) << 12) | (trailingByteValue(b12) << 6) | trailingByteValue(b13);
                cArr[i10] = highSurrogate(trailingByteValue);
                cArr[i10 + 1] = lowSurrogate(trailingByteValue);
                return;
            }
            throw new IllegalArgumentException("Invalid UTF-8");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleOneByte(byte b10, char[] cArr, int i10) {
            cArr[i10] = (char) b10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleThreeBytes(byte b10, byte b11, byte b12, char[] cArr, int i10) throws IllegalArgumentException {
            if (!isNotTrailingByte(b11) && ((b10 != -32 || b11 >= -96) && ((b10 != -19 || b11 < -96) && !isNotTrailingByte(b12)))) {
                cArr[i10] = (char) (((b10 & 15) << 12) | (trailingByteValue(b11) << 6) | trailingByteValue(b12));
                return;
            }
            throw new IllegalArgumentException("Invalid UTF-8");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleTwoBytes(byte b10, byte b11, char[] cArr, int i10) throws IllegalArgumentException {
            if (b10 >= -62) {
                if (!isNotTrailingByte(b11)) {
                    cArr[i10] = (char) (((b10 & 31) << 6) | trailingByteValue(b11));
                    return;
                }
                throw new IllegalArgumentException("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
            }
            throw new IllegalArgumentException("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
        }

        private static char highSurrogate(int i10) {
            return (char) ((i10 >>> 10) + 55232);
        }

        private static boolean isNotTrailingByte(byte b10) {
            if (b10 > -65) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean isOneByte(byte b10) {
            if (b10 >= 0) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean isThreeBytes(byte b10) {
            if (b10 < -16) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean isTwoBytes(byte b10) {
            if (b10 < -32) {
                return true;
            }
            return false;
        }

        private static char lowSurrogate(int i10) {
            return (char) ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD) + 56320);
        }

        private static int trailingByteValue(byte b10) {
            return b10 & 63;
        }
    }

    /* loaded from: classes2.dex */
    static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i10, int i11) {
            super("Unpaired surrogate at index " + i10 + " of " + i11);
        }
    }

    public static Utf8 getDefault() {
        if (DEFAULT == null) {
            DEFAULT = new Utf8Safe();
        }
        return DEFAULT;
    }

    public static void setDefault(Utf8 utf8) {
        DEFAULT = utf8;
    }

    public abstract String decodeUtf8(ByteBuffer byteBuffer, int i10, int i11);

    public abstract void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer);

    public abstract int encodedLength(CharSequence charSequence);
}
