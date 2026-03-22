package androidx.compose.runtime;

import android.os.Looper;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: MonotonicFrameClock.android.kt */
@Metadata
/* loaded from: classes.dex */
final /* synthetic */ class ActualAndroid_androidKt__MonotonicFrameClock_androidKt {
    @NotNull
    private static final ms.i DefaultMonotonicFrameClock$delegate = kotlin.c.b(new Function0() { // from class: androidx.compose.runtime.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MonotonicFrameClock DefaultMonotonicFrameClock_delegate$lambda$0$ActualAndroid_androidKt__MonotonicFrameClock_androidKt;
            DefaultMonotonicFrameClock_delegate$lambda$0$ActualAndroid_androidKt__MonotonicFrameClock_androidKt = ActualAndroid_androidKt__MonotonicFrameClock_androidKt.DefaultMonotonicFrameClock_delegate$lambda$0$ActualAndroid_androidKt__MonotonicFrameClock_androidKt();
            return DefaultMonotonicFrameClock_delegate$lambda$0$ActualAndroid_androidKt__MonotonicFrameClock_androidKt;
        }
    });
    private static final boolean DisallowDefaultMonotonicFrameClock = false;

    /* JADX INFO: Access modifiers changed from: private */
    public static final MonotonicFrameClock DefaultMonotonicFrameClock_delegate$lambda$0$ActualAndroid_androidKt__MonotonicFrameClock_androidKt() {
        if (Looper.getMainLooper() != null) {
            return DefaultChoreographerFrameClock.INSTANCE;
        }
        return FallbackFrameClock.INSTANCE;
    }

    @NotNull
    public static final MonotonicFrameClock getDefaultMonotonicFrameClock() {
        return (MonotonicFrameClock) DefaultMonotonicFrameClock$delegate.getValue();
    }

    @ms.c
    public static /* synthetic */ void getDefaultMonotonicFrameClock$annotations() {
    }
}
