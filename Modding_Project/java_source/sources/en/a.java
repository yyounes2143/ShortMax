package en;

import androidx.annotation.Nullable;
import cn.m0;
import java.util.ArrayList;
/* compiled from: BaseDataSource.java */
/* loaded from: classes8.dex */
public abstract class a implements d {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f51364a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<o> f51365b = new ArrayList<>(1);

    /* renamed from: c  reason: collision with root package name */
    private int f51366c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private g f51367d;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(boolean z10) {
        this.f51364a = z10;
    }

    @Override // en.d
    public final void c(o oVar) {
        cn.a.e(oVar);
        if (!this.f51365b.contains(oVar)) {
            this.f51365b.add(oVar);
            this.f51366c++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d(int i10) {
        g gVar = (g) m0.i(this.f51367d);
        for (int i11 = 0; i11 < this.f51366c; i11++) {
            this.f51365b.get(i11).c(this, gVar, this.f51364a, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e() {
        g gVar = (g) m0.i(this.f51367d);
        for (int i10 = 0; i10 < this.f51366c; i10++) {
            this.f51365b.get(i10).f(this, gVar, this.f51364a);
        }
        this.f51367d = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f(g gVar) {
        for (int i10 = 0; i10 < this.f51366c; i10++) {
            this.f51365b.get(i10).g(this, gVar, this.f51364a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g(g gVar) {
        this.f51367d = gVar;
        for (int i10 = 0; i10 < this.f51366c; i10++) {
            this.f51365b.get(i10).b(this, gVar, this.f51364a);
        }
    }
}
