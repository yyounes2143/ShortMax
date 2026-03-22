package androidx.compose.ui.platform;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.os.HandlerCompat;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidUiDispatcher.android.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class AndroidUiDispatcher extends gt.c0 {
    @NotNull
    private final Choreographer choreographer;
    @NotNull
    private final AndroidUiDispatcher$dispatchCallback$1 dispatchCallback;
    @NotNull
    private final MonotonicFrameClock frameClock;
    @NotNull
    private final Handler handler;
    @NotNull
    private final Object lock;
    private boolean scheduledFrameDispatch;
    private boolean scheduledTrampolineDispatch;
    @NotNull
    private List<Choreographer.FrameCallback> spareToRunOnFrame;
    @NotNull
    private List<Choreographer.FrameCallback> toRunOnFrame;
    @NotNull
    private final kotlin.collections.m<Runnable> toRunTrampolined;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    @NotNull
    private static final ms.i<CoroutineContext> Main$delegate = kotlin.c.b(new Function0<CoroutineContext>() { // from class: androidx.compose.ui.platform.AndroidUiDispatcher$Companion$Main$2
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final CoroutineContext invoke() {
            boolean isMainThread;
            isMainThread = AndroidUiDispatcher_androidKt.isMainThread();
            Choreographer choreographer = isMainThread ? Choreographer.getInstance() : (Choreographer) gt.e.e(gt.q0.c(), new AndroidUiDispatcher$Companion$Main$2$dispatcher$1(null));
            Intrinsics.checkNotNullExpressionValue(choreographer, "if (isMainThread()) Chor…eographer.getInstance() }");
            Handler createAsync = HandlerCompat.createAsync(Looper.getMainLooper());
            Intrinsics.checkNotNullExpressionValue(createAsync, "createAsync(Looper.getMainLooper())");
            AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(choreographer, createAsync, null);
            return androidUiDispatcher.plus(androidUiDispatcher.getFrameClock());
        }
    });
    @NotNull
    private static final ThreadLocal<CoroutineContext> currentThread = new ThreadLocal<CoroutineContext>() { // from class: androidx.compose.ui.platform.AndroidUiDispatcher$Companion$currentThread$1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        @NotNull
        public CoroutineContext initialValue() {
            Choreographer choreographer = Choreographer.getInstance();
            Intrinsics.checkNotNullExpressionValue(choreographer, "getInstance()");
            Looper myLooper = Looper.myLooper();
            if (myLooper != null) {
                Handler createAsync = HandlerCompat.createAsync(myLooper);
                Intrinsics.checkNotNullExpressionValue(createAsync, "createAsync(\n           …d\")\n                    )");
                AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(choreographer, createAsync, null);
                return androidUiDispatcher.plus(androidUiDispatcher.getFrameClock());
            }
            throw new IllegalStateException("no Looper on this thread");
        }
    };

    /* compiled from: AndroidUiDispatcher.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CoroutineContext getCurrentThread() {
            boolean isMainThread;
            isMainThread = AndroidUiDispatcher_androidKt.isMainThread();
            if (isMainThread) {
                return getMain();
            }
            CoroutineContext coroutineContext = (CoroutineContext) AndroidUiDispatcher.currentThread.get();
            if (coroutineContext != null) {
                return coroutineContext;
            }
            throw new IllegalStateException("no AndroidUiDispatcher for this thread");
        }

        @NotNull
        public final CoroutineContext getMain() {
            return (CoroutineContext) AndroidUiDispatcher.Main$delegate.getValue();
        }

        private Companion() {
        }
    }

    public /* synthetic */ AndroidUiDispatcher(Choreographer choreographer, Handler handler, DefaultConstructorMarker defaultConstructorMarker) {
        this(choreographer, handler);
    }

    private final Runnable nextTask() {
        Runnable t10;
        synchronized (this.lock) {
            t10 = this.toRunTrampolined.t();
        }
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void performFrameDispatch(long j10) {
        synchronized (this.lock) {
            if (!this.scheduledFrameDispatch) {
                return;
            }
            this.scheduledFrameDispatch = false;
            List<Choreographer.FrameCallback> list = this.toRunOnFrame;
            this.toRunOnFrame = this.spareToRunOnFrame;
            this.spareToRunOnFrame = list;
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                list.get(i10).doFrame(j10);
            }
            list.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void performTrampolineDispatch() {
        boolean z10;
        do {
            Runnable nextTask = nextTask();
            while (nextTask != null) {
                nextTask.run();
                nextTask = nextTask();
            }
            synchronized (this.lock) {
                if (this.toRunTrampolined.isEmpty()) {
                    z10 = false;
                    this.scheduledTrampolineDispatch = false;
                } else {
                    z10 = true;
                }
            }
        } while (z10);
    }

    @Override // gt.c0
    public void dispatch(@NotNull CoroutineContext context, @NotNull Runnable block) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        synchronized (this.lock) {
            try {
                this.toRunTrampolined.addLast(block);
                if (!this.scheduledTrampolineDispatch) {
                    this.scheduledTrampolineDispatch = true;
                    this.handler.post(this.dispatchCallback);
                    if (!this.scheduledFrameDispatch) {
                        this.scheduledFrameDispatch = true;
                        this.choreographer.postFrameCallback(this.dispatchCallback);
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NotNull
    public final Choreographer getChoreographer() {
        return this.choreographer;
    }

    @NotNull
    public final MonotonicFrameClock getFrameClock() {
        return this.frameClock;
    }

    public final void postFrameCallback$ui_release(@NotNull Choreographer.FrameCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        synchronized (this.lock) {
            try {
                this.toRunOnFrame.add(callback);
                if (!this.scheduledFrameDispatch) {
                    this.scheduledFrameDispatch = true;
                    this.choreographer.postFrameCallback(this.dispatchCallback);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void removeFrameCallback$ui_release(@NotNull Choreographer.FrameCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        synchronized (this.lock) {
            this.toRunOnFrame.remove(callback);
        }
    }

    private AndroidUiDispatcher(Choreographer choreographer, Handler handler) {
        this.choreographer = choreographer;
        this.handler = handler;
        this.lock = new Object();
        this.toRunTrampolined = new kotlin.collections.m<>();
        this.toRunOnFrame = new ArrayList();
        this.spareToRunOnFrame = new ArrayList();
        this.dispatchCallback = new AndroidUiDispatcher$dispatchCallback$1(this);
        this.frameClock = new AndroidUiFrameClock(choreographer);
    }
}
