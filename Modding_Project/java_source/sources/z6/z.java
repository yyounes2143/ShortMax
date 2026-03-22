package z6;

import androidx.annotation.Nullable;
/* compiled from: FixedTrackSelection.java */
/* loaded from: classes4.dex */
public final class z extends c {

    /* renamed from: h  reason: collision with root package name */
    private final int f71501h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final Object f71502i;

    public z(n6.u uVar, int i10, int i11) {
        this(uVar, i10, i11, 0, null);
    }

    @Override // z6.y
    public int getSelectedIndex() {
        return 0;
    }

    public z(n6.u uVar, int i10, int i11, int i12, @Nullable Object obj) {
        super(uVar, new int[]{i10}, i11);
        this.f71501h = i12;
        this.f71502i = obj;
    }
}
