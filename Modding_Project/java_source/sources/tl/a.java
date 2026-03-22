package tl;

import android.content.Context;
import android.widget.RelativeLayout;
import com.unity3d.scar.adapter.common.e;
import com.unity3d.scar.adapter.common.f;
import com.unity3d.scar.adapter.common.h;
import com.unity3d.scar.adapter.common.j;
import com.unity3d.scar.adapter.common.k;
import com.unity3d.scar.adapter.common.l;
import vl.g;
/* compiled from: ScarAdapter.java */
/* loaded from: classes7.dex */
public class a extends j implements e {

    /* renamed from: e  reason: collision with root package name */
    private ul.a f67398e;

    /* compiled from: ScarAdapter.java */
    /* renamed from: tl.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    class RunnableC0932a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ vl.e f67399a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ nl.c f67400b;

        /* compiled from: ScarAdapter.java */
        /* renamed from: tl.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        class C0933a implements nl.b {
            C0933a() {
            }

            @Override // nl.b
            public void onAdLoaded() {
                ((j) a.this).f49506b.put(RunnableC0932a.this.f67400b.c(), RunnableC0932a.this.f67399a);
            }
        }

        RunnableC0932a(vl.e eVar, nl.c cVar) {
            this.f67399a = eVar;
            this.f67400b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f67399a.b(new C0933a());
        }
    }

    /* compiled from: ScarAdapter.java */
    /* loaded from: classes7.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f67403a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ nl.c f67404b;

        /* compiled from: ScarAdapter.java */
        /* renamed from: tl.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        class C0934a implements nl.b {
            C0934a() {
            }

            @Override // nl.b
            public void onAdLoaded() {
                ((j) a.this).f49506b.put(b.this.f67404b.c(), b.this.f67403a);
            }
        }

        b(g gVar, nl.c cVar) {
            this.f67403a = gVar;
            this.f67404b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f67403a.b(new C0934a());
        }
    }

    /* compiled from: ScarAdapter.java */
    /* loaded from: classes7.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ vl.c f67407a;

        c(vl.c cVar) {
            this.f67407a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f67407a.b(null);
        }
    }

    public a(com.unity3d.scar.adapter.common.c<l> cVar, String str) {
        super(cVar);
        ul.a aVar = new ul.a(new ml.a(str));
        this.f67398e = aVar;
        this.f49505a = new wl.b(aVar);
    }

    @Override // com.unity3d.scar.adapter.common.e
    public void e(Context context, nl.c cVar, com.unity3d.scar.adapter.common.g gVar) {
        k.a(new RunnableC0932a(new vl.e(context, this.f67398e, cVar, this.f49508d, gVar), cVar));
    }

    @Override // com.unity3d.scar.adapter.common.e
    public void f(Context context, RelativeLayout relativeLayout, nl.c cVar, int i10, int i11, f fVar) {
        k.a(new c(new vl.c(context, relativeLayout, this.f67398e, cVar, i10, i11, this.f49508d, fVar)));
    }

    @Override // com.unity3d.scar.adapter.common.e
    public void g(Context context, nl.c cVar, h hVar) {
        k.a(new b(new g(context, this.f67398e, cVar, this.f49508d, hVar), cVar));
    }
}
