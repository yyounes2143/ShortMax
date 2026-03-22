package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channels.kt */
@Metadata
/* loaded from: classes8.dex */
public final /* synthetic */ class FlowKt__ChannelsKt {
    @NotNull
    public static final <T> kt.b<T> b(@NotNull jt.i<? extends T> iVar) {
        return new a(iVar, true, null, 0, null, 28, null);
    }

    @Nullable
    public static final <T> Object c(@NotNull kt.c<? super T> cVar, @NotNull jt.i<? extends T> iVar, @NotNull rs.c<? super Unit> cVar2) {
        Object d10 = d(cVar, iVar, true, cVar2);
        if (d10 == kotlin.coroutines.intrinsics.a.f()) {
            return d10;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0072 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #0 {all -> 0x003c, blocks: (B:13:0x0036, B:24:0x0062, B:28:0x0077, B:30:0x007f, B:20:0x0054, B:23:0x005e), top: B:42:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0091 -> B:14:0x0039). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object d(kt.c<? super T> r6, jt.i<? extends T> r7, boolean r8, rs.c<? super kotlin.Unit> r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = (kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1) r0
            int r1 = r0.f61436m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61436m = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = new kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f61435l
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61436m
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L58
            if (r2 == r4) goto L46
            if (r2 != r3) goto L3e
            boolean r8 = r0.f61434k
            java.lang.Object r6 = r0.f61433j
            jt.f r6 = (jt.f) r6
            java.lang.Object r7 = r0.f61432i
            jt.i r7 = (jt.i) r7
            java.lang.Object r2 = r0.f61431h
            kt.c r2 = (kt.c) r2
            kotlin.f.b(r9)     // Catch: java.lang.Throwable -> L3c
        L39:
            r9 = r6
            r6 = r2
            goto L62
        L3c:
            r6 = move-exception
            goto L9d
        L3e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L46:
            boolean r8 = r0.f61434k
            java.lang.Object r6 = r0.f61433j
            jt.f r6 = (jt.f) r6
            java.lang.Object r7 = r0.f61432i
            jt.i r7 = (jt.i) r7
            java.lang.Object r2 = r0.f61431h
            kt.c r2 = (kt.c) r2
            kotlin.f.b(r9)     // Catch: java.lang.Throwable -> L3c
            goto L77
        L58:
            kotlin.f.b(r9)
            kotlinx.coroutines.flow.c.v(r6)
            jt.f r9 = r7.iterator()     // Catch: java.lang.Throwable -> L3c
        L62:
            r0.f61431h = r6     // Catch: java.lang.Throwable -> L3c
            r0.f61432i = r7     // Catch: java.lang.Throwable -> L3c
            r0.f61433j = r9     // Catch: java.lang.Throwable -> L3c
            r0.f61434k = r8     // Catch: java.lang.Throwable -> L3c
            r0.f61436m = r4     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r2 = r9.a(r0)     // Catch: java.lang.Throwable -> L3c
            if (r2 != r1) goto L73
            return r1
        L73:
            r5 = r2
            r2 = r6
            r6 = r9
            r9 = r5
        L77:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L3c
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L3c
            if (r9 == 0) goto L94
            java.lang.Object r9 = r6.next()     // Catch: java.lang.Throwable -> L3c
            r0.f61431h = r2     // Catch: java.lang.Throwable -> L3c
            r0.f61432i = r7     // Catch: java.lang.Throwable -> L3c
            r0.f61433j = r6     // Catch: java.lang.Throwable -> L3c
            r0.f61434k = r8     // Catch: java.lang.Throwable -> L3c
            r0.f61436m = r3     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r9 = r2.emit(r9, r0)     // Catch: java.lang.Throwable -> L3c
            if (r9 != r1) goto L39
            return r1
        L94:
            if (r8 == 0) goto L9a
            r6 = 0
            kotlinx.coroutines.channels.c.a(r7, r6)
        L9a:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        L9d:
            throw r6     // Catch: java.lang.Throwable -> L9e
        L9e:
            r9 = move-exception
            if (r8 == 0) goto La4
            kotlinx.coroutines.channels.c.a(r7, r6)
        La4:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ChannelsKt.d(kt.c, jt.i, boolean, rs.c):java.lang.Object");
    }
}
