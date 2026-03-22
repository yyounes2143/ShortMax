package vn;

import android.os.SystemClock;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import cn.m0;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import zm.b0;
/* compiled from: BaseTrackSelection.java */
/* loaded from: classes8.dex */
public abstract class c implements q {

    /* renamed from: a  reason: collision with root package name */
    protected final b0 f69049a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f69050b;

    /* renamed from: c  reason: collision with root package name */
    protected final int[] f69051c;

    /* renamed from: d  reason: collision with root package name */
    private final int f69052d;

    /* renamed from: e  reason: collision with root package name */
    private final io.bidmachine.media3.common.a[] f69053e;

    /* renamed from: f  reason: collision with root package name */
    private final long[] f69054f;

    /* renamed from: g  reason: collision with root package name */
    private int f69055g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f69056h;

    public c(b0 b0Var, int... iArr) {
        this(b0Var, iArr, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int j(io.bidmachine.media3.common.a aVar, io.bidmachine.media3.common.a aVar2) {
        return aVar2.f55169j - aVar.f55169j;
    }

    @Override // vn.q
    @CallSuper
    public void c(boolean z10) {
        this.f69056h = z10;
    }

    @Override // vn.q
    public boolean d(int i10, long j10) {
        if (this.f69054f[i10] > j10) {
            return true;
        }
        return false;
    }

    @Override // vn.t
    public final int e(io.bidmachine.media3.common.a aVar) {
        for (int i10 = 0; i10 < this.f69050b; i10++) {
            if (this.f69053e[i10] == aVar) {
                return i10;
            }
        }
        return -1;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f69049a.equals(cVar.f69049a) && Arrays.equals(this.f69051c, cVar.f69051c)) {
            return true;
        }
        return false;
    }

    @Override // vn.q
    public int evaluateQueueSize(long j10, List<? extends tn.m> list) {
        return list.size();
    }

    @Override // vn.q
    public boolean f(int i10, long j10) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean d10 = d(i10, elapsedRealtime);
        for (int i11 = 0; i11 < this.f69050b && !d10; i11++) {
            if (i11 != i10 && !d(i11, elapsedRealtime)) {
                d10 = true;
            } else {
                d10 = false;
            }
        }
        if (!d10) {
            return false;
        }
        long[] jArr = this.f69054f;
        jArr[i10] = Math.max(jArr[i10], m0.c(elapsedRealtime, j10, Long.MAX_VALUE));
        return true;
    }

    @Override // vn.t
    public final io.bidmachine.media3.common.a getFormat(int i10) {
        return this.f69053e[i10];
    }

    @Override // vn.t
    public final int getIndexInTrackGroup(int i10) {
        return this.f69051c[i10];
    }

    @Override // vn.q
    public final io.bidmachine.media3.common.a getSelectedFormat() {
        return this.f69053e[getSelectedIndex()];
    }

    @Override // vn.q
    public final int getSelectedIndexInTrackGroup() {
        return this.f69051c[getSelectedIndex()];
    }

    @Override // vn.t
    public final b0 getTrackGroup() {
        return this.f69049a;
    }

    public int hashCode() {
        if (this.f69055g == 0) {
            this.f69055g = (System.identityHashCode(this.f69049a) * 31) + Arrays.hashCode(this.f69051c);
        }
        return this.f69055g;
    }

    @Override // vn.t
    public final int indexOf(int i10) {
        for (int i11 = 0; i11 < this.f69050b; i11++) {
            if (this.f69051c[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    @Override // vn.t
    public final int length() {
        return this.f69051c.length;
    }

    public c(b0 b0Var, int[] iArr, int i10) {
        cn.a.g(iArr.length > 0);
        this.f69052d = i10;
        this.f69049a = (b0) cn.a.e(b0Var);
        int length = iArr.length;
        this.f69050b = length;
        this.f69053e = new io.bidmachine.media3.common.a[length];
        for (int i11 = 0; i11 < iArr.length; i11++) {
            this.f69053e[i11] = b0Var.a(iArr[i11]);
        }
        Arrays.sort(this.f69053e, new Comparator() { // from class: vn.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int j10;
                j10 = c.j((io.bidmachine.media3.common.a) obj, (io.bidmachine.media3.common.a) obj2);
                return j10;
            }
        });
        this.f69051c = new int[this.f69050b];
        int i12 = 0;
        while (true) {
            int i13 = this.f69050b;
            if (i12 < i13) {
                this.f69051c[i12] = b0Var.b(this.f69053e[i12]);
                i12++;
            } else {
                this.f69054f = new long[i13];
                this.f69056h = false;
                return;
            }
        }
    }

    @Override // vn.q
    public void disable() {
    }

    @Override // vn.q
    public void enable() {
    }

    @Override // vn.q
    public void onPlaybackSpeed(float f10) {
    }
}
