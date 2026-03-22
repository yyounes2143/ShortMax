package com.applovin.shadow.okio.internal;

import com.applovin.shadow.okio.Base64;
import com.applovin.shadow.okio.Buffer;
import com.applovin.shadow.okio.SegmentedByteString;
import com.applovin.shadow.okio._JvmPlatformKt;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ByteString.kt */
@Metadata
@SourceDebugExtension({"SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utf8.kt\nokio/Utf8\n*L\n1#1,363:1\n131#1,2:369\n133#1,9:372\n68#2:364\n74#2:365\n74#2:367\n74#2:368\n68#2:396\n74#2:408\n1#3:366\n1#3:371\n212#4,7:381\n122#4:388\n219#4,5:389\n122#4:394\n226#4:395\n228#4:397\n397#4,2:398\n122#4:400\n400#4,6:401\n127#4:407\n406#4:409\n122#4:410\n407#4,13:411\n122#4:424\n422#4:425\n122#4:426\n425#4:427\n230#4,3:428\n440#4,3:431\n122#4:434\n443#4:435\n127#4:436\n446#4,10:437\n127#4:447\n456#4:448\n122#4:449\n457#4,4:450\n127#4:454\n461#4:455\n122#4:456\n462#4,14:457\n122#4:471\n477#4,2:472\n122#4:474\n481#4:475\n122#4:476\n484#4:477\n234#4,3:478\n500#4,3:481\n122#4:484\n503#4:485\n127#4:486\n506#4,2:487\n127#4:489\n510#4,10:490\n127#4:500\n520#4:501\n122#4:502\n521#4,4:503\n127#4:507\n525#4:508\n122#4:509\n526#4,4:510\n127#4:514\n530#4:515\n122#4:516\n531#4,15:517\n122#4:532\n547#4,2:533\n122#4:535\n550#4,2:536\n122#4:538\n554#4:539\n122#4:540\n557#4:541\n241#4:542\n122#4:543\n242#4,5:544\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n*L\n329#1:369,2\n329#1:372,9\n67#1:364\n68#1:365\n258#1:367\n259#1:368\n348#1:396\n348#1:408\n329#1:371\n348#1:381,7\n353#1:388\n348#1:389,5\n353#1:394\n348#1:395\n348#1:397\n348#1:398,2\n353#1:400\n348#1:401,6\n348#1:407\n348#1:409\n353#1:410\n348#1:411,13\n353#1:424\n348#1:425\n353#1:426\n348#1:427\n348#1:428,3\n348#1:431,3\n353#1:434\n348#1:435\n348#1:436\n348#1:437,10\n348#1:447\n348#1:448\n353#1:449\n348#1:450,4\n348#1:454\n348#1:455\n353#1:456\n348#1:457,14\n353#1:471\n348#1:472,2\n353#1:474\n348#1:475\n353#1:476\n348#1:477\n348#1:478,3\n348#1:481,3\n353#1:484\n348#1:485\n348#1:486\n348#1:487,2\n348#1:489\n348#1:490,10\n348#1:500\n348#1:501\n353#1:502\n348#1:503,4\n348#1:507\n348#1:508\n353#1:509\n348#1:510,4\n348#1:514\n348#1:515\n353#1:516\n348#1:517,15\n353#1:532\n348#1:533,2\n353#1:535\n348#1:536,2\n353#1:538\n348#1:539\n353#1:540\n348#1:541\n348#1:542\n353#1:543\n348#1:544,5\n*E\n"})
/* renamed from: com.applovin.shadow.okio.internal.-ByteString */
/* loaded from: classes2.dex */
public final class ByteString {
    @NotNull
    private static final char[] HEX_DIGIT_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final int codePointIndexToCharIndex(byte[] bArr, int i10) {
        int i11;
        byte b10;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int length = bArr.length;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        loop0: while (i17 < length) {
            byte b11 = bArr[i17];
            if (b11 >= 0) {
                int i20 = i19 + 1;
                if (i19 == i10) {
                    return i18;
                }
                if ((b11 != 10 && b11 != 13 && ((b11 >= 0 && b11 < 32) || (Byte.MAX_VALUE <= b11 && b11 < 160))) || b11 == 65533) {
                    return -1;
                }
                if (b11 < 65536) {
                    i11 = 1;
                } else {
                    i11 = 2;
                }
                i18 += i11;
                i17++;
                while (true) {
                    i19 = i20;
                    if (i17 < length && (b10 = bArr[i17]) >= 0) {
                        i17++;
                        i20 = i19 + 1;
                        if (i19 == i10) {
                            return i18;
                        }
                        if ((b10 == 10 || b10 == 13 || ((b10 < 0 || b10 >= 32) && (Byte.MAX_VALUE > b10 || b10 >= 160))) && b10 != 65533) {
                            if (b10 < 65536) {
                                i12 = 1;
                            } else {
                                i12 = 2;
                            }
                            i18 += i12;
                        }
                    }
                }
            } else {
                if ((b11 >> 5) == -2) {
                    int i21 = i17 + 1;
                    if (length <= i21) {
                        if (i19 != i10) {
                            return -1;
                        }
                        return i18;
                    }
                    byte b12 = bArr[i21];
                    if ((b12 & 192) == 128) {
                        int i22 = (b12 ^ ByteCompanionObject.MIN_VALUE) ^ (b11 << 6);
                        if (i22 < 128) {
                            if (i19 != i10) {
                                return -1;
                            }
                            return i18;
                        }
                        i13 = i19 + 1;
                        if (i19 == i10) {
                            return i18;
                        }
                        if ((i22 != 10 && i22 != 13 && ((i22 >= 0 && i22 < 32) || (127 <= i22 && i22 < 160))) || i22 == 65533) {
                            return -1;
                        }
                        if (i22 < 65536) {
                            i16 = 1;
                        } else {
                            i16 = 2;
                        }
                        i18 += i16;
                        Unit unit = Unit.f60915a;
                        i17 += 2;
                    } else if (i19 != i10) {
                        return -1;
                    } else {
                        return i18;
                    }
                } else if ((b11 >> 4) == -2) {
                    int i23 = i17 + 2;
                    if (length <= i23) {
                        if (i19 != i10) {
                            return -1;
                        }
                        return i18;
                    }
                    byte b13 = bArr[i17 + 1];
                    if ((b13 & 192) == 128) {
                        byte b14 = bArr[i23];
                        if ((b14 & 192) == 128) {
                            int i24 = ((b13 << 6) ^ ((-123008) ^ b14)) ^ (b11 << 12);
                            if (i24 < 2048) {
                                if (i19 != i10) {
                                    return -1;
                                }
                                return i18;
                            } else if (55296 <= i24 && i24 < 57344) {
                                if (i19 != i10) {
                                    return -1;
                                }
                                return i18;
                            } else {
                                i13 = i19 + 1;
                                if (i19 == i10) {
                                    return i18;
                                }
                                if ((i24 != 10 && i24 != 13 && ((i24 >= 0 && i24 < 32) || (127 <= i24 && i24 < 160))) || i24 == 65533) {
                                    return -1;
                                }
                                if (i24 < 65536) {
                                    i15 = 1;
                                } else {
                                    i15 = 2;
                                }
                                i18 += i15;
                                Unit unit2 = Unit.f60915a;
                                i17 += 3;
                            }
                        } else if (i19 != i10) {
                            return -1;
                        } else {
                            return i18;
                        }
                    } else if (i19 != i10) {
                        return -1;
                    } else {
                        return i18;
                    }
                } else if ((b11 >> 3) == -2) {
                    int i25 = i17 + 3;
                    if (length <= i25) {
                        if (i19 != i10) {
                            return -1;
                        }
                        return i18;
                    }
                    byte b15 = bArr[i17 + 1];
                    if ((b15 & 192) == 128) {
                        byte b16 = bArr[i17 + 2];
                        if ((b16 & 192) == 128) {
                            byte b17 = bArr[i25];
                            if ((b17 & 192) == 128) {
                                int i26 = (((b17 ^ ByteCompanionObject.MIN_VALUE) ^ (b16 << 6)) ^ (b15 << 12)) ^ (b11 << 18);
                                if (i26 > 1114111) {
                                    if (i19 != i10) {
                                        return -1;
                                    }
                                    return i18;
                                } else if (55296 <= i26 && i26 < 57344) {
                                    if (i19 != i10) {
                                        return -1;
                                    }
                                    return i18;
                                } else if (i26 < 65536) {
                                    if (i19 != i10) {
                                        return -1;
                                    }
                                    return i18;
                                } else {
                                    i13 = i19 + 1;
                                    if (i19 == i10) {
                                        return i18;
                                    }
                                    if ((i26 != 10 && i26 != 13 && ((i26 >= 0 && i26 < 32) || (127 <= i26 && i26 < 160))) || i26 == 65533) {
                                        return -1;
                                    }
                                    if (i26 < 65536) {
                                        i14 = 1;
                                    } else {
                                        i14 = 2;
                                    }
                                    i18 += i14;
                                    Unit unit3 = Unit.f60915a;
                                    i17 += 4;
                                }
                            } else if (i19 != i10) {
                                return -1;
                            } else {
                                return i18;
                            }
                        } else if (i19 != i10) {
                            return -1;
                        } else {
                            return i18;
                        }
                    } else if (i19 != i10) {
                        return -1;
                    } else {
                        return i18;
                    }
                } else if (i19 != i10) {
                    return -1;
                } else {
                    return i18;
                }
                i19 = i13;
            }
        }
        return i18;
    }

    @NotNull
    public static final String commonBase64(@NotNull com.applovin.shadow.okio.ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return Base64.encodeBase64$default(byteString.getData$okio(), null, 1, null);
    }

    @NotNull
    public static final String commonBase64Url(@NotNull com.applovin.shadow.okio.ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return Base64.encodeBase64(byteString.getData$okio(), Base64.getBASE64_URL_SAFE());
    }

    public static final int commonCompareTo(@NotNull com.applovin.shadow.okio.ByteString byteString, @NotNull com.applovin.shadow.okio.ByteString other) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int size = byteString.size();
        int size2 = other.size();
        int min = Math.min(size, size2);
        for (int i10 = 0; i10 < min; i10++) {
            int i11 = byteString.getByte(i10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int i12 = other.getByte(i10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            if (i11 != i12) {
                if (i11 < i12) {
                    return -1;
                } else {
                    return 1;
                }
            }
        }
        if (size == size2) {
            return 0;
        }
        if (size < size2) {
            return -1;
        }
        return 1;
    }

    public static final void commonCopyInto(@NotNull com.applovin.shadow.okio.ByteString byteString, int i10, @NotNull byte[] target, int i11, int i12) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        n.h(byteString.getData$okio(), target, i11, i10, i12 + i10);
    }

    @Nullable
    public static final com.applovin.shadow.okio.ByteString commonDecodeBase64(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] decodeBase64ToArray = Base64.decodeBase64ToArray(str);
        if (decodeBase64ToArray != null) {
            return new com.applovin.shadow.okio.ByteString(decodeBase64ToArray);
        }
        return null;
    }

    @NotNull
    public static final com.applovin.shadow.okio.ByteString commonDecodeHex(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() % 2 == 0) {
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i10 = 0; i10 < length; i10++) {
                int i11 = i10 * 2;
                bArr[i10] = (byte) ((decodeHexDigit(str.charAt(i11)) << 4) + decodeHexDigit(str.charAt(i11 + 1)));
            }
            return new com.applovin.shadow.okio.ByteString(bArr);
        }
        throw new IllegalArgumentException(("Unexpected hex string: " + str).toString());
    }

    @NotNull
    public static final com.applovin.shadow.okio.ByteString commonEncodeUtf8(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        com.applovin.shadow.okio.ByteString byteString = new com.applovin.shadow.okio.ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
        byteString.setUtf8$okio(str);
        return byteString;
    }

    public static final boolean commonEndsWith(@NotNull com.applovin.shadow.okio.ByteString byteString, @NotNull com.applovin.shadow.okio.ByteString suffix) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        return byteString.rangeEquals(byteString.size() - suffix.size(), suffix, 0, suffix.size());
    }

    public static final boolean commonEquals(@NotNull com.applovin.shadow.okio.ByteString byteString, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        if (obj == byteString) {
            return true;
        }
        if (obj instanceof com.applovin.shadow.okio.ByteString) {
            com.applovin.shadow.okio.ByteString byteString2 = (com.applovin.shadow.okio.ByteString) obj;
            if (byteString2.size() == byteString.getData$okio().length && byteString2.rangeEquals(0, byteString.getData$okio(), 0, byteString.getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    public static final byte commonGetByte(@NotNull com.applovin.shadow.okio.ByteString byteString, int i10) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return byteString.getData$okio()[i10];
    }

    public static final int commonGetSize(@NotNull com.applovin.shadow.okio.ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return byteString.getData$okio().length;
    }

    public static final int commonHashCode(@NotNull com.applovin.shadow.okio.ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        int hashCode$okio = byteString.getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int hashCode = Arrays.hashCode(byteString.getData$okio());
        byteString.setHashCode$okio(hashCode);
        return hashCode;
    }

    @NotNull
    public static final String commonHex(@NotNull com.applovin.shadow.okio.ByteString byteString) {
        byte[] data$okio;
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        char[] cArr = new char[byteString.getData$okio().length * 2];
        int i10 = 0;
        for (byte b10 : byteString.getData$okio()) {
            int i11 = i10 + 1;
            cArr[i10] = getHEX_DIGIT_CHARS()[(b10 >> 4) & 15];
            i10 += 2;
            cArr[i11] = getHEX_DIGIT_CHARS()[b10 & 15];
        }
        return StringsKt.x(cArr);
    }

    public static final int commonIndexOf(@NotNull com.applovin.shadow.okio.ByteString byteString, @NotNull byte[] other, int i10) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int length = byteString.getData$okio().length - other.length;
        int max = Math.max(i10, 0);
        if (max <= length) {
            while (!SegmentedByteString.arrayRangeEquals(byteString.getData$okio(), max, other, 0, other.length)) {
                if (max != length) {
                    max++;
                } else {
                    return -1;
                }
            }
            return max;
        }
        return -1;
    }

    @NotNull
    public static final byte[] commonInternalArray(@NotNull com.applovin.shadow.okio.ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return byteString.getData$okio();
    }

    public static final int commonLastIndexOf(@NotNull com.applovin.shadow.okio.ByteString byteString, @NotNull com.applovin.shadow.okio.ByteString other, int i10) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return byteString.lastIndexOf(other.internalArray$okio(), i10);
    }

    @NotNull
    public static final com.applovin.shadow.okio.ByteString commonOf(@NotNull byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        byte[] copyOf = Arrays.copyOf(data, data.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        return new com.applovin.shadow.okio.ByteString(copyOf);
    }

    public static final boolean commonRangeEquals(@NotNull com.applovin.shadow.okio.ByteString byteString, int i10, @NotNull com.applovin.shadow.okio.ByteString other, int i11, int i12) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return other.rangeEquals(i11, byteString.getData$okio(), i10, i12);
    }

    public static final boolean commonStartsWith(@NotNull com.applovin.shadow.okio.ByteString byteString, @NotNull com.applovin.shadow.okio.ByteString prefix) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return byteString.rangeEquals(0, prefix, 0, prefix.size());
    }

    @NotNull
    public static final com.applovin.shadow.okio.ByteString commonSubstring(@NotNull com.applovin.shadow.okio.ByteString byteString, int i10, int i11) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        int resolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(byteString, i11);
        if (i10 >= 0) {
            if (resolveDefaultParameter <= byteString.getData$okio().length) {
                if (resolveDefaultParameter - i10 >= 0) {
                    if (i10 == 0 && resolveDefaultParameter == byteString.getData$okio().length) {
                        return byteString;
                    }
                    return new com.applovin.shadow.okio.ByteString(n.w(byteString.getData$okio(), i10, resolveDefaultParameter));
                }
                throw new IllegalArgumentException("endIndex < beginIndex");
            }
            throw new IllegalArgumentException(("endIndex > length(" + byteString.getData$okio().length + ')').toString());
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    @NotNull
    public static final com.applovin.shadow.okio.ByteString commonToAsciiLowercase(@NotNull com.applovin.shadow.okio.ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        for (int i10 = 0; i10 < byteString.getData$okio().length; i10++) {
            byte b10 = byteString.getData$okio()[i10];
            if (b10 >= 65 && b10 <= 90) {
                byte[] data$okio = byteString.getData$okio();
                byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
                copyOf[i10] = (byte) (b10 + 32);
                for (int i11 = i10 + 1; i11 < copyOf.length; i11++) {
                    byte b11 = copyOf[i11];
                    if (b11 >= 65 && b11 <= 90) {
                        copyOf[i11] = (byte) (b11 + 32);
                    }
                }
                return new com.applovin.shadow.okio.ByteString(copyOf);
            }
        }
        return byteString;
    }

    @NotNull
    public static final com.applovin.shadow.okio.ByteString commonToAsciiUppercase(@NotNull com.applovin.shadow.okio.ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        for (int i10 = 0; i10 < byteString.getData$okio().length; i10++) {
            byte b10 = byteString.getData$okio()[i10];
            if (b10 >= 97 && b10 <= 122) {
                byte[] data$okio = byteString.getData$okio();
                byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
                copyOf[i10] = (byte) (b10 - 32);
                for (int i11 = i10 + 1; i11 < copyOf.length; i11++) {
                    byte b11 = copyOf[i11];
                    if (b11 >= 97 && b11 <= 122) {
                        copyOf[i11] = (byte) (b11 - 32);
                    }
                }
                return new com.applovin.shadow.okio.ByteString(copyOf);
            }
        }
        return byteString;
    }

    @NotNull
    public static final byte[] commonToByteArray(@NotNull com.applovin.shadow.okio.ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        byte[] data$okio = byteString.getData$okio();
        byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        return copyOf;
    }

    @NotNull
    public static final com.applovin.shadow.okio.ByteString commonToByteString(@NotNull byte[] bArr, int i10, int i11) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        int resolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(bArr, i11);
        SegmentedByteString.checkOffsetAndCount(bArr.length, i10, resolveDefaultParameter);
        return new com.applovin.shadow.okio.ByteString(n.w(bArr, i10, resolveDefaultParameter + i10));
    }

    @NotNull
    public static final String commonToString(@NotNull com.applovin.shadow.okio.ByteString byteString) {
        com.applovin.shadow.okio.ByteString byteString2 = byteString;
        Intrinsics.checkNotNullParameter(byteString2, "<this>");
        if (byteString.getData$okio().length != 0) {
            int codePointIndexToCharIndex = codePointIndexToCharIndex(byteString.getData$okio(), 64);
            if (codePointIndexToCharIndex == -1) {
                if (byteString.getData$okio().length <= 64) {
                    return "[hex=" + byteString.hex() + ']';
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("[size=");
                sb2.append(byteString.getData$okio().length);
                sb2.append(" hex=");
                int resolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(byteString2, 64);
                if (resolveDefaultParameter <= byteString.getData$okio().length) {
                    if (resolveDefaultParameter >= 0) {
                        if (resolveDefaultParameter != byteString.getData$okio().length) {
                            byteString2 = new com.applovin.shadow.okio.ByteString(n.w(byteString.getData$okio(), 0, resolveDefaultParameter));
                        }
                        sb2.append(byteString2.hex());
                        sb2.append("…]");
                        return sb2.toString();
                    }
                    throw new IllegalArgumentException("endIndex < beginIndex");
                }
                throw new IllegalArgumentException(("endIndex > length(" + byteString.getData$okio().length + ')').toString());
            }
            String utf8 = byteString.utf8();
            String substring = utf8.substring(0, codePointIndexToCharIndex);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            String P = StringsKt.P(StringsKt.P(StringsKt.P(substring, "\\", "\\\\", false, 4, null), "\n", "\\n", false, 4, null), "\r", "\\r", false, 4, null);
            if (codePointIndexToCharIndex < utf8.length()) {
                return "[size=" + byteString.getData$okio().length + " text=" + P + "…]";
            }
            return "[text=" + P + ']';
        }
        return "[size=0]";
    }

    @NotNull
    public static final String commonUtf8(@NotNull com.applovin.shadow.okio.ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        String utf8$okio = byteString.getUtf8$okio();
        if (utf8$okio == null) {
            String utf8String = _JvmPlatformKt.toUtf8String(byteString.internalArray$okio());
            byteString.setUtf8$okio(utf8String);
            return utf8String;
        }
        return utf8$okio;
    }

    public static final void commonWrite(@NotNull com.applovin.shadow.okio.ByteString byteString, @NotNull Buffer buffer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        buffer.write(byteString.getData$okio(), i10, i11);
    }

    public static final int decodeHexDigit(char c10) {
        if ('0' <= c10 && c10 < ':') {
            return c10 - '0';
        }
        if ('a' <= c10 && c10 < 'g') {
            return c10 - 'W';
        }
        if ('A' <= c10 && c10 < 'G') {
            return c10 - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c10);
    }

    @NotNull
    public static final char[] getHEX_DIGIT_CHARS() {
        return HEX_DIGIT_CHARS;
    }

    public static final boolean commonEndsWith(@NotNull com.applovin.shadow.okio.ByteString byteString, @NotNull byte[] suffix) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        return byteString.rangeEquals(byteString.size() - suffix.length, suffix, 0, suffix.length);
    }

    public static final int commonLastIndexOf(@NotNull com.applovin.shadow.okio.ByteString byteString, @NotNull byte[] other, int i10) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        for (int min = Math.min(SegmentedByteString.resolveDefaultParameter(byteString, i10), byteString.getData$okio().length - other.length); -1 < min; min--) {
            if (SegmentedByteString.arrayRangeEquals(byteString.getData$okio(), min, other, 0, other.length)) {
                return min;
            }
        }
        return -1;
    }

    public static final boolean commonRangeEquals(@NotNull com.applovin.shadow.okio.ByteString byteString, int i10, @NotNull byte[] other, int i11, int i12) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return i10 >= 0 && i10 <= byteString.getData$okio().length - i12 && i11 >= 0 && i11 <= other.length - i12 && SegmentedByteString.arrayRangeEquals(byteString.getData$okio(), i10, other, i11, i12);
    }

    public static final boolean commonStartsWith(@NotNull com.applovin.shadow.okio.ByteString byteString, @NotNull byte[] prefix) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return byteString.rangeEquals(0, prefix, 0, prefix.length);
    }

    public static /* synthetic */ void getHEX_DIGIT_CHARS$annotations() {
    }
}
