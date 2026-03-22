package a4;

import com.facebook.imagepipeline.request.ImageRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: ForwardingRequestListener.java */
/* loaded from: classes3.dex */
public class c implements e {

    /* renamed from: a  reason: collision with root package name */
    private final List<e> f128a;

    public c(Set<e> set) {
        this.f128a = new ArrayList(set.size());
        for (e eVar : set) {
            if (eVar != null) {
                this.f128a.add(eVar);
            }
        }
    }

    private void l(String str, Throwable th2) {
        l2.a.j("ForwardingRequestListener", str, th2);
    }

    @Override // com.facebook.imagepipeline.producers.f1
    public void a(String str, String str2) {
        int size = this.f128a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f128a.get(i10).a(str, str2);
            } catch (Exception e10) {
                l("InternalListener exception in onProducerStart", e10);
            }
        }
    }

    @Override // a4.e
    public void b(ImageRequest imageRequest, String str, boolean z10) {
        int size = this.f128a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f128a.get(i10).b(imageRequest, str, z10);
            } catch (Exception e10) {
                l("InternalListener exception in onRequestSuccess", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.f1
    public void c(String str, String str2, Throwable th2, Map<String, String> map) {
        int size = this.f128a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f128a.get(i10).c(str, str2, th2, map);
            } catch (Exception e10) {
                l("InternalListener exception in onProducerFinishWithFailure", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.f1
    public void d(String str, String str2, String str3) {
        int size = this.f128a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f128a.get(i10).d(str, str2, str3);
            } catch (Exception e10) {
                l("InternalListener exception in onIntermediateChunkStart", e10);
            }
        }
    }

    @Override // a4.e
    public void e(ImageRequest imageRequest, Object obj, String str, boolean z10) {
        int size = this.f128a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f128a.get(i10).e(imageRequest, obj, str, z10);
            } catch (Exception e10) {
                l("InternalListener exception in onRequestStart", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.f1
    public boolean f(String str) {
        int size = this.f128a.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f128a.get(i10).f(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.imagepipeline.producers.f1
    public void g(String str, String str2, Map<String, String> map) {
        int size = this.f128a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f128a.get(i10).g(str, str2, map);
            } catch (Exception e10) {
                l("InternalListener exception in onProducerFinishWithSuccess", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.f1
    public void h(String str, String str2, Map<String, String> map) {
        int size = this.f128a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f128a.get(i10).h(str, str2, map);
            } catch (Exception e10) {
                l("InternalListener exception in onProducerFinishWithCancellation", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.f1
    public void i(String str, String str2, boolean z10) {
        int size = this.f128a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f128a.get(i10).i(str, str2, z10);
            } catch (Exception e10) {
                l("InternalListener exception in onProducerFinishWithSuccess", e10);
            }
        }
    }

    @Override // a4.e
    public void j(ImageRequest imageRequest, String str, Throwable th2, boolean z10) {
        int size = this.f128a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f128a.get(i10).j(imageRequest, str, th2, z10);
            } catch (Exception e10) {
                l("InternalListener exception in onRequestFailure", e10);
            }
        }
    }

    @Override // a4.e
    public void k(String str) {
        int size = this.f128a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f128a.get(i10).k(str);
            } catch (Exception e10) {
                l("InternalListener exception in onRequestCancellation", e10);
            }
        }
    }

    public c(e... eVarArr) {
        this.f128a = new ArrayList(eVarArr.length);
        for (e eVar : eVarArr) {
            if (eVar != null) {
                this.f128a.add(eVar);
            }
        }
    }
}
