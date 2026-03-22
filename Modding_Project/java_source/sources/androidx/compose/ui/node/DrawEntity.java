package androidx.compose.ui.node;

import androidx.compose.ui.draw.BuildDrawCacheParams;
import androidx.compose.ui.draw.DrawCacheModifier;
import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DrawEntity.kt */
@Metadata
/* loaded from: classes.dex */
public final class DrawEntity extends LayoutNodeEntity<DrawEntity, DrawModifier> implements OwnerScope {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Function1<DrawEntity, Unit> onCommitAffectingDrawEntity = new Function1<DrawEntity, Unit>() { // from class: androidx.compose.ui.node.DrawEntity$Companion$onCommitAffectingDrawEntity$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(DrawEntity drawEntity) {
            invoke2(drawEntity);
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull DrawEntity drawEntity) {
            Intrinsics.checkNotNullParameter(drawEntity, "drawEntity");
            if (drawEntity.isValid()) {
                drawEntity.invalidateCache = true;
                drawEntity.getLayoutNodeWrapper().invalidateLayer();
            }
        }
    };
    @NotNull
    private final BuildDrawCacheParams buildCacheParams;
    @Nullable
    private DrawCacheModifier cacheDrawModifier;
    private boolean invalidateCache;
    @NotNull
    private final Function0<Unit> updateCache;

    /* compiled from: DrawEntity.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawEntity(@NotNull final LayoutNodeWrapper layoutNodeWrapper, @NotNull DrawModifier modifier) {
        super(layoutNodeWrapper, modifier);
        Intrinsics.checkNotNullParameter(layoutNodeWrapper, "layoutNodeWrapper");
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        this.cacheDrawModifier = updateCacheDrawModifier();
        this.buildCacheParams = new BuildDrawCacheParams() { // from class: androidx.compose.ui.node.DrawEntity$buildCacheParams$1
            @NotNull
            private final Density density;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.density = DrawEntity.this.getLayoutNode().getDensity();
            }

            @Override // androidx.compose.ui.draw.BuildDrawCacheParams
            @NotNull
            public Density getDensity() {
                return this.density;
            }

            @Override // androidx.compose.ui.draw.BuildDrawCacheParams
            @NotNull
            public LayoutDirection getLayoutDirection() {
                return DrawEntity.this.getLayoutNode().getLayoutDirection();
            }

            @Override // androidx.compose.ui.draw.BuildDrawCacheParams
            /* renamed from: getSize-NH-jbRc */
            public long mo1528getSizeNHjbRc() {
                return IntSizeKt.m4219toSizeozmzZPI(layoutNodeWrapper.mo3337getSizeYbymL2g());
            }
        };
        this.invalidateCache = true;
        this.updateCache = new Function0<Unit>() { // from class: androidx.compose.ui.node.DrawEntity$updateCache$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                DrawCacheModifier drawCacheModifier;
                BuildDrawCacheParams buildDrawCacheParams;
                drawCacheModifier = DrawEntity.this.cacheDrawModifier;
                if (drawCacheModifier != null) {
                    buildDrawCacheParams = DrawEntity.this.buildCacheParams;
                    drawCacheModifier.onBuildCache(buildDrawCacheParams);
                }
                DrawEntity.this.invalidateCache = false;
            }
        };
    }

    private final DrawCacheModifier updateCacheDrawModifier() {
        DrawModifier modifier = getModifier();
        if (modifier instanceof DrawCacheModifier) {
            return (DrawCacheModifier) modifier;
        }
        return null;
    }

    public final void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        long m4219toSizeozmzZPI = IntSizeKt.m4219toSizeozmzZPI(m3471getSizeYbymL2g());
        if (this.cacheDrawModifier != null && this.invalidateCache) {
            LayoutNodeKt.requireOwner(getLayoutNode()).getSnapshotObserver().observeReads$ui_release(this, onCommitAffectingDrawEntity, this.updateCache);
        }
        LayoutNodeDrawScope mDrawScope$ui_release = getLayoutNode().getMDrawScope$ui_release();
        LayoutNodeWrapper layoutNodeWrapper = getLayoutNodeWrapper();
        DrawEntity access$getDrawEntity$p = LayoutNodeDrawScope.access$getDrawEntity$p(mDrawScope$ui_release);
        LayoutNodeDrawScope.access$setDrawEntity$p(mDrawScope$ui_release, this);
        CanvasDrawScope access$getCanvasDrawScope$p = LayoutNodeDrawScope.access$getCanvasDrawScope$p(mDrawScope$ui_release);
        MeasureScope measureScope = layoutNodeWrapper.getMeasureScope();
        LayoutDirection layoutDirection = layoutNodeWrapper.getMeasureScope().getLayoutDirection();
        CanvasDrawScope.DrawParams drawParams = access$getCanvasDrawScope$p.getDrawParams();
        Density component1 = drawParams.component1();
        LayoutDirection component2 = drawParams.component2();
        Canvas component3 = drawParams.component3();
        long m2257component4NHjbRc = drawParams.m2257component4NHjbRc();
        CanvasDrawScope.DrawParams drawParams2 = access$getCanvasDrawScope$p.getDrawParams();
        drawParams2.setDensity(measureScope);
        drawParams2.setLayoutDirection(layoutDirection);
        drawParams2.setCanvas(canvas);
        drawParams2.m2260setSizeuvyYCjk(m4219toSizeozmzZPI);
        canvas.save();
        getModifier().draw(mDrawScope$ui_release);
        canvas.restore();
        CanvasDrawScope.DrawParams drawParams3 = access$getCanvasDrawScope$p.getDrawParams();
        drawParams3.setDensity(component1);
        drawParams3.setLayoutDirection(component2);
        drawParams3.setCanvas(component3);
        drawParams3.m2260setSizeuvyYCjk(m2257component4NHjbRc);
        LayoutNodeDrawScope.access$setDrawEntity$p(mDrawScope$ui_release, access$getDrawEntity$p);
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValid() {
        return getLayoutNodeWrapper().isAttached();
    }

    @Override // androidx.compose.ui.node.LayoutNodeEntity
    public void onAttach() {
        this.cacheDrawModifier = updateCacheDrawModifier();
        this.invalidateCache = true;
        super.onAttach();
    }

    public final void onMeasureResultChanged() {
        this.invalidateCache = true;
    }
}
