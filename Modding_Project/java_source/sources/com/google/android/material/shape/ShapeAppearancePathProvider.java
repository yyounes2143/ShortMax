package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
/* loaded from: classes5.dex */
public class ShapeAppearancePathProvider {
    private final ShapePath[] cornerPaths = new ShapePath[4];
    private final Matrix[] cornerTransforms = new Matrix[4];
    private final Matrix[] edgeTransforms = new Matrix[4];
    private final PointF pointF = new PointF();
    private final Path overlappedEdgePath = new Path();
    private final Path boundsPath = new Path();
    private final ShapePath shapePath = new ShapePath();
    private final float[] scratch = new float[2];
    private final float[] scratch2 = new float[2];
    private final Path edgePath = new Path();
    private final Path cornerPath = new Path();
    private boolean edgeIntersectionCheckEnabled = true;

    /* loaded from: classes5.dex */
    private static class Lazy {
        static final ShapeAppearancePathProvider INSTANCE = new ShapeAppearancePathProvider();

        private Lazy() {
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes5.dex */
    public interface PathListener {
        void onCornerPathCreated(ShapePath shapePath, Matrix matrix, int i10);

        void onEdgePathCreated(ShapePath shapePath, Matrix matrix, int i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ShapeAppearancePathSpec {
        @NonNull
        public final RectF bounds;
        public final float interpolation;
        @NonNull
        public final Path path;
        @Nullable
        public final PathListener pathListener;
        @NonNull
        public final ShapeAppearanceModel shapeAppearanceModel;

        ShapeAppearancePathSpec(@NonNull ShapeAppearanceModel shapeAppearanceModel, float f10, RectF rectF, @Nullable PathListener pathListener, Path path) {
            this.pathListener = pathListener;
            this.shapeAppearanceModel = shapeAppearanceModel;
            this.interpolation = f10;
            this.bounds = rectF;
            this.path = path;
        }
    }

    public ShapeAppearancePathProvider() {
        for (int i10 = 0; i10 < 4; i10++) {
            this.cornerPaths[i10] = new ShapePath();
            this.cornerTransforms[i10] = new Matrix();
            this.edgeTransforms[i10] = new Matrix();
        }
    }

    private float angleOfEdge(int i10) {
        return ((i10 + 1) % 4) * 90;
    }

    private void appendCornerPath(@NonNull ShapeAppearancePathSpec shapeAppearancePathSpec, int i10) {
        this.scratch[0] = this.cornerPaths[i10].getStartX();
        this.scratch[1] = this.cornerPaths[i10].getStartY();
        this.cornerTransforms[i10].mapPoints(this.scratch);
        if (i10 == 0) {
            Path path = shapeAppearancePathSpec.path;
            float[] fArr = this.scratch;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = shapeAppearancePathSpec.path;
            float[] fArr2 = this.scratch;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.cornerPaths[i10].applyToPath(this.cornerTransforms[i10], shapeAppearancePathSpec.path);
        PathListener pathListener = shapeAppearancePathSpec.pathListener;
        if (pathListener != null) {
            pathListener.onCornerPathCreated(this.cornerPaths[i10], this.cornerTransforms[i10], i10);
        }
    }

    private void appendEdgePath(@NonNull ShapeAppearancePathSpec shapeAppearancePathSpec, int i10) {
        int i11 = (i10 + 1) % 4;
        this.scratch[0] = this.cornerPaths[i10].getEndX();
        this.scratch[1] = this.cornerPaths[i10].getEndY();
        this.cornerTransforms[i10].mapPoints(this.scratch);
        this.scratch2[0] = this.cornerPaths[i11].getStartX();
        this.scratch2[1] = this.cornerPaths[i11].getStartY();
        this.cornerTransforms[i11].mapPoints(this.scratch2);
        float[] fArr = this.scratch;
        float f10 = fArr[0];
        float[] fArr2 = this.scratch2;
        float max = Math.max(((float) Math.hypot(f10 - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
        float edgeCenterForIndex = getEdgeCenterForIndex(shapeAppearancePathSpec.bounds, i10);
        this.shapePath.reset(0.0f, 0.0f);
        EdgeTreatment edgeTreatmentForIndex = getEdgeTreatmentForIndex(i10, shapeAppearancePathSpec.shapeAppearanceModel);
        edgeTreatmentForIndex.getEdgePath(max, edgeCenterForIndex, shapeAppearancePathSpec.interpolation, this.shapePath);
        this.edgePath.reset();
        this.shapePath.applyToPath(this.edgeTransforms[i10], this.edgePath);
        if (this.edgeIntersectionCheckEnabled && (edgeTreatmentForIndex.forceIntersection() || pathOverlapsCorner(this.edgePath, i10) || pathOverlapsCorner(this.edgePath, i11))) {
            Path path = this.edgePath;
            path.op(path, this.boundsPath, Path.Op.DIFFERENCE);
            this.scratch[0] = this.shapePath.getStartX();
            this.scratch[1] = this.shapePath.getStartY();
            this.edgeTransforms[i10].mapPoints(this.scratch);
            Path path2 = this.overlappedEdgePath;
            float[] fArr3 = this.scratch;
            path2.moveTo(fArr3[0], fArr3[1]);
            this.shapePath.applyToPath(this.edgeTransforms[i10], this.overlappedEdgePath);
        } else {
            this.shapePath.applyToPath(this.edgeTransforms[i10], shapeAppearancePathSpec.path);
        }
        PathListener pathListener = shapeAppearancePathSpec.pathListener;
        if (pathListener != null) {
            pathListener.onEdgePathCreated(this.shapePath, this.edgeTransforms[i10], i10);
        }
    }

    private void getCoordinatesOfCorner(int i10, @NonNull RectF rectF, @NonNull PointF pointF) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    pointF.set(rectF.right, rectF.top);
                    return;
                } else {
                    pointF.set(rectF.left, rectF.top);
                    return;
                }
            }
            pointF.set(rectF.left, rectF.bottom);
            return;
        }
        pointF.set(rectF.right, rectF.bottom);
    }

    private CornerSize getCornerSizeForIndex(int i10, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return shapeAppearanceModel.getTopRightCornerSize();
                }
                return shapeAppearanceModel.getTopLeftCornerSize();
            }
            return shapeAppearanceModel.getBottomLeftCornerSize();
        }
        return shapeAppearanceModel.getBottomRightCornerSize();
    }

    private CornerTreatment getCornerTreatmentForIndex(int i10, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return shapeAppearanceModel.getTopRightCorner();
                }
                return shapeAppearanceModel.getTopLeftCorner();
            }
            return shapeAppearanceModel.getBottomLeftCorner();
        }
        return shapeAppearanceModel.getBottomRightCorner();
    }

    private float getEdgeCenterForIndex(@NonNull RectF rectF, int i10) {
        float[] fArr = this.scratch;
        ShapePath shapePath = this.cornerPaths[i10];
        fArr[0] = shapePath.endX;
        fArr[1] = shapePath.endY;
        this.cornerTransforms[i10].mapPoints(fArr);
        if (i10 != 1 && i10 != 3) {
            return Math.abs(rectF.centerY() - this.scratch[1]);
        }
        return Math.abs(rectF.centerX() - this.scratch[0]);
    }

    private EdgeTreatment getEdgeTreatmentForIndex(int i10, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return shapeAppearanceModel.getRightEdge();
                }
                return shapeAppearanceModel.getTopEdge();
            }
            return shapeAppearanceModel.getLeftEdge();
        }
        return shapeAppearanceModel.getBottomEdge();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @UiThread
    public static ShapeAppearancePathProvider getInstance() {
        return Lazy.INSTANCE;
    }

    @RequiresApi(19)
    private boolean pathOverlapsCorner(Path path, int i10) {
        this.cornerPath.reset();
        this.cornerPaths[i10].applyToPath(this.cornerTransforms[i10], this.cornerPath);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.cornerPath.computeBounds(rectF, true);
        path.op(this.cornerPath, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (!rectF.isEmpty()) {
            return true;
        }
        if (rectF.width() > 1.0f && rectF.height() > 1.0f) {
            return true;
        }
        return false;
    }

    private void setCornerPathAndTransform(@NonNull ShapeAppearancePathSpec shapeAppearancePathSpec, int i10) {
        getCornerTreatmentForIndex(i10, shapeAppearancePathSpec.shapeAppearanceModel).getCornerPath(this.cornerPaths[i10], 90.0f, shapeAppearancePathSpec.interpolation, shapeAppearancePathSpec.bounds, getCornerSizeForIndex(i10, shapeAppearancePathSpec.shapeAppearanceModel));
        float angleOfEdge = angleOfEdge(i10);
        this.cornerTransforms[i10].reset();
        getCoordinatesOfCorner(i10, shapeAppearancePathSpec.bounds, this.pointF);
        Matrix matrix = this.cornerTransforms[i10];
        PointF pointF = this.pointF;
        matrix.setTranslate(pointF.x, pointF.y);
        this.cornerTransforms[i10].preRotate(angleOfEdge);
    }

    private void setEdgePathAndTransform(int i10) {
        this.scratch[0] = this.cornerPaths[i10].getEndX();
        this.scratch[1] = this.cornerPaths[i10].getEndY();
        this.cornerTransforms[i10].mapPoints(this.scratch);
        float angleOfEdge = angleOfEdge(i10);
        this.edgeTransforms[i10].reset();
        Matrix matrix = this.edgeTransforms[i10];
        float[] fArr = this.scratch;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.edgeTransforms[i10].preRotate(angleOfEdge);
    }

    public void calculatePath(ShapeAppearanceModel shapeAppearanceModel, float f10, RectF rectF, @NonNull Path path) {
        calculatePath(shapeAppearanceModel, f10, rectF, null, path);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEdgeIntersectionCheckEnable(boolean z10) {
        this.edgeIntersectionCheckEnabled = z10;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void calculatePath(ShapeAppearanceModel shapeAppearanceModel, float f10, RectF rectF, PathListener pathListener, @NonNull Path path) {
        path.rewind();
        this.overlappedEdgePath.rewind();
        this.boundsPath.rewind();
        this.boundsPath.addRect(rectF, Path.Direction.CW);
        ShapeAppearancePathSpec shapeAppearancePathSpec = new ShapeAppearancePathSpec(shapeAppearanceModel, f10, rectF, pathListener, path);
        for (int i10 = 0; i10 < 4; i10++) {
            setCornerPathAndTransform(shapeAppearancePathSpec, i10);
            setEdgePathAndTransform(i10);
        }
        for (int i11 = 0; i11 < 4; i11++) {
            appendCornerPath(shapeAppearancePathSpec, i11);
            appendEdgePath(shapeAppearancePathSpec, i11);
        }
        path.close();
        this.overlappedEdgePath.close();
        if (this.overlappedEdgePath.isEmpty()) {
            return;
        }
        path.op(this.overlappedEdgePath, Path.Op.UNION);
    }
}
