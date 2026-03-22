package im;

import androidx.annotation.NonNull;
/* compiled from: BaseVersionWrapper.java */
/* loaded from: classes7.dex */
public abstract class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final int f53463a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final lr.a f53464b;

    public a(int i10, @NonNull lr.a aVar) {
        this.f53463a = i10;
        this.f53464b = aVar;
    }

    @Override // im.b
    public int b() {
        return this.f53463a;
    }

    @Override // im.b
    @NonNull
    public lr.a c() {
        return this.f53464b;
    }
}
