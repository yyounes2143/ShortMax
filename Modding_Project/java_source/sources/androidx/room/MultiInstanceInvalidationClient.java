package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.IMultiInstanceInvalidationCallback;
import androidx.room.IMultiInstanceInvalidationService;
import androidx.room.InvalidationTracker;
import com.ss.ttvideoengine.model.VideoRef;
import gt.g0;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.BufferOverflow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MultiInstanceInvalidationClient.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMultiInstanceInvalidationClient.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiInstanceInvalidationClient.android.kt\nandroidx/room/MultiInstanceInvalidationClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,146:1\n1#2:147\n56#3:148\n59#3:152\n46#4:149\n51#4:151\n105#5:150\n*S KotlinDebug\n*F\n+ 1 MultiInstanceInvalidationClient.android.kt\nandroidx/room/MultiInstanceInvalidationClient\n*L\n133#1:148\n133#1:152\n133#1:149\n133#1:151\n133#1:150\n*E\n"})
/* loaded from: classes2.dex */
public final class MultiInstanceInvalidationClient {
    private final Context appContext;
    private int clientId;
    @NotNull
    private final g0 coroutineScope;
    @NotNull
    private final kt.d<Set<String>> invalidatedTables;
    @NotNull
    private final IMultiInstanceInvalidationCallback invalidationCallback;
    @Nullable
    private IMultiInstanceInvalidationService invalidationService;
    @NotNull
    private final InvalidationTracker invalidationTracker;
    @NotNull
    private final String name;
    @NotNull
    private final MultiInstanceInvalidationClient$observer$1 observer;
    @NotNull
    private final ServiceConnection serviceConnection;
    @NotNull
    private final AtomicBoolean stopped;

    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.room.MultiInstanceInvalidationClient$observer$1] */
    public MultiInstanceInvalidationClient(@NotNull Context context, @NotNull String name, @NotNull InvalidationTracker invalidationTracker) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(invalidationTracker, "invalidationTracker");
        this.name = name;
        this.invalidationTracker = invalidationTracker;
        this.appContext = context.getApplicationContext();
        this.coroutineScope = invalidationTracker.getDatabase$room_runtime().getCoroutineScope();
        this.stopped = new AtomicBoolean(true);
        this.invalidatedTables = kt.g.a(0, 0, BufferOverflow.SUSPEND);
        final String[] tableNames$room_runtime = invalidationTracker.getTableNames$room_runtime();
        this.observer = new InvalidationTracker.Observer(tableNames$room_runtime) { // from class: androidx.room.MultiInstanceInvalidationClient$observer$1
            @Override // androidx.room.InvalidationTracker.Observer
            public boolean isRemote$room_runtime() {
                return true;
            }

            @Override // androidx.room.InvalidationTracker.Observer
            public void onInvalidated(Set<String> tables) {
                AtomicBoolean atomicBoolean;
                IMultiInstanceInvalidationService iMultiInstanceInvalidationService;
                int i10;
                Intrinsics.checkNotNullParameter(tables, "tables");
                atomicBoolean = MultiInstanceInvalidationClient.this.stopped;
                if (!atomicBoolean.get()) {
                    try {
                        iMultiInstanceInvalidationService = MultiInstanceInvalidationClient.this.invalidationService;
                        if (iMultiInstanceInvalidationService != null) {
                            i10 = MultiInstanceInvalidationClient.this.clientId;
                            iMultiInstanceInvalidationService.broadcastInvalidation(i10, (String[]) tables.toArray(new String[0]));
                        }
                    } catch (RemoteException e10) {
                        Log.w(Room.LOG_TAG, "Cannot broadcast invalidation", e10);
                    }
                }
            }
        };
        this.invalidationCallback = new IMultiInstanceInvalidationCallback.Stub() { // from class: androidx.room.MultiInstanceInvalidationClient$invalidationCallback$1
            @Override // androidx.room.IMultiInstanceInvalidationCallback
            public void onInvalidation(String[] tables) {
                g0 g0Var;
                Intrinsics.checkNotNullParameter(tables, "tables");
                g0Var = MultiInstanceInvalidationClient.this.coroutineScope;
                gt.g.d(g0Var, null, null, new MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1(tables, MultiInstanceInvalidationClient.this, null), 3, null);
            }
        };
        this.serviceConnection = new ServiceConnection() { // from class: androidx.room.MultiInstanceInvalidationClient$serviceConnection$1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName name2, IBinder service) {
                Intrinsics.checkNotNullParameter(name2, "name");
                Intrinsics.checkNotNullParameter(service, "service");
                MultiInstanceInvalidationClient.this.invalidationService = IMultiInstanceInvalidationService.Stub.asInterface(service);
                MultiInstanceInvalidationClient.this.registerCallback();
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName name2) {
                Intrinsics.checkNotNullParameter(name2, "name");
                MultiInstanceInvalidationClient.this.invalidationService = null;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void registerCallback() {
        try {
            IMultiInstanceInvalidationService iMultiInstanceInvalidationService = this.invalidationService;
            if (iMultiInstanceInvalidationService != null) {
                this.clientId = iMultiInstanceInvalidationService.registerCallback(this.invalidationCallback, this.name);
            }
        } catch (RemoteException e10) {
            Log.w(Room.LOG_TAG, "Cannot register multi-instance invalidation callback", e10);
        }
    }

    @NotNull
    public final kt.b<Set<String>> createFlow(@NotNull final String[] resolvedTableNames) {
        Intrinsics.checkNotNullParameter(resolvedTableNames, "resolvedTableNames");
        final kt.d<Set<String>> dVar = this.invalidatedTables;
        return new kt.b<Set<? extends String>>() { // from class: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 MultiInstanceInvalidationClient.android.kt\nandroidx/room/MultiInstanceInvalidationClient\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n57#2:219\n58#2:235\n134#3,2:220\n136#3:223\n137#3,4:225\n141#3:230\n142#3,2:232\n13472#4:222\n13473#4:231\n1869#5:224\n1870#5:229\n1#6:234\n*S KotlinDebug\n*F\n+ 1 MultiInstanceInvalidationClient.android.kt\nandroidx/room/MultiInstanceInvalidationClient\n*L\n135#1:222\n135#1:231\n136#1:224\n136#1:229\n*E\n"})
            /* renamed from: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ String[] $resolvedTableNames$inlined;
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @kotlin.coroutines.jvm.internal.d(c = "androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2", f = "MultiInstanceInvalidationClient.android.kt", l = {VideoRef.VALUE_VIDEO_REF_AI_BARRAGE_URL}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,218:1\n*E\n"})
                /* renamed from: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(rs.c cVar) {
                        super(cVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kt.c cVar, String[] strArr) {
                    this.$this_unsafeFlow = cVar;
                    this.$resolvedTableNames$inlined = strArr;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kt.c
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r11, @org.jetbrains.annotations.NotNull rs.c r12) {
                    /*
                        r10 = this;
                        boolean r0 = r12 instanceof androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r12
                        androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1 r0 = (androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1 r0 = new androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1
                        r0.<init>(r12)
                    L18:
                        java.lang.Object r12 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r12)
                        goto L7c
                    L29:
                        java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                        java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                        r11.<init>(r12)
                        throw r11
                    L31:
                        kotlin.f.b(r12)
                        kt.c r12 = r10.$this_unsafeFlow
                        java.util.Set r11 = (java.util.Set) r11
                        java.util.Set r2 = kotlin.collections.y0.b()
                        java.lang.String[] r4 = r10.$resolvedTableNames$inlined
                        int r5 = r4.length
                        r6 = 0
                    L40:
                        if (r6 >= r5) goto L64
                        r7 = r4[r6]
                        r8 = r11
                        java.lang.Iterable r8 = (java.lang.Iterable) r8
                        java.util.Iterator r8 = r8.iterator()
                    L4b:
                        boolean r9 = r8.hasNext()
                        if (r9 == 0) goto L61
                        java.lang.Object r9 = r8.next()
                        java.lang.String r9 = (java.lang.String) r9
                        boolean r9 = kotlin.text.StringsKt.G(r7, r9, r3)
                        if (r9 == 0) goto L4b
                        r2.add(r7)
                        goto L4b
                    L61:
                        int r6 = r6 + 1
                        goto L40
                    L64:
                        java.util.Set r11 = kotlin.collections.y0.a(r2)
                        java.util.Collection r11 = (java.util.Collection) r11
                        boolean r2 = r11.isEmpty()
                        if (r2 == 0) goto L71
                        r11 = 0
                    L71:
                        if (r11 == 0) goto L7c
                        r0.label = r3
                        java.lang.Object r11 = r12.emit(r11, r0)
                        if (r11 != r1) goto L7c
                        return r1
                    L7c:
                        kotlin.Unit r11 = kotlin.Unit.f60915a
                        return r11
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super Set<? extends String>> cVar, @NotNull rs.c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar, resolvedTableNames), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        };
    }

    @NotNull
    public final InvalidationTracker getInvalidationTracker() {
        return this.invalidationTracker;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final void start(@NotNull Intent serviceIntent) {
        Intrinsics.checkNotNullParameter(serviceIntent, "serviceIntent");
        if (this.stopped.compareAndSet(true, false)) {
            this.appContext.bindService(serviceIntent, this.serviceConnection, 1);
            this.invalidationTracker.addRemoteObserver$room_runtime(this.observer);
        }
    }

    public final void stop() {
        if (this.stopped.compareAndSet(false, true)) {
            this.invalidationTracker.removeObserver(this.observer);
            try {
                IMultiInstanceInvalidationService iMultiInstanceInvalidationService = this.invalidationService;
                if (iMultiInstanceInvalidationService != null) {
                    iMultiInstanceInvalidationService.unregisterCallback(this.invalidationCallback, this.clientId);
                }
            } catch (RemoteException e10) {
                Log.w(Room.LOG_TAG, "Cannot unregister multi-instance invalidation callback", e10);
            }
            this.appContext.unbindService(this.serviceConnection);
        }
    }
}
