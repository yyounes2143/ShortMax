package androidx.room;

import androidx.annotation.MainThread;
import androidx.lifecycle.LiveData;
import androidx.room.InvalidationTracker;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoomTrackingLiveData.android.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class RoomTrackingLiveData<T> extends LiveData<T> {
    @NotNull
    private final AtomicBoolean computing;
    @NotNull
    private final InvalidationLiveDataContainer container;
    @NotNull
    private final RoomDatabase database;
    private final boolean inTransaction;
    @NotNull
    private final AtomicBoolean invalid;
    @NotNull
    private final CoroutineContext launchContext;
    @NotNull
    private final InvalidationTracker.Observer observer;
    @NotNull
    private final AtomicBoolean registeredObserver;

    public /* synthetic */ RoomTrackingLiveData(RoomDatabase roomDatabase, InvalidationLiveDataContainer invalidationLiveDataContainer, boolean z10, String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(roomDatabase, invalidationLiveDataContainer, z10, strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public final void invalidated() {
        boolean hasActiveObservers = hasActiveObservers();
        if (this.invalid.compareAndSet(false, true) && hasActiveObservers) {
            gt.g.d(this.database.getCoroutineScope(), this.launchContext, null, new RoomTrackingLiveData$invalidated$1(this, null), 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0060 A[Catch: all -> 0x002c, Exception -> 0x002e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x002e, blocks: (B:12:0x0028, B:28:0x0060), top: B:45:0x0028, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0077 A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #1 {all -> 0x002c, blocks: (B:12:0x0028, B:26:0x0058, B:28:0x0060, B:35:0x0077, B:32:0x006d, B:33:0x0074), top: B:45:0x0028, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0089  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0056 -> B:26:0x0058). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0086 -> B:40:0x0087). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object refresh(rs.c<? super kotlin.Unit> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof androidx.room.RoomTrackingLiveData$refresh$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.room.RoomTrackingLiveData$refresh$1 r0 = (androidx.room.RoomTrackingLiveData$refresh$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.RoomTrackingLiveData$refresh$1 r0 = new androidx.room.RoomTrackingLiveData$refresh$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 != r4) goto L30
            int r2 = r0.I$0
            kotlin.f.b(r7)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            goto L58
        L2c:
            r7 = move-exception
            goto L80
        L2e:
            r7 = move-exception
            goto L6d
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L38:
            kotlin.f.b(r7)
            java.util.concurrent.atomic.AtomicBoolean r7 = r6.registeredObserver
            boolean r7 = r7.compareAndSet(r3, r4)
            if (r7 == 0) goto L4e
            androidx.room.RoomDatabase r7 = r6.database
            androidx.room.InvalidationTracker r7 = r7.getInvalidationTracker()
            androidx.room.InvalidationTracker$Observer r2 = r6.observer
            r7.addWeakObserver(r2)
        L4e:
            java.util.concurrent.atomic.AtomicBoolean r7 = r6.computing
            boolean r7 = r7.compareAndSet(r3, r4)
            if (r7 == 0) goto L86
            r7 = 0
            r2 = r3
        L58:
            java.util.concurrent.atomic.AtomicBoolean r5 = r6.invalid     // Catch: java.lang.Throwable -> L2c
            boolean r5 = r5.compareAndSet(r4, r3)     // Catch: java.lang.Throwable -> L2c
            if (r5 == 0) goto L75
            r0.I$0 = r4     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            r0.label = r4     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            java.lang.Object r7 = r6.compute(r0)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            if (r7 != r1) goto L6b
            return r1
        L6b:
            r2 = r4
            goto L58
        L6d:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L2c
            java.lang.String r1 = "Exception while computing database live data."
            r0.<init>(r1, r7)     // Catch: java.lang.Throwable -> L2c
            throw r0     // Catch: java.lang.Throwable -> L2c
        L75:
            if (r2 == 0) goto L7a
            r6.postValue(r7)     // Catch: java.lang.Throwable -> L2c
        L7a:
            java.util.concurrent.atomic.AtomicBoolean r7 = r6.computing
            r7.set(r3)
            goto L87
        L80:
            java.util.concurrent.atomic.AtomicBoolean r0 = r6.computing
            r0.set(r3)
            throw r7
        L86:
            r2 = r3
        L87:
            if (r2 == 0) goto L91
            java.util.concurrent.atomic.AtomicBoolean r7 = r6.invalid
            boolean r7 = r7.get()
            if (r7 != 0) goto L4e
        L91:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomTrackingLiveData.refresh(rs.c):java.lang.Object");
    }

    @Nullable
    public abstract Object compute(@NotNull rs.c<? super T> cVar);

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final RoomDatabase getDatabase() {
        return this.database;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean getInTransaction() {
        return this.inTransaction;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.LiveData
    public void onActive() {
        super.onActive();
        this.container.onActive(this);
        gt.g.d(this.database.getCoroutineScope(), this.launchContext, null, new RoomTrackingLiveData$onActive$1(this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.LiveData
    public void onInactive() {
        super.onInactive();
        this.container.onInactive(this);
    }

    private RoomTrackingLiveData(RoomDatabase roomDatabase, InvalidationLiveDataContainer invalidationLiveDataContainer, boolean z10, String[] strArr) {
        CoroutineContext coroutineContext;
        this.database = roomDatabase;
        this.container = invalidationLiveDataContainer;
        this.inTransaction = z10;
        this.observer = new RoomTrackingLiveData$observer$1(strArr, this);
        this.invalid = new AtomicBoolean(true);
        this.computing = new AtomicBoolean(false);
        this.registeredObserver = new AtomicBoolean(false);
        if (!roomDatabase.inCompatibilityMode()) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        } else if (z10) {
            coroutineContext = roomDatabase.getTransactionContext$room_runtime();
        } else {
            coroutineContext = roomDatabase.getQueryContext();
        }
        this.launchContext = coroutineContext;
    }
}
