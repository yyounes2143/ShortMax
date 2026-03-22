package androidx.collection;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SieveCache.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSieveCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SieveCache.kt\nandroidx/collection/SieveCacheKt\n*L\n1#1,1148:1\n1147#1:1149\n1147#1:1150\n*S KotlinDebug\n*F\n+ 1 SieveCache.kt\nandroidx/collection/SieveCacheKt\n*L\n1097#1:1149\n1099#1:1150\n*E\n"})
/* loaded from: classes.dex */
public final class SieveCacheKt {
    public static final long EmptyNode = 4611686018427387903L;
    @NotNull
    private static final long[] EmptyNodes = new long[0];
    public static final long InvalidMapping = 9223372034707292159L;
    public static final int InvalidMappingLink = Integer.MAX_VALUE;
    private static final long MaxSize = 2147483646;
    public static final int NodeInvalidLink = Integer.MAX_VALUE;
    public static final long NodeLinkMask = 2147483647L;
    public static final long NodeLinksMask = 4611686018427387903L;
    public static final long NodeMetaAndNextMask = -4611686016279904257L;
    public static final long NodeMetaAndPreviousMask = -2147483648L;
    public static final long NodeMetaMask = -4611686018427387904L;
    public static final long NodeVisitedBit = 4611686018427387904L;

    public static final long clearVisitedBit(long j10) {
        return j10 & 4611686018427387903L;
    }

    public static final long createDstMapping(long j10, int i10) {
        return (j10 & (-4294967296L)) | i10;
    }

    public static final long createLinkToNext(int i10) {
        return (i10 & NodeLinkMask) | 4611686016279904256L;
    }

    public static final long createLinks(long j10, int i10, int i11, @NotNull long[] mapping) {
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        return (((j10 & NodeMetaMask) | (i10 == Integer.MAX_VALUE ? Integer.MAX_VALUE : (int) (mapping[i10] & 4294967295L))) << 31) | (i11 != Integer.MAX_VALUE ? (int) (mapping[i11] & 4294967295L) : Integer.MAX_VALUE);
    }

    public static final long createMapping(int i10, int i11) {
        return i11 | (i10 << 32);
    }

    public static final long createSrcMapping(long j10, int i10) {
        return (j10 & 4294967295L) | (i10 << 32);
    }

    public static final long eraseSrcMapping(long j10) {
        return (j10 & 4294967295L) | (-4294967296L);
    }

    public static final int getDst(long j10) {
        return (int) (j10 & 4294967295L);
    }

    @NotNull
    public static final long[] getEmptyNodes() {
        return EmptyNodes;
    }

    public static final int getNextNode(long j10) {
        return (int) (j10 & NodeLinkMask);
    }

    public static final int getPreviousNode(long j10) {
        return (int) ((j10 >> 31) & NodeLinkMask);
    }

    public static final int getSrc(long j10) {
        return (int) ((j10 >> 32) & 4294967295L);
    }

    public static final int getVisited(long j10) {
        return (int) ((j10 >> 62) & 1);
    }

    public static final long setLinkToNext(long j10, int i10) {
        return (j10 & NodeMetaAndPreviousMask) | (i10 & NodeLinkMask);
    }

    public static final long setLinkToPrevious(long j10, int i10) {
        return (j10 & NodeMetaAndNextMask) | ((i10 & NodeLinkMask) << 31);
    }

    public static final long createLinks(long j10, int i10, int i11, @NotNull int[] mapping) {
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        return (((j10 & NodeMetaMask) | (i10 == Integer.MAX_VALUE ? Integer.MAX_VALUE : mapping[i10])) << 31) | (i11 != Integer.MAX_VALUE ? mapping[i11] : Integer.MAX_VALUE);
    }

    public static /* synthetic */ void getNodeInvalidLink$annotations() {
    }

    public static /* synthetic */ void getNodeLinkMask$annotations() {
    }

    public static /* synthetic */ void getNextNode$annotations(long j10) {
    }

    public static /* synthetic */ void getPreviousNode$annotations(long j10) {
    }
}
