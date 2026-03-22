package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.Immutable;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotIdSet.kt */
@Metadata
@Immutable
@SourceDebugExtension({"SMAP\nSnapshotIdSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotIdSet.kt\nandroidx/compose/runtime/snapshots/SnapshotIdSet\n+ 2 SnapshotId.jvm.kt\nandroidx/compose/runtime/snapshots/SnapshotId_jvmKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,315:1\n274#1,7:355\n281#1,4:366\n288#1,8:371\n276#1:379\n274#1,7:380\n281#1,4:391\n288#1,8:396\n276#1:404\n274#1,7:405\n281#1,4:416\n288#1,8:421\n276#1:429\n274#1,7:430\n281#1,4:441\n288#1,8:446\n276#1:454\n274#1,7:455\n281#1,4:466\n288#1,8:471\n276#1:479\n280#1:480\n281#1,4:485\n288#1,8:490\n38#2:316\n34#2:317\n46#2:318\n34#2:319\n46#2:320\n34#2:321\n38#2:323\n34#2:324\n46#2:325\n34#2:326\n46#2:327\n34#2:328\n36#2,9:329\n34#2,7:338\n31#2:345\n36#2:346\n36#2:347\n143#2:348\n38#2:349\n34#2:350\n46#2:351\n34#2:352\n46#2:353\n34#2:354\n83#2,4:362\n36#2:370\n83#2,4:387\n36#2:395\n83#2,4:412\n36#2:420\n83#2,4:437\n36#2:445\n83#2,4:462\n36#2:470\n83#2,4:481\n36#2:489\n83#2,4:498\n36#2:502\n36#2:503\n68#2:504\n36#2:505\n36#2:506\n1#3:322\n1557#4:507\n1628#4,3:508\n*S KotlinDebug\n*F\n+ 1 SnapshotIdSet.kt\nandroidx/compose/runtime/snapshots/SnapshotIdSet\n*L\n198#1:355,7\n198#1:366,4\n198#1:371,8\n198#1:379\n218#1:380,7\n218#1:391,4\n218#1:396,8\n218#1:404\n222#1:405,7\n222#1:416,4\n222#1:421,8\n222#1:429\n242#1:430,7\n242#1:441,4\n242#1:446,8\n242#1:454\n245#1:455,7\n245#1:466,4\n245#1:471,8\n245#1:479\n275#1:480\n275#1:485,4\n275#1:490,8\n55#1:316\n56#1:317\n57#1:318\n58#1:319\n59#1:320\n60#1:321\n67#1:323\n68#1:324\n69#1:325\n78#1:326\n79#1:327\n88#1:328\n96#1:329,9\n97#1:338,7\n99#1:345\n106#1:346\n117#1:347\n131#1:348\n147#1:349\n148#1:350\n149#1:351\n158#1:352\n159#1:353\n168#1:354\n198#1:362,4\n198#1:370\n218#1:387,4\n218#1:395\n222#1:412,4\n222#1:420\n242#1:437,4\n242#1:445\n245#1:462,4\n245#1:470\n275#1:481,4\n275#1:489\n280#1:498,4\n284#1:502\n291#1:503\n299#1:504\n300#1:505\n301#1:506\n306#1:507\n306#1:508,3\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotIdSet implements Iterable<Long>, KMappedMarker {
    public static final int $stable = 0;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final SnapshotIdSet EMPTY = new SnapshotIdSet(0, 0, 0, null);
    @Nullable
    private final long[] belowBound;
    private final long lowerBound;
    private final long lowerSet;
    private final long upperSet;

    /* compiled from: SnapshotIdSet.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final SnapshotIdSet getEMPTY() {
            return SnapshotIdSet.EMPTY;
        }

        private Companion() {
        }
    }

    private SnapshotIdSet(long j10, long j11, long j12, long[] jArr) {
        this.upperSet = j10;
        this.lowerSet = j11;
        this.lowerBound = j12;
        this.belowBound = jArr;
    }

    private final SnapshotIdSet fastFold(SnapshotIdSet snapshotIdSet, Function2<? super SnapshotIdSet, ? super Long, SnapshotIdSet> function2) {
        long[] jArr = this.belowBound;
        if (jArr != null) {
            for (long j10 : jArr) {
                snapshotIdSet = function2.invoke(snapshotIdSet, Long.valueOf(j10));
            }
        }
        if (this.lowerSet != 0) {
            for (int i10 = 0; i10 < 64; i10++) {
                if ((this.lowerSet & (1 << i10)) != 0) {
                    snapshotIdSet = function2.invoke(snapshotIdSet, Long.valueOf(this.lowerBound + i10));
                }
            }
        }
        if (this.upperSet != 0) {
            for (int i11 = 0; i11 < 64; i11++) {
                if ((this.upperSet & (1 << i11)) != 0) {
                    snapshotIdSet = function2.invoke(snapshotIdSet, Long.valueOf(this.lowerBound + i11 + 64));
                }
            }
        }
        return snapshotIdSet;
    }

    @NotNull
    public final SnapshotIdSet and(@NotNull SnapshotIdSet snapshotIdSet) {
        SnapshotIdSet snapshotIdSet2 = EMPTY;
        if (Intrinsics.areEqual(snapshotIdSet, snapshotIdSet2)) {
            return snapshotIdSet2;
        }
        if (Intrinsics.areEqual(this, snapshotIdSet2)) {
            return snapshotIdSet2;
        }
        long j10 = snapshotIdSet.lowerBound;
        long j11 = this.lowerBound;
        if (j10 == j11) {
            long[] jArr = snapshotIdSet.belowBound;
            long[] jArr2 = this.belowBound;
            if (jArr == jArr2) {
                long j12 = this.upperSet;
                long j13 = snapshotIdSet.upperSet;
                long j14 = this.lowerSet;
                SnapshotIdSet snapshotIdSet3 = snapshotIdSet2;
                long j15 = snapshotIdSet.lowerSet;
                long j16 = j14 & j15;
                if ((j12 & j13) != 0 || j16 != 0 || jArr2 != null) {
                    snapshotIdSet3 = new SnapshotIdSet(j12 & j13, j14 & j15, j11, jArr2);
                }
                return snapshotIdSet3;
            }
        }
        SnapshotIdSet snapshotIdSet4 = snapshotIdSet2;
        int i10 = 0;
        if (this.belowBound == null) {
            long[] jArr3 = this.belowBound;
            if (jArr3 != null) {
                for (long j17 : jArr3) {
                    if (snapshotIdSet.get(j17)) {
                        snapshotIdSet4 = snapshotIdSet4.set(j17);
                    }
                }
            }
            SnapshotIdSet snapshotIdSet5 = snapshotIdSet4;
            long j18 = 0;
            if (this.lowerSet != 0) {
                int i11 = 0;
                while (i11 < 64) {
                    if ((this.lowerSet & (1 << i11)) != j18) {
                        long j19 = this.lowerBound + i11;
                        if (snapshotIdSet.get(j19)) {
                            snapshotIdSet5 = snapshotIdSet5.set(j19);
                        }
                    }
                    i11++;
                    j18 = 0;
                }
            }
            long j20 = 0;
            if (this.upperSet != 0) {
                while (i10 < 64) {
                    if ((this.upperSet & (1 << i10)) != j20) {
                        long j21 = this.lowerBound + i10 + 64;
                        if (snapshotIdSet.get(j21)) {
                            snapshotIdSet5 = snapshotIdSet5.set(j21);
                        }
                    }
                    i10++;
                    j20 = 0;
                }
                return snapshotIdSet5;
            }
            return snapshotIdSet5;
        }
        long[] jArr4 = snapshotIdSet.belowBound;
        if (jArr4 != null) {
            for (long j22 : jArr4) {
                if (get(j22)) {
                    snapshotIdSet4 = snapshotIdSet4.set(j22);
                }
            }
        }
        SnapshotIdSet snapshotIdSet6 = snapshotIdSet4;
        long j23 = 0;
        if (snapshotIdSet.lowerSet != 0) {
            int i12 = 0;
            while (i12 < 64) {
                if ((snapshotIdSet.lowerSet & (1 << i12)) != j23) {
                    long j24 = snapshotIdSet.lowerBound + i12;
                    if (get(j24)) {
                        snapshotIdSet6 = snapshotIdSet6.set(j24);
                    }
                }
                i12++;
                j23 = 0;
            }
        }
        if (snapshotIdSet.upperSet != 0) {
            while (i10 < 64) {
                if ((snapshotIdSet.upperSet & (1 << i10)) != 0) {
                    long j25 = snapshotIdSet.lowerBound + i10 + 64;
                    if (get(j25)) {
                        snapshotIdSet6 = snapshotIdSet6.set(j25);
                    }
                }
                i10++;
            }
            return snapshotIdSet6;
        }
        return snapshotIdSet6;
    }

    @NotNull
    public final SnapshotIdSet andNot(@NotNull SnapshotIdSet snapshotIdSet) {
        SnapshotIdSet snapshotIdSet2;
        SnapshotIdSet snapshotIdSet3 = EMPTY;
        if (snapshotIdSet == snapshotIdSet3) {
            return this;
        }
        if (this == snapshotIdSet3) {
            return snapshotIdSet3;
        }
        long j10 = snapshotIdSet.lowerBound;
        long j11 = this.lowerBound;
        if (j10 == j11) {
            long[] jArr = snapshotIdSet.belowBound;
            long[] jArr2 = this.belowBound;
            if (jArr == jArr2) {
                return new SnapshotIdSet((~snapshotIdSet.upperSet) & this.upperSet, (~snapshotIdSet.lowerSet) & this.lowerSet, j11, jArr2);
            }
        }
        long[] jArr3 = snapshotIdSet.belowBound;
        if (jArr3 != null) {
            snapshotIdSet2 = this;
            for (long j12 : jArr3) {
                snapshotIdSet2 = snapshotIdSet2.clear(j12);
            }
        } else {
            snapshotIdSet2 = this;
        }
        if (snapshotIdSet.lowerSet != 0) {
            for (int i10 = 0; i10 < 64; i10++) {
                if ((snapshotIdSet.lowerSet & (1 << i10)) != 0) {
                    snapshotIdSet2 = snapshotIdSet2.clear(snapshotIdSet.lowerBound + i10);
                }
            }
        }
        if (snapshotIdSet.upperSet != 0) {
            for (int i11 = 0; i11 < 64; i11++) {
                if ((snapshotIdSet.upperSet & (1 << i11)) != 0) {
                    snapshotIdSet2 = snapshotIdSet2.clear(snapshotIdSet.lowerBound + i11 + 64);
                }
            }
        }
        return snapshotIdSet2;
    }

    @NotNull
    public final SnapshotIdSet clear(long j10) {
        long[] jArr;
        int binarySearch;
        long j11 = j10 - this.lowerBound;
        long j12 = 0;
        if (Intrinsics.compare(j11, j12) >= 0 && Intrinsics.compare(j11, 64) < 0) {
            long j13 = 1 << ((int) j11);
            long j14 = this.lowerSet;
            if ((j14 & j13) != 0) {
                return new SnapshotIdSet(this.upperSet, j14 & (~j13), this.lowerBound, this.belowBound);
            }
        } else if (Intrinsics.compare(j11, 64) >= 0 && Intrinsics.compare(j11, 128) < 0) {
            long j15 = 1 << (((int) j11) - 64);
            long j16 = this.upperSet;
            if ((j16 & j15) != 0) {
                return new SnapshotIdSet(j16 & (~j15), this.lowerSet, this.lowerBound, this.belowBound);
            }
        } else if (Intrinsics.compare(j11, j12) < 0 && (jArr = this.belowBound) != null && (binarySearch = SnapshotId_jvmKt.binarySearch(jArr, j10)) >= 0) {
            return new SnapshotIdSet(this.upperSet, this.lowerSet, this.lowerBound, SnapshotId_jvmKt.withIdRemovedAt(jArr, binarySearch));
        }
        return this;
    }

    public final void fastForEach(@NotNull Function1<? super Long, Unit> function1) {
        long[] jArr = this.belowBound;
        if (jArr != null) {
            for (long j10 : jArr) {
                function1.invoke(Long.valueOf(j10));
            }
        }
        if (this.lowerSet != 0) {
            for (int i10 = 0; i10 < 64; i10++) {
                if ((this.lowerSet & (1 << i10)) != 0) {
                    function1.invoke(Long.valueOf(this.lowerBound + i10));
                }
            }
        }
        if (this.upperSet != 0) {
            for (int i11 = 0; i11 < 64; i11++) {
                if ((this.upperSet & (1 << i11)) != 0) {
                    function1.invoke(Long.valueOf(this.lowerBound + i11 + 64));
                }
            }
        }
    }

    public final boolean get(long j10) {
        long[] jArr;
        long j11 = j10 - this.lowerBound;
        long j12 = 0;
        if (Intrinsics.compare(j11, j12) < 0 || Intrinsics.compare(j11, 64) >= 0 ? Intrinsics.compare(j11, 64) < 0 || Intrinsics.compare(j11, 128) >= 0 ? Intrinsics.compare(j11, j12) <= 0 && (jArr = this.belowBound) != null && SnapshotId_jvmKt.binarySearch(jArr, j10) >= 0 : ((1 << (((int) j11) - 64)) & this.upperSet) != 0 : ((1 << ((int) j11)) & this.lowerSet) != 0) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Long> iterator() {
        return kotlin.sequences.j.b(new SnapshotIdSet$iterator$1(this, null)).iterator();
    }

    public final long lowest(long j10) {
        long[] jArr = this.belowBound;
        if (jArr != null) {
            return jArr[0];
        }
        long j11 = this.lowerSet;
        if (j11 != 0) {
            return this.lowerBound + Long.numberOfTrailingZeros(j11);
        }
        long j12 = this.upperSet;
        if (j12 != 0) {
            return this.lowerBound + 64 + Long.numberOfTrailingZeros(j12);
        }
        return j10;
    }

    @NotNull
    public final SnapshotIdSet or(@NotNull SnapshotIdSet snapshotIdSet) {
        SnapshotIdSet snapshotIdSet2;
        SnapshotIdSet snapshotIdSet3 = EMPTY;
        if (snapshotIdSet == snapshotIdSet3) {
            return this;
        }
        if (this == snapshotIdSet3) {
            return snapshotIdSet;
        }
        long j10 = snapshotIdSet.lowerBound;
        long j11 = this.lowerBound;
        if (j10 == j11) {
            long[] jArr = snapshotIdSet.belowBound;
            long[] jArr2 = this.belowBound;
            if (jArr == jArr2) {
                return new SnapshotIdSet(snapshotIdSet.upperSet | this.upperSet, snapshotIdSet.lowerSet | this.lowerSet, j11, jArr2);
            }
        }
        int i10 = 0;
        if (this.belowBound == null) {
            long[] jArr3 = this.belowBound;
            if (jArr3 != null) {
                for (long j12 : jArr3) {
                    snapshotIdSet = snapshotIdSet.set(j12);
                }
            }
            if (this.lowerSet != 0) {
                for (int i11 = 0; i11 < 64; i11++) {
                    if ((this.lowerSet & (1 << i11)) != 0) {
                        snapshotIdSet = snapshotIdSet.set(this.lowerBound + i11);
                    }
                }
            }
            if (this.upperSet != 0) {
                while (i10 < 64) {
                    if ((this.upperSet & (1 << i10)) != 0) {
                        snapshotIdSet = snapshotIdSet.set(this.lowerBound + i10 + 64);
                    }
                    i10++;
                }
            }
            return snapshotIdSet;
        }
        long[] jArr4 = snapshotIdSet.belowBound;
        if (jArr4 != null) {
            snapshotIdSet2 = this;
            for (long j13 : jArr4) {
                snapshotIdSet2 = snapshotIdSet2.set(j13);
            }
        } else {
            snapshotIdSet2 = this;
        }
        if (snapshotIdSet.lowerSet != 0) {
            for (int i12 = 0; i12 < 64; i12++) {
                if ((snapshotIdSet.lowerSet & (1 << i12)) != 0) {
                    snapshotIdSet2 = snapshotIdSet2.set(snapshotIdSet.lowerBound + i12);
                }
            }
        }
        if (snapshotIdSet.upperSet != 0) {
            while (i10 < 64) {
                if ((snapshotIdSet.upperSet & (1 << i10)) != 0) {
                    snapshotIdSet2 = snapshotIdSet2.set(snapshotIdSet.lowerBound + i10 + 64);
                }
                i10++;
            }
        }
        return snapshotIdSet2;
    }

    @NotNull
    public final SnapshotIdSet set(long j10) {
        long j11;
        long j12;
        long[] jArr;
        long j13 = j10 - this.lowerBound;
        long j14 = 0;
        if (Intrinsics.compare(j13, j14) >= 0 && Intrinsics.compare(j13, 64) < 0) {
            long j15 = 1 << ((int) j13);
            long j16 = this.lowerSet;
            if ((j16 & j15) == 0) {
                return new SnapshotIdSet(this.upperSet, j16 | j15, this.lowerBound, this.belowBound);
            }
        } else {
            long j17 = 64;
            if (Intrinsics.compare(j13, j17) >= 0 && Intrinsics.compare(j13, 128) < 0) {
                long j18 = 1 << (((int) j13) - 64);
                long j19 = this.upperSet;
                if ((j19 & j18) == 0) {
                    return new SnapshotIdSet(j19 | j18, this.lowerSet, this.lowerBound, this.belowBound);
                }
            } else {
                long j20 = 128;
                if (Intrinsics.compare(j13, j20) >= 0) {
                    if (!get(j10)) {
                        long j21 = this.upperSet;
                        long j22 = this.lowerSet;
                        long j23 = this.lowerBound;
                        long j24 = j22;
                        long j25 = 1;
                        long j26 = ((j10 + j25) / j17) * j17;
                        if (Intrinsics.compare(j26, j14) < 0) {
                            j26 = (Long.MAX_VALUE - j20) + j25;
                        }
                        SnapshotIdArrayBuilder snapshotIdArrayBuilder = null;
                        long j27 = j21;
                        while (true) {
                            if (Intrinsics.compare(j23, j26) < 0) {
                                if (j24 != 0) {
                                    if (snapshotIdArrayBuilder == null) {
                                        snapshotIdArrayBuilder = new SnapshotIdArrayBuilder(this.belowBound);
                                    }
                                    for (int i10 = 0; i10 < 64; i10++) {
                                        if ((j24 & (1 << i10)) != 0) {
                                            snapshotIdArrayBuilder.add(i10 + j23);
                                        }
                                    }
                                }
                                if (j27 == 0) {
                                    j11 = j26;
                                    j12 = 0;
                                    break;
                                }
                                j23 += j17;
                                j24 = j27;
                                j27 = 0;
                            } else {
                                j11 = j23;
                                j12 = j24;
                                break;
                            }
                        }
                        if (snapshotIdArrayBuilder == null || (jArr = snapshotIdArrayBuilder.toArray()) == null) {
                            jArr = this.belowBound;
                        }
                        return new SnapshotIdSet(j27, j12, j11, jArr).set(j10);
                    }
                } else {
                    long[] jArr2 = this.belowBound;
                    if (jArr2 == null) {
                        return new SnapshotIdSet(this.upperSet, this.lowerSet, this.lowerBound, new long[]{j10});
                    }
                    int binarySearch = SnapshotId_jvmKt.binarySearch(jArr2, j10);
                    if (binarySearch < 0) {
                        return new SnapshotIdSet(this.upperSet, this.lowerSet, this.lowerBound, SnapshotId_jvmKt.withIdInsertedAt(jArr2, -(binarySearch + 1), j10));
                    }
                }
            }
        }
        return this;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append(" [");
        ArrayList arrayList = new ArrayList(CollectionsKt.z(this, 10));
        Iterator<Long> it = iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(it.next().longValue()));
        }
        sb2.append(ListUtilsKt.fastJoinToString$default(arrayList, null, null, null, 0, null, null, 63, null));
        sb2.append(']');
        return sb2.toString();
    }
}
