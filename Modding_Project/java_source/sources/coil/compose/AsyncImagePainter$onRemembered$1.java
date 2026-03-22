package coil.compose;

import androidx.compose.runtime.SnapshotStateKt;
import coil.ImageLoader;
import coil.compose.AsyncImagePainter;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kt.b;
import m0.f;
import m0.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AsyncImagePainter.kt */
@Metadata
@d(c = "coil.compose.AsyncImagePainter$onRemembered$1", f = "AsyncImagePainter.kt", l = {246}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class AsyncImagePainter$onRemembered$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f3835h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AsyncImagePainter f3836i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AsyncImagePainter.kt */
    @Metadata
    @d(c = "coil.compose.AsyncImagePainter$onRemembered$1$2", f = "AsyncImagePainter.kt", l = {245}, m = "invokeSuspend")
    /* renamed from: coil.compose.AsyncImagePainter$onRemembered$1$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<f, c<? super AsyncImagePainter.b>, Object> {

        /* renamed from: h  reason: collision with root package name */
        Object f3838h;

        /* renamed from: i  reason: collision with root package name */
        int f3839i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ AsyncImagePainter f3840j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(AsyncImagePainter asyncImagePainter, c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.f3840j = asyncImagePainter;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass2(this.f3840j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: i */
        public final Object invoke(@NotNull f fVar, @Nullable c<? super AsyncImagePainter.b> cVar) {
            return ((AnonymousClass2) create(fVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            f C;
            AsyncImagePainter asyncImagePainter;
            AsyncImagePainter.b B;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f3839i;
            if (i10 != 0) {
                if (i10 == 1) {
                    asyncImagePainter = (AsyncImagePainter) this.f3838h;
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                AsyncImagePainter asyncImagePainter2 = this.f3840j;
                ImageLoader j10 = asyncImagePainter2.j();
                AsyncImagePainter asyncImagePainter3 = this.f3840j;
                C = asyncImagePainter3.C(asyncImagePainter3.l());
                this.f3838h = asyncImagePainter2;
                this.f3839i = 1;
                Object a10 = j10.a(C, this);
                if (a10 == f10) {
                    return f10;
                }
                asyncImagePainter = asyncImagePainter2;
                obj = a10;
            }
            B = asyncImagePainter.B((g) obj);
            return B;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AsyncImagePainter.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public /* synthetic */ class a implements kt.c, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AsyncImagePainter f3841a;

        a(AsyncImagePainter asyncImagePainter) {
            this.f3841a = asyncImagePainter;
        }

        @Override // kt.c
        @Nullable
        /* renamed from: a */
        public final Object emit(@NotNull AsyncImagePainter.b bVar, @NotNull c<? super Unit> cVar) {
            Object j10 = AsyncImagePainter$onRemembered$1.j(this.f3841a, bVar, cVar);
            if (j10 == kotlin.coroutines.intrinsics.a.f()) {
                return j10;
            }
            return Unit.f60915a;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof kt.c) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final ms.f<?> getFunctionDelegate() {
            return new AdaptedFunctionReference(2, this.f3841a, AsyncImagePainter.class, "updateState", "updateState(Lcoil/compose/AsyncImagePainter$State;)V", 4);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncImagePainter$onRemembered$1(AsyncImagePainter asyncImagePainter, c<? super AsyncImagePainter$onRemembered$1> cVar) {
        super(2, cVar);
        this.f3836i = asyncImagePainter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object j(AsyncImagePainter asyncImagePainter, AsyncImagePainter.b bVar, c cVar) {
        asyncImagePainter.D(bVar);
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AsyncImagePainter$onRemembered$1(this.f3836i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AsyncImagePainter$onRemembered$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f3835h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            final AsyncImagePainter asyncImagePainter = this.f3836i;
            b K = kotlinx.coroutines.flow.c.K(SnapshotStateKt.snapshotFlow(new Function0<f>() { // from class: coil.compose.AsyncImagePainter$onRemembered$1.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                /* renamed from: b */
                public final f invoke() {
                    return AsyncImagePainter.this.l();
                }
            }), new AnonymousClass2(this.f3836i, null));
            a aVar = new a(this.f3836i);
            this.f3835h = 1;
            if (K.collect(aVar, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
