package androidx.collection;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ScatterMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1787:1\n1254#1,6:1789\n1220#1:1795\n1220#1:1796\n1220#1:1797\n1297#1:1798\n1#2:1788\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1230#1:1789,6\n1262#1:1795\n1265#1:1796\n1268#1:1797\n1303#1:1798\n*E\n"})
/* loaded from: classes.dex */
public final class ScatterMapKt {
    public static final long AllEmpty = -9187201950435737472L;
    public static final long BitmaskLsb = 72340172838076673L;
    public static final long BitmaskMsb = -9187201950435737472L;
    public static final int ClonedMetadataCount = 7;
    public static final int DefaultScatterCapacity = 6;
    public static final long Deleted = 254;
    public static final long Empty = 128;
    @NotNull
    public static final long[] EmptyGroup = {-9187201950435737345L, -1};
    @NotNull
    private static final MutableScatterMap EmptyScatterMap = new MutableScatterMap(0);
    public static final int GroupWidth = 8;
    public static final int MurmurHashC1 = -862048943;
    public static final long Sentinel = 255;

    public static final void convertMetadataForCleanup(@NotNull long[] metadata, int i10) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        int i11 = (i10 + 7) >> 3;
        for (int i12 = 0; i12 < i11; i12++) {
            long j10 = metadata[i12] & (-9187201950435737472L);
            metadata[i12] = (-72340172838076674L) & ((~j10) + (j10 >>> 7));
        }
        int q02 = n.q0(metadata);
        int i13 = q02 - 1;
        metadata[i13] = (metadata[i13] & 72057594037927935L) | (-72057594037927936L);
        metadata[q02] = metadata[0];
    }

    @NotNull
    public static final <K, V> ScatterMap<K, V> emptyScatterMap() {
        MutableScatterMap mutableScatterMap = EmptyScatterMap;
        Intrinsics.checkNotNull(mutableScatterMap, "null cannot be cast to non-null type androidx.collection.ScatterMap<K of androidx.collection.ScatterMapKt.emptyScatterMap, V of androidx.collection.ScatterMapKt.emptyScatterMap>");
        return mutableScatterMap;
    }

    public static final int get(long j10) {
        return Long.numberOfTrailingZeros(j10) >> 3;
    }

    public static final long group(@NotNull long[] metadata, int i10) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        int i11 = i10 >> 3;
        int i12 = (i10 & 7) << 3;
        return (((-i12) >> 63) & (metadata[i11 + 1] << (64 - i12))) | (metadata[i11] >>> i12);
    }

    public static final int h1(int i10) {
        return i10 >>> 7;
    }

    public static final int h2(int i10) {
        return i10 & 127;
    }

    public static final boolean hasNext(long j10) {
        if (j10 != 0) {
            return true;
        }
        return false;
    }

    public static final int hash(@Nullable Object obj) {
        int i10;
        if (obj != null) {
            i10 = obj.hashCode();
        } else {
            i10 = 0;
        }
        int i11 = i10 * MurmurHashC1;
        return i11 ^ (i11 << 16);
    }

    public static final boolean isDeleted(@NotNull long[] metadata, int i10) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        if (((metadata[i10 >> 3] >> ((i10 & 7) << 3)) & 255) == 254) {
            return true;
        }
        return false;
    }

    public static final boolean isEmpty(@NotNull long[] metadata, int i10) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        if (((metadata[i10 >> 3] >> ((i10 & 7) << 3)) & 255) == 128) {
            return true;
        }
        return false;
    }

    public static final boolean isFull(long j10) {
        return j10 < 128;
    }

    public static final int loadedCapacity(int i10) {
        if (i10 == 7) {
            return 6;
        }
        return i10 - (i10 / 8);
    }

    public static final int lowestBitSet(long j10) {
        return Long.numberOfTrailingZeros(j10) >> 3;
    }

    public static final long maskEmpty(long j10) {
        return j10 & ((~j10) << 6) & (-9187201950435737472L);
    }

    public static final long maskEmptyOrDeleted(long j10) {
        return j10 & ((~j10) << 7) & (-9187201950435737472L);
    }

    public static final long match(long j10, int i10) {
        long j11 = j10 ^ (i10 * BitmaskLsb);
        return (~j11) & (j11 - BitmaskLsb) & (-9187201950435737472L);
    }

    @NotNull
    public static final <K, V> MutableScatterMap<K, V> mutableScatterMapOf() {
        return new MutableScatterMap<>(0, 1, null);
    }

    public static final long next(long j10) {
        return j10 & (j10 - 1);
    }

    public static final int nextCapacity(int i10) {
        if (i10 == 0) {
            return 6;
        }
        return (i10 * 2) + 1;
    }

    public static final int normalizeCapacity(int i10) {
        if (i10 > 0) {
            return (-1) >>> Integer.numberOfLeadingZeros(i10);
        }
        return 0;
    }

    public static final long readRawMetadata(@NotNull long[] data, int i10) {
        Intrinsics.checkNotNullParameter(data, "data");
        return (data[i10 >> 3] >> ((i10 & 7) << 3)) & 255;
    }

    public static final int unloadedCapacity(int i10) {
        if (i10 == 7) {
            return 8;
        }
        return i10 + ((i10 - 1) / 7);
    }

    public static final void writeMetadata(@NotNull long[] data, int i10, int i11, long j10) {
        Intrinsics.checkNotNullParameter(data, "data");
        int i12 = i11 >> 3;
        int i13 = (i11 & 7) << 3;
        long j11 = (j10 << i13) | (data[i12] & (~(255 << i13)));
        data[i12] = j11;
        data[(((i11 - 7) & i10) + (i10 & 7)) >> 3] = j11;
    }

    public static final void writeRawMetadata(@NotNull long[] data, int i10, long j10) {
        Intrinsics.checkNotNullParameter(data, "data");
        int i11 = i10 >> 3;
        int i12 = (i10 & 7) << 3;
        data[i11] = (j10 << i12) | (data[i11] & (~(255 << i12)));
    }

    public static final boolean isFull(@NotNull long[] metadata, int i10) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        return ((metadata[i10 >> 3] >> ((i10 & 7) << 3)) & 255) < 128;
    }

    @NotNull
    public static final <K, V> MutableScatterMap<K, V> mutableScatterMapOf(@NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        MutableScatterMap<K, V> mutableScatterMap = new MutableScatterMap<>(pairs.length);
        mutableScatterMap.putAll(pairs);
        return mutableScatterMap;
    }

    public static /* synthetic */ void getBitmaskLsb$annotations() {
    }

    public static /* synthetic */ void getBitmaskMsb$annotations() {
    }

    public static /* synthetic */ void getSentinel$annotations() {
    }
}
