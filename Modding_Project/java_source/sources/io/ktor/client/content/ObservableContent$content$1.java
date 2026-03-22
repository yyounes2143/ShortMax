package io.ktor.client.content;

import io.ktor.utils.io.e;
import io.ktor.utils.io.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
import xr.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ObservableContent.kt */
@Metadata
@d(c = "io.ktor.client.content.ObservableContent$content$1", f = "ObservableContent.kt", l = {36}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class ObservableContent$content$1 extends SuspendLambda implements Function2<o, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58810h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58811i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ObservableContent f58812j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObservableContent$content$1(ObservableContent observableContent, c<? super ObservableContent$content$1> cVar) {
        super(2, cVar);
        this.f58812j = observableContent;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        ObservableContent$content$1 observableContent$content$1 = new ObservableContent$content$1(this.f58812j, cVar);
        observableContent$content$1.f58811i = obj;
        return observableContent$content$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull o oVar, @Nullable c<? super Unit> cVar) {
        return ((ObservableContent$content$1) create(oVar, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        b bVar;
        Object f10 = a.f();
        int i10 = this.f58810h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            bVar = this.f58812j.f58806a;
            e mo4948getChannel = ((o) this.f58811i).mo4948getChannel();
            this.f58810h = 1;
            if (((b.d) bVar).d(mo4948getChannel, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
