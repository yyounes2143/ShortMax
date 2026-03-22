package com.applovin.shadow.okio;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SegmentPool.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SegmentPool {
    private static final int HASH_BUCKET_COUNT;
    @NotNull
    private static final AtomicReference<Segment>[] hashBuckets;
    @NotNull
    public static final SegmentPool INSTANCE = new SegmentPool();
    private static final int MAX_SIZE = 65536;
    @NotNull
    private static final Segment LOCK = new Segment(new byte[0], 0, 0, false, false);

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        HASH_BUCKET_COUNT = highestOneBit;
        AtomicReference<Segment>[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i10 = 0; i10 < highestOneBit; i10++) {
            atomicReferenceArr[i10] = new AtomicReference<>();
        }
        hashBuckets = atomicReferenceArr;
    }

    private SegmentPool() {
    }

    private final AtomicReference<Segment> firstRef() {
        return hashBuckets[(int) (Thread.currentThread().getId() & (HASH_BUCKET_COUNT - 1))];
    }

    public static final void recycle(@NotNull Segment segment) {
        AtomicReference<Segment> firstRef;
        Segment segment2;
        Segment andSet;
        int i10;
        Intrinsics.checkNotNullParameter(segment, "segment");
        if (segment.next == null && segment.prev == null) {
            if (segment.shared || (andSet = (firstRef = INSTANCE.firstRef()).getAndSet((segment2 = LOCK))) == segment2) {
                return;
            }
            if (andSet != null) {
                i10 = andSet.limit;
            } else {
                i10 = 0;
            }
            if (i10 >= MAX_SIZE) {
                firstRef.set(andSet);
                return;
            }
            segment.next = andSet;
            segment.pos = 0;
            segment.limit = i10 + 8192;
            firstRef.set(segment);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @NotNull
    public static final Segment take() {
        AtomicReference<Segment> firstRef = INSTANCE.firstRef();
        Segment segment = LOCK;
        Segment andSet = firstRef.getAndSet(segment);
        if (andSet == segment) {
            return new Segment();
        }
        if (andSet == null) {
            firstRef.set(null);
            return new Segment();
        }
        firstRef.set(andSet.next);
        andSet.next = null;
        andSet.limit = 0;
        return andSet;
    }

    public final int getByteCount() {
        Segment segment = firstRef().get();
        if (segment == null) {
            return 0;
        }
        return segment.limit;
    }

    public final int getMAX_SIZE() {
        return MAX_SIZE;
    }
}
