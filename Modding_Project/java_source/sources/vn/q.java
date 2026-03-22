package vn;

import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.source.r;
import java.util.List;
import zm.a0;
import zm.b0;
/* compiled from: ExoTrackSelection.java */
/* loaded from: classes8.dex */
public interface q extends t {

    /* compiled from: ExoTrackSelection.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final b0 f69157a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f69158b;

        /* renamed from: c  reason: collision with root package name */
        public final int f69159c;

        public a(b0 b0Var, int... iArr) {
            this(b0Var, iArr, 0);
        }

        public a(b0 b0Var, int[] iArr, int i10) {
            if (iArr.length == 0) {
                cn.r.d("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
            }
            this.f69157a = b0Var;
            this.f69158b = iArr;
            this.f69159c = i10;
        }
    }

    /* compiled from: ExoTrackSelection.java */
    /* loaded from: classes8.dex */
    public interface b {
        q[] a(a[] aVarArr, wn.d dVar, r.b bVar, a0 a0Var);
    }

    boolean d(int i10, long j10);

    void disable();

    void enable();

    int evaluateQueueSize(long j10, List<? extends tn.m> list);

    boolean f(int i10, long j10);

    default boolean g(long j10, tn.e eVar, List<? extends tn.m> list) {
        return false;
    }

    io.bidmachine.media3.common.a getSelectedFormat();

    int getSelectedIndex();

    int getSelectedIndexInTrackGroup();

    @Nullable
    Object getSelectionData();

    int getSelectionReason();

    void h(long j10, long j11, long j12, List<? extends tn.m> list, tn.n[] nVarArr);

    void onPlaybackSpeed(float f10);

    default void a() {
    }

    default void b() {
    }

    default void c(boolean z10) {
    }
}
