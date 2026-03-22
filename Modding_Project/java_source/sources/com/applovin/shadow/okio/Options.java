package com.applovin.shadow.okio;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Options.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Options extends kotlin.collections.d<ByteString> implements RandomAccess {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final ByteString[] byteStrings;
    @NotNull
    private final int[] trie;

    /* compiled from: Options.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Options.kt\nokio/Options$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,236:1\n11065#2:237\n11400#2,3:238\n13374#2,3:243\n37#3,2:241\n1#4:246\n74#5:247\n74#5:248\n*S KotlinDebug\n*F\n+ 1 Options.kt\nokio/Options$Companion\n*L\n43#1:237\n43#1:238,3\n44#1:243,3\n43#1:241,2\n151#1:247\n208#1:248\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void buildTrieRecursive(long j10, Buffer buffer, int i10, List<? extends ByteString> list, int i11, int i12, List<Integer> list2) {
            int i13;
            int i14;
            int i15;
            int i16;
            Buffer buffer2;
            int i17 = i10;
            if (i11 < i12) {
                for (int i18 = i11; i18 < i12; i18++) {
                    if (list.get(i18).size() < i17) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                }
                ByteString byteString = list.get(i11);
                ByteString byteString2 = list.get(i12 - 1);
                int i19 = -1;
                if (i17 == byteString.size()) {
                    int i20 = i11 + 1;
                    i13 = i20;
                    i14 = list2.get(i11).intValue();
                    byteString = list.get(i20);
                } else {
                    i13 = i11;
                    i14 = -1;
                }
                if (byteString.getByte(i17) != byteString2.getByte(i17)) {
                    int i21 = 1;
                    for (int i22 = i13 + 1; i22 < i12; i22++) {
                        if (list.get(i22 - 1).getByte(i17) != list.get(i22).getByte(i17)) {
                            i21++;
                        }
                    }
                    long intCount = j10 + getIntCount(buffer) + 2 + (i21 * 2);
                    buffer.writeInt(i21);
                    buffer.writeInt(i14);
                    for (int i23 = i13; i23 < i12; i23++) {
                        byte b10 = list.get(i23).getByte(i17);
                        if (i23 == i13 || b10 != list.get(i23 - 1).getByte(i17)) {
                            buffer.writeInt(b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
                        }
                    }
                    Buffer buffer3 = new Buffer();
                    while (i13 < i12) {
                        byte b11 = list.get(i13).getByte(i17);
                        int i24 = i13 + 1;
                        int i25 = i24;
                        while (true) {
                            if (i25 < i12) {
                                if (b11 != list.get(i25).getByte(i17)) {
                                    i15 = i25;
                                    break;
                                }
                                i25++;
                            } else {
                                i15 = i12;
                                break;
                            }
                        }
                        if (i24 == i15 && i17 + 1 == list.get(i13).size()) {
                            buffer.writeInt(list2.get(i13).intValue());
                            i16 = i15;
                            buffer2 = buffer3;
                        } else {
                            buffer.writeInt(((int) (intCount + getIntCount(buffer3))) * i19);
                            i16 = i15;
                            buffer2 = buffer3;
                            buildTrieRecursive(intCount, buffer3, i17 + 1, list, i13, i15, list2);
                        }
                        buffer3 = buffer2;
                        i13 = i16;
                        i19 = -1;
                    }
                    buffer.writeAll(buffer3);
                    return;
                }
                int min = Math.min(byteString.size(), byteString2.size());
                int i26 = 0;
                for (int i27 = i17; i27 < min && byteString.getByte(i27) == byteString2.getByte(i27); i27++) {
                    i26++;
                }
                long intCount2 = j10 + getIntCount(buffer) + 2 + i26 + 1;
                buffer.writeInt(-i26);
                buffer.writeInt(i14);
                int i28 = i26 + i17;
                while (i17 < i28) {
                    buffer.writeInt(byteString.getByte(i17) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
                    i17++;
                }
                if (i13 + 1 == i12) {
                    if (i28 == list.get(i13).size()) {
                        buffer.writeInt(list2.get(i13).intValue());
                        return;
                    }
                    throw new IllegalStateException("Check failed.");
                }
                Buffer buffer4 = new Buffer();
                buffer.writeInt(((int) (getIntCount(buffer4) + intCount2)) * (-1));
                buildTrieRecursive(intCount2, buffer4, i28, list, i13, i12, list2);
                buffer.writeAll(buffer4);
                return;
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        static /* synthetic */ void buildTrieRecursive$default(Companion companion, long j10, Buffer buffer, int i10, List list, int i11, int i12, List list2, int i13, Object obj) {
            long j11;
            int i14;
            int i15;
            int i16;
            if ((i13 & 1) != 0) {
                j11 = 0;
            } else {
                j11 = j10;
            }
            if ((i13 & 4) != 0) {
                i14 = 0;
            } else {
                i14 = i10;
            }
            if ((i13 & 16) != 0) {
                i15 = 0;
            } else {
                i15 = i11;
            }
            if ((i13 & 32) != 0) {
                i16 = list.size();
            } else {
                i16 = i12;
            }
            companion.buildTrieRecursive(j11, buffer, i14, list, i15, i16, list2);
        }

        private final long getIntCount(Buffer buffer) {
            return buffer.size() / 4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:44:0x00d7, code lost:
            continue;
         */
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.applovin.shadow.okio.Options of(@org.jetbrains.annotations.NotNull com.applovin.shadow.okio.ByteString... r17) {
            /*
                Method dump skipped, instructions count: 290
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.shadow.okio.Options.Companion.of(com.applovin.shadow.okio.ByteString[]):com.applovin.shadow.okio.Options");
        }

        private Companion() {
        }
    }

    public /* synthetic */ Options(ByteString[] byteStringArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteStringArr, iArr);
    }

    @NotNull
    public static final Options of(@NotNull ByteString... byteStringArr) {
        return Companion.of(byteStringArr);
    }

    public /* bridge */ boolean contains(ByteString byteString) {
        return super.contains((Options) byteString);
    }

    @NotNull
    public final ByteString[] getByteStrings$okio() {
        return this.byteStrings;
    }

    @Override // kotlin.collections.d, kotlin.collections.b
    public int getSize() {
        return this.byteStrings.length;
    }

    @NotNull
    public final int[] getTrie$okio() {
        return this.trie;
    }

    public /* bridge */ int indexOf(ByteString byteString) {
        return super.indexOf((Options) byteString);
    }

    public /* bridge */ int lastIndexOf(ByteString byteString) {
        return super.lastIndexOf((Options) byteString);
    }

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.byteStrings = byteStringArr;
        this.trie = iArr;
    }

    @Override // kotlin.collections.b, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return contains((ByteString) obj);
        }
        return false;
    }

    @Override // kotlin.collections.d, java.util.List
    @NotNull
    public ByteString get(int i10) {
        return this.byteStrings[i10];
    }

    @Override // kotlin.collections.d, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return indexOf((ByteString) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.d, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return lastIndexOf((ByteString) obj);
        }
        return -1;
    }
}
