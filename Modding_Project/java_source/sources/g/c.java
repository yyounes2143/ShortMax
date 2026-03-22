package g;

import android.os.Handler;
import android.os.Looper;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public static final Handler f52135a = new Handler(Looper.getMainLooper());

    public static void a(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            runnable.run();
        } else {
            f52135a.post(runnable);
        }
    }

    public static void b(final Function0 block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            block.invoke();
        } else {
            f52135a.post(new Runnable() { // from class: g.b
                @Override // java.lang.Runnable
                public final void run() {
                    c.c(Function0.this);
                }
            });
        }
    }

    public static final void c(Function0 function0) {
        function0.invoke();
    }
}
