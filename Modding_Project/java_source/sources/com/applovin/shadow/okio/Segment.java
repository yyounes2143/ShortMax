package com.applovin.shadow.okio;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Segment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSegment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Segment.kt\nokio/Segment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n1#2:188\n*E\n"})
/* loaded from: classes2.dex */
public final class Segment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int SHARE_MINIMUM = 1024;
    public static final int SIZE = 8192;
    @NotNull
    public final byte[] data;
    public int limit;
    @Nullable
    public Segment next;
    public boolean owner;
    public int pos;
    @Nullable
    public Segment prev;
    public boolean shared;

    /* compiled from: Segment.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public Segment() {
        this.data = new byte[8192];
        this.owner = true;
        this.shared = false;
    }

    public final void compact() {
        int i10;
        Segment segment = this.prev;
        if (segment != this) {
            Intrinsics.checkNotNull(segment);
            if (!segment.owner) {
                return;
            }
            int i11 = this.limit - this.pos;
            Segment segment2 = this.prev;
            Intrinsics.checkNotNull(segment2);
            int i12 = 8192 - segment2.limit;
            Segment segment3 = this.prev;
            Intrinsics.checkNotNull(segment3);
            if (segment3.shared) {
                i10 = 0;
            } else {
                Segment segment4 = this.prev;
                Intrinsics.checkNotNull(segment4);
                i10 = segment4.pos;
            }
            if (i11 > i12 + i10) {
                return;
            }
            Segment segment5 = this.prev;
            Intrinsics.checkNotNull(segment5);
            writeTo(segment5, i11);
            pop();
            SegmentPool.recycle(this);
            return;
        }
        throw new IllegalStateException("cannot compact");
    }

    @Nullable
    public final Segment pop() {
        Segment segment = this.next;
        if (segment == this) {
            segment = null;
        }
        Segment segment2 = this.prev;
        Intrinsics.checkNotNull(segment2);
        segment2.next = this.next;
        Segment segment3 = this.next;
        Intrinsics.checkNotNull(segment3);
        segment3.prev = this.prev;
        this.next = null;
        this.prev = null;
        return segment;
    }

    @NotNull
    public final Segment push(@NotNull Segment segment) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        segment.prev = this;
        segment.next = this.next;
        Segment segment2 = this.next;
        Intrinsics.checkNotNull(segment2);
        segment2.prev = segment;
        this.next = segment;
        return segment;
    }

    @NotNull
    public final Segment sharedCopy() {
        this.shared = true;
        return new Segment(this.data, this.pos, this.limit, true, false);
    }

    @NotNull
    public final Segment split(int i10) {
        Segment take;
        if (i10 > 0 && i10 <= this.limit - this.pos) {
            if (i10 >= 1024) {
                take = sharedCopy();
            } else {
                take = SegmentPool.take();
                byte[] bArr = this.data;
                byte[] bArr2 = take.data;
                int i11 = this.pos;
                kotlin.collections.n.p(bArr, bArr2, 0, i11, i11 + i10, 2, null);
            }
            take.limit = take.pos + i10;
            this.pos += i10;
            Segment segment = this.prev;
            Intrinsics.checkNotNull(segment);
            segment.push(take);
            return take;
        }
        throw new IllegalArgumentException("byteCount out of range");
    }

    @NotNull
    public final Segment unsharedCopy() {
        byte[] bArr = this.data;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        return new Segment(copyOf, this.pos, this.limit, false, true);
    }

    public final void writeTo(@NotNull Segment sink, int i10) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (sink.owner) {
            int i11 = sink.limit;
            if (i11 + i10 > 8192) {
                if (!sink.shared) {
                    int i12 = sink.pos;
                    if ((i11 + i10) - i12 <= 8192) {
                        byte[] bArr = sink.data;
                        kotlin.collections.n.p(bArr, bArr, 0, i12, i11, 2, null);
                        sink.limit -= sink.pos;
                        sink.pos = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            byte[] bArr2 = this.data;
            byte[] bArr3 = sink.data;
            int i13 = sink.limit;
            int i14 = this.pos;
            kotlin.collections.n.h(bArr2, bArr3, i13, i14, i14 + i10);
            sink.limit += i10;
            this.pos += i10;
            return;
        }
        throw new IllegalStateException("only owner can write");
    }

    public Segment(@NotNull byte[] data, int i10, int i11, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
        this.pos = i10;
        this.limit = i11;
        this.shared = z10;
        this.owner = z11;
    }
}
