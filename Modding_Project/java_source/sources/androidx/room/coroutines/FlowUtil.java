package androidx.room.coroutines;

import androidx.annotation.RestrictTo;
import androidx.room.RoomDatabase;
import androidx.sqlite.SQLiteConnection;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FlowBuilder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFlowBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowBuilder.kt\nandroidx/room/coroutines/FlowUtil\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,40:1\n49#2:41\n51#2:45\n46#3:42\n51#3:44\n105#4:43\n*S KotlinDebug\n*F\n+ 1 FlowBuilder.kt\nandroidx/room/coroutines/FlowUtil\n*L\n37#1:41\n37#1:45\n37#1:42\n37#1:44\n37#1:43\n*E\n"})
/* loaded from: classes2.dex */
public final class FlowUtil {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public static final <R> kt.b<R> createFlow(@NotNull final RoomDatabase db2, final boolean z10, @NotNull String[] tableNames, @NotNull final Function1<? super SQLiteConnection, ? extends R> block) {
        Intrinsics.checkNotNullParameter(db2, "db");
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        Intrinsics.checkNotNullParameter(block, "block");
        final kt.b o10 = kotlinx.coroutines.flow.c.o(db2.getInvalidationTracker().createFlow((String[]) Arrays.copyOf(tableNames, tableNames.length), true));
        return new kt.b<R>() { // from class: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 FlowBuilder.kt\nandroidx/room/coroutines/FlowUtil\n*L\n1#1,218:1\n50#2:219\n38#3:220\n*E\n"})
            /* renamed from: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ Function1 $block$inlined;
                final /* synthetic */ RoomDatabase $db$inlined;
                final /* synthetic */ boolean $inTransaction$inlined;
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2", f = "FlowBuilder.kt", l = {220, 219}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,218:1\n*E\n"})
                /* renamed from: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(rs.c cVar) {
                        super(cVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kt.c cVar, RoomDatabase roomDatabase, boolean z10, Function1 function1) {
                    this.$this_unsafeFlow = cVar;
                    this.$db$inlined = roomDatabase;
                    this.$inTransaction$inlined = z10;
                    this.$block$inlined = function1;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
                /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
                /* JADX WARN: Removed duplicated region for block: B:22:0x0062 A[RETURN] */
                @Override // kt.c
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r8, @org.jetbrains.annotations.NotNull rs.c r9) {
                    /*
                        r7 = this;
                        boolean r0 = r9 instanceof androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r9
                        androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1 r0 = (androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1 r0 = new androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1
                        r0.<init>(r9)
                    L18:
                        java.lang.Object r9 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 2
                        r4 = 1
                        if (r2 == 0) goto L3c
                        if (r2 == r4) goto L34
                        if (r2 != r3) goto L2c
                        kotlin.f.b(r9)
                        goto L63
                    L2c:
                        java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                        java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                        r8.<init>(r9)
                        throw r8
                    L34:
                        java.lang.Object r8 = r0.L$0
                        kt.c r8 = (kt.c) r8
                        kotlin.f.b(r9)
                        goto L57
                    L3c:
                        kotlin.f.b(r9)
                        kt.c r9 = r7.$this_unsafeFlow
                        java.util.Set r8 = (java.util.Set) r8
                        androidx.room.RoomDatabase r8 = r7.$db$inlined
                        boolean r2 = r7.$inTransaction$inlined
                        kotlin.jvm.functions.Function1 r5 = r7.$block$inlined
                        r0.L$0 = r9
                        r0.label = r4
                        java.lang.Object r8 = androidx.room.util.DBUtil.performSuspending(r8, r4, r2, r5, r0)
                        if (r8 != r1) goto L54
                        return r1
                    L54:
                        r6 = r9
                        r9 = r8
                        r8 = r6
                    L57:
                        r2 = 0
                        r0.L$0 = r2
                        r0.label = r3
                        java.lang.Object r8 = r8.emit(r9, r0)
                        if (r8 != r1) goto L63
                        return r1
                    L63:
                        kotlin.Unit r8 = kotlin.Unit.f60915a
                        return r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c cVar, @NotNull rs.c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar, db2, z10, block), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        };
    }
}
