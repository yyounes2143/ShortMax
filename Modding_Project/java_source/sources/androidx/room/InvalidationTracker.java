package androidx.room;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.lifecycle.LiveData;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.support.AutoCloser;
import androidx.sqlite.SQLiteConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InvalidationTracker.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInvalidationTracker.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.android.kt\nandroidx/room/InvalidationTracker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ReentrantLock.kt\nandroidx/room/concurrent/ReentrantLockKt\n*L\n1#1,592:1\n827#2:593\n855#2,2:594\n1869#2,2:617\n1869#2,2:624\n1#3:596\n28#4,5:597\n28#4,5:602\n28#4,5:607\n28#4,5:612\n28#4,5:619\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.android.kt\nandroidx/room/InvalidationTracker\n*L\n183#1:593\n183#1:594,2\n351#1:617,2\n365#1:624,2\n274#1:597,5\n318#1:602,5\n322#1:607,5\n350#1:612,5\n364#1:619,5\n*E\n"})
/* loaded from: classes2.dex */
public class InvalidationTracker {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private AutoCloser autoCloser;
    @NotNull
    private final RoomDatabase database;
    @NotNull
    private final TriggerBasedInvalidationTracker implementation;
    @NotNull
    private final InvalidationLiveDataContainer invalidationLiveDataContainer;
    @Nullable
    private MultiInstanceInvalidationClient multiInstanceInvalidationClient;
    @Nullable
    private Intent multiInstanceInvalidationIntent;
    @NotNull
    private final Map<Observer, ObserverWrapper> observerMap;
    @NotNull
    private final ReentrantLock observerMapLock;
    @NotNull
    private final Function0<Unit> onRefreshCompleted;
    @NotNull
    private final Function0<Unit> onRefreshScheduled;
    @NotNull
    private final Map<String, String> shadowTablesMap;
    @NotNull
    private final String[] tableNames;
    @NotNull
    private final Object trackerLock;
    @NotNull
    private final Map<String, Set<String>> viewTables;

    /* compiled from: InvalidationTracker.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: InvalidationTracker.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    private static final class MultiInstanceClientInitState {
        @NotNull
        private final Context context;
        @NotNull
        private final String name;
        @NotNull
        private final Intent serviceIntent;

        public MultiInstanceClientInitState(@NotNull Context context, @NotNull String name, @NotNull Intent serviceIntent) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(serviceIntent, "serviceIntent");
            this.context = context;
            this.name = name;
            this.serviceIntent = serviceIntent;
        }

        public static /* synthetic */ MultiInstanceClientInitState copy$default(MultiInstanceClientInitState multiInstanceClientInitState, Context context, String str, Intent intent, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                context = multiInstanceClientInitState.context;
            }
            if ((i10 & 2) != 0) {
                str = multiInstanceClientInitState.name;
            }
            if ((i10 & 4) != 0) {
                intent = multiInstanceClientInitState.serviceIntent;
            }
            return multiInstanceClientInitState.copy(context, str, intent);
        }

        @NotNull
        public final Context component1() {
            return this.context;
        }

        @NotNull
        public final String component2() {
            return this.name;
        }

        @NotNull
        public final Intent component3() {
            return this.serviceIntent;
        }

        @NotNull
        public final MultiInstanceClientInitState copy(@NotNull Context context, @NotNull String name, @NotNull Intent serviceIntent) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(serviceIntent, "serviceIntent");
            return new MultiInstanceClientInitState(context, name, serviceIntent);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MultiInstanceClientInitState)) {
                return false;
            }
            MultiInstanceClientInitState multiInstanceClientInitState = (MultiInstanceClientInitState) obj;
            if (Intrinsics.areEqual(this.context, multiInstanceClientInitState.context) && Intrinsics.areEqual(this.name, multiInstanceClientInitState.name) && Intrinsics.areEqual(this.serviceIntent, multiInstanceClientInitState.serviceIntent)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @NotNull
        public final String getName() {
            return this.name;
        }

        @NotNull
        public final Intent getServiceIntent() {
            return this.serviceIntent;
        }

        public int hashCode() {
            return (((this.context.hashCode() * 31) + this.name.hashCode()) * 31) + this.serviceIntent.hashCode();
        }

        @NotNull
        public String toString() {
            return "MultiInstanceClientInitState(context=" + this.context + ", name=" + this.name + ", serviceIntent=" + this.serviceIntent + ')';
        }
    }

    /* compiled from: InvalidationTracker.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static abstract class Observer {
        @NotNull
        private final String[] tables;

        public Observer(@NotNull String[] tables) {
            Intrinsics.checkNotNullParameter(tables, "tables");
            this.tables = tables;
        }

        @NotNull
        public final String[] getTables$room_runtime() {
            return this.tables;
        }

        public boolean isRemote$room_runtime() {
            return false;
        }

        public abstract void onInvalidated(@NotNull Set<String> set);

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected Observer(@org.jetbrains.annotations.NotNull java.lang.String r3, @org.jetbrains.annotations.NotNull java.lang.String... r4) {
            /*
                r2 = this;
                java.lang.String r0 = "firstTable"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                java.lang.String r0 = "rest"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                kotlin.jvm.internal.SpreadBuilder r0 = new kotlin.jvm.internal.SpreadBuilder
                r1 = 2
                r0.<init>(r1)
                r0.add(r3)
                r0.addSpread(r4)
                int r3 = r0.size()
                java.lang.String[] r3 = new java.lang.String[r3]
                java.lang.Object[] r3 = r0.toArray(r3)
                java.lang.String[] r3 = (java.lang.String[]) r3
                r2.<init>(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.InvalidationTracker.Observer.<init>(java.lang.String, java.lang.String[]):void");
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public InvalidationTracker(@NotNull RoomDatabase database, @NotNull Map<String, String> shadowTablesMap, @NotNull Map<String, Set<String>> viewTables, @NotNull String... tableNames) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(shadowTablesMap, "shadowTablesMap");
        Intrinsics.checkNotNullParameter(viewTables, "viewTables");
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        this.database = database;
        this.shadowTablesMap = shadowTablesMap;
        this.viewTables = viewTables;
        this.tableNames = tableNames;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = new TriggerBasedInvalidationTracker(database, shadowTablesMap, viewTables, tableNames, database.getUseTempTrackingTable$room_runtime(), new InvalidationTracker$implementation$1(this));
        this.implementation = triggerBasedInvalidationTracker;
        this.observerMap = new LinkedHashMap();
        this.observerMapLock = new ReentrantLock();
        this.onRefreshScheduled = new Function0() { // from class: androidx.room.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit onRefreshScheduled$lambda$0;
                onRefreshScheduled$lambda$0 = InvalidationTracker.onRefreshScheduled$lambda$0(InvalidationTracker.this);
                return onRefreshScheduled$lambda$0;
            }
        };
        this.onRefreshCompleted = new Function0() { // from class: androidx.room.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit onRefreshCompleted$lambda$1;
                onRefreshCompleted$lambda$1 = InvalidationTracker.onRefreshCompleted$lambda$1(InvalidationTracker.this);
                return onRefreshCompleted$lambda$1;
            }
        };
        this.invalidationLiveDataContainer = new InvalidationLiveDataContainer(database);
        this.trackerLock = new Object();
        triggerBasedInvalidationTracker.setOnAllowRefresh$room_runtime(new Function0() { // from class: androidx.room.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                boolean _init_$lambda$2;
                _init_$lambda$2 = InvalidationTracker._init_$lambda$2(InvalidationTracker.this);
                return Boolean.valueOf(_init_$lambda$2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$2(InvalidationTracker invalidationTracker) {
        if (invalidationTracker.database.inCompatibilityMode() && !invalidationTracker.database.isOpenInternal$room_runtime()) {
            return false;
        }
        return true;
    }

    private final boolean addObserverOnly(Observer observer) {
        ObserverWrapper put;
        Pair<String[], int[]> validateTableNames$room_runtime = this.implementation.validateTableNames$room_runtime(observer.getTables$room_runtime());
        int[] d10 = validateTableNames$room_runtime.d();
        ObserverWrapper observerWrapper = new ObserverWrapper(observer, d10, validateTableNames$room_runtime.b());
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            if (this.observerMap.containsKey(observer)) {
                put = (ObserverWrapper) p0.j(this.observerMap, observer);
            } else {
                put = this.observerMap.put(observer, observerWrapper);
            }
            reentrantLock.unlock();
            if (put == null && this.implementation.onObserverAdded$room_runtime(d10)) {
                return true;
            }
            return false;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public static /* synthetic */ kt.b createFlow$default(InvalidationTracker invalidationTracker, String[] strArr, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            return invalidationTracker.createFlow(strArr, z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createFlow");
    }

    private final List<Observer> getAllObservers() {
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            return CollectionsKt.d1(this.observerMap.keySet());
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyInvalidatedObservers(Set<Integer> set) {
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            List<ObserverWrapper> d12 = CollectionsKt.d1(this.observerMap.values());
            reentrantLock.unlock();
            for (ObserverWrapper observerWrapper : d12) {
                observerWrapper.notifyByTableIds$room_runtime(set);
            }
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAutoCloseCallback() {
        synchronized (this.trackerLock) {
            try {
                MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
                if (multiInstanceInvalidationClient != null) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : getAllObservers()) {
                        if (!((Observer) obj).isRemote$room_runtime()) {
                            arrayList.add(obj);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        multiInstanceInvalidationClient.stop();
                    }
                }
                this.implementation.resetSync$room_runtime();
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onRefreshCompleted$lambda$1(InvalidationTracker invalidationTracker) {
        AutoCloser autoCloser = invalidationTracker.autoCloser;
        if (autoCloser != null) {
            autoCloser.decrementCountAndScheduleClose();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onRefreshScheduled$lambda$0(InvalidationTracker invalidationTracker) {
        AutoCloser autoCloser = invalidationTracker.autoCloser;
        if (autoCloser != null) {
            autoCloser.incrementCountAndEnsureDbIsOpen();
        }
        return Unit.f60915a;
    }

    private final boolean removeObserverOnly(Observer observer) {
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            ObserverWrapper remove = this.observerMap.remove(observer);
            if (remove != null && this.implementation.onObserverRemoved$room_runtime(remove.getTableIds$room_runtime())) {
                return true;
            }
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    @WorkerThread
    public void addObserver(@NotNull Observer observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        if (addObserverOnly(observer)) {
            RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new InvalidationTracker$addObserver$1(this, null));
        }
    }

    public final void addRemoteObserver$room_runtime(@NotNull Observer observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        if (observer.isRemote$room_runtime()) {
            addObserverOnly(observer);
            return;
        }
        throw new IllegalStateException("isRemote was false of observer argument");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @WorkerThread
    public void addWeakObserver(@NotNull Observer observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        addObserver(new WeakObserver(this, observer));
    }

    @NotNull
    public final kt.b<Set<String>> createFlow(@NotNull String... tables) {
        Intrinsics.checkNotNullParameter(tables, "tables");
        return createFlow$default(this, tables, false, 2, null);
    }

    @ms.c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public <T> LiveData<T> createLiveData(@NotNull String[] tableNames, @NotNull Callable<T> computeFunction) {
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        Intrinsics.checkNotNullParameter(computeFunction, "computeFunction");
        return createLiveData(tableNames, false, (Callable) computeFunction);
    }

    @NotNull
    public final RoomDatabase getDatabase$room_runtime() {
        return this.database;
    }

    @NotNull
    public final String[] getTableNames$room_runtime() {
        return this.tableNames;
    }

    public final void initMultiInstanceInvalidation$room_runtime(@NotNull Context context, @NotNull String name, @NotNull Intent serviceIntent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(serviceIntent, "serviceIntent");
        this.multiInstanceInvalidationIntent = serviceIntent;
        this.multiInstanceInvalidationClient = new MultiInstanceInvalidationClient(context, name, this);
    }

    public final void internalInit$room_runtime(@NotNull SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        this.implementation.configureConnection(connection);
        synchronized (this.trackerLock) {
            try {
                MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
                if (multiInstanceInvalidationClient != null) {
                    Intent intent = this.multiInstanceInvalidationIntent;
                    if (intent != null) {
                        multiInstanceInvalidationClient.start(intent);
                        Unit unit = Unit.f60915a;
                    } else {
                        throw new IllegalStateException("Required value was null.");
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void notifyObserversByTableNames$room_runtime(@NotNull Set<String> tables) {
        Intrinsics.checkNotNullParameter(tables, "tables");
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            List<ObserverWrapper> d12 = CollectionsKt.d1(this.observerMap.values());
            reentrantLock.unlock();
            for (ObserverWrapper observerWrapper : d12) {
                if (!observerWrapper.getObserver$room_runtime().isRemote$room_runtime()) {
                    observerWrapper.notifyByTableNames$room_runtime(tables);
                }
            }
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public final Object refresh(@NotNull String[] strArr, @NotNull rs.c<? super Boolean> cVar) {
        return this.implementation.refreshInvalidation$room_runtime(strArr, this.onRefreshScheduled, this.onRefreshCompleted, cVar);
    }

    public final void refreshAsync() {
        this.implementation.refreshInvalidationAsync$room_runtime(this.onRefreshScheduled, this.onRefreshCompleted);
    }

    public void refreshVersionsAsync() {
        this.implementation.refreshInvalidationAsync$room_runtime(this.onRefreshScheduled, this.onRefreshCompleted);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @WorkerThread
    public void refreshVersionsSync() {
        RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new InvalidationTracker$refreshVersionsSync$1(this, null));
    }

    @WorkerThread
    public void removeObserver(@NotNull Observer observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        if (removeObserverOnly(observer)) {
            RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new InvalidationTracker$removeObserver$1(this, null));
        }
    }

    public final void setAutoCloser$room_runtime(@NotNull AutoCloser autoCloser) {
        Intrinsics.checkNotNullParameter(autoCloser, "autoCloser");
        this.autoCloser = autoCloser;
        autoCloser.setAutoCloseCallback(new InvalidationTracker$setAutoCloser$1(this));
    }

    public final void stop$room_runtime() {
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
        if (multiInstanceInvalidationClient != null) {
            multiInstanceInvalidationClient.stop();
        }
    }

    @Nullable
    public final Object sync$room_runtime(@NotNull rs.c<? super Unit> cVar) {
        Object syncTriggers$room_runtime = this.implementation.syncTriggers$room_runtime(cVar);
        if (syncTriggers$room_runtime == kotlin.coroutines.intrinsics.a.f()) {
            return syncTriggers$room_runtime;
        }
        return Unit.f60915a;
    }

    @WorkerThread
    public final void syncBlocking$room_runtime() {
        RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new InvalidationTracker$syncBlocking$1(this, null));
    }

    @NotNull
    public final kt.b<Set<String>> createFlow(@NotNull String[] tables, boolean z10) {
        Intrinsics.checkNotNullParameter(tables, "tables");
        Pair<String[], int[]> validateTableNames$room_runtime = this.implementation.validateTableNames$room_runtime(tables);
        String[] b10 = validateTableNames$room_runtime.b();
        kt.b<Set<String>> createFlow$room_runtime = this.implementation.createFlow$room_runtime(b10, validateTableNames$room_runtime.d(), z10);
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
        kt.b<Set<String>> createFlow = multiInstanceInvalidationClient != null ? multiInstanceInvalidationClient.createFlow(b10) : null;
        return createFlow != null ? kotlinx.coroutines.flow.c.M(createFlow$room_runtime, createFlow) : createFlow$room_runtime;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public <T> LiveData<T> createLiveData(@NotNull String[] tableNames, boolean z10, @NotNull Callable<T> computeFunction) {
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        Intrinsics.checkNotNullParameter(computeFunction, "computeFunction");
        this.implementation.validateTableNames$room_runtime(tableNames);
        return this.invalidationLiveDataContainer.create(tableNames, z10, computeFunction);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public final <T> LiveData<T> createLiveData(@NotNull String[] tableNames, boolean z10, @NotNull Function1<? super SQLiteConnection, ? extends T> computeFunction) {
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        Intrinsics.checkNotNullParameter(computeFunction, "computeFunction");
        this.implementation.validateTableNames$room_runtime(tableNames);
        return this.invalidationLiveDataContainer.create(tableNames, z10, computeFunction);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ms.c
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public InvalidationTracker(@NotNull RoomDatabase database, @NotNull String... tableNames) {
        this(database, p0.i(), p0.i(), (String[]) Arrays.copyOf(tableNames, tableNames.length));
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
    }
}
