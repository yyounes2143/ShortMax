package androidx.room.support;

import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import gt.g0;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AutoCloser.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAutoCloser.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoCloser.android.kt\nandroidx/room/support/AutoCloser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,221:1\n1#2:222\n*E\n"})
/* loaded from: classes2.dex */
public final class AutoCloser {
    @NotNull
    public static final String BUG_LINK = "https://issuetracker.google.com/issues/new?component=413107&template=1096568";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private kotlinx.coroutines.r autoCloseJob;
    private final long autoCloseTimeoutInMs;
    private g0 coroutineScope;
    @GuardedBy("lock")
    @Nullable
    private SupportSQLiteDatabase delegateDatabase;
    private SupportSQLiteOpenHelper delegateOpenHelper;
    @NotNull
    private AtomicLong lastDecrementRefCountTimeStamp;
    @NotNull
    private final Object lock;
    private boolean manuallyClosed;
    @Nullable
    private Function0<Unit> onAutoCloseCallback;
    @NotNull
    private final AtomicInteger referenceCount;
    @NotNull
    private final Watch watch;

    /* compiled from: AutoCloser.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: AutoCloser.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface Watch {
        long getMillis();
    }

    public AutoCloser(long j10, @NotNull TimeUnit timeUnit, @NotNull Watch watch) {
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        Intrinsics.checkNotNullParameter(watch, "watch");
        this.watch = watch;
        this.lock = new Object();
        this.autoCloseTimeoutInMs = timeUnit.toMillis(j10);
        this.referenceCount = new AtomicInteger(0);
        this.lastDecrementRefCountTimeStamp = new AtomicLong(watch.getMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long _init_$lambda$0() {
        return SystemClock.uptimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void autoCloseDatabase() {
        synchronized (this.lock) {
            try {
                if (this.watch.getMillis() - this.lastDecrementRefCountTimeStamp.get() < this.autoCloseTimeoutInMs) {
                    return;
                }
                if (this.referenceCount.get() != 0) {
                    return;
                }
                Function0<Unit> function0 = this.onAutoCloseCallback;
                if (function0 != null) {
                    function0.invoke();
                    SupportSQLiteDatabase supportSQLiteDatabase = this.delegateDatabase;
                    if (supportSQLiteDatabase != null && supportSQLiteDatabase.isOpen()) {
                        supportSQLiteDatabase.close();
                    }
                    this.delegateDatabase = null;
                    Unit unit = Unit.f60915a;
                    return;
                }
                throw new IllegalStateException("onAutoCloseCallback is null but it should  have been set before use. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void closeDatabaseIfOpen() {
        synchronized (this.lock) {
            try {
                this.manuallyClosed = true;
                kotlinx.coroutines.r rVar = this.autoCloseJob;
                if (rVar != null) {
                    r.a.b(rVar, null, 1, null);
                }
                this.autoCloseJob = null;
                SupportSQLiteDatabase supportSQLiteDatabase = this.delegateDatabase;
                if (supportSQLiteDatabase != null) {
                    supportSQLiteDatabase.close();
                }
                this.delegateDatabase = null;
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void decrementCountAndScheduleClose() {
        g0 g0Var;
        kotlinx.coroutines.r d10;
        int decrementAndGet = this.referenceCount.decrementAndGet();
        if (decrementAndGet >= 0) {
            this.lastDecrementRefCountTimeStamp.set(this.watch.getMillis());
            if (decrementAndGet == 0) {
                g0 g0Var2 = this.coroutineScope;
                if (g0Var2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
                    g0Var = null;
                } else {
                    g0Var = g0Var2;
                }
                d10 = gt.g.d(g0Var, null, null, new AutoCloser$decrementCountAndScheduleClose$2(this, null), 3, null);
                this.autoCloseJob = d10;
                return;
            }
            return;
        }
        throw new IllegalStateException("Unbalanced reference count.");
    }

    public final <V> V executeRefCountingFunction(@NotNull Function1<? super SupportSQLiteDatabase, ? extends V> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            return block.invoke(incrementCountAndEnsureDbIsOpen());
        } finally {
            decrementCountAndScheduleClose();
        }
    }

    @Nullable
    public final Function0<Unit> getAutoCloseCallbackForTest$room_runtime() {
        return this.onAutoCloseCallback;
    }

    @Nullable
    public final SupportSQLiteDatabase getDelegateDatabase$room_runtime() {
        return this.delegateDatabase;
    }

    public final int getRefCountForTest$room_runtime() {
        return this.referenceCount.get();
    }

    @NotNull
    public final SupportSQLiteDatabase incrementCountAndEnsureDbIsOpen() {
        kotlinx.coroutines.r rVar = this.autoCloseJob;
        SupportSQLiteOpenHelper supportSQLiteOpenHelper = null;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.autoCloseJob = null;
        this.referenceCount.incrementAndGet();
        if (!this.manuallyClosed) {
            synchronized (this.lock) {
                SupportSQLiteDatabase supportSQLiteDatabase = this.delegateDatabase;
                if (supportSQLiteDatabase != null && supportSQLiteDatabase.isOpen()) {
                    return supportSQLiteDatabase;
                }
                SupportSQLiteOpenHelper supportSQLiteOpenHelper2 = this.delegateOpenHelper;
                if (supportSQLiteOpenHelper2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("delegateOpenHelper");
                } else {
                    supportSQLiteOpenHelper = supportSQLiteOpenHelper2;
                }
                SupportSQLiteDatabase writableDatabase = supportSQLiteOpenHelper.getWritableDatabase();
                this.delegateDatabase = writableDatabase;
                return writableDatabase;
            }
        }
        throw new IllegalStateException("Attempting to open already closed database.");
    }

    public final void initCoroutineScope(@NotNull g0 coroutineScope) {
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        this.coroutineScope = coroutineScope;
    }

    public final void initOpenHelper(@NotNull SupportSQLiteOpenHelper delegateOpenHelper) {
        Intrinsics.checkNotNullParameter(delegateOpenHelper, "delegateOpenHelper");
        if (!(delegateOpenHelper instanceof AutoClosingRoomOpenHelper)) {
            this.delegateOpenHelper = delegateOpenHelper;
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public final boolean isActive() {
        return !this.manuallyClosed;
    }

    public final void setAutoCloseCallback(@NotNull Function0<Unit> onAutoClose) {
        Intrinsics.checkNotNullParameter(onAutoClose, "onAutoClose");
        this.onAutoCloseCallback = onAutoClose;
    }

    public final void setDelegateDatabase$room_runtime(@Nullable SupportSQLiteDatabase supportSQLiteDatabase) {
        this.delegateDatabase = supportSQLiteDatabase;
    }

    public /* synthetic */ AutoCloser(long j10, TimeUnit timeUnit, Watch watch, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, timeUnit, (i10 & 4) != 0 ? new Watch() { // from class: androidx.room.support.a
            @Override // androidx.room.support.AutoCloser.Watch
            public final long getMillis() {
                long _init_$lambda$0;
                _init_$lambda$0 = AutoCloser._init_$lambda$0();
                return _init_$lambda$0;
            }
        } : watch);
    }
}
