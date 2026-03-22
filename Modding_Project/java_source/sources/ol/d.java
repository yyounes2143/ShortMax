package ol;
/* compiled from: SignalCallbackListener.java */
/* loaded from: classes7.dex */
public class d<T> implements a<T> {

    /* renamed from: a  reason: collision with root package name */
    private com.unity3d.scar.adapter.common.a f64268a;

    /* renamed from: b  reason: collision with root package name */
    private f f64269b;

    public d(com.unity3d.scar.adapter.common.a aVar, f fVar) {
        this(aVar, null, fVar);
    }

    @Override // ol.a
    public void a(String str, String str2, T t10) {
        this.f64269b.a(str, str2);
        this.f64268a.b();
    }

    @Override // ol.a
    public void onFailure(String str) {
        this.f64269b.d(str);
        this.f64268a.b();
    }

    public d(com.unity3d.scar.adapter.common.a aVar, g<T> gVar, f fVar) {
        this.f64268a = aVar;
        this.f64269b = fVar;
    }
}
