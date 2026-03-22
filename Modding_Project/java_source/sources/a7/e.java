package a7;

import androidx.annotation.Nullable;
import b7.s0;
import java.util.ArrayList;
/* compiled from: BaseDataSource.java */
/* loaded from: classes4.dex */
public abstract class e implements h {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f184a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<y> f185b = new ArrayList<>(1);

    /* renamed from: c  reason: collision with root package name */
    private int f186c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private k f187d;

    /* JADX INFO: Access modifiers changed from: protected */
    public e(boolean z10) {
        this.f184a = z10;
    }

    @Override // a7.h
    public final void c(y yVar) {
        b7.a.e(yVar);
        if (!this.f185b.contains(yVar)) {
            this.f185b.add(yVar);
            this.f186c++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d(int i10) {
        k kVar = (k) s0.j(this.f187d);
        for (int i11 = 0; i11 < this.f186c; i11++) {
            this.f185b.get(i11).c(this, kVar, this.f184a, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e() {
        k kVar = (k) s0.j(this.f187d);
        for (int i10 = 0; i10 < this.f186c; i10++) {
            this.f185b.get(i10).d(this, kVar, this.f184a);
        }
        this.f187d = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f(k kVar) {
        for (int i10 = 0; i10 < this.f186c; i10++) {
            this.f185b.get(i10).e(this, kVar, this.f184a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g(k kVar) {
        this.f187d = kVar;
        for (int i10 = 0; i10 < this.f186c; i10++) {
            this.f185b.get(i10).g(this, kVar, this.f184a);
        }
    }
}
