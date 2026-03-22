package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyLayoutItemContentFactory.kt */
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public final class LazyLayoutItemContentFactory {
    private long constraintsOfCachedLambdas;
    @NotNull
    private Density densityOfCachedLambdas;
    @NotNull
    private final Function0<LazyLayoutItemProvider> itemProvider;
    @NotNull
    private final Map<Object, CachedItemContent> lambdasCache;
    @NotNull
    private final SaveableStateHolder saveableStateHolder;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LazyLayoutItemContentFactory.kt */
    @Metadata
    /* loaded from: classes.dex */
    public final class CachedItemContent {
        @Nullable
        private Function2<? super Composer, ? super Integer, Unit> _content;
        @NotNull
        private final Object key;
        @NotNull
        private final MutableState lastKnownIndex$delegate;
        final /* synthetic */ LazyLayoutItemContentFactory this$0;
        @Nullable
        private final Object type;

        public CachedItemContent(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, @NotNull int i10, @Nullable Object key, Object obj) {
            MutableState mutableStateOf$default;
            Intrinsics.checkNotNullParameter(key, "key");
            this.this$0 = lazyLayoutItemContentFactory;
            this.key = key;
            this.type = obj;
            mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Integer.valueOf(i10), null, 2, null);
            this.lastKnownIndex$delegate = mutableStateOf$default;
        }

        private final Function2<Composer, Integer, Unit> createContentLambda() {
            final LazyLayoutItemContentFactory lazyLayoutItemContentFactory = this.this$0;
            return ComposableLambdaKt.composableLambdaInstance(1403994769, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.f60915a;
                }

                @Composable
                public final void invoke(@Nullable Composer composer, int i10) {
                    final int lastKnownIndex;
                    SaveableStateHolder saveableStateHolder;
                    if ((i10 & 11) == 2 && composer.getSkipping()) {
                        composer.skipToGroupEnd();
                        return;
                    }
                    final LazyLayoutItemProvider invoke = LazyLayoutItemContentFactory.this.getItemProvider().invoke();
                    Integer num = invoke.getKeyToIndexMap().get(this.getKey());
                    if (num != null) {
                        this.setLastKnownIndex(num.intValue());
                        lastKnownIndex = num.intValue();
                    } else {
                        lastKnownIndex = this.getLastKnownIndex();
                    }
                    composer.startReplaceableGroup(-715769699);
                    if (lastKnownIndex < invoke.getItemCount()) {
                        Object key = invoke.getKey(lastKnownIndex);
                        if (Intrinsics.areEqual(key, this.getKey())) {
                            saveableStateHolder = LazyLayoutItemContentFactory.this.saveableStateHolder;
                            saveableStateHolder.SaveableStateProvider(key, ComposableLambdaKt.composableLambda(composer, -1238863364, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$1.1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num2) {
                                    invoke(composer2, num2.intValue());
                                    return Unit.f60915a;
                                }

                                @Composable
                                public final void invoke(@Nullable Composer composer2, int i11) {
                                    if ((i11 & 11) == 2 && composer2.getSkipping()) {
                                        composer2.skipToGroupEnd();
                                    } else {
                                        LazyLayoutItemProvider.this.Item(lastKnownIndex, composer2, 0);
                                    }
                                }
                            }), composer, 568);
                        }
                    }
                    composer.endReplaceableGroup();
                    Object key2 = this.getKey();
                    final LazyLayoutItemContentFactory.CachedItemContent cachedItemContent = this;
                    EffectsKt.DisposableEffect(key2, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$1.2
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                            Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                            final LazyLayoutItemContentFactory.CachedItemContent cachedItemContent2 = LazyLayoutItemContentFactory.CachedItemContent.this;
                            return new DisposableEffectResult() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory$CachedItemContent$createContentLambda$1$2$invoke$$inlined$onDispose$1
                                @Override // androidx.compose.runtime.DisposableEffectResult
                                public void dispose() {
                                    LazyLayoutItemContentFactory.CachedItemContent.this._content = null;
                                }
                            };
                        }
                    }, composer, 8);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void setLastKnownIndex(int i10) {
            this.lastKnownIndex$delegate.setValue(Integer.valueOf(i10));
        }

        @NotNull
        public final Function2<Composer, Integer, Unit> getContent() {
            Function2 function2 = this._content;
            if (function2 == null) {
                Function2<Composer, Integer, Unit> createContentLambda = createContentLambda();
                this._content = createContentLambda;
                return createContentLambda;
            }
            return function2;
        }

        @NotNull
        public final Object getKey() {
            return this.key;
        }

        public final int getLastKnownIndex() {
            return ((Number) this.lastKnownIndex$delegate.getValue()).intValue();
        }

        @Nullable
        public final Object getType() {
            return this.type;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LazyLayoutItemContentFactory(@NotNull SaveableStateHolder saveableStateHolder, @NotNull Function0<? extends LazyLayoutItemProvider> itemProvider) {
        Intrinsics.checkNotNullParameter(saveableStateHolder, "saveableStateHolder");
        Intrinsics.checkNotNullParameter(itemProvider, "itemProvider");
        this.saveableStateHolder = saveableStateHolder;
        this.itemProvider = itemProvider;
        this.lambdasCache = new LinkedHashMap();
        this.densityOfCachedLambdas = DensityKt.Density(0.0f, 0.0f);
        this.constraintsOfCachedLambdas = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null);
    }

    @NotNull
    public final Function2<Composer, Integer, Unit> getContent(int i10, @NotNull Object key) {
        Intrinsics.checkNotNullParameter(key, "key");
        CachedItemContent cachedItemContent = this.lambdasCache.get(key);
        Object contentType = this.itemProvider.invoke().getContentType(i10);
        if (cachedItemContent != null && cachedItemContent.getLastKnownIndex() == i10 && Intrinsics.areEqual(cachedItemContent.getType(), contentType)) {
            return cachedItemContent.getContent();
        }
        CachedItemContent cachedItemContent2 = new CachedItemContent(this, i10, key, contentType);
        this.lambdasCache.put(key, cachedItemContent2);
        return cachedItemContent2.getContent();
    }

    @Nullable
    public final Object getContentType(@Nullable Object obj) {
        CachedItemContent cachedItemContent = this.lambdasCache.get(obj);
        if (cachedItemContent != null) {
            return cachedItemContent.getType();
        }
        LazyLayoutItemProvider invoke = this.itemProvider.invoke();
        Integer num = invoke.getKeyToIndexMap().get(obj);
        if (num != null) {
            return invoke.getContentType(num.intValue());
        }
        return null;
    }

    @NotNull
    public final Function0<LazyLayoutItemProvider> getItemProvider() {
        return this.itemProvider;
    }

    /* renamed from: onBeforeMeasure-0kLqBqw  reason: not valid java name */
    public final void m657onBeforeMeasure0kLqBqw(@NotNull Density density, long j10) {
        Intrinsics.checkNotNullParameter(density, "density");
        if (!Intrinsics.areEqual(density, this.densityOfCachedLambdas) || !Constraints.m3998equalsimpl0(j10, this.constraintsOfCachedLambdas)) {
            this.densityOfCachedLambdas = density;
            this.constraintsOfCachedLambdas = j10;
            this.lambdasCache.clear();
        }
    }
}
