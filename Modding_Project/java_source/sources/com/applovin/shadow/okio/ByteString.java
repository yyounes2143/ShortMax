package com.applovin.shadow.okio;

import com.mbridge.msdk.foundation.tools.SameMD5;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ByteString.kt */
@Metadata
@SourceDebugExtension({"SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/ByteString\n+ 2 ByteString.kt\nokio/internal/-ByteString\n+ 3 Util.kt\nokio/-SegmentedByteString\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,364:1\n43#2,7:365\n53#2:372\n56#2:373\n64#2,4:374\n68#2:379\n70#2:381\n76#2,23:382\n104#2,23:405\n131#2,2:428\n133#2,9:431\n145#2:440\n148#2:441\n151#2:442\n154#2:443\n162#2:444\n172#2,3:445\n171#2:448\n185#2,2:449\n190#2:451\n194#2:452\n198#2:453\n202#2:454\n206#2,7:455\n219#2:462\n223#2,8:463\n235#2,4:471\n244#2,5:475\n253#2,6:480\n259#2,9:487\n322#2,8:496\n131#2,2:504\n133#2,9:507\n333#2,9:516\n68#3:378\n74#3:380\n74#3:486\n1#4:430\n1#4:506\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/ByteString\n*L\n66#1:365,7\n71#1:372\n108#1:373\n110#1:374,4\n110#1:379\n110#1:381\n112#1:382,23\n114#1:405,23\n118#1:428,2\n118#1:431,9\n120#1:440\n129#1:441\n131#1:442\n133#1:443\n152#1:444\n159#1:445,3\n159#1:448\n166#1:449,2\n168#1:451\n170#1:452\n172#1:453\n174#1:454\n180#1:455,7\n183#1:462\n186#1:463,8\n188#1:471,4\n190#1:475,5\n192#1:480,6\n192#1:487,9\n194#1:496,8\n194#1:504,2\n194#1:507,9\n194#1:516,9\n110#1:378\n110#1:380\n192#1:486\n118#1:430\n194#1:506\n*E\n"})
/* loaded from: classes2.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final ByteString EMPTY = new ByteString(new byte[0]);
    private static final long serialVersionUID = 1;
    @NotNull
    private final byte[] data;
    private transient int hashCode;
    @Nullable
    private transient String utf8;

    /* compiled from: ByteString.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/ByteString$Companion\n+ 2 ByteString.kt\nokio/internal/-ByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,364:1\n271#2:365\n275#2,3:366\n282#2,3:369\n289#2,2:372\n295#2:374\n297#2,7:376\n1#3:375\n1#3:383\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/ByteString$Companion\n*L\n234#1:365\n239#1:366,3\n251#1:369,3\n259#1:372,2\n262#1:374\n262#1:376,7\n262#1:375\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ByteString encodeString$default(Companion companion, String str, Charset charset, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                charset = Charsets.UTF_8;
            }
            return companion.encodeString(str, charset);
        }

        public static /* synthetic */ ByteString of$default(Companion companion, byte[] bArr, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            if ((i12 & 2) != 0) {
                i11 = SegmentedByteString.getDEFAULT__ByteString_size();
            }
            return companion.of(bArr, i10, i11);
        }

        @ms.c
        @Nullable
        /* renamed from: -deprecated_decodeBase64  reason: not valid java name */
        public final ByteString m4608deprecated_decodeBase64(@NotNull String string) {
            Intrinsics.checkNotNullParameter(string, "string");
            return decodeBase64(string);
        }

        @ms.c
        @NotNull
        /* renamed from: -deprecated_decodeHex  reason: not valid java name */
        public final ByteString m4609deprecated_decodeHex(@NotNull String string) {
            Intrinsics.checkNotNullParameter(string, "string");
            return decodeHex(string);
        }

        @ms.c
        @NotNull
        /* renamed from: -deprecated_encodeString  reason: not valid java name */
        public final ByteString m4610deprecated_encodeString(@NotNull String string, @NotNull Charset charset) {
            Intrinsics.checkNotNullParameter(string, "string");
            Intrinsics.checkNotNullParameter(charset, "charset");
            return encodeString(string, charset);
        }

        @ms.c
        @NotNull
        /* renamed from: -deprecated_encodeUtf8  reason: not valid java name */
        public final ByteString m4611deprecated_encodeUtf8(@NotNull String string) {
            Intrinsics.checkNotNullParameter(string, "string");
            return encodeUtf8(string);
        }

        @ms.c
        @NotNull
        /* renamed from: -deprecated_of  reason: not valid java name */
        public final ByteString m4612deprecated_of(@NotNull ByteBuffer buffer) {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            return of(buffer);
        }

        @ms.c
        @NotNull
        /* renamed from: -deprecated_read  reason: not valid java name */
        public final ByteString m4614deprecated_read(@NotNull InputStream inputstream, int i10) {
            Intrinsics.checkNotNullParameter(inputstream, "inputstream");
            return read(inputstream, i10);
        }

        @Nullable
        public final ByteString decodeBase64(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            byte[] decodeBase64ToArray = Base64.decodeBase64ToArray(str);
            if (decodeBase64ToArray != null) {
                return new ByteString(decodeBase64ToArray);
            }
            return null;
        }

        @NotNull
        public final ByteString decodeHex(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            if (str.length() % 2 == 0) {
                int length = str.length() / 2;
                byte[] bArr = new byte[length];
                for (int i10 = 0; i10 < length; i10++) {
                    int i11 = i10 * 2;
                    bArr[i10] = (byte) ((com.applovin.shadow.okio.internal.ByteString.access$decodeHexDigit(str.charAt(i11)) << 4) + com.applovin.shadow.okio.internal.ByteString.access$decodeHexDigit(str.charAt(i11 + 1)));
                }
                return new ByteString(bArr);
            }
            throw new IllegalArgumentException(("Unexpected hex string: " + str).toString());
        }

        @NotNull
        public final ByteString encodeString(@NotNull String str, @NotNull Charset charset) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            Intrinsics.checkNotNullParameter(charset, "charset");
            byte[] bytes = str.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            return new ByteString(bytes);
        }

        @NotNull
        public final ByteString encodeUtf8(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            ByteString byteString = new ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
            byteString.setUtf8$okio(str);
            return byteString;
        }

        @NotNull
        public final ByteString of(@NotNull ByteBuffer byteBuffer) {
            Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return new ByteString(bArr);
        }

        @NotNull
        public final ByteString read(@NotNull InputStream inputStream, int i10) throws IOException {
            Intrinsics.checkNotNullParameter(inputStream, "<this>");
            if (i10 >= 0) {
                byte[] bArr = new byte[i10];
                int i11 = 0;
                while (i11 < i10) {
                    int read = inputStream.read(bArr, i11, i10 - i11);
                    if (read != -1) {
                        i11 += read;
                    } else {
                        throw new EOFException();
                    }
                }
                return new ByteString(bArr);
            }
            throw new IllegalArgumentException(("byteCount < 0: " + i10).toString());
        }

        private Companion() {
        }

        @ms.c
        @NotNull
        /* renamed from: -deprecated_of  reason: not valid java name */
        public final ByteString m4613deprecated_of(@NotNull byte[] array, int i10, int i11) {
            Intrinsics.checkNotNullParameter(array, "array");
            return of(array, i10, i11);
        }

        @NotNull
        public final ByteString of(@NotNull byte... data) {
            Intrinsics.checkNotNullParameter(data, "data");
            byte[] copyOf = Arrays.copyOf(data, data.length);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
            return new ByteString(copyOf);
        }

        @NotNull
        public final ByteString of(@NotNull byte[] bArr, int i10, int i11) {
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            int resolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(bArr, i11);
            SegmentedByteString.checkOffsetAndCount(bArr.length, i10, resolveDefaultParameter);
            return new ByteString(kotlin.collections.n.w(bArr, i10, resolveDefaultParameter + i10));
        }
    }

    public ByteString(@NotNull byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
    }

    public static /* synthetic */ void copyInto$default(ByteString byteString, int i10, byte[] bArr, int i11, int i12, int i13, Object obj) {
        if (obj == null) {
            if ((i13 & 1) != 0) {
                i10 = 0;
            }
            if ((i13 & 4) != 0) {
                i11 = 0;
            }
            byteString.copyInto(i10, bArr, i11, i12);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copyInto");
    }

    @Nullable
    public static final ByteString decodeBase64(@NotNull String str) {
        return Companion.decodeBase64(str);
    }

    @NotNull
    public static final ByteString decodeHex(@NotNull String str) {
        return Companion.decodeHex(str);
    }

    @NotNull
    public static final ByteString encodeString(@NotNull String str, @NotNull Charset charset) {
        return Companion.encodeString(str, charset);
    }

    @NotNull
    public static final ByteString encodeUtf8(@NotNull String str) {
        return Companion.encodeUtf8(str);
    }

    public static /* synthetic */ int indexOf$default(ByteString byteString, ByteString byteString2, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = 0;
            }
            return byteString.indexOf(byteString2, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
    }

    public static /* synthetic */ int lastIndexOf$default(ByteString byteString, ByteString byteString2, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = SegmentedByteString.getDEFAULT__ByteString_size();
            }
            return byteString.lastIndexOf(byteString2, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
    }

    @NotNull
    public static final ByteString of(@NotNull ByteBuffer byteBuffer) {
        return Companion.of(byteBuffer);
    }

    @NotNull
    public static final ByteString read(@NotNull InputStream inputStream, int i10) throws IOException {
        return Companion.read(inputStream, i10);
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IOException {
        ByteString read = Companion.read(objectInputStream, objectInputStream.readInt());
        Field declaredField = ByteString.class.getDeclaredField("data");
        declaredField.setAccessible(true);
        declaredField.set(this, read.data);
    }

    public static /* synthetic */ ByteString substring$default(ByteString byteString, int i10, int i11, int i12, Object obj) {
        if (obj == null) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            if ((i12 & 2) != 0) {
                i11 = SegmentedByteString.getDEFAULT__ByteString_size();
            }
            return byteString.substring(i10, i11);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: substring");
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    @ms.c
    /* renamed from: -deprecated_getByte  reason: not valid java name */
    public final byte m4606deprecated_getByte(int i10) {
        return getByte(i10);
    }

    @ms.c
    /* renamed from: -deprecated_size  reason: not valid java name */
    public final int m4607deprecated_size() {
        return size();
    }

    @NotNull
    public ByteBuffer asByteBuffer() {
        ByteBuffer asReadOnlyBuffer = ByteBuffer.wrap(this.data).asReadOnlyBuffer();
        Intrinsics.checkNotNullExpressionValue(asReadOnlyBuffer, "asReadOnlyBuffer(...)");
        return asReadOnlyBuffer;
    }

    @NotNull
    public String base64() {
        return Base64.encodeBase64$default(getData$okio(), null, 1, null);
    }

    @NotNull
    public String base64Url() {
        return Base64.encodeBase64(getData$okio(), Base64.getBASE64_URL_SAFE());
    }

    public void copyInto(int i10, @NotNull byte[] target, int i11, int i12) {
        Intrinsics.checkNotNullParameter(target, "target");
        kotlin.collections.n.h(getData$okio(), target, i11, i10, i12 + i10);
    }

    @NotNull
    public ByteString digest$okio(@NotNull String algorithm) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        messageDigest.update(this.data, 0, size());
        byte[] digest = messageDigest.digest();
        Intrinsics.checkNotNull(digest);
        return new ByteString(digest);
    }

    public final boolean endsWith(@NotNull ByteString suffix) {
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        return rangeEquals(size() - suffix.size(), suffix, 0, suffix.size());
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == getData$okio().length && byteString.rangeEquals(0, getData$okio(), 0, getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    public final byte getByte(int i10) {
        return internalGet$okio(i10);
    }

    @NotNull
    public final byte[] getData$okio() {
        return this.data;
    }

    public final int getHashCode$okio() {
        return this.hashCode;
    }

    public int getSize$okio() {
        return getData$okio().length;
    }

    @Nullable
    public final String getUtf8$okio() {
        return this.utf8;
    }

    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio == 0) {
            int hashCode = Arrays.hashCode(getData$okio());
            setHashCode$okio(hashCode);
            return hashCode;
        }
        return hashCode$okio;
    }

    @NotNull
    public String hex() {
        byte[] data$okio;
        char[] cArr = new char[getData$okio().length * 2];
        int i10 = 0;
        for (byte b10 : getData$okio()) {
            int i11 = i10 + 1;
            cArr[i10] = com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[(b10 >> 4) & 15];
            i10 += 2;
            cArr[i11] = com.applovin.shadow.okio.internal.ByteString.getHEX_DIGIT_CHARS()[b10 & 15];
        }
        return StringsKt.x(cArr);
    }

    @NotNull
    public ByteString hmac$okio(@NotNull String algorithm, @NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            byte[] doFinal = mac.doFinal(this.data);
            Intrinsics.checkNotNullExpressionValue(doFinal, "doFinal(...)");
            return new ByteString(doFinal);
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    @NotNull
    public ByteString hmacSha1(@NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac$okio("HmacSHA1", key);
    }

    @NotNull
    public ByteString hmacSha256(@NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac$okio("HmacSHA256", key);
    }

    @NotNull
    public ByteString hmacSha512(@NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac$okio("HmacSHA512", key);
    }

    public final int indexOf(@NotNull ByteString other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return indexOf$default(this, other, 0, 2, (Object) null);
    }

    @NotNull
    public byte[] internalArray$okio() {
        return getData$okio();
    }

    public byte internalGet$okio(int i10) {
        return getData$okio()[i10];
    }

    public final int lastIndexOf(@NotNull ByteString other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return lastIndexOf$default(this, other, 0, 2, (Object) null);
    }

    @NotNull
    public final ByteString md5() {
        return digest$okio(SameMD5.TAG);
    }

    public boolean rangeEquals(int i10, @NotNull ByteString other, int i11, int i12) {
        Intrinsics.checkNotNullParameter(other, "other");
        return other.rangeEquals(i11, getData$okio(), i10, i12);
    }

    public final void setHashCode$okio(int i10) {
        this.hashCode = i10;
    }

    public final void setUtf8$okio(@Nullable String str) {
        this.utf8 = str;
    }

    @NotNull
    public final ByteString sha1() {
        return digest$okio(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1);
    }

    @NotNull
    public final ByteString sha256() {
        return digest$okio("SHA-256");
    }

    @NotNull
    public final ByteString sha512() {
        return digest$okio("SHA-512");
    }

    public final int size() {
        return getSize$okio();
    }

    public final boolean startsWith(@NotNull ByteString prefix) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return rangeEquals(0, prefix, 0, prefix.size());
    }

    @NotNull
    public String string(@NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        return new String(this.data, charset);
    }

    @NotNull
    public final ByteString substring() {
        return substring$default(this, 0, 0, 3, null);
    }

    @NotNull
    public ByteString toAsciiLowercase() {
        for (int i10 = 0; i10 < getData$okio().length; i10++) {
            byte b10 = getData$okio()[i10];
            if (b10 >= 65 && b10 <= 90) {
                byte[] data$okio = getData$okio();
                byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
                copyOf[i10] = (byte) (b10 + 32);
                for (int i11 = i10 + 1; i11 < copyOf.length; i11++) {
                    byte b11 = copyOf[i11];
                    if (b11 >= 65 && b11 <= 90) {
                        copyOf[i11] = (byte) (b11 + 32);
                    }
                }
                return new ByteString(copyOf);
            }
        }
        return this;
    }

    @NotNull
    public ByteString toAsciiUppercase() {
        for (int i10 = 0; i10 < getData$okio().length; i10++) {
            byte b10 = getData$okio()[i10];
            if (b10 >= 97 && b10 <= 122) {
                byte[] data$okio = getData$okio();
                byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
                copyOf[i10] = (byte) (b10 - 32);
                for (int i11 = i10 + 1; i11 < copyOf.length; i11++) {
                    byte b11 = copyOf[i11];
                    if (b11 >= 97 && b11 <= 122) {
                        copyOf[i11] = (byte) (b11 - 32);
                    }
                }
                return new ByteString(copyOf);
            }
        }
        return this;
    }

    @NotNull
    public byte[] toByteArray() {
        byte[] data$okio = getData$okio();
        byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        return copyOf;
    }

    @NotNull
    public String toString() {
        ByteString byteString;
        String str;
        if (getData$okio().length == 0) {
            str = "[size=0]";
        } else {
            int access$codePointIndexToCharIndex = com.applovin.shadow.okio.internal.ByteString.access$codePointIndexToCharIndex(getData$okio(), 64);
            if (access$codePointIndexToCharIndex == -1) {
                if (getData$okio().length <= 64) {
                    str = "[hex=" + hex() + ']';
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("[size=");
                    sb2.append(getData$okio().length);
                    sb2.append(" hex=");
                    int resolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(this, 64);
                    if (resolveDefaultParameter <= getData$okio().length) {
                        if (resolveDefaultParameter >= 0) {
                            if (resolveDefaultParameter == getData$okio().length) {
                                byteString = this;
                            } else {
                                byteString = new ByteString(kotlin.collections.n.w(getData$okio(), 0, resolveDefaultParameter));
                            }
                            sb2.append(byteString.hex());
                            sb2.append("…]");
                            return sb2.toString();
                        }
                        throw new IllegalArgumentException("endIndex < beginIndex");
                    }
                    throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
                }
            } else {
                String utf8 = utf8();
                String substring = utf8.substring(0, access$codePointIndexToCharIndex);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                String P = StringsKt.P(StringsKt.P(StringsKt.P(substring, "\\", "\\\\", false, 4, null), "\n", "\\n", false, 4, null), "\r", "\\r", false, 4, null);
                if (access$codePointIndexToCharIndex < utf8.length()) {
                    return "[size=" + getData$okio().length + " text=" + P + "…]";
                }
                return "[text=" + P + ']';
            }
        }
        return str;
    }

    @NotNull
    public String utf8() {
        String utf8$okio = getUtf8$okio();
        if (utf8$okio == null) {
            String utf8String = _JvmPlatformKt.toUtf8String(internalArray$okio());
            setUtf8$okio(utf8String);
            return utf8String;
        }
        return utf8$okio;
    }

    public void write(@NotNull OutputStream out) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        out.write(this.data);
    }

    public void write$okio(@NotNull Buffer buffer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        com.applovin.shadow.okio.internal.ByteString.commonWrite(this, buffer, i10, i11);
    }

    public static /* synthetic */ int indexOf$default(ByteString byteString, byte[] bArr, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = 0;
            }
            return byteString.indexOf(bArr, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
    }

    @NotNull
    public static final ByteString of(@NotNull byte... bArr) {
        return Companion.of(bArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
        if (r0 < r1) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0028, code lost:
        if (r7 < r8) goto L9;
     */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int compareTo(@org.jetbrains.annotations.NotNull com.applovin.shadow.okio.ByteString r10) {
        /*
            r9 = this;
            java.lang.String r0 = "other"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            int r0 = r9.size()
            int r1 = r10.size()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = r3
        L13:
            r5 = -1
            r6 = 1
            if (r4 >= r2) goto L2e
            byte r7 = r9.getByte(r4)
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r8 = r10.getByte(r4)
            r8 = r8 & 255(0xff, float:3.57E-43)
            if (r7 != r8) goto L28
            int r4 = r4 + 1
            goto L13
        L28:
            if (r7 >= r8) goto L2c
        L2a:
            r3 = r5
            goto L34
        L2c:
            r3 = r6
            goto L34
        L2e:
            if (r0 != r1) goto L31
            goto L34
        L31:
            if (r0 >= r1) goto L2c
            goto L2a
        L34:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.shadow.okio.ByteString.compareTo(com.applovin.shadow.okio.ByteString):int");
    }

    public final boolean endsWith(@NotNull byte[] suffix) {
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        return rangeEquals(size() - suffix.length, suffix, 0, suffix.length);
    }

    public final int indexOf(@NotNull byte[] other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return indexOf$default(this, other, 0, 2, (Object) null);
    }

    public final int lastIndexOf(@NotNull byte[] other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return lastIndexOf$default(this, other, 0, 2, (Object) null);
    }

    public boolean rangeEquals(int i10, @NotNull byte[] other, int i11, int i12) {
        Intrinsics.checkNotNullParameter(other, "other");
        return i10 >= 0 && i10 <= getData$okio().length - i12 && i11 >= 0 && i11 <= other.length - i12 && SegmentedByteString.arrayRangeEquals(getData$okio(), i10, other, i11, i12);
    }

    public final boolean startsWith(@NotNull byte[] prefix) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return rangeEquals(0, prefix, 0, prefix.length);
    }

    @NotNull
    public final ByteString substring(int i10) {
        return substring$default(this, i10, 0, 2, null);
    }

    public static /* synthetic */ int lastIndexOf$default(ByteString byteString, byte[] bArr, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = SegmentedByteString.getDEFAULT__ByteString_size();
            }
            return byteString.lastIndexOf(bArr, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
    }

    @NotNull
    public static final ByteString of(@NotNull byte[] bArr, int i10, int i11) {
        return Companion.of(bArr, i10, i11);
    }

    public final int indexOf(@NotNull ByteString other, int i10) {
        Intrinsics.checkNotNullParameter(other, "other");
        return indexOf(other.internalArray$okio(), i10);
    }

    public final int lastIndexOf(@NotNull ByteString other, int i10) {
        Intrinsics.checkNotNullParameter(other, "other");
        return lastIndexOf(other.internalArray$okio(), i10);
    }

    @NotNull
    public ByteString substring(int i10, int i11) {
        int resolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(this, i11);
        if (i10 >= 0) {
            if (resolveDefaultParameter <= getData$okio().length) {
                if (resolveDefaultParameter - i10 >= 0) {
                    return (i10 == 0 && resolveDefaultParameter == getData$okio().length) ? this : new ByteString(kotlin.collections.n.w(getData$okio(), i10, resolveDefaultParameter));
                }
                throw new IllegalArgumentException("endIndex < beginIndex");
            }
            throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    public int indexOf(@NotNull byte[] other, int i10) {
        Intrinsics.checkNotNullParameter(other, "other");
        int length = getData$okio().length - other.length;
        int max = Math.max(i10, 0);
        if (max <= length) {
            while (!SegmentedByteString.arrayRangeEquals(getData$okio(), max, other, 0, other.length)) {
                if (max != length) {
                    max++;
                }
            }
            return max;
        }
        return -1;
    }

    public int lastIndexOf(@NotNull byte[] other, int i10) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int min = Math.min(SegmentedByteString.resolveDefaultParameter(this, i10), getData$okio().length - other.length); -1 < min; min--) {
            if (SegmentedByteString.arrayRangeEquals(getData$okio(), min, other, 0, other.length)) {
                return min;
            }
        }
        return -1;
    }
}
