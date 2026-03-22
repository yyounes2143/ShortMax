package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyListItemProviderImpl.kt */
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public final class LazyListItemProviderImpl implements LazyListItemProvider {
    @NotNull
    private final LazyItemScopeImpl itemScope;
    @NotNull
    private final State<LazyListItemsSnapshot> itemsSnapshot;

    public LazyListItemProviderImpl(@NotNull State<LazyListItemsSnapshot> itemsSnapshot) {
        Intrinsics.checkNotNullParameter(itemsSnapshot, "itemsSnapshot");
        this.itemsSnapshot = itemsSnapshot;
        this.itemScope = new LazyItemScopeImpl();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    @Composable
    public void Item(final int i10, @Nullable Composer composer, final int i11) {
        int i12;
        int i13;
        int i14;
        Composer startRestartGroup = composer.startRestartGroup(1704733014);
        if ((i11 & 14) == 0) {
            if (startRestartGroup.changed(i10)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i12 = i14 | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 112) == 0) {
            if (startRestartGroup.changed(this)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i12 |= i13;
        }
        if ((i12 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            this.itemsSnapshot.getValue().Item(getItemScope(), i10, startRestartGroup, ((i12 << 3) & 112) | 512);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListItemProviderImpl$Item$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i15) {
                    LazyListItemProviderImpl.this.Item(i10, composer2, i11 | 1);
                }
            });
        }
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    @Nullable
    public Object getContentType(int i10) {
        return this.itemsSnapshot.getValue().getContentType(i10);
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemProvider
    @NotNull
    public List<Integer> getHeaderIndexes() {
        return this.itemsSnapshot.getValue().getHeaderIndexes();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public int getItemCount() {
        return this.itemsSnapshot.getValue().getItemsCount();
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemProvider
    @NotNull
    public LazyItemScopeImpl getItemScope() {
        return this.itemScope;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    @NotNull
    public Object getKey(int i10) {
        return this.itemsSnapshot.getValue().getKey(i10);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    @NotNull
    public Map<Object, Integer> getKeyToIndexMap() {
        return this.itemsSnapshot.getValue().getKeyToIndexMap();
    }
}
