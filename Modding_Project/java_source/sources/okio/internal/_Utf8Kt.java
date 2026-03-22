package okio.internal;

import com.ss.ttm.player.MediaPlayer;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: -Utf8.kt */
@Metadata
@SourceDebugExtension({"SMAP\n-Utf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n+ 2 Utf8.kt\nokio/Utf8\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,60:1\n260#2,16:61\n277#2:78\n397#2,9:79\n127#2:88\n406#2,20:90\n279#2,3:110\n440#2,4:113\n127#2:117\n446#2,10:118\n127#2:128\n456#2,5:129\n127#2:134\n461#2,24:135\n283#2,3:159\n500#2,3:162\n286#2,12:165\n503#2:177\n127#2:178\n506#2,2:179\n127#2:181\n510#2,10:182\n127#2:192\n520#2,5:193\n127#2:198\n525#2,5:199\n127#2:204\n530#2,28:205\n302#2,6:233\n138#2,67:239\n68#3:77\n74#3:89\n*S KotlinDebug\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n*L\n34#1:61,16\n34#1:78\n34#1:79,9\n34#1:88\n34#1:90,20\n34#1:110,3\n34#1:113,4\n34#1:117\n34#1:118,10\n34#1:128\n34#1:129,5\n34#1:134\n34#1:135,24\n34#1:159,3\n34#1:162,3\n34#1:165,12\n34#1:177\n34#1:178\n34#1:179,2\n34#1:181\n34#1:182,10\n34#1:192\n34#1:193,5\n34#1:198\n34#1:199,5\n34#1:204\n34#1:205,28\n34#1:233,6\n50#1:239,67\n34#1:77\n34#1:89\n*E\n"})
/* loaded from: classes8.dex */
public final class _Utf8Kt {
    @NotNull
    public static final byte[] commonAsUtf8ToByteArray(@NotNull String str) {
        int i10;
        char charAt;
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bArr = new byte[str.length() * 4];
        int length = str.length();
        int i11 = 0;
        while (i11 < length) {
            char charAt2 = str.charAt(i11);
            if (Intrinsics.compare((int) charAt2, 128) >= 0) {
                int length2 = str.length();
                int i12 = i11;
                while (i11 < length2) {
                    char charAt3 = str.charAt(i11);
                    if (Intrinsics.compare((int) charAt3, 128) < 0) {
                        int i13 = i12 + 1;
                        bArr[i12] = (byte) charAt3;
                        i11++;
                        while (true) {
                            i12 = i13;
                            if (i11 < length2 && Intrinsics.compare((int) str.charAt(i11), 128) < 0) {
                                i13 = i12 + 1;
                                bArr[i12] = (byte) str.charAt(i11);
                                i11++;
                            }
                        }
                    } else {
                        if (Intrinsics.compare((int) charAt3, 2048) < 0) {
                            bArr[i12] = (byte) ((charAt3 >> 6) | 192);
                            i12 += 2;
                            bArr[i12 + 1] = (byte) ((charAt3 & '?') | 128);
                        } else if (55296 <= charAt3 && charAt3 < 57344) {
                            if (Intrinsics.compare((int) charAt3, 56319) <= 0 && length2 > (i10 = i11 + 1) && 56320 <= (charAt = str.charAt(i10)) && charAt < 57344) {
                                int charAt4 = ((charAt3 << '\n') + str.charAt(i10)) - 56613888;
                                bArr[i12] = (byte) ((charAt4 >> 18) | 240);
                                bArr[i12 + 1] = (byte) (((charAt4 >> 12) & 63) | 128);
                                bArr[i12 + 2] = (byte) (((charAt4 >> 6) & 63) | 128);
                                i12 += 4;
                                bArr[i12 + 3] = (byte) ((charAt4 & 63) | 128);
                                i11 += 2;
                            } else {
                                bArr[i12] = 63;
                                i11++;
                                i12++;
                            }
                        } else {
                            bArr[i12] = (byte) ((charAt3 >> '\f') | 224);
                            bArr[i12 + 1] = (byte) (((charAt3 >> 6) & 63) | 128);
                            i12 += 3;
                            bArr[i12 + 2] = (byte) ((charAt3 & '?') | 128);
                        }
                        i11++;
                    }
                }
                byte[] copyOf = Arrays.copyOf(bArr, i12);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                return copyOf;
            }
            bArr[i11] = (byte) charAt2;
            i11++;
        }
        byte[] copyOf2 = Arrays.copyOf(bArr, str.length());
        Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
        return copyOf2;
    }

    @NotNull
    public static final String commonToUtf8String(@NotNull byte[] bArr, int i10, int i11) {
        byte b10;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18 = i10;
        int i19 = 3;
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        if (i18 >= 0 && i11 <= bArr.length && i18 <= i11) {
            char[] cArr = new char[i11 - i18];
            int i20 = 0;
            while (i18 < i11) {
                byte b11 = bArr[i18];
                if (b11 >= 0) {
                    int i21 = i20 + 1;
                    cArr[i20] = (char) b11;
                    i18++;
                    while (true) {
                        i20 = i21;
                        if (i18 < i11 && (b10 = bArr[i18]) >= 0) {
                            i18++;
                            i21 = i20 + 1;
                            cArr[i20] = (char) b10;
                        }
                    }
                } else if ((b11 >> 5) == -2) {
                    int i22 = i18 + 1;
                    if (i11 <= i22) {
                        i12 = i20 + 1;
                        cArr[i20] = (char) 65533;
                    } else {
                        byte b12 = bArr[i22];
                        if ((b12 & 192) == 128) {
                            int i23 = (b11 << 6) ^ (b12 ^ ByteCompanionObject.MIN_VALUE);
                            if (i23 < 128) {
                                i12 = i20 + 1;
                                cArr[i20] = (char) 65533;
                            } else {
                                i12 = i20 + 1;
                                cArr[i20] = (char) i23;
                            }
                            Unit unit = Unit.f60915a;
                            i13 = 2;
                            i20 = i12;
                            i18 += i13;
                        } else {
                            i12 = i20 + 1;
                            cArr[i20] = (char) 65533;
                        }
                    }
                    Unit unit2 = Unit.f60915a;
                    i13 = 1;
                    i20 = i12;
                    i18 += i13;
                } else if ((b11 >> 4) == -2) {
                    int i24 = i18 + 2;
                    if (i11 <= i24) {
                        int i25 = i20 + 1;
                        cArr[i20] = (char) 65533;
                        Unit unit3 = Unit.f60915a;
                        int i26 = i18 + 1;
                        if (i11 > i26 && (bArr[i26] & 192) == 128) {
                            i15 = 2;
                        } else {
                            i15 = 1;
                        }
                        i20 = i25;
                    } else {
                        byte b13 = bArr[i18 + 1];
                        if ((b13 & 192) == 128) {
                            byte b14 = bArr[i24];
                            if ((b14 & 192) == 128) {
                                int i27 = ((b14 ^ ByteCompanionObject.MIN_VALUE) ^ (b13 << 6)) ^ (b11 << 12);
                                if (i27 < 2048) {
                                    i14 = i20 + 1;
                                    cArr[i20] = (char) 65533;
                                } else if (55296 <= i27 && i27 < 57344) {
                                    i14 = i20 + 1;
                                    cArr[i20] = (char) 65533;
                                } else {
                                    char c10 = (char) i27;
                                    i14 = i20 + 1;
                                    cArr[i20] = c10;
                                }
                                Unit unit4 = Unit.f60915a;
                                i15 = i19;
                            } else {
                                i14 = i20 + 1;
                                cArr[i20] = (char) 65533;
                                Unit unit5 = Unit.f60915a;
                                i15 = 2;
                            }
                        } else {
                            i14 = i20 + 1;
                            cArr[i20] = (char) 65533;
                            Unit unit6 = Unit.f60915a;
                            i15 = 1;
                        }
                        i20 = i14;
                    }
                    i18 += i15;
                } else {
                    if ((b11 >> 3) == -2) {
                        int i28 = i18 + 3;
                        if (i11 <= i28) {
                            i16 = i20 + 1;
                            cArr[i20] = 65533;
                            Unit unit7 = Unit.f60915a;
                            int i29 = i18 + 1;
                            if (i11 > i29 && (bArr[i29] & 192) == 128) {
                                int i30 = i18 + 2;
                                if (i11 > i30 && (bArr[i30] & 192) == 128) {
                                    i20 = i16;
                                    i18 += i19;
                                }
                                i20 = i16;
                                i19 = 2;
                                i18 += i19;
                            }
                            i20 = i16;
                            i19 = 1;
                            i18 += i19;
                        } else {
                            byte b15 = bArr[i18 + 1];
                            if ((b15 & 192) == 128) {
                                byte b16 = bArr[i18 + 2];
                                if ((b16 & 192) == 128) {
                                    byte b17 = bArr[i28];
                                    if ((b17 & 192) == 128) {
                                        int i31 = (((b17 ^ ByteCompanionObject.MIN_VALUE) ^ (b16 << 6)) ^ (b15 << 12)) ^ (b11 << 18);
                                        if (i31 > 1114111) {
                                            i17 = i20 + 1;
                                            cArr[i20] = 65533;
                                        } else if (55296 <= i31 && i31 < 57344) {
                                            i17 = i20 + 1;
                                            cArr[i20] = 65533;
                                        } else if (i31 < 65536) {
                                            i17 = i20 + 1;
                                            cArr[i20] = 65533;
                                        } else if (i31 != 65533) {
                                            cArr[i20] = (char) ((i31 >>> 10) + 55232);
                                            cArr[i20 + 1] = (char) ((i31 & MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD) + 56320);
                                            i17 = i20 + 2;
                                        } else {
                                            i17 = i20 + 1;
                                            cArr[i20] = 65533;
                                        }
                                        Unit unit8 = Unit.f60915a;
                                        i20 = i17;
                                        i19 = 4;
                                    } else {
                                        cArr[i20] = 65533;
                                        Unit unit9 = Unit.f60915a;
                                        i20++;
                                        i19 = 3;
                                    }
                                    i18 += i19;
                                } else {
                                    i16 = i20 + 1;
                                    cArr[i20] = 65533;
                                    Unit unit10 = Unit.f60915a;
                                    i20 = i16;
                                    i19 = 2;
                                    i18 += i19;
                                }
                            } else {
                                i16 = i20 + 1;
                                cArr[i20] = 65533;
                                Unit unit11 = Unit.f60915a;
                                i20 = i16;
                                i19 = 1;
                                i18 += i19;
                            }
                        }
                    } else {
                        cArr[i20] = 65533;
                        i18++;
                        i20++;
                    }
                    i19 = 3;
                }
            }
            return StringsKt.y(cArr, 0, i20);
        }
        throw new ArrayIndexOutOfBoundsException("size=" + bArr.length + " beginIndex=" + i18 + " endIndex=" + i11);
    }

    public static /* synthetic */ String commonToUtf8String$default(byte[] bArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = bArr.length;
        }
        return commonToUtf8String(bArr, i10, i11);
    }
}
