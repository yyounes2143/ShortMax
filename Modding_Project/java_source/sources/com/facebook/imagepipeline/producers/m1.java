package com.facebook.imagepipeline.producers;

import android.os.Looper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ThreadHandoffProducer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nThreadHandoffProducer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadHandoffProducer.kt\ncom/facebook/imagepipeline/producers/ThreadHandoffProducer\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n*L\n1#1,72:1\n40#2,9:73\n*S KotlinDebug\n*F\n+ 1 ThreadHandoffProducer.kt\ncom/facebook/imagepipeline/producers/ThreadHandoffProducer\n*L\n22#1:73,9\n*E\n"})
/* loaded from: classes3.dex */
public final class m1<T> implements b1<T> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f15854c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final b1<T> f15855a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final n1 f15856b;

    /* compiled from: ThreadHandoffProducer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String c(c1 c1Var) {
            if (z3.a.b()) {
                String id2 = c1Var.getId();
                return "ThreadHandoffProducer_produceResults_" + id2;
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean d(c1 c1Var) {
            if (!c1Var.k().n().k() || Looper.getMainLooper().getThread() == Thread.currentThread()) {
                return false;
            }
            return true;
        }

        private a() {
        }
    }

    /* compiled from: ThreadHandoffProducer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k1<T> f15857a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ m1<T> f15858b;

        b(k1<T> k1Var, m1<T> m1Var) {
            this.f15857a = k1Var;
            this.f15858b = m1Var;
        }

        @Override // com.facebook.imagepipeline.producers.d1
        public void b() {
            this.f15857a.a();
            this.f15858b.d().a(this.f15857a);
        }
    }

    public m1(@NotNull b1<T> inputProducer, @NotNull n1 threadHandoffProducerQueue) {
        Intrinsics.checkNotNullParameter(inputProducer, "inputProducer");
        Intrinsics.checkNotNullParameter(threadHandoffProducerQueue, "threadHandoffProducerQueue");
        this.f15855a = inputProducer;
        this.f15856b = threadHandoffProducerQueue;
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(@NotNull n<T> consumer, @NotNull c1 context) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        Intrinsics.checkNotNullParameter(context, "context");
        if (!f4.b.d()) {
            e1 l10 = context.l();
            a aVar = f15854c;
            if (aVar.d(context)) {
                l10.b(context, "BackgroundThreadHandoffProducer");
                l10.j(context, "BackgroundThreadHandoffProducer", null);
                this.f15855a.b(consumer, context);
                return;
            }
            c cVar = new c(consumer, l10, context, this);
            context.p(new b(cVar, this));
            this.f15856b.c(z3.a.a(cVar, aVar.c(context)));
            return;
        }
        f4.b.a("ThreadHandoffProducer#produceResults");
        try {
            e1 l11 = context.l();
            a aVar2 = f15854c;
            if (aVar2.d(context)) {
                l11.b(context, "BackgroundThreadHandoffProducer");
                l11.j(context, "BackgroundThreadHandoffProducer", null);
                this.f15855a.b(consumer, context);
                return;
            }
            c cVar2 = new c(consumer, l11, context, this);
            context.p(new b(cVar2, this));
            this.f15856b.c(z3.a.a(cVar2, aVar2.c(context)));
            Unit unit = Unit.f60915a;
        } finally {
            f4.b.b();
        }
    }

    @NotNull
    public final b1<T> c() {
        return this.f15855a;
    }

    @NotNull
    public final n1 d() {
        return this.f15856b;
    }

    /* compiled from: ThreadHandoffProducer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c extends k1<T> {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ n<T> f15859f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ e1 f15860g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ c1 f15861h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ m1<T> f15862i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(n<T> nVar, e1 e1Var, c1 c1Var, m1<T> m1Var) {
            super(nVar, e1Var, c1Var, "BackgroundThreadHandoffProducer");
            this.f15859f = nVar;
            this.f15860g = e1Var;
            this.f15861h = c1Var;
            this.f15862i = m1Var;
        }

        @Override // i2.h
        protected T d() throws Exception {
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.k1, i2.h
        public void g(T t10) {
            this.f15860g.j(this.f15861h, "BackgroundThreadHandoffProducer", null);
            this.f15862i.c().b(this.f15859f, this.f15861h);
        }

        @Override // i2.h
        protected void c(T t10) {
        }
    }
}
