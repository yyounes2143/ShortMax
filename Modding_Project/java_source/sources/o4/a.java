package o4;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.v;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CrashShieldHandler.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f63088a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final Set<Object> f63089b = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: c  reason: collision with root package name */
    private static boolean f63090c;

    /* compiled from: CrashShieldHandler.kt */
    @Metadata
    /* renamed from: o4.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class RunnableC0886a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Throwable f63091a;

        RunnableC0886a(Throwable th2) {
            this.f63091a = th2;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new RuntimeException(this.f63091a);
        }
    }

    private a() {
    }

    public static final void a() {
        f63090c = true;
    }

    public static final void b(@Nullable Throwable th2, @NotNull Object o10) {
        Intrinsics.checkNotNullParameter(o10, "o");
        if (!f63090c) {
            return;
        }
        f63089b.add(o10);
        if (v.p()) {
            com.facebook.internal.instrument.a.c(th2);
            InstrumentData.a.b(th2, InstrumentData.Type.CrashShield).g();
        }
        e(th2);
    }

    @VisibleForTesting
    public static final boolean c() {
        return false;
    }

    public static final boolean d(@NotNull Object o10) {
        Intrinsics.checkNotNullParameter(o10, "o");
        return f63089b.contains(o10);
    }

    @VisibleForTesting
    public static final void e(@Nullable Throwable th2) {
        if (c()) {
            new Handler(Looper.getMainLooper()).post(new RunnableC0886a(th2));
        }
    }
}
