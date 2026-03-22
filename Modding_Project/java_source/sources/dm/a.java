package dm;

import androidx.annotation.NonNull;
/* compiled from: BaseVersionWrapper.java */
/* loaded from: classes7.dex */
public abstract class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final int f50445a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final lr.a f50446b;

    public a(int i10, @NonNull lr.a aVar) {
        this.f50445a = i10;
        this.f50446b = aVar;
    }

    @Override // dm.b
    public int b() {
        return this.f50445a;
    }

    @Override // dm.b
    @NonNull
    public lr.a c() {
        return this.f50446b;
    }
}
