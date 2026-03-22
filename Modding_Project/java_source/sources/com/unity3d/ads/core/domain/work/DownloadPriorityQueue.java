package com.unity3d.ads.core.domain.work;

import com.unity3d.ads.core.domain.work.DownloadPriorityQueue;
import java.util.Comparator;
import java.util.PriorityQueue;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.o;
import kt.e;
import org.jetbrains.annotations.NotNull;
import qt.a;
import qt.d;
/* compiled from: DownloadPriorityQueue.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDownloadPriorityQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadPriorityQueue.kt\ncom/unity3d/ads/core/domain/work/DownloadPriorityQueue\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,41:1\n107#2,10:42\n107#2,10:52\n*S KotlinDebug\n*F\n+ 1 DownloadPriorityQueue.kt\ncom/unity3d/ads/core/domain/work/DownloadPriorityQueue\n*L\n22#1:42,10\n34#1:52,10\n*E\n"})
/* loaded from: classes7.dex */
public final class DownloadPriorityQueue {
    @NotNull
    private final a mutex = d.a(false);
    @NotNull
    private final e<PriorityItem> nextTurn = o.a(null);
    @NotNull
    private final PriorityQueue<PriorityItem> queue = new PriorityQueue<>(50, new Comparator() { // from class: com.unity3d.ads.core.domain.work.DownloadPriorityQueue$special$$inlined$compareBy$1
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((DownloadPriorityQueue.PriorityItem) t10).getPriority()), Integer.valueOf(((DownloadPriorityQueue.PriorityItem) t11).getPriority()));
        }
    });

    /* compiled from: DownloadPriorityQueue.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class PriorityItem {
        private final int priority;

        public PriorityItem(int i10) {
            this.priority = i10;
        }

        public final int getPriority() {
            return this.priority;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00da A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00eb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ec  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(int r11, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super rs.c<? super kotlin.Unit>, ? extends java.lang.Object> r12, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r13) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.work.DownloadPriorityQueue.invoke(int, kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }
}
