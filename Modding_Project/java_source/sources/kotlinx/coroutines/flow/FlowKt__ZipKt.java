package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Zip.kt */
@Metadata
@SourceDebugExtension({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,328:1\n268#1,3:330\n268#1,3:333\n257#1:336\n259#1:338\n268#1,3:339\n257#1:342\n259#1:344\n268#1,3:345\n257#1:348\n259#1:350\n268#1,3:351\n105#2:329\n105#2:337\n105#2:343\n105#2:349\n105#2:354\n105#2:355\n105#2:360\n37#3:356\n36#3,3:357\n37#3:361\n36#3,3:362\n*S KotlinDebug\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n71#1:330,3\n99#1:333,3\n115#1:336\n115#1:338\n134#1:339,3\n152#1:342\n152#1:344\n173#1:345,3\n193#1:348\n193#1:350\n216#1:351,3\n28#1:329\n115#1:337\n152#1:343\n193#1:349\n233#1:354\n257#1:355\n284#1:360\n283#1:356\n283#1:357,3\n302#1:361\n302#1:362,3\n*E\n"})
/* loaded from: classes8.dex */
public final /* synthetic */ class FlowKt__ZipKt {

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* compiled from: SafeCollector.common.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,108:1\n29#2,2:109\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a<R> implements kt.b<R> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kt.b f61628a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kt.b f61629b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ at.n f61630c;

        public a(kt.b bVar, kt.b bVar2, at.n nVar) {
            this.f61628a = bVar;
            this.f61629b = bVar2;
            this.f61630c = nVar;
        }

        @Override // kt.b
        public Object collect(kt.c<? super R> cVar, rs.c<? super Unit> cVar2) {
            Object a10 = CombineKt.a(cVar, new kt.b[]{this.f61628a, this.f61629b}, FlowKt__ZipKt.a(), new FlowKt__ZipKt$combine$1$1(this.f61630c, null), cVar2);
            if (a10 == kotlin.coroutines.intrinsics.a.f()) {
                return a10;
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Zip.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final b f61631a = new b();

        b() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final Void invoke() {
            return null;
        }
    }

    public static final /* synthetic */ Function0 a() {
        return d();
    }

    @NotNull
    public static final <T1, T2, R> kt.b<R> b(@NotNull kt.b<? extends T1> bVar, @NotNull kt.b<? extends T2> bVar2, @NotNull at.n<? super T1, ? super T2, ? super rs.c<? super R>, ? extends Object> nVar) {
        return c.G(bVar, bVar2, nVar);
    }

    @NotNull
    public static final <T1, T2, R> kt.b<R> c(@NotNull kt.b<? extends T1> bVar, @NotNull kt.b<? extends T2> bVar2, @NotNull at.n<? super T1, ? super T2, ? super rs.c<? super R>, ? extends Object> nVar) {
        return new a(bVar, bVar2, nVar);
    }

    private static final <T> Function0<T[]> d() {
        return b.f61631a;
    }
}
