package androidx.datastore.core;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SimpleActor.kt */
@Metadata
@d(c = "androidx.datastore.core.SimpleActor$offer$2", f = "SimpleActor.kt", l = {121, 121}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class SimpleActor$offer$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ SimpleActor<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleActor$offer$2(SimpleActor<T> simpleActor, c<? super SimpleActor$offer$2> cVar) {
        super(2, cVar);
        this.this$0 = simpleActor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new SimpleActor$offer$2(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((SimpleActor$offer$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0050 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0069  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x005a -> B:18:0x005d). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r5.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L22
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.f.b(r6)
            goto L5d
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1a:
            java.lang.Object r1 = r5.L$0
            kotlin.jvm.functions.Function2 r1 = (kotlin.jvm.functions.Function2) r1
            kotlin.f.b(r6)
            goto L51
        L22:
            kotlin.f.b(r6)
            androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
            androidx.datastore.core.AtomicInt r6 = androidx.datastore.core.SimpleActor.access$getRemainingMessages$p(r6)
            int r6 = r6.get()
            if (r6 <= 0) goto L6c
        L31:
            androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
            gt.g0 r6 = androidx.datastore.core.SimpleActor.access$getScope$p(r6)
            kotlinx.coroutines.i.g(r6)
            androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
            kotlin.jvm.functions.Function2 r1 = androidx.datastore.core.SimpleActor.access$getConsumeMessage$p(r6)
            androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
            jt.d r6 = androidx.datastore.core.SimpleActor.access$getMessageQueue$p(r6)
            r5.L$0 = r1
            r5.label = r3
            java.lang.Object r6 = r6.w(r5)
            if (r6 != r0) goto L51
            return r0
        L51:
            r4 = 0
            r5.L$0 = r4
            r5.label = r2
            java.lang.Object r6 = r1.invoke(r6, r5)
            if (r6 != r0) goto L5d
            return r0
        L5d:
            androidx.datastore.core.SimpleActor<T> r6 = r5.this$0
            androidx.datastore.core.AtomicInt r6 = androidx.datastore.core.SimpleActor.access$getRemainingMessages$p(r6)
            int r6 = r6.decrementAndGet()
            if (r6 != 0) goto L31
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        L6c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "Check failed."
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SimpleActor$offer$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
