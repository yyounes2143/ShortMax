package androidx.datastore.core;

import androidx.datastore.core.MulticastFileObserver;
import gt.s0;
import java.io.File;
import jt.h;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ProduceKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MulticastFileObserver.android.kt */
@Metadata
@d(c = "androidx.datastore.core.MulticastFileObserver$Companion$observe$1", f = "MulticastFileObserver.android.kt", l = {84, 85}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class MulticastFileObserver$Companion$observe$1 extends SuspendLambda implements Function2<h<? super Unit>, c<? super Unit>, Object> {
    final /* synthetic */ File $file;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MulticastFileObserver$Companion$observe$1(File file, c<? super MulticastFileObserver$Companion$observe$1> cVar) {
        super(2, cVar);
        this.$file = file;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        MulticastFileObserver$Companion$observe$1 multicastFileObserver$Companion$observe$1 = new MulticastFileObserver$Companion$observe$1(this.$file, cVar);
        multicastFileObserver$Companion$observe$1.L$0 = obj;
        return multicastFileObserver$Companion$observe$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        final s0 observe;
        h hVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            observe = (s0) this.L$1;
            hVar = (h) this.L$0;
            f.b(obj);
        } else {
            f.b(obj);
            final h hVar2 = (h) this.L$0;
            final File file = this.$file;
            Function1<String, Unit> function1 = new Function1<String, Unit>() { // from class: androidx.datastore.core.MulticastFileObserver$Companion$observe$1$flowObserver$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                    invoke2(str);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable String str) {
                    if (Intrinsics.areEqual(str, file.getName())) {
                        kotlinx.coroutines.channels.c.b(hVar2, Unit.f60915a);
                    }
                }
            };
            MulticastFileObserver.Companion companion = MulticastFileObserver.Companion;
            File parentFile = this.$file.getParentFile();
            Intrinsics.checkNotNull(parentFile);
            observe = companion.observe(parentFile, function1);
            Unit unit = Unit.f60915a;
            this.L$0 = hVar2;
            this.L$1 = observe;
            this.label = 1;
            if (hVar2.p(unit, this) == f10) {
                return f10;
            }
            hVar = hVar2;
        }
        Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.datastore.core.MulticastFileObserver$Companion$observe$1.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                s0.this.dispose();
            }
        };
        this.L$0 = null;
        this.L$1 = null;
        this.label = 2;
        if (ProduceKt.a(hVar, function0, this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull h<? super Unit> hVar, @Nullable c<? super Unit> cVar) {
        return ((MulticastFileObserver$Companion$observe$1) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
