package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawTransform;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Vector.kt */
@Metadata
/* loaded from: classes.dex */
public final class GroupComponent extends VNode {
    @NotNull
    private final List<VNode> children;
    @Nullable
    private Path clipPath;
    @NotNull
    private List<? extends PathNode> clipPathData;
    @Nullable
    private float[] groupMatrix;
    @Nullable
    private Function0<Unit> invalidateListener;
    private boolean isClipPathDirty;
    private boolean isMatrixDirty;
    @NotNull
    private String name;
    @Nullable
    private PathParser parser;
    private float pivotX;
    private float pivotY;
    private float rotation;
    private float scaleX;
    private float scaleY;
    private float translationX;
    private float translationY;

    public GroupComponent() {
        super(null);
        this.children = new ArrayList();
        this.clipPathData = VectorKt.getEmptyPath();
        this.isClipPathDirty = true;
        this.name = "";
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.isMatrixDirty = true;
    }

    private final boolean getWillClipPath() {
        return !this.clipPathData.isEmpty();
    }

    private final void updateClipPath() {
        if (getWillClipPath()) {
            PathParser pathParser = this.parser;
            if (pathParser == null) {
                pathParser = new PathParser();
                this.parser = pathParser;
            } else {
                pathParser.clear();
            }
            Path path = this.clipPath;
            if (path == null) {
                path = AndroidPath_androidKt.Path();
                this.clipPath = path;
            } else {
                path.reset();
            }
            pathParser.addPathNodes(this.clipPathData).toPath(path);
        }
    }

    private final void updateMatrix() {
        float[] fArr = this.groupMatrix;
        if (fArr == null) {
            fArr = Matrix.m2036constructorimpl$default(null, 1, null);
            this.groupMatrix = fArr;
        } else {
            Matrix.m2045resetimpl(fArr);
        }
        Matrix.m2056translateimpl$default(fArr, this.pivotX + this.translationX, this.pivotY + this.translationY, 0.0f, 4, null);
        Matrix.m2048rotateZimpl(fArr, this.rotation);
        Matrix.m2049scaleimpl(fArr, this.scaleX, this.scaleY, 1.0f);
        Matrix.m2056translateimpl$default(fArr, -this.pivotX, -this.pivotY, 0.0f, 4, null);
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public void draw(@NotNull DrawScope drawScope) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        if (this.isMatrixDirty) {
            updateMatrix();
            this.isMatrixDirty = false;
        }
        if (this.isClipPathDirty) {
            updateClipPath();
            this.isClipPathDirty = false;
        }
        DrawContext drawContext = drawScope.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        DrawTransform transform = drawContext.getTransform();
        float[] fArr = this.groupMatrix;
        if (fArr != null) {
            transform.mo2269transform58bKbWc(Matrix.m2034boximpl(fArr).m2057unboximpl());
        }
        Path path = this.clipPath;
        if (getWillClipPath() && path != null) {
            DrawTransform.m2386clipPathmtrdDE$default(transform, path, 0, 2, null);
        }
        List<VNode> list = this.children;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).draw(drawScope);
        }
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    @NotNull
    public final List<PathNode> getClipPathData() {
        return this.clipPathData;
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    @Nullable
    public Function0<Unit> getInvalidateListener$ui_release() {
        return this.invalidateListener;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final int getNumChildren() {
        return this.children.size();
    }

    public final float getPivotX() {
        return this.pivotX;
    }

    public final float getPivotY() {
        return this.pivotY;
    }

    public final float getRotation() {
        return this.rotation;
    }

    public final float getScaleX() {
        return this.scaleX;
    }

    public final float getScaleY() {
        return this.scaleY;
    }

    public final float getTranslationX() {
        return this.translationX;
    }

    public final float getTranslationY() {
        return this.translationY;
    }

    public final void insertAt(int i10, @NotNull VNode instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (i10 < getNumChildren()) {
            this.children.set(i10, instance);
        } else {
            this.children.add(instance);
        }
        instance.setInvalidateListener$ui_release(getInvalidateListener$ui_release());
        invalidate();
    }

    public final void move(int i10, int i11, int i12) {
        int i13 = 0;
        if (i10 > i11) {
            while (i13 < i12) {
                this.children.remove(i10);
                this.children.add(i11, this.children.get(i10));
                i11++;
                i13++;
            }
        } else {
            while (i13 < i12) {
                this.children.remove(i10);
                this.children.add(i11 - 1, this.children.get(i10));
                i13++;
            }
        }
        invalidate();
    }

    public final void remove(int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            if (i10 < this.children.size()) {
                this.children.get(i10).setInvalidateListener$ui_release(null);
                this.children.remove(i10);
            }
        }
        invalidate();
    }

    public final void setClipPathData(@NotNull List<? extends PathNode> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.clipPathData = value;
        this.isClipPathDirty = true;
        invalidate();
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public void setInvalidateListener$ui_release(@Nullable Function0<Unit> function0) {
        this.invalidateListener = function0;
        List<VNode> list = this.children;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).setInvalidateListener$ui_release(function0);
        }
    }

    public final void setName(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.name = value;
        invalidate();
    }

    public final void setPivotX(float f10) {
        this.pivotX = f10;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setPivotY(float f10) {
        this.pivotY = f10;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setRotation(float f10) {
        this.rotation = f10;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setScaleX(float f10) {
        this.scaleX = f10;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setScaleY(float f10) {
        this.scaleY = f10;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setTranslationX(float f10) {
        this.translationX = f10;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setTranslationY(float f10) {
        this.translationY = f10;
        this.isMatrixDirty = true;
        invalidate();
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("VGroup: ");
        sb2.append(this.name);
        List<VNode> list = this.children;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append("\t");
            sb2.append(list.get(i10).toString());
            sb2.append("\n");
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "sb.toString()");
        return sb3;
    }
}
