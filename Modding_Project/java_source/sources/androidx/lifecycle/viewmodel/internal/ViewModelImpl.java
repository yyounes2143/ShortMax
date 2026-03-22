package androidx.lifecycle.viewmodel.internal;

import androidx.annotation.MainThread;
import gt.g0;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewModelImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nViewModelImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewModelImpl.kt\nandroidx/lifecycle/viewmodel/internal/ViewModelImpl\n+ 2 SynchronizedObject.kt\nandroidx/lifecycle/viewmodel/internal/SynchronizedObjectKt\n+ 3 SynchronizedObject.jvm.kt\nandroidx/lifecycle/viewmodel/internal/SynchronizedObject_jvmKt\n*L\n1#1,132:1\n38#2:133\n38#2:135\n38#2:137\n38#2:139\n23#3:134\n23#3:136\n23#3:138\n23#3:140\n*S KotlinDebug\n*F\n+ 1 ViewModelImpl.kt\nandroidx/lifecycle/viewmodel/internal/ViewModelImpl\n*L\n80#1:133\n103#1:135\n117#1:137\n122#1:139\n80#1:134\n103#1:136\n117#1:138\n122#1:140\n*E\n"})
/* loaded from: classes2.dex */
public final class ViewModelImpl {
    @NotNull
    private final Set<AutoCloseable> closeables;
    private volatile boolean isCleared;
    @NotNull
    private final Map<String, AutoCloseable> keyToCloseables;
    @NotNull
    private final SynchronizedObject lock;

    public ViewModelImpl() {
        this.lock = new SynchronizedObject();
        this.keyToCloseables = new LinkedHashMap();
        this.closeables = new LinkedHashSet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void closeWithRuntimeException(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    public final void addCloseable(@NotNull String key, @NotNull AutoCloseable closeable) {
        AutoCloseable autoCloseable;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(closeable, "closeable");
        if (this.isCleared) {
            closeWithRuntimeException(closeable);
            return;
        }
        synchronized (this.lock) {
            autoCloseable = (AutoCloseable) this.keyToCloseables.put(key, closeable);
        }
        closeWithRuntimeException(autoCloseable);
    }

    @MainThread
    public final void clear() {
        if (this.isCleared) {
            return;
        }
        this.isCleared = true;
        synchronized (this.lock) {
            try {
                for (AutoCloseable autoCloseable : this.keyToCloseables.values()) {
                    closeWithRuntimeException(autoCloseable);
                }
                for (AutoCloseable autoCloseable2 : this.closeables) {
                    closeWithRuntimeException(autoCloseable2);
                }
                this.closeables.clear();
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public final <T extends AutoCloseable> T getCloseable(@NotNull String key) {
        T t10;
        Intrinsics.checkNotNullParameter(key, "key");
        synchronized (this.lock) {
            t10 = (T) this.keyToCloseables.get(key);
        }
        return t10;
    }

    public ViewModelImpl(@NotNull g0 viewModelScope) {
        Intrinsics.checkNotNullParameter(viewModelScope, "viewModelScope");
        this.lock = new SynchronizedObject();
        this.keyToCloseables = new LinkedHashMap();
        this.closeables = new LinkedHashSet();
        addCloseable(CloseableCoroutineScopeKt.VIEW_MODEL_SCOPE_KEY, CloseableCoroutineScopeKt.asCloseable(viewModelScope));
    }

    public final void addCloseable(@NotNull AutoCloseable closeable) {
        Intrinsics.checkNotNullParameter(closeable, "closeable");
        if (this.isCleared) {
            closeWithRuntimeException(closeable);
            return;
        }
        synchronized (this.lock) {
            this.closeables.add(closeable);
            Unit unit = Unit.f60915a;
        }
    }

    public ViewModelImpl(@NotNull AutoCloseable... closeables) {
        Intrinsics.checkNotNullParameter(closeables, "closeables");
        this.lock = new SynchronizedObject();
        this.keyToCloseables = new LinkedHashMap();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.closeables = linkedHashSet;
        CollectionsKt.G(linkedHashSet, closeables);
    }

    public ViewModelImpl(@NotNull g0 viewModelScope, @NotNull AutoCloseable... closeables) {
        Intrinsics.checkNotNullParameter(viewModelScope, "viewModelScope");
        Intrinsics.checkNotNullParameter(closeables, "closeables");
        this.lock = new SynchronizedObject();
        this.keyToCloseables = new LinkedHashMap();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.closeables = linkedHashSet;
        addCloseable(CloseableCoroutineScopeKt.VIEW_MODEL_SCOPE_KEY, CloseableCoroutineScopeKt.asCloseable(viewModelScope));
        CollectionsKt.G(linkedHashSet, closeables);
    }
}
