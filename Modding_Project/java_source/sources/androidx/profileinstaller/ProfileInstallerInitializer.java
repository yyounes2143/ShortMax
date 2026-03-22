package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.startup.Initializer;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class ProfileInstallerInitializer implements Initializer<Result> {
    private static final int DELAY_MS = 5000;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(28)
    /* loaded from: classes2.dex */
    public static class Handler28Impl {
        private Handler28Impl() {
        }

        public static Handler createAsync(Looper looper) {
            Handler createAsync;
            createAsync = Handler.createAsync(looper);
            return createAsync;
        }
    }

    /* loaded from: classes2.dex */
    public static class Result {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$create$0(Context context, long j10) {
        installAfterDelay(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void writeInBackground(@NonNull final Context context) {
        new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new Runnable() { // from class: androidx.profileinstaller.f
            @Override // java.lang.Runnable
            public final void run() {
                ProfileInstaller.writeProfile(context);
            }
        });
    }

    @Override // androidx.startup.Initializer
    @NonNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return Collections.emptyList();
    }

    void installAfterDelay(@NonNull final Context context) {
        Handler handler;
        if (Build.VERSION.SDK_INT >= 28) {
            handler = Handler28Impl.createAsync(Looper.getMainLooper());
        } else {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.postDelayed(new Runnable() { // from class: androidx.profileinstaller.e
            @Override // java.lang.Runnable
            public final void run() {
                ProfileInstallerInitializer.writeInBackground(context);
            }
        }, new Random().nextInt(Math.max(1000, 1)) + 5000);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.startup.Initializer
    @NonNull
    public Result create(@NonNull Context context) {
        final Context applicationContext = context.getApplicationContext();
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: androidx.profileinstaller.d
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j10) {
                ProfileInstallerInitializer.this.lambda$create$0(applicationContext, j10);
            }
        });
        return new Result();
    }
}
