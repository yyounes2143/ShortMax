package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import android.view.Choreographer;
import android.view.View;
import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyLayoutPrefetcher.android.kt */
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public final class LazyLayoutPrefetcher implements RememberObserver, LazyLayoutPrefetchState.Prefetcher, Runnable, Choreographer.FrameCallback {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static long frameIntervalNs;
    private long averagePrecomposeTimeNs;
    private long averagePremeasureTimeNs;
    private final Choreographer choreographer;
    private boolean isActive;
    @NotNull
    private final LazyLayoutItemContentFactory itemContentFactory;
    @NotNull
    private final MutableVector<PrefetchRequest> prefetchRequests;
    private boolean prefetchScheduled;
    @NotNull
    private final LazyLayoutPrefetchState prefetchState;
    @NotNull
    private final SubcomposeLayoutState subcomposeLayoutState;
    @NotNull
    private final View view;

    /* compiled from: LazyLayoutPrefetcher.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
            if (r5 >= 30.0f) goto L8;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void calculateFrameIntervalIfNeeded(android.view.View r5) {
            /*
                r4 = this;
                long r0 = androidx.compose.foundation.lazy.layout.LazyLayoutPrefetcher.access$getFrameIntervalNs$cp()
                r2 = 0
                int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r0 != 0) goto L2c
                android.view.Display r0 = r5.getDisplay()
                boolean r5 = r5.isInEditMode()
                if (r5 != 0) goto L21
                if (r0 == 0) goto L21
                float r5 = r0.getRefreshRate()
                r0 = 1106247680(0x41f00000, float:30.0)
                int r0 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
                if (r0 < 0) goto L21
                goto L23
            L21:
                r5 = 1114636288(0x42700000, float:60.0)
            L23:
                r0 = 1000000000(0x3b9aca00, float:0.0047237873)
                float r0 = (float) r0
                float r0 = r0 / r5
                long r0 = (long) r0
                androidx.compose.foundation.lazy.layout.LazyLayoutPrefetcher.access$setFrameIntervalNs$cp(r0)
            L2c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.LazyLayoutPrefetcher.Companion.calculateFrameIntervalIfNeeded(android.view.View):void");
        }

        private Companion() {
        }
    }

    /* compiled from: LazyLayoutPrefetcher.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class PrefetchRequest implements LazyLayoutPrefetchState.PrefetchHandle {
        private boolean canceled;
        private final long constraints;
        private final int index;
        private boolean measured;
        @Nullable
        private SubcomposeLayoutState.PrecomposedSlotHandle precomposeHandle;

        public /* synthetic */ PrefetchRequest(int i10, long j10, DefaultConstructorMarker defaultConstructorMarker) {
            this(i10, j10);
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchHandle
        public void cancel() {
            if (!this.canceled) {
                this.canceled = true;
                SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.precomposeHandle;
                if (precomposedSlotHandle != null) {
                    precomposedSlotHandle.dispose();
                }
                this.precomposeHandle = null;
            }
        }

        public final boolean getCanceled() {
            return this.canceled;
        }

        /* renamed from: getConstraints-msEJaDk  reason: not valid java name */
        public final long m662getConstraintsmsEJaDk() {
            return this.constraints;
        }

        public final int getIndex() {
            return this.index;
        }

        public final boolean getMeasured() {
            return this.measured;
        }

        @Nullable
        public final SubcomposeLayoutState.PrecomposedSlotHandle getPrecomposeHandle() {
            return this.precomposeHandle;
        }

        public final void setCanceled(boolean z10) {
            this.canceled = z10;
        }

        public final void setMeasured(boolean z10) {
            this.measured = z10;
        }

        public final void setPrecomposeHandle(@Nullable SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle) {
            this.precomposeHandle = precomposedSlotHandle;
        }

        private PrefetchRequest(int i10, long j10) {
            this.index = i10;
            this.constraints = j10;
        }
    }

    public LazyLayoutPrefetcher(@NotNull LazyLayoutPrefetchState prefetchState, @NotNull SubcomposeLayoutState subcomposeLayoutState, @NotNull LazyLayoutItemContentFactory itemContentFactory, @NotNull View view) {
        Intrinsics.checkNotNullParameter(prefetchState, "prefetchState");
        Intrinsics.checkNotNullParameter(subcomposeLayoutState, "subcomposeLayoutState");
        Intrinsics.checkNotNullParameter(itemContentFactory, "itemContentFactory");
        Intrinsics.checkNotNullParameter(view, "view");
        this.prefetchState = prefetchState;
        this.subcomposeLayoutState = subcomposeLayoutState;
        this.itemContentFactory = itemContentFactory;
        this.view = view;
        this.prefetchRequests = new MutableVector<>(new PrefetchRequest[16], 0);
        this.choreographer = Choreographer.getInstance();
        Companion.calculateFrameIntervalIfNeeded(view);
    }

    private final long calculateAverageTime(long j10, long j11) {
        if (j11 != 0) {
            long j12 = 4;
            return (j10 / j12) + ((j11 / j12) * 3);
        }
        return j10;
    }

    private final boolean enoughTimeLeft(long j10, long j11, long j12) {
        if (j10 <= j11 && j10 + j12 >= j11) {
            return false;
        }
        return true;
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j10) {
        if (this.isActive) {
            this.view.post(this);
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        this.isActive = false;
        this.prefetchState.setPrefetcher$foundation_release(null);
        this.view.removeCallbacks(this);
        this.choreographer.removeFrameCallback(this);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        this.prefetchState.setPrefetcher$foundation_release(this);
        this.isActive = true;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.prefetchRequests.isEmpty() && this.prefetchScheduled && this.isActive && this.view.getWindowVisibility() == 0) {
            long nanos = TimeUnit.MILLISECONDS.toNanos(this.view.getDrawingTime()) + frameIntervalNs;
            boolean z10 = false;
            while (this.prefetchRequests.isNotEmpty() && !z10) {
                PrefetchRequest prefetchRequest = this.prefetchRequests.getContent()[0];
                LazyLayoutItemProvider invoke = this.itemContentFactory.getItemProvider().invoke();
                if (!prefetchRequest.getCanceled()) {
                    int itemCount = invoke.getItemCount();
                    int index = prefetchRequest.getIndex();
                    if (index >= 0 && index < itemCount) {
                        if (prefetchRequest.getPrecomposeHandle() == null) {
                            Trace.beginSection("compose:lazylist:prefetch:compose");
                            try {
                                long nanoTime = System.nanoTime();
                                if (enoughTimeLeft(nanoTime, nanos, this.averagePrecomposeTimeNs)) {
                                    Object key = invoke.getKey(prefetchRequest.getIndex());
                                    prefetchRequest.setPrecomposeHandle(this.subcomposeLayoutState.precompose(key, this.itemContentFactory.getContent(prefetchRequest.getIndex(), key)));
                                    this.averagePrecomposeTimeNs = calculateAverageTime(System.nanoTime() - nanoTime, this.averagePrecomposeTimeNs);
                                } else {
                                    z10 = true;
                                }
                                Unit unit = Unit.f60915a;
                                Trace.endSection();
                            } finally {
                            }
                        } else if (!prefetchRequest.getMeasured()) {
                            Trace.beginSection("compose:lazylist:prefetch:measure");
                            try {
                                long nanoTime2 = System.nanoTime();
                                if (enoughTimeLeft(nanoTime2, nanos, this.averagePremeasureTimeNs)) {
                                    SubcomposeLayoutState.PrecomposedSlotHandle precomposeHandle = prefetchRequest.getPrecomposeHandle();
                                    Intrinsics.checkNotNull(precomposeHandle);
                                    int placeablesCount = precomposeHandle.getPlaceablesCount();
                                    for (int i10 = 0; i10 < placeablesCount; i10++) {
                                        precomposeHandle.mo3344premeasure0kLqBqw(i10, prefetchRequest.m662getConstraintsmsEJaDk());
                                    }
                                    this.averagePremeasureTimeNs = calculateAverageTime(System.nanoTime() - nanoTime2, this.averagePremeasureTimeNs);
                                    this.prefetchRequests.removeAt(0);
                                } else {
                                    Unit unit2 = Unit.f60915a;
                                    z10 = true;
                                }
                                Trace.endSection();
                            } finally {
                            }
                        } else {
                            throw new IllegalStateException("Check failed.");
                        }
                    }
                }
                this.prefetchRequests.removeAt(0);
            }
            if (z10) {
                this.choreographer.postFrameCallback(this);
                return;
            } else {
                this.prefetchScheduled = false;
                return;
            }
        }
        this.prefetchScheduled = false;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.Prefetcher
    @NotNull
    /* renamed from: schedulePrefetch-0kLqBqw */
    public LazyLayoutPrefetchState.PrefetchHandle mo661schedulePrefetch0kLqBqw(int i10, long j10) {
        PrefetchRequest prefetchRequest = new PrefetchRequest(i10, j10, null);
        this.prefetchRequests.add(prefetchRequest);
        if (!this.prefetchScheduled) {
            this.prefetchScheduled = true;
            this.view.post(this);
        }
        return prefetchRequest;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
    }
}
