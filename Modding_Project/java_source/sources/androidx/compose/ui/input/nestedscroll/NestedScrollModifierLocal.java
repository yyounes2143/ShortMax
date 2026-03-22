package androidx.compose.ui.input.nestedscroll;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import gt.g0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NestedScrollModifierLocal.kt */
@Metadata
/* loaded from: classes.dex */
public final class NestedScrollModifierLocal implements ModifierLocalConsumer, ModifierLocalProvider<NestedScrollModifierLocal>, NestedScrollConnection {
    @NotNull
    private final NestedScrollConnection connection;
    @NotNull
    private final NestedScrollDispatcher dispatcher;
    @NotNull
    private final MutableState parent$delegate;

    public NestedScrollModifierLocal(@NotNull NestedScrollDispatcher dispatcher, @NotNull NestedScrollConnection connection) {
        MutableState mutableStateOf$default;
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(connection, "connection");
        this.dispatcher = dispatcher;
        this.connection = connection;
        dispatcher.setCalculateNestedScrollScope$ui_release(new Function0<g0>() { // from class: androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final g0 invoke() {
                return NestedScrollModifierLocal.this.getNestedCoroutineScope();
            }
        });
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.parent$delegate = mutableStateOf$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final g0 getNestedCoroutineScope() {
        g0 originNestedScrollScope$ui_release;
        NestedScrollModifierLocal parent = getParent();
        if ((parent != null && (originNestedScrollScope$ui_release = parent.getNestedCoroutineScope()) != null) || (originNestedScrollScope$ui_release = this.dispatcher.getOriginNestedScrollScope$ui_release()) != null) {
            return originNestedScrollScope$ui_release;
        }
        throw new IllegalStateException("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
    }

    private final NestedScrollModifierLocal getParent() {
        return (NestedScrollModifierLocal) this.parent$delegate.getValue();
    }

    private final void setParent(NestedScrollModifierLocal nestedScrollModifierLocal) {
        this.parent$delegate.setValue(nestedScrollModifierLocal);
    }

    @NotNull
    public final NestedScrollConnection getConnection() {
        return this.connection;
    }

    @NotNull
    public final NestedScrollDispatcher getDispatcher() {
        return this.dispatcher;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<NestedScrollModifierLocal> getKey() {
        return NestedScrollModifierLocalKt.getModifierLocalNestedScroll();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public NestedScrollModifierLocal getValue() {
        return this;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void onModifierLocalsUpdated(@NotNull ModifierLocalReadScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        setParent((NestedScrollModifierLocal) scope.getCurrent(NestedScrollModifierLocalKt.getModifierLocalNestedScroll()));
        this.dispatcher.setParent$ui_release(getParent());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0094  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    @org.jetbrains.annotations.Nullable
    /* renamed from: onPostFling-RZ2iAVY */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo347onPostFlingRZ2iAVY(long r16, long r18, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.unit.Velocity> r20) {
        /*
            r15 = this;
            r0 = r15
            r1 = r20
            boolean r2 = r1 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal$onPostFling$1
            if (r2 == 0) goto L16
            r2 = r1
            androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal$onPostFling$1 r2 = (androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal$onPostFling$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L16
            int r3 = r3 - r4
            r2.label = r3
            goto L1b
        L16:
            androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal$onPostFling$1 r2 = new androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal$onPostFling$1
            r2.<init>(r15, r1)
        L1b:
            java.lang.Object r1 = r2.result
            java.lang.Object r9 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r2.label
            r10 = 2
            r4 = 1
            if (r3 == 0) goto L47
            if (r3 == r4) goto L39
            if (r3 != r10) goto L31
            long r2 = r2.J$0
            kotlin.f.b(r1)
            goto L8c
        L31:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L39:
            long r3 = r2.J$1
            long r5 = r2.J$0
            java.lang.Object r7 = r2.L$0
            androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal r7 = (androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal) r7
            kotlin.f.b(r1)
            r13 = r3
            r11 = r5
            goto L65
        L47:
            kotlin.f.b(r1)
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r3 = r0.connection
            r2.L$0 = r0
            r11 = r16
            r2.J$0 = r11
            r13 = r18
            r2.J$1 = r13
            r2.label = r4
            r4 = r16
            r6 = r18
            r8 = r2
            java.lang.Object r1 = r3.mo347onPostFlingRZ2iAVY(r4, r6, r8)
            if (r1 != r9) goto L64
            return r9
        L64:
            r7 = r0
        L65:
            androidx.compose.ui.unit.Velocity r1 = (androidx.compose.ui.unit.Velocity) r1
            long r4 = r1.m4283unboximpl()
            androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal r3 = r7.getParent()
            if (r3 == 0) goto L94
            long r6 = androidx.compose.ui.unit.Velocity.m4278plusAH228Gc(r11, r4)
            long r11 = androidx.compose.ui.unit.Velocity.m4277minusAH228Gc(r13, r4)
            r1 = 0
            r2.L$0 = r1
            r2.J$0 = r4
            r2.label = r10
            r13 = r4
            r4 = r6
            r6 = r11
            r8 = r2
            java.lang.Object r1 = r3.mo347onPostFlingRZ2iAVY(r4, r6, r8)
            if (r1 != r9) goto L8b
            return r9
        L8b:
            r2 = r13
        L8c:
            androidx.compose.ui.unit.Velocity r1 = (androidx.compose.ui.unit.Velocity) r1
            long r4 = r1.m4283unboximpl()
            r13 = r2
            goto L9b
        L94:
            r13 = r4
            androidx.compose.ui.unit.Velocity$Companion r1 = androidx.compose.ui.unit.Velocity.Companion
            long r4 = r1.m4285getZero9UxMQ8M()
        L9b:
            long r1 = androidx.compose.ui.unit.Velocity.m4278plusAH228Gc(r13, r4)
            androidx.compose.ui.unit.Velocity r1 = androidx.compose.ui.unit.Velocity.m4265boximpl(r1)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal.mo347onPostFlingRZ2iAVY(long, long, rs.c):java.lang.Object");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public long mo348onPostScrollDzOQY0M(long j10, long j11, int i10) {
        long m1622getZeroF1C5BW0;
        long mo348onPostScrollDzOQY0M = this.connection.mo348onPostScrollDzOQY0M(j10, j11, i10);
        NestedScrollModifierLocal parent = getParent();
        if (parent != null) {
            m1622getZeroF1C5BW0 = parent.mo348onPostScrollDzOQY0M(Offset.m1611plusMKHz9U(j10, mo348onPostScrollDzOQY0M), Offset.m1610minusMKHz9U(j11, mo348onPostScrollDzOQY0M), i10);
        } else {
            m1622getZeroF1C5BW0 = Offset.Companion.m1622getZeroF1C5BW0();
        }
        return Offset.m1611plusMKHz9U(mo348onPostScrollDzOQY0M, m1622getZeroF1C5BW0);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007c A[RETURN] */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    @org.jetbrains.annotations.Nullable
    /* renamed from: onPreFling-QWom1Mo */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo509onPreFlingQWom1Mo(long r9, @org.jetbrains.annotations.NotNull rs.c<? super androidx.compose.ui.unit.Velocity> r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal$onPreFling$1
            if (r0 == 0) goto L13
            r0 = r11
            androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal$onPreFling$1 r0 = (androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal$onPreFling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal$onPreFling$1 r0 = new androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal$onPreFling$1
            r0.<init>(r8, r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            long r9 = r0.J$0
            kotlin.f.b(r11)
            goto L7d
        L2e:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L36:
            long r9 = r0.J$0
            java.lang.Object r2 = r0.L$0
            androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal r2 = (androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal) r2
            kotlin.f.b(r11)
            goto L57
        L40:
            kotlin.f.b(r11)
            androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal r11 = r8.getParent()
            if (r11 == 0) goto L61
            r0.L$0 = r8
            r0.J$0 = r9
            r0.label = r4
            java.lang.Object r11 = r11.mo509onPreFlingQWom1Mo(r9, r0)
            if (r11 != r1) goto L56
            return r1
        L56:
            r2 = r8
        L57:
            androidx.compose.ui.unit.Velocity r11 = (androidx.compose.ui.unit.Velocity) r11
            long r4 = r11.m4283unboximpl()
        L5d:
            r6 = r9
            r9 = r4
            r4 = r6
            goto L69
        L61:
            androidx.compose.ui.unit.Velocity$Companion r11 = androidx.compose.ui.unit.Velocity.Companion
            long r4 = r11.m4285getZero9UxMQ8M()
            r2 = r8
            goto L5d
        L69:
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r11 = r2.connection
            long r4 = androidx.compose.ui.unit.Velocity.m4277minusAH228Gc(r4, r9)
            r2 = 0
            r0.L$0 = r2
            r0.J$0 = r9
            r0.label = r3
            java.lang.Object r11 = r11.mo509onPreFlingQWom1Mo(r4, r0)
            if (r11 != r1) goto L7d
            return r1
        L7d:
            androidx.compose.ui.unit.Velocity r11 = (androidx.compose.ui.unit.Velocity) r11
            long r0 = r11.m4283unboximpl()
            long r9 = androidx.compose.ui.unit.Velocity.m4278plusAH228Gc(r9, r0)
            androidx.compose.ui.unit.Velocity r9 = androidx.compose.ui.unit.Velocity.m4265boximpl(r9)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal.mo509onPreFlingQWom1Mo(long, rs.c):java.lang.Object");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public long mo510onPreScrollOzD1aCk(long j10, int i10) {
        long m1622getZeroF1C5BW0;
        NestedScrollModifierLocal parent = getParent();
        if (parent != null) {
            m1622getZeroF1C5BW0 = parent.mo510onPreScrollOzD1aCk(j10, i10);
        } else {
            m1622getZeroF1C5BW0 = Offset.Companion.m1622getZeroF1C5BW0();
        }
        return Offset.m1611plusMKHz9U(m1622getZeroF1C5BW0, this.connection.mo510onPreScrollOzD1aCk(Offset.m1610minusMKHz9U(j10, m1622getZeroF1C5BW0), i10));
    }
}
