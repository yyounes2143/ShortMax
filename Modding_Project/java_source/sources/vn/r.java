package vn;

import androidx.annotation.Nullable;
import java.util.List;
import zm.b0;
/* compiled from: FixedTrackSelection.java */
/* loaded from: classes8.dex */
public final class r extends c {

    /* renamed from: i  reason: collision with root package name */
    private final int f69160i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final Object f69161j;

    public r(b0 b0Var, int i10, int i11) {
        this(b0Var, i10, i11, 0, null);
    }

    @Override // vn.q
    public int getSelectedIndex() {
        return 0;
    }

    @Override // vn.q
    @Nullable
    public Object getSelectionData() {
        return this.f69161j;
    }

    @Override // vn.q
    public int getSelectionReason() {
        return this.f69160i;
    }

    public r(b0 b0Var, int i10, int i11, int i12, @Nullable Object obj) {
        super(b0Var, new int[]{i10}, i11);
        this.f69160i = i12;
        this.f69161j = obj;
    }

    @Override // vn.q
    public void h(long j10, long j11, long j12, List<? extends tn.m> list, tn.n[] nVarArr) {
    }
}
