package io.bidmachine;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes7.dex */
public class SessionManager {
    @NonNull
    public static final String SESSION_ID_EMPTY = "";
    @NonNull
    private static final String TAG = "SessionManager";
    @Nullable
    private static volatile SessionManager instance;
    @Nullable
    private volatile Context applicationContext;
    private long pauseTime;
    private long resumeTime;
    private long sessionResetAfterSec;
    private long sessionStartTime;
    @NonNull
    private String sessionId = "";
    @NonNull
    private final CopyOnWriteArraySet<a> observers = new CopyOnWriteArraySet<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public enum Status {
        START,
        RESUME,
        PAUSE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public interface a {
        void a(@NonNull Status status);
    }

    private SessionManager() {
        startNewSession();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static SessionManager get() {
        SessionManager sessionManager = instance;
        if (sessionManager == null) {
            synchronized (SessionManager.class) {
                try {
                    sessionManager = instance;
                    if (sessionManager == null) {
                        sessionManager = new SessionManager();
                        instance = sessionManager;
                    }
                } finally {
                }
            }
        }
        return sessionManager;
    }

    private long getLastSessionDurationMs() {
        Context context = this.applicationContext;
        if (context == null) {
            io.bidmachine.core.a.k(TAG, "Context not attached");
            return 0L;
        }
        return m2.h(context);
    }

    private long getSessionDurationMs() {
        if (this.resumeTime == 0) {
            return 0L;
        }
        return io.bidmachine.core.b.a() - this.sessionStartTime;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onNewSessionStarted$0(Context context) {
        m2.o(context);
        m2.a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveCurrentSessionDuration$1(Context context) {
        m2.w(context, getSessionDurationMs());
    }

    private void notifyObservers(@NonNull Status status) {
        Iterator<a> it = this.observers.iterator();
        while (it.hasNext()) {
            it.next().a(status);
        }
    }

    private void onContextAttached() {
        onNewSessionStarted();
    }

    private void onNewSessionStarted() {
        io.bidmachine.core.g.H(this.applicationContext, new Executable() { // from class: io.bidmachine.b5
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                SessionManager.lambda$onNewSessionStarted$0((Context) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCurrentSessionDuration(@NonNull final Context context) {
        io.bidmachine.core.g.X(new Runnable() { // from class: io.bidmachine.d5
            @Override // java.lang.Runnable
            public final void run() {
                SessionManager.this.lambda$saveCurrentSessionDuration$1(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addObserver(@NonNull a aVar) {
        this.observers.add(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void attachContext(@NonNull Context context) {
        boolean z10;
        if (this.applicationContext == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.applicationContext = context.getApplicationContext();
        if (z10) {
            onContextAttached();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getLastSessionDurationSec() {
        return (int) (getLastSessionDurationMs() / 1000);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public int getSessionCount() {
        Context context = this.applicationContext;
        if (context == null) {
            io.bidmachine.core.a.k(TAG, "Context not attached");
            return 0;
        }
        return m2.i(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSessionDurationSec() {
        return (int) (getSessionDurationMs() / 1000);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public String getSessionId() {
        return this.sessionId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void pause() {
        if (this.resumeTime == 0) {
            return;
        }
        this.pauseTime = io.bidmachine.core.b.a();
        notifyObservers(Status.PAUSE);
        io.bidmachine.core.g.H(this.applicationContext, new Executable() { // from class: io.bidmachine.c5
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                SessionManager.this.saveCurrentSessionDuration((Context) obj);
            }
        });
        io.bidmachine.core.a.c(TAG, "Session paused: " + getSessionDurationSec() + " sec.");
    }

    void removeObserver(@NonNull a aVar) {
        this.observers.remove(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resume() {
        long a10 = io.bidmachine.core.b.a();
        long j10 = this.sessionResetAfterSec;
        if (j10 > 0) {
            long j11 = this.pauseTime;
            if (j11 > 0 && a10 - j11 >= j10 * 1000) {
                startNewSession();
                this.resumeTime = a10;
            }
        }
        notifyObservers(Status.RESUME);
        io.bidmachine.core.a.c(TAG, "Session resumed");
        this.resumeTime = a10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSessionResetAfter(long j10) {
        this.sessionResetAfterSec = j10;
    }

    @VisibleForTesting
    void startNewSession() {
        this.sessionId = UUID.randomUUID().toString();
        this.sessionStartTime = io.bidmachine.core.b.a();
        this.pauseTime = 0L;
        this.resumeTime = 0L;
        onNewSessionStarted();
        notifyObservers(Status.START);
        io.bidmachine.core.a.c(TAG, "New session started");
    }
}
