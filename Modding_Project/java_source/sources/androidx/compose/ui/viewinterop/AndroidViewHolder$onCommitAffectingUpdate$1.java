package androidx.compose.ui.viewinterop;

import android.os.Handler;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidViewHolder.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidViewHolder$onCommitAffectingUpdate$1 extends Lambda implements Function1<AndroidViewHolder, Unit> {
    final /* synthetic */ AndroidViewHolder this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidViewHolder$onCommitAffectingUpdate$1(AndroidViewHolder androidViewHolder) {
        super(1);
        this.this$0 = androidViewHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-0  reason: not valid java name */
    public static final void m4286invoke$lambda0(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(AndroidViewHolder androidViewHolder) {
        invoke2(androidViewHolder);
        return Unit.f60915a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull AndroidViewHolder it) {
        final Function0 function0;
        Intrinsics.checkNotNullParameter(it, "it");
        Handler handler = this.this$0.getHandler();
        function0 = this.this$0.runUpdate;
        handler.post(new Runnable() { // from class: androidx.compose.ui.viewinterop.a
            @Override // java.lang.Runnable
            public final void run() {
                AndroidViewHolder$onCommitAffectingUpdate$1.m4286invoke$lambda0(Function0.this);
            }
        });
    }
}
