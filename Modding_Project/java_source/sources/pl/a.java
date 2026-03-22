package pl;

import android.content.Context;
import android.widget.RelativeLayout;
import com.unity3d.scar.adapter.common.e;
import com.unity3d.scar.adapter.common.f;
import com.unity3d.scar.adapter.common.h;
import com.unity3d.scar.adapter.common.j;
import com.unity3d.scar.adapter.common.k;
import com.unity3d.scar.adapter.common.l;
import rl.g;
/* compiled from: ScarAdapter.java */
/* loaded from: classes7.dex */
public class a extends j implements e {

    /* renamed from: e  reason: collision with root package name */
    private ql.a f64901e;

    /* compiled from: ScarAdapter.java */
    /* renamed from: pl.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    class RunnableC0899a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ rl.e f64902a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ nl.c f64903b;

        /* compiled from: ScarAdapter.java */
        /* renamed from: pl.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        class C0900a implements nl.b {
            C0900a() {
            }

            @Override // nl.b
            public void onAdLoaded() {
                ((j) a.this).f49506b.put(RunnableC0899a.this.f64903b.c(), RunnableC0899a.this.f64902a);
            }
        }

        RunnableC0899a(rl.e eVar, nl.c cVar) {
            this.f64902a = eVar;
            this.f64903b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f64902a.b(new C0900a());
        }
    }

    /* compiled from: ScarAdapter.java */
    /* loaded from: classes7.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f64906a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ nl.c f64907b;

        /* compiled from: ScarAdapter.java */
        /* renamed from: pl.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        class C0901a implements nl.b {
            C0901a() {
            }

            @Override // nl.b
            public void onAdLoaded() {
                ((j) a.this).f49506b.put(b.this.f64907b.c(), b.this.f64906a);
            }
        }

        b(g gVar, nl.c cVar) {
            this.f64906a = gVar;
            this.f64907b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f64906a.b(new C0901a());
        }
    }

    /* compiled from: ScarAdapter.java */
    /* loaded from: classes7.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ rl.c f64910a;

        c(rl.c cVar) {
            this.f64910a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f64910a.b(null);
        }
    }

    public a(com.unity3d.scar.adapter.common.c<l> cVar, String str) {
        super(cVar);
        ql.a aVar = new ql.a(new ml.a(str));
        this.f64901e = aVar;
        this.f49505a = new sl.b(aVar);
    }

    @Override // com.unity3d.scar.adapter.common.e
    public void e(Context context, nl.c cVar, com.unity3d.scar.adapter.common.g gVar) {
        k.a(new RunnableC0899a(new rl.e(context, this.f64901e, cVar, this.f49508d, gVar), cVar));
    }

    @Override // com.unity3d.scar.adapter.common.e
    public void f(Context context, RelativeLayout relativeLayout, nl.c cVar, int i10, int i11, f fVar) {
        k.a(new c(new rl.c(context, relativeLayout, this.f64901e, cVar, i10, i11, this.f49508d, fVar)));
    }

    @Override // com.unity3d.scar.adapter.common.e
    public void g(Context context, nl.c cVar, h hVar) {
        k.a(new b(new g(context, this.f64901e, cVar, this.f49508d, hVar), cVar));
    }
}
