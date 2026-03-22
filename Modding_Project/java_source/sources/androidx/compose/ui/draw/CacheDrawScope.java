package androidx.compose.ui.draw;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DrawModifier.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class CacheDrawScope implements Density {
    public static final int $stable = 0;
    @NotNull
    private BuildDrawCacheParams cacheParams = EmptyBuildDrawCacheParams.INSTANCE;
    @Nullable
    private DrawResult drawResult;

    @NotNull
    public final BuildDrawCacheParams getCacheParams$ui_release() {
        return this.cacheParams;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.cacheParams.getDensity().getDensity();
    }

    @Nullable
    public final DrawResult getDrawResult$ui_release() {
        return this.drawResult;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.cacheParams.getDensity().getFontScale();
    }

    @NotNull
    public final LayoutDirection getLayoutDirection() {
        return this.cacheParams.getLayoutDirection();
    }

    /* renamed from: getSize-NH-jbRc  reason: not valid java name */
    public final long m1529getSizeNHjbRc() {
        return this.cacheParams.mo1528getSizeNHjbRc();
    }

    @NotNull
    public final DrawResult onDrawBehind(@NotNull final Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return onDrawWithContent(new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.ui.draw.CacheDrawScope$onDrawBehind$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ContentDrawScope contentDrawScope) {
                invoke2(contentDrawScope);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ContentDrawScope onDrawWithContent) {
                Intrinsics.checkNotNullParameter(onDrawWithContent, "$this$onDrawWithContent");
                block.invoke(onDrawWithContent);
                onDrawWithContent.drawContent();
            }
        });
    }

    @NotNull
    public final DrawResult onDrawWithContent(@NotNull Function1<? super ContentDrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        DrawResult drawResult = new DrawResult(block);
        this.drawResult = drawResult;
        return drawResult;
    }

    public final void setCacheParams$ui_release(@NotNull BuildDrawCacheParams buildDrawCacheParams) {
        Intrinsics.checkNotNullParameter(buildDrawCacheParams, "<set-?>");
        this.cacheParams = buildDrawCacheParams;
    }

    public final void setDrawResult$ui_release(@Nullable DrawResult drawResult) {
        this.drawResult = drawResult;
    }
}
