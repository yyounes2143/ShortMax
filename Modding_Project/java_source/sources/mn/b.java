package mn;

import en.d;
/* compiled from: DefaultHlsDataSourceFactory.java */
/* loaded from: classes8.dex */
public final class b implements d {

    /* renamed from: a  reason: collision with root package name */
    private final d.a f62533a;

    public b(d.a aVar) {
        this.f62533a = aVar;
    }

    @Override // mn.d
    public en.d a(int i10) {
        return this.f62533a.createDataSource();
    }
}
