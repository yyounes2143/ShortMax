package androidx.compose.ui.text.font;

import androidx.compose.runtime.State;
import androidx.compose.ui.text.caches.LruCache;
import androidx.compose.ui.text.font.TypefaceResult;
import androidx.compose.ui.text.platform.Synchronization_jvmKt;
import androidx.compose.ui.text.platform.SynchronizedObject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FontFamilyResolver.kt */
@Metadata
/* loaded from: classes.dex */
public final class TypefaceRequestCache {
    @NotNull
    private final SynchronizedObject lock = Synchronization_jvmKt.createSynchronizedObject();
    @NotNull
    private final LruCache<TypefaceRequest, TypefaceResult> resultCache = new LruCache<>(16);

    @Nullable
    public final TypefaceResult get$ui_text_release(@NotNull TypefaceRequest typefaceRequest) {
        TypefaceResult typefaceResult;
        Intrinsics.checkNotNullParameter(typefaceRequest, "typefaceRequest");
        synchronized (this.lock) {
            typefaceResult = this.resultCache.get(typefaceRequest);
        }
        return typefaceResult;
    }

    @NotNull
    public final SynchronizedObject getLock$ui_text_release() {
        return this.lock;
    }

    public final int getSize$ui_text_release() {
        int size;
        synchronized (this.lock) {
            size = this.resultCache.size();
        }
        return size;
    }

    public final void preWarmCache(@NotNull List<TypefaceRequest> typefaceRequests, @NotNull Function1<? super TypefaceRequest, ? extends TypefaceResult> resolveTypeface) {
        TypefaceResult typefaceResult;
        Intrinsics.checkNotNullParameter(typefaceRequests, "typefaceRequests");
        Intrinsics.checkNotNullParameter(resolveTypeface, "resolveTypeface");
        int size = typefaceRequests.size();
        for (int i10 = 0; i10 < size; i10++) {
            TypefaceRequest typefaceRequest = typefaceRequests.get(i10);
            synchronized (this.lock) {
                typefaceResult = this.resultCache.get(typefaceRequest);
            }
            if (typefaceResult == null) {
                try {
                    TypefaceResult invoke = resolveTypeface.invoke(typefaceRequest);
                    if (invoke instanceof TypefaceResult.Async) {
                        continue;
                    } else {
                        synchronized (this.lock) {
                            this.resultCache.put(typefaceRequest, invoke);
                        }
                    }
                } catch (Exception e10) {
                    throw new IllegalStateException("Could not load font", e10);
                }
            }
        }
    }

    @NotNull
    public final State<Object> runCached(@NotNull final TypefaceRequest typefaceRequest, @NotNull Function1<? super Function1<? super TypefaceResult, Unit>, ? extends TypefaceResult> resolveTypeface) {
        Intrinsics.checkNotNullParameter(typefaceRequest, "typefaceRequest");
        Intrinsics.checkNotNullParameter(resolveTypeface, "resolveTypeface");
        synchronized (this.lock) {
            TypefaceResult typefaceResult = this.resultCache.get(typefaceRequest);
            if (typefaceResult != null) {
                if (typefaceResult.getCacheable()) {
                    return typefaceResult;
                }
                this.resultCache.remove(typefaceRequest);
            }
            try {
                TypefaceResult invoke = resolveTypeface.invoke(new Function1<TypefaceResult, Unit>() { // from class: androidx.compose.ui.text.font.TypefaceRequestCache$runCached$currentTypefaceResult$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(TypefaceResult typefaceResult2) {
                        invoke2(typefaceResult2);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull TypefaceResult finalResult) {
                        LruCache lruCache;
                        LruCache lruCache2;
                        Intrinsics.checkNotNullParameter(finalResult, "finalResult");
                        SynchronizedObject lock$ui_text_release = TypefaceRequestCache.this.getLock$ui_text_release();
                        TypefaceRequestCache typefaceRequestCache = TypefaceRequestCache.this;
                        TypefaceRequest typefaceRequest2 = typefaceRequest;
                        synchronized (lock$ui_text_release) {
                            try {
                                if (finalResult.getCacheable()) {
                                    lruCache2 = typefaceRequestCache.resultCache;
                                    lruCache2.put(typefaceRequest2, finalResult);
                                } else {
                                    lruCache = typefaceRequestCache.resultCache;
                                    lruCache.remove(typefaceRequest2);
                                }
                                Unit unit = Unit.f60915a;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                });
                synchronized (this.lock) {
                    try {
                        if (this.resultCache.get(typefaceRequest) == null && invoke.getCacheable()) {
                            this.resultCache.put(typefaceRequest, invoke);
                        }
                        Unit unit = Unit.f60915a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return invoke;
            } catch (Exception e10) {
                throw new IllegalStateException("Could not load font", e10);
            }
        }
    }
}
