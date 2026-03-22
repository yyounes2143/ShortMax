package androidx.lifecycle;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.internal.SavedStateHandleImpl;
import androidx.lifecycle.internal.SavedStateHandleImpl_androidKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateRegistry;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SavedStateHandle.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedStateHandle.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandle.android.kt\nandroidx/lifecycle/SavedStateHandle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,229:1\n1#2:230\n381#3,7:231\n*S KotlinDebug\n*F\n+ 1 SavedStateHandle.android.kt\nandroidx/lifecycle/SavedStateHandle\n*L\n115#1:231,7\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateHandle {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private SavedStateHandleImpl impl;
    @NotNull
    private final Map<String, SavingStateLiveData<?>> liveDatas;

    /* compiled from: SavedStateHandle.android.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSavedStateHandle.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandle.android.kt\nandroidx/lifecycle/SavedStateHandle$Companion\n+ 2 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n*L\n1#1,229:1\n90#2:230\n*S KotlinDebug\n*F\n+ 1 SavedStateHandle.android.kt\nandroidx/lifecycle/SavedStateHandle$Companion\n*L\n217#1:230\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @NotNull
        public final SavedStateHandle createHandle(@Nullable Bundle bundle, @Nullable Bundle bundle2) {
            if (bundle == null) {
                bundle = bundle2;
            }
            if (bundle == null) {
                return new SavedStateHandle();
            }
            ClassLoader classLoader = SavedStateHandle.class.getClassLoader();
            Intrinsics.checkNotNull(classLoader);
            bundle.setClassLoader(classLoader);
            return new SavedStateHandle(SavedStateReader.m4419toMapimpl(SavedStateReader.m4338constructorimpl(bundle)));
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final boolean validateValue(@Nullable Object obj) {
            return SavedStateHandleImpl_androidKt.isAcceptableType(obj);
        }

        private Companion() {
        }
    }

    public SavedStateHandle(@NotNull Map<String, ? extends Object> initialState) {
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        this.liveDatas = new LinkedHashMap();
        this.impl = new SavedStateHandleImpl(initialState);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final SavedStateHandle createHandle(@Nullable Bundle bundle, @Nullable Bundle bundle2) {
        return Companion.createHandle(bundle, bundle2);
    }

    private final <T> MutableLiveData<T> getLiveDataInternal(String str, boolean z10, T t10) {
        String createMutuallyExclusiveErrorMessage;
        SavingStateLiveData<?> savingStateLiveData;
        if (this.impl.getMutableFlows().containsKey(str)) {
            createMutuallyExclusiveErrorMessage = SavedStateHandle_androidKt.createMutuallyExclusiveErrorMessage(str);
            throw new IllegalArgumentException(createMutuallyExclusiveErrorMessage.toString());
        }
        Map<String, SavingStateLiveData<?>> map = this.liveDatas;
        SavingStateLiveData<?> savingStateLiveData2 = map.get(str);
        if (savingStateLiveData2 == null) {
            if (this.impl.getRegular().containsKey(str)) {
                savingStateLiveData = new SavingStateLiveData<>(this, str, this.impl.getRegular().get(str));
            } else if (z10) {
                this.impl.getRegular().put(str, t10);
                savingStateLiveData = new SavingStateLiveData<>(this, str, t10);
            } else {
                savingStateLiveData = new SavingStateLiveData<>(this, str);
            }
            savingStateLiveData2 = savingStateLiveData;
            map.put(str, savingStateLiveData2);
        }
        return savingStateLiveData2;
    }

    @MainThread
    public final void clearSavedStateProvider(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.impl.clearSavedStateProvider(key);
    }

    @MainThread
    public final boolean contains(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.impl.contains(key);
    }

    @MainThread
    @Nullable
    public final <T> T get(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) this.impl.get(key);
    }

    @MainThread
    @NotNull
    public final <T> MutableLiveData<T> getLiveData(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        MutableLiveData<T> liveDataInternal = getLiveDataInternal(key, false, null);
        Intrinsics.checkNotNull(liveDataInternal, "null cannot be cast to non-null type androidx.lifecycle.MutableLiveData<T of androidx.lifecycle.SavedStateHandle.getLiveData>");
        return liveDataInternal;
    }

    @MainThread
    @NotNull
    public final <T> kt.e<T> getMutableStateFlow(@NotNull String key, T t10) {
        String createMutuallyExclusiveErrorMessage;
        Intrinsics.checkNotNullParameter(key, "key");
        if (this.liveDatas.containsKey(key)) {
            createMutuallyExclusiveErrorMessage = SavedStateHandle_androidKt.createMutuallyExclusiveErrorMessage(key);
            throw new IllegalArgumentException(createMutuallyExclusiveErrorMessage.toString());
        }
        return this.impl.getMutableStateFlow(key, t10);
    }

    @MainThread
    @NotNull
    public final <T> kt.i<T> getStateFlow(@NotNull String key, T t10) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (this.impl.getMutableFlows().containsKey(key)) {
            return kotlinx.coroutines.flow.c.d(this.impl.getMutableStateFlow(key, t10));
        }
        return this.impl.getStateFlow(key, t10);
    }

    @MainThread
    @NotNull
    public final Set<String> keys() {
        return y0.m(this.impl.keys(), this.liveDatas.keySet());
    }

    @MainThread
    @Nullable
    public final <T> T remove(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        T t10 = (T) this.impl.remove(key);
        SavingStateLiveData<?> remove = this.liveDatas.remove(key);
        if (remove != null) {
            remove.detach();
        }
        return t10;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final SavedStateRegistry.SavedStateProvider savedStateProvider() {
        return this.impl.getSavedStateProvider();
    }

    @MainThread
    public final <T> void set(@NotNull String key, @Nullable T t10) {
        SavingStateLiveData<?> savingStateLiveData;
        Intrinsics.checkNotNullParameter(key, "key");
        if (Companion.validateValue(t10)) {
            SavingStateLiveData<?> savingStateLiveData2 = this.liveDatas.get(key);
            if (savingStateLiveData2 instanceof MutableLiveData) {
                savingStateLiveData = savingStateLiveData2;
            } else {
                savingStateLiveData = null;
            }
            if (savingStateLiveData != null) {
                savingStateLiveData.setValue(t10);
            }
            this.impl.set(key, t10);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Can't put value with type ");
        Intrinsics.checkNotNull(t10);
        sb2.append(t10.getClass());
        sb2.append(" into saved state");
        throw new IllegalArgumentException(sb2.toString().toString());
    }

    @MainThread
    public final void setSavedStateProvider(@NotNull String key, @NotNull SavedStateRegistry.SavedStateProvider provider) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.impl.setSavedStateProvider(key, provider);
    }

    @MainThread
    @NotNull
    public final <T> MutableLiveData<T> getLiveData(@NotNull String key, T t10) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getLiveDataInternal(key, true, t10);
    }

    /* compiled from: SavedStateHandle.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class SavingStateLiveData<T> extends MutableLiveData<T> {
        @Nullable
        private SavedStateHandle handle;
        @NotNull
        private String key;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SavingStateLiveData(@Nullable SavedStateHandle savedStateHandle, @NotNull String key, T t10) {
            super(t10);
            Intrinsics.checkNotNullParameter(key, "key");
            this.key = key;
            this.handle = savedStateHandle;
        }

        public final void detach() {
            this.handle = null;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(T t10) {
            SavedStateHandleImpl savedStateHandleImpl;
            SavedStateHandle savedStateHandle = this.handle;
            if (savedStateHandle != null && (savedStateHandleImpl = savedStateHandle.impl) != null) {
                savedStateHandleImpl.set(this.key, t10);
            }
            super.setValue(t10);
        }

        public SavingStateLiveData(@Nullable SavedStateHandle savedStateHandle, @NotNull String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.key = key;
            this.handle = savedStateHandle;
        }
    }

    public SavedStateHandle() {
        this.liveDatas = new LinkedHashMap();
        this.impl = new SavedStateHandleImpl(null, 1, null);
    }
}
