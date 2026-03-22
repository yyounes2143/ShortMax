package z6;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.v0;
import java.util.Arrays;
import java.util.Comparator;
/* compiled from: BaseTrackSelection.java */
/* loaded from: classes4.dex */
public abstract class c implements y {

    /* renamed from: a  reason: collision with root package name */
    protected final n6.u f71355a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f71356b;

    /* renamed from: c  reason: collision with root package name */
    protected final int[] f71357c;

    /* renamed from: d  reason: collision with root package name */
    private final int f71358d;

    /* renamed from: e  reason: collision with root package name */
    private final v0[] f71359e;

    /* renamed from: f  reason: collision with root package name */
    private final long[] f71360f;

    /* renamed from: g  reason: collision with root package name */
    private int f71361g;

    public c(n6.u uVar, int[] iArr, int i10) {
        boolean z10;
        int i11 = 0;
        if (iArr.length > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        this.f71358d = i10;
        this.f71355a = (n6.u) b7.a.e(uVar);
        int length = iArr.length;
        this.f71356b = length;
        this.f71359e = new v0[length];
        for (int i12 = 0; i12 < iArr.length; i12++) {
            this.f71359e[i12] = uVar.c(iArr[i12]);
        }
        Arrays.sort(this.f71359e, new Comparator() { // from class: z6.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int e10;
                e10 = c.e((v0) obj, (v0) obj2);
                return e10;
            }
        });
        this.f71357c = new int[this.f71356b];
        while (true) {
            int i13 = this.f71356b;
            if (i11 < i13) {
                this.f71357c[i11] = uVar.d(this.f71359e[i11]);
                i11++;
            } else {
                this.f71360f = new long[i13];
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int e(v0 v0Var, v0 v0Var2) {
        return v0Var2.f19153h - v0Var.f19153h;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f71355a == cVar.f71355a && Arrays.equals(this.f71357c, cVar.f71357c)) {
            return true;
        }
        return false;
    }

    @Override // z6.b0
    public final v0 getFormat(int i10) {
        return this.f71359e[i10];
    }

    @Override // z6.b0
    public final int getIndexInTrackGroup(int i10) {
        return this.f71357c[i10];
    }

    @Override // z6.y
    public final v0 getSelectedFormat() {
        return this.f71359e[getSelectedIndex()];
    }

    @Override // z6.b0
    public final n6.u getTrackGroup() {
        return this.f71355a;
    }

    public int hashCode() {
        if (this.f71361g == 0) {
            this.f71361g = (System.identityHashCode(this.f71355a) * 31) + Arrays.hashCode(this.f71357c);
        }
        return this.f71361g;
    }

    @Override // z6.b0
    public final int indexOf(int i10) {
        for (int i11 = 0; i11 < this.f71356b; i11++) {
            if (this.f71357c[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    @Override // z6.b0
    public final int length() {
        return this.f71357c.length;
    }

    @Override // z6.y
    public void disable() {
    }

    @Override // z6.y
    public void enable() {
    }

    @Override // z6.y
    public void onPlaybackSpeed(float f10) {
    }
}
