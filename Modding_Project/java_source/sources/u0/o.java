package u0;

import com.airbnb.lottie.model.DocumentData;
import java.util.List;
/* compiled from: TextKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class o extends g<DocumentData> {

    /* compiled from: TextKeyframeAnimation.java */
    /* loaded from: classes2.dex */
    class a extends e1.c<DocumentData> {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ e1.b f67753d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ e1.c f67754e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ DocumentData f67755f;

        a(e1.b bVar, e1.c cVar, DocumentData documentData) {
            this.f67753d = bVar;
            this.f67754e = cVar;
            this.f67755f = documentData;
        }

        @Override // e1.c
        /* renamed from: d */
        public DocumentData a(e1.b<DocumentData> bVar) {
            DocumentData g10;
            this.f67753d.h(bVar.f(), bVar.a(), bVar.g().f4538a, bVar.b().f4538a, bVar.d(), bVar.c(), bVar.e());
            String str = (String) this.f67754e.a(this.f67753d);
            if (bVar.c() == 1.0f) {
                g10 = bVar.b();
            } else {
                g10 = bVar.g();
            }
            DocumentData documentData = g10;
            this.f67755f.a(str, documentData.f4539b, documentData.f4540c, documentData.f4541d, documentData.f4542e, documentData.f4543f, documentData.f4544g, documentData.f4545h, documentData.f4546i, documentData.f4547j, documentData.f4548k, documentData.f4549l, documentData.f4550m);
            return this.f67755f;
        }
    }

    public o(List<e1.a<DocumentData>> list) {
        super(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // u0.a
    /* renamed from: r */
    public DocumentData i(e1.a<DocumentData> aVar, float f10) {
        DocumentData documentData;
        float floatValue;
        DocumentData documentData2;
        e1.c<A> cVar = this.f67709e;
        if (cVar != 0) {
            float f11 = aVar.f50729g;
            Float f12 = aVar.f50730h;
            if (f12 == null) {
                floatValue = Float.MAX_VALUE;
            } else {
                floatValue = f12.floatValue();
            }
            DocumentData documentData3 = aVar.f50724b;
            DocumentData documentData4 = documentData3;
            DocumentData documentData5 = aVar.f50725c;
            if (documentData5 == null) {
                documentData2 = documentData3;
            } else {
                documentData2 = documentData5;
            }
            return (DocumentData) cVar.b(f11, floatValue, documentData4, documentData2, f10, d(), f());
        } else if (f10 == 1.0f && (documentData = aVar.f50725c) != null) {
            return documentData;
        } else {
            return aVar.f50724b;
        }
    }

    public void s(e1.c<String> cVar) {
        super.o(new a(new e1.b(), cVar, new DocumentData()));
    }
}
