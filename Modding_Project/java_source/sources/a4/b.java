package a4;

import com.facebook.imagepipeline.producers.c1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ForwardingRequestListener2.kt */
@Metadata
@SourceDebugExtension({"SMAP\nForwardingRequestListener2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForwardingRequestListener2.kt\ncom/facebook/imagepipeline/listener/ForwardingRequestListener2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n37#1:128\n38#1,7:130\n45#1:138\n37#1:139\n38#1,7:141\n45#1:149\n37#1:150\n38#1,7:152\n45#1:160\n37#1:161\n38#1,7:163\n45#1:171\n37#1:172\n38#1,7:174\n45#1:182\n37#1:183\n38#1,7:185\n45#1:193\n37#1:194\n38#1,7:196\n45#1:204\n37#1:205\n38#1,7:207\n45#1:215\n37#1:216\n38#1,7:218\n45#1:226\n37#1:227\n38#1,7:229\n45#1:237\n1863#2,2:126\n1863#2:129\n1864#2:137\n1863#2:140\n1864#2:148\n1863#2:151\n1864#2:159\n1863#2:162\n1864#2:170\n1863#2:173\n1864#2:181\n1863#2:184\n1864#2:192\n1863#2:195\n1864#2:203\n1863#2:206\n1864#2:214\n1863#2:217\n1864#2:225\n1863#2:228\n1864#2:236\n1755#2,3:238\n*S KotlinDebug\n*F\n+ 1 ForwardingRequestListener2.kt\ncom/facebook/imagepipeline/listener/ForwardingRequestListener2\n*L\n48#1:128\n48#1:130,7\n48#1:138\n52#1:139\n52#1:141,7\n52#1:149\n60#1:150\n60#1:152,7\n60#1:160\n71#1:161\n71#1:163,7\n71#1:171\n81#1:172\n81#1:174,7\n81#1:182\n91#1:183\n91#1:185,7\n91#1:193\n101#1:194\n101#1:196,7\n101#1:204\n107#1:205\n107#1:207,7\n107#1:215\n111#1:216\n111#1:218,7\n111#1:226\n115#1:227\n115#1:229,7\n115#1:237\n37#1:126,2\n48#1:129\n48#1:137\n52#1:140\n52#1:148\n60#1:151\n60#1:159\n71#1:162\n71#1:170\n81#1:173\n81#1:181\n91#1:184\n91#1:192\n101#1:195\n101#1:203\n107#1:206\n107#1:214\n111#1:217\n111#1:225\n115#1:228\n115#1:236\n119#1:238,3\n*E\n"})
/* loaded from: classes3.dex */
public final class b implements d {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f126b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<d> f127a;

    /* compiled from: ForwardingRequestListener2.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(@Nullable Set<? extends d> set) {
        if (set == null) {
            this.f127a = new ArrayList();
            return;
        }
        ArrayList arrayList = new ArrayList(set.size());
        this.f127a = arrayList;
        CollectionsKt.p0(set, arrayList);
    }

    @Override // com.facebook.imagepipeline.producers.e1
    public void a(@NotNull c1 producerContext, @NotNull String producerName, boolean z10) {
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        Intrinsics.checkNotNullParameter(producerName, "producerName");
        for (d dVar : this.f127a) {
            try {
                dVar.a(producerContext, producerName, z10);
            } catch (Exception e10) {
                l2.a.j("ForwardingRequestListener2", "InternalListener exception in onProducerFinishWithSuccess", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.e1
    public void b(@NotNull c1 producerContext, @NotNull String producerName) {
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        Intrinsics.checkNotNullParameter(producerName, "producerName");
        for (d dVar : this.f127a) {
            try {
                dVar.b(producerContext, producerName);
            } catch (Exception e10) {
                l2.a.j("ForwardingRequestListener2", "InternalListener exception in onProducerStart", e10);
            }
        }
    }

    @Override // a4.d
    public void c(@NotNull c1 producerContext) {
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        for (d dVar : this.f127a) {
            try {
                dVar.c(producerContext);
            } catch (Exception e10) {
                l2.a.j("ForwardingRequestListener2", "InternalListener exception in onRequestStart", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.e1
    public void d(@Nullable c1 c1Var, @Nullable String str, @Nullable Map<String, String> map) {
        for (d dVar : this.f127a) {
            try {
                dVar.d(c1Var, str, map);
            } catch (Exception e10) {
                l2.a.j("ForwardingRequestListener2", "InternalListener exception in onProducerFinishWithCancellation", e10);
            }
        }
    }

    @Override // a4.d
    public void e(@NotNull c1 producerContext) {
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        for (d dVar : this.f127a) {
            try {
                dVar.e(producerContext);
            } catch (Exception e10) {
                l2.a.j("ForwardingRequestListener2", "InternalListener exception in onRequestSuccess", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.e1
    public boolean f(@NotNull c1 producerContext, @NotNull String producerName) {
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        Intrinsics.checkNotNullParameter(producerName, "producerName");
        List<d> list = this.f127a;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (d dVar : list) {
            if (dVar.f(producerContext, producerName)) {
                return true;
            }
        }
        return false;
    }

    @Override // a4.d
    public void g(@NotNull c1 producerContext) {
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        for (d dVar : this.f127a) {
            try {
                dVar.g(producerContext);
            } catch (Exception e10) {
                l2.a.j("ForwardingRequestListener2", "InternalListener exception in onRequestCancellation", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.e1
    public void h(@NotNull c1 producerContext, @NotNull String producerName, @NotNull String producerEventName) {
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        Intrinsics.checkNotNullParameter(producerName, "producerName");
        Intrinsics.checkNotNullParameter(producerEventName, "producerEventName");
        for (d dVar : this.f127a) {
            try {
                dVar.h(producerContext, producerName, producerEventName);
            } catch (Exception e10) {
                l2.a.j("ForwardingRequestListener2", "InternalListener exception in onIntermediateChunkStart", e10);
            }
        }
    }

    @Override // a4.d
    public void i(@NotNull c1 producerContext, @NotNull Throwable throwable) {
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        for (d dVar : this.f127a) {
            try {
                dVar.i(producerContext, throwable);
            } catch (Exception e10) {
                l2.a.j("ForwardingRequestListener2", "InternalListener exception in onRequestFailure", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.e1
    public void j(@Nullable c1 c1Var, @Nullable String str, @Nullable Map<String, String> map) {
        for (d dVar : this.f127a) {
            try {
                dVar.j(c1Var, str, map);
            } catch (Exception e10) {
                l2.a.j("ForwardingRequestListener2", "InternalListener exception in onProducerFinishWithSuccess", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.e1
    public void k(@Nullable c1 c1Var, @Nullable String str, @Nullable Throwable th2, @Nullable Map<String, String> map) {
        for (d dVar : this.f127a) {
            try {
                dVar.k(c1Var, str, th2, map);
            } catch (Exception e10) {
                l2.a.j("ForwardingRequestListener2", "InternalListener exception in onProducerFinishWithFailure", e10);
            }
        }
    }
}
