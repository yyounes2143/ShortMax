package androidx.compose.ui.platform;

import android.os.Handler;
import android.os.Looper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidComposeView.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidComposeView$snapshotObserver$1 extends Lambda implements Function1<Function0<? extends Unit>, Unit> {
    final /* synthetic */ AndroidComposeView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeView$snapshotObserver$1(AndroidComposeView androidComposeView) {
        super(1);
        this.this$0 = androidComposeView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-0  reason: not valid java name */
    public static final void m3520invoke$lambda0(Function0 tmp0) {
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
        Handler handler = this.this$0.getHandler();
        if ((handler != null ? handler.getLooper() : null) == Looper.myLooper()) {
            command.invoke();
            return;
        }
        Handler handler2 = this.this$0.getHandler();
        if (handler2 != null) {
            handler2.post(new Runnable() { // from class: androidx.compose.ui.platform.g
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidComposeView$snapshotObserver$1.m3520invoke$lambda0(Function0.this);
                }
            });
        }
    }
}
