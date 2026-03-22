package y4;

import android.content.Context;
/* compiled from: DefaultRecoveryStrategyFactory.java */
/* loaded from: classes2.dex */
public class f implements i {

    /* renamed from: a  reason: collision with root package name */
    private final Context f70648a;

    /* renamed from: b  reason: collision with root package name */
    private final a f70649b;

    /* renamed from: c  reason: collision with root package name */
    private final int f70650c;

    public f(Context context, int i10) {
        this.f70648a = context;
        this.f70650c = i10;
        a aVar = new a(5);
        this.f70649b = aVar;
        aVar.a(context.getApplicationInfo().sourceDir);
    }

    @Override // y4.i
    public h get() {
        return new e(new g(this.f70648a, this.f70649b), new b(this.f70648a, this.f70649b), new l(), new c(this.f70648a), new j(this.f70650c), new d(), new k(), new l());
    }
}
