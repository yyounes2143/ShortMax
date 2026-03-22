package androidx.compose.ui.viewinterop;

import android.os.Looper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidViewHolder.android.kt */
@Metadata
/* loaded from: classes.dex */
final class AndroidViewHolder$snapshotObserver$1 extends Lambda implements Function1<Function0<? extends Unit>, Unit> {
    final /* synthetic */ AndroidViewHolder this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidViewHolder$snapshotObserver$1(AndroidViewHolder androidViewHolder) {
        super(1);
        this.this$0 = androidViewHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-0  reason: not valid java name */
    public static final void m4287invoke$lambda0(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Function0<? extends Unit> function0) {
        invoke2((Function0<Unit>) function0);
        return Unit.f60915a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull final Function0<Unit> command) {
        Intrinsics.checkNotNullParameter(command, "command");
        if (this.this$0.getHandler().getLooper() == Looper.myLooper()) {
            command.invoke();
        } else {
            this.this$0.getHandler().post(new Runnable() { // from class: androidx.compose.ui.viewinterop.b
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidViewHolder$snapshotObserver$1.m4287invoke$lambda0(Function0.this);
                }
            });
        }
    }
}
