package androidx.compose.foundation.lazy;

import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: LazyListState.kt */
@Metadata
/* loaded from: classes.dex */
public final class AwaitFirstLayoutModifier implements OnGloballyPositionedModifier {
    @Nullable
    private c<? super Unit> continuation;
    private boolean wasPositioned;

    @Override // androidx.compose.ui.layout.OnGloballyPositionedModifier
    public void onGloballyPositioned(@NotNull LayoutCoordinates coordinates) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        if (!this.wasPositioned) {
            this.wasPositioned = true;
            c<? super Unit> cVar = this.continuation;
            if (cVar != null) {
                Result.a aVar = Result.f60901b;
                cVar.resumeWith(Result.d(Unit.f60915a));
            }
            this.continuation = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0066  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object waitForFirstLayout(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.compose.foundation.lazy.AwaitFirstLayoutModifier$waitForFirstLayout$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.compose.foundation.lazy.AwaitFirstLayoutModifier$waitForFirstLayout$1 r0 = (androidx.compose.foundation.lazy.AwaitFirstLayoutModifier$waitForFirstLayout$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.lazy.AwaitFirstLayoutModifier$waitForFirstLayout$1 r0 = new androidx.compose.foundation.lazy.AwaitFirstLayoutModifier$waitForFirstLayout$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r1 = r0.L$1
            rs.c r1 = (rs.c) r1
            java.lang.Object r0 = r0.L$0
            androidx.compose.foundation.lazy.AwaitFirstLayoutModifier r0 = (androidx.compose.foundation.lazy.AwaitFirstLayoutModifier) r0
            kotlin.f.b(r5)
            goto L64
        L31:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L39:
            kotlin.f.b(r5)
            boolean r5 = r4.wasPositioned
            if (r5 != 0) goto L71
            rs.c<? super kotlin.Unit> r5 = r4.continuation
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            rs.f r2 = new rs.f
            rs.c r3 = kotlin.coroutines.intrinsics.a.c(r0)
            r2.<init>(r3)
            r4.continuation = r2
            java.lang.Object r2 = r2.a()
            java.lang.Object r3 = kotlin.coroutines.intrinsics.a.f()
            if (r2 != r3) goto L60
            kotlin.coroutines.jvm.internal.f.c(r0)
        L60:
            if (r2 != r1) goto L63
            return r1
        L63:
            r1 = r5
        L64:
            if (r1 == 0) goto L71
            kotlin.Result$a r5 = kotlin.Result.f60901b
            kotlin.Unit r5 = kotlin.Unit.f60915a
            java.lang.Object r5 = kotlin.Result.d(r5)
            r1.resumeWith(r5)
        L71:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.AwaitFirstLayoutModifier.waitForFirstLayout(rs.c):java.lang.Object");
    }
}
