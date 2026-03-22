package u3;

import com.facebook.datasource.AbstractDataSource;
import com.facebook.imagepipeline.producers.b1;
import com.facebook.imagepipeline.producers.c1;
import com.facebook.imagepipeline.producers.j1;
import com.facebook.imagepipeline.producers.n;
import java.util.Map;
import k2.h;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractProducerToDataSourceAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAbstractProducerToDataSourceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractProducerToDataSourceAdapter.kt\ncom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,106:1\n40#2,2:107\n40#2,9:109\n40#2,9:118\n44#2,3:127\n40#2,9:130\n40#2,9:139\n48#2:148\n*S KotlinDebug\n*F\n+ 1 AbstractProducerToDataSourceAdapter.kt\ncom/facebook/imagepipeline/datasource/AbstractProducerToDataSourceAdapter\n*L\n95#1:107,2\n97#1:109,9\n100#1:118,9\n95#1:127,3\n97#1:130,9\n100#1:139,9\n95#1:148\n*E\n"})
/* loaded from: classes3.dex */
public abstract class a<T> extends AbstractDataSource<T> {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final j1 f67791h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final a4.d f67792i;

    /* compiled from: AbstractProducerToDataSourceAdapter.kt */
    @Metadata
    /* renamed from: u3.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0940a extends com.facebook.imagepipeline.producers.c<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a<T> f67793b;

        C0940a(a<T> aVar) {
            this.f67793b = aVar;
        }

        @Override // com.facebook.imagepipeline.producers.c
        protected void f() {
            this.f67793b.B();
        }

        @Override // com.facebook.imagepipeline.producers.c
        protected void g(Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            this.f67793b.C(throwable);
        }

        @Override // com.facebook.imagepipeline.producers.c
        protected void h(T t10, int i10) {
            a<T> aVar = this.f67793b;
            aVar.D(t10, i10, aVar.A());
        }

        @Override // com.facebook.imagepipeline.producers.c
        protected void i(float f10) {
            this.f67793b.q(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(@NotNull b1<T> producer, @NotNull j1 settableProducerContext, @NotNull a4.d requestListener) {
        Intrinsics.checkNotNullParameter(producer, "producer");
        Intrinsics.checkNotNullParameter(settableProducerContext, "settableProducerContext");
        Intrinsics.checkNotNullParameter(requestListener, "requestListener");
        this.f67791h = settableProducerContext;
        this.f67792i = requestListener;
        if (!f4.b.d()) {
            m(settableProducerContext.getExtras());
            if (!f4.b.d()) {
                requestListener.c(settableProducerContext);
            } else {
                f4.b.a("AbstractProducerToDataSourceAdapter()->onRequestStart");
                try {
                    requestListener.c(settableProducerContext);
                    Unit unit = Unit.f60915a;
                } finally {
                }
            }
            if (!f4.b.d()) {
                producer.b(y(), settableProducerContext);
                return;
            }
            f4.b.a("AbstractProducerToDataSourceAdapter()->produceResult");
            try {
                producer.b(y(), settableProducerContext);
                Unit unit2 = Unit.f60915a;
                return;
            } finally {
            }
        }
        f4.b.a("AbstractProducerToDataSourceAdapter()");
        try {
            m(settableProducerContext.getExtras());
            if (!f4.b.d()) {
                requestListener.c(settableProducerContext);
            } else {
                f4.b.a("AbstractProducerToDataSourceAdapter()->onRequestStart");
                requestListener.c(settableProducerContext);
                Unit unit3 = Unit.f60915a;
                f4.b.b();
            }
            if (!f4.b.d()) {
                producer.b(y(), settableProducerContext);
            } else {
                f4.b.a("AbstractProducerToDataSourceAdapter()->produceResult");
                producer.b(y(), settableProducerContext);
                Unit unit4 = Unit.f60915a;
                f4.b.b();
            }
            Unit unit5 = Unit.f60915a;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void B() {
        h.i(i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(Throwable th2) {
        if (super.o(th2, z(this.f67791h))) {
            this.f67792i.i(this.f67791h, th2);
        }
    }

    private final n<T> y() {
        return new C0940a(this);
    }

    @NotNull
    public final j1 A() {
        return this.f67791h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void D(@Nullable T t10, int i10, @NotNull c1 producerContext) {
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        boolean d10 = com.facebook.imagepipeline.producers.c.d(i10);
        if (super.s(t10, d10, z(producerContext)) && d10) {
            this.f67792i.e(this.f67791h);
        }
    }

    @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.b
    public boolean close() {
        if (!super.close()) {
            return false;
        }
        if (!super.e()) {
            this.f67792i.g(this.f67791h);
            this.f67791h.g();
            return true;
        }
        return true;
    }

    @NotNull
    protected final Map<String, Object> z(@NotNull c1 producerContext) {
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        return producerContext.getExtras();
    }
}
