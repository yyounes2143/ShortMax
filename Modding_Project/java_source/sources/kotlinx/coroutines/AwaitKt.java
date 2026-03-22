package kotlinx.coroutines;

import gt.k0;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Await.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n37#2:122\n36#2,3:123\n13402#3,2:126\n1863#4,2:128\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitKt\n*L\n36#1:122\n36#1:123,3\n47#1:126,2\n58#1:128,2\n*E\n"})
/* loaded from: classes8.dex */
public final class AwaitKt {
    @Nullable
    public static final <T> Object a(@NotNull Collection<? extends k0<? extends T>> collection, @NotNull rs.c<? super List<? extends T>> cVar) {
        if (collection.isEmpty()) {
            return CollectionsKt.n();
        }
        return new c((k0[]) collection.toArray(new k0[0])).c(cVar);
    }

    @Nullable
    public static final <T> Object b(@NotNull k0<? extends T>[] k0VarArr, @NotNull rs.c<? super List<? extends T>> cVar) {
        if (k0VarArr.length == 0) {
            return CollectionsKt.n();
        }
        return new c(k0VarArr).c(cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(@org.jetbrains.annotations.NotNull java.util.Collection<? extends kotlinx.coroutines.r> r4, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.AwaitKt$joinAll$3
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.AwaitKt$joinAll$3 r0 = (kotlinx.coroutines.AwaitKt$joinAll$3) r0
            int r1 = r0.f61274j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61274j = r1
            goto L18
        L13:
            kotlinx.coroutines.AwaitKt$joinAll$3 r0 = new kotlinx.coroutines.AwaitKt$joinAll$3
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f61273i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61274j
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.f61272h
            java.util.Iterator r4 = (java.util.Iterator) r4
            kotlin.f.b(r5)
            goto L3e
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.f.b(r5)
            java.lang.Iterable r4 = (java.lang.Iterable) r4
            java.util.Iterator r4 = r4.iterator()
        L3e:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L55
            java.lang.Object r5 = r4.next()
            kotlinx.coroutines.r r5 = (kotlinx.coroutines.r) r5
            r0.f61272h = r4
            r0.f61274j = r3
            java.lang.Object r5 = r5.join(r0)
            if (r5 != r1) goto L3e
            return r1
        L55:
            kotlin.Unit r4 = kotlin.Unit.f60915a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.c(java.util.Collection, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0057  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0052 -> B:19:0x0055). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object d(@org.jetbrains.annotations.NotNull kotlinx.coroutines.r[] r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.AwaitKt$joinAll$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.AwaitKt$joinAll$1 r0 = (kotlinx.coroutines.AwaitKt$joinAll$1) r0
            int r1 = r0.f61271l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61271l = r1
            goto L18
        L13:
            kotlinx.coroutines.AwaitKt$joinAll$1 r0 = new kotlinx.coroutines.AwaitKt$joinAll$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f61270k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61271l
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            int r6 = r0.f61269j
            int r2 = r0.f61268i
            java.lang.Object r4 = r0.f61267h
            kotlinx.coroutines.r[] r4 = (kotlinx.coroutines.r[]) r4
            kotlin.f.b(r7)
            r7 = r4
            goto L55
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r7)
            int r7 = r6.length
            r2 = 0
            r5 = r7
            r7 = r6
            r6 = r5
        L42:
            if (r2 >= r6) goto L57
            r4 = r7[r2]
            r0.f61267h = r7
            r0.f61268i = r2
            r0.f61269j = r6
            r0.f61271l = r3
            java.lang.Object r4 = r4.join(r0)
            if (r4 != r1) goto L55
            return r1
        L55:
            int r2 = r2 + r3
            goto L42
        L57:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.AwaitKt.d(kotlinx.coroutines.r[], rs.c):java.lang.Object");
    }
}
