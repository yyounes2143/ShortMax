package kotlinx.coroutines.flow;

import java.util.Collection;
import kotlin.Metadata;
import kotlin.Unit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Collection.kt */
@Metadata
/* loaded from: classes8.dex */
public final /* synthetic */ class FlowKt__CollectionKt {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Incorrect field signature: TC; */
    /* compiled from: Collection.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a<T> implements kt.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Collection f61439a;

        /* JADX WARN: Incorrect types in method signature: (TC;)V */
        a(Collection collection) {
            this.f61439a = collection;
        }

        @Override // kt.c
        public final Object emit(T t10, rs.c<? super Unit> cVar) {
            this.f61439a.add(t10);
            return Unit.f60915a;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T, C extends java.util.Collection<? super T>> java.lang.Object a(@org.jetbrains.annotations.NotNull kt.b<? extends T> r4, @org.jetbrains.annotations.NotNull C r5, @org.jetbrains.annotations.NotNull rs.c<? super C> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1 r0 = (kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1) r0
            int r1 = r0.f61442j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61442j = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1 r0 = new kotlinx.coroutines.flow.FlowKt__CollectionKt$toCollection$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f61441i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61442j
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r4 = r0.f61440h
            r5 = r4
            java.util.Collection r5 = (java.util.Collection) r5
            kotlin.f.b(r6)
            goto L49
        L2e:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L36:
            kotlin.f.b(r6)
            kotlinx.coroutines.flow.FlowKt__CollectionKt$a r6 = new kotlinx.coroutines.flow.FlowKt__CollectionKt$a
            r6.<init>(r5)
            r0.f61440h = r5
            r0.f61442j = r3
            java.lang.Object r4 = r4.collect(r6, r0)
            if (r4 != r1) goto L49
            return r1
        L49:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__CollectionKt.a(kt.b, java.util.Collection, rs.c):java.lang.Object");
    }
}
