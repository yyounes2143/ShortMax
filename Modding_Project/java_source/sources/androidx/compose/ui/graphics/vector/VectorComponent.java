package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Vector.kt */
@Metadata
/* loaded from: classes.dex */
public final class VectorComponent extends VNode {
    @NotNull
    private final DrawCache cacheDrawScope;
    @NotNull
    private final Function1<DrawScope, Unit> drawVectorBlock;
    @NotNull
    private final MutableState intrinsicColorFilter$delegate;
    @NotNull
    private Function0<Unit> invalidateCallback;
    private boolean isDirty;
    private long previousDrawSize;
    @NotNull
    private final GroupComponent root;
    private float viewportHeight;
    private float viewportWidth;

    public VectorComponent() {
        super(null);
        MutableState mutableStateOf$default;
        GroupComponent groupComponent = new GroupComponent();
        groupComponent.setPivotX(0.0f);
        groupComponent.setPivotY(0.0f);
        groupComponent.setInvalidateListener$ui_release(new Function0<Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComponent$root$1$1
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
                VectorComponent.this.doInvalidate();
            }
        });
        this.root = groupComponent;
        this.isDirty = true;
        this.cacheDrawScope = new DrawCache();
        this.invalidateCallback = new Function0<Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComponent$invalidateCallback$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }
        };
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.intrinsicColorFilter$delegate = mutableStateOf$default;
        this.previousDrawSize = Size.Companion.m1683getUnspecifiedNHjbRc();
        this.drawVectorBlock = new Function1<DrawScope, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComponent$drawVectorBlock$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                invoke2(drawScope);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull DrawScope drawScope) {
                Intrinsics.checkNotNullParameter(drawScope, "$this$null");
                VectorComponent.this.getRoot().draw(drawScope);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void doInvalidate() {
        this.isDirty = true;
        this.invalidateCallback.invoke();
    }

    public final void draw(@NotNull DrawScope drawScope, float f10, @Nullable ColorFilter colorFilter) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        if (colorFilter == null) {
            colorFilter = getIntrinsicColorFilter$ui_release();
        }
        if (this.isDirty || !Size.m1671equalsimpl0(this.previousDrawSize, drawScope.mo2336getSizeNHjbRc())) {
            this.root.setScaleX(Size.m1675getWidthimpl(drawScope.mo2336getSizeNHjbRc()) / this.viewportWidth);
            this.root.setScaleY(Size.m1672getHeightimpl(drawScope.mo2336getSizeNHjbRc()) / this.viewportHeight);
            this.cacheDrawScope.m2412drawCachedImageCJJARo(IntSizeKt.IntSize((int) Math.ceil(Size.m1675getWidthimpl(drawScope.mo2336getSizeNHjbRc())), (int) Math.ceil(Size.m1672getHeightimpl(drawScope.mo2336getSizeNHjbRc()))), drawScope, drawScope.getLayoutDirection(), this.drawVectorBlock);
            this.isDirty = false;
            this.previousDrawSize = drawScope.mo2336getSizeNHjbRc();
        }
        this.cacheDrawScope.drawInto(drawScope, f10, colorFilter);
    }

    @Nullable
    public final ColorFilter getIntrinsicColorFilter$ui_release() {
        return (ColorFilter) this.intrinsicColorFilter$delegate.getValue();
    }

    @NotNull
    public final Function0<Unit> getInvalidateCallback$ui_release() {
        return this.invalidateCallback;
    }

    @NotNull
    public final String getName() {
        return this.root.getName();
    }

    @NotNull
    public final GroupComponent getRoot() {
        return this.root;
    }

    public final float getViewportHeight() {
        return this.viewportHeight;
    }

    public final float getViewportWidth() {
        return this.viewportWidth;
    }

    public final void setIntrinsicColorFilter$ui_release(@Nullable ColorFilter colorFilter) {
        this.intrinsicColorFilter$delegate.setValue(colorFilter);
    }

    public final void setInvalidateCallback$ui_release(@NotNull Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.invalidateCallback = function0;
    }

    public final void setName(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.root.setName(value);
    }

    public final void setViewportHeight(float f10) {
        if (this.viewportHeight != f10) {
            this.viewportHeight = f10;
            doInvalidate();
        }
    }

    public final void setViewportWidth(float f10) {
        if (this.viewportWidth != f10) {
            this.viewportWidth = f10;
            doInvalidate();
        }
    }

    @NotNull
    public String toString() {
        String str = "Params: \tname: " + getName() + "\n\tviewportWidth: " + this.viewportWidth + "\n\tviewportHeight: " + this.viewportHeight + "\n";
        Intrinsics.checkNotNullExpressionValue(str, "StringBuilder().apply(builderAction).toString()");
        return str;
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public void draw(@NotNull DrawScope drawScope) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        draw(drawScope, 1.0f, null);
    }
}
