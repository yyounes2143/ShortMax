package androidx.collection;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.i;
import rs.c;
/* compiled from: ScatterMap.kt */
@Metadata
@d(c = "androidx.collection.MutableKeys$iterator$1$iterator$1", f = "ScatterMap.kt", l = {1622}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableKeys$iterator$1$iterator$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,1787:1\n329#2,6:1788\n339#2,3:1795\n342#2,9:1799\n1399#3:1794\n1270#3:1798\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableKeys$iterator$1$iterator$1\n*L\n1622#1:1788,6\n1622#1:1795,3\n1622#1:1799,9\n1622#1:1794\n1622#1:1798\n*E\n"})
/* loaded from: classes.dex */
final class MutableKeys$iterator$1$iterator$1 extends RestrictedSuspendLambda implements Function2<i<? super Integer>, c<? super Unit>, Object> {
    int I$0;
    int I$1;
    int I$2;
    int I$3;
    long J$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ MutableKeys<K, V> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableKeys$iterator$1$iterator$1(MutableKeys<K, V> mutableKeys, c<? super MutableKeys$iterator$1$iterator$1> cVar) {
        super(2, cVar);
        this.this$0 = mutableKeys;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        MutableKeys$iterator$1$iterator$1 mutableKeys$iterator$1$iterator$1 = new MutableKeys$iterator$1$iterator$1(this.this$0, cVar);
        mutableKeys$iterator$1$iterator$1.L$0 = obj;
        return mutableKeys$iterator$1$iterator$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0052 -> B:23:0x009a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0054 -> B:14:0x0068). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0071 -> B:20:0x0091). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x008e -> B:20:0x0091). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            r20 = this;
            r0 = r20
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 0
            r4 = 8
            r5 = 1
            if (r2 == 0) goto L2f
            if (r2 != r5) goto L27
            int r2 = r0.I$3
            int r6 = r0.I$2
            long r7 = r0.J$0
            int r9 = r0.I$1
            int r10 = r0.I$0
            java.lang.Object r11 = r0.L$1
            long[] r11 = (long[]) r11
            java.lang.Object r12 = r0.L$0
            kotlin.sequences.i r12 = (kotlin.sequences.i) r12
            kotlin.f.b(r21)
            goto L91
        L27:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L2f:
            kotlin.f.b(r21)
            java.lang.Object r2 = r0.L$0
            kotlin.sequences.i r2 = (kotlin.sequences.i) r2
            androidx.collection.MutableKeys<K, V> r6 = r0.this$0
            androidx.collection.MutableScatterMap r6 = androidx.collection.MutableKeys.access$getParent$p(r6)
            long[] r6 = r6.metadata
            int r7 = r6.length
            int r7 = r7 + (-2)
            if (r7 < 0) goto L9f
            r8 = r3
        L44:
            r9 = r6[r8]
            long r11 = ~r9
            r13 = 7
            long r11 = r11 << r13
            long r11 = r11 & r9
            r13 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r11 = r11 & r13
            int r11 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r11 == 0) goto L9a
            int r11 = r8 - r7
            int r11 = ~r11
            int r11 = r11 >>> 31
            int r11 = 8 - r11
            r12 = r2
            r2 = r3
            r17 = r11
            r11 = r6
            r6 = r17
            r18 = r9
            r10 = r7
            r9 = r8
            r7 = r18
        L68:
            if (r2 >= r6) goto L94
            r13 = 255(0xff, double:1.26E-321)
            long r13 = r13 & r7
            r15 = 128(0x80, double:6.32E-322)
            int r13 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r13 >= 0) goto L91
            int r13 = r9 << 3
            int r13 = r13 + r2
            java.lang.Integer r13 = kotlin.coroutines.jvm.internal.a.d(r13)
            r0.L$0 = r12
            r0.L$1 = r11
            r0.I$0 = r10
            r0.I$1 = r9
            r0.J$0 = r7
            r0.I$2 = r6
            r0.I$3 = r2
            r0.label = r5
            java.lang.Object r13 = r12.a(r13, r0)
            if (r13 != r1) goto L91
            return r1
        L91:
            long r7 = r7 >> r4
            int r2 = r2 + r5
            goto L68
        L94:
            if (r6 != r4) goto L9f
            r8 = r9
            r7 = r10
            r6 = r11
            r2 = r12
        L9a:
            if (r8 == r7) goto L9f
            int r8 = r8 + 1
            goto L44
        L9f:
            kotlin.Unit r1 = kotlin.Unit.f60915a
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableKeys$iterator$1$iterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(i<? super Integer> iVar, c<? super Unit> cVar) {
        return ((MutableKeys$iterator$1$iterator$1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
