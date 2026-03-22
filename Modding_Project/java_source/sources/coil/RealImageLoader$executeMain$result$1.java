package coil;

import android.graphics.Bitmap;
import coil.intercept.RealInterceptorChain;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import m0.f;
import m0.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealImageLoader.kt */
@Metadata
@d(c = "coil.RealImageLoader$executeMain$result$1", f = "RealImageLoader.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_COUNT}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class RealImageLoader$executeMain$result$1 extends SuspendLambda implements Function2<g0, c<? super g>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f3773h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ f f3774i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ RealImageLoader f3775j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ n0.g f3776k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ a0.c f3777l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ Bitmap f3778m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealImageLoader$executeMain$result$1(f fVar, RealImageLoader realImageLoader, n0.g gVar, a0.c cVar, Bitmap bitmap, c<? super RealImageLoader$executeMain$result$1> cVar2) {
        super(2, cVar2);
        this.f3774i = fVar;
        this.f3775j = realImageLoader;
        this.f3776k = gVar;
        this.f3777l = cVar;
        this.f3778m = bitmap;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new RealImageLoader$executeMain$result$1(this.f3774i, this.f3775j, this.f3776k, this.f3777l, this.f3778m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super g> cVar) {
        return ((RealImageLoader$executeMain$result$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        List list;
        boolean z10;
        Object f10 = a.f();
        int i10 = this.f3773h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            f fVar = this.f3774i;
            list = this.f3775j.f3752o;
            f fVar2 = this.f3774i;
            n0.g gVar = this.f3776k;
            a0.c cVar = this.f3777l;
            if (this.f3778m != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            RealInterceptorChain realInterceptorChain = new RealInterceptorChain(fVar, list, 0, fVar2, gVar, cVar, z10);
            f fVar3 = this.f3774i;
            this.f3773h = 1;
            obj = realInterceptorChain.f(fVar3, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
