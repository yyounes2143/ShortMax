package androidx.constraintlayout.core.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import com.ss.texturerender.TextureRenderKeys;
import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class GridCore extends VirtualLayout {
    private static final int DEFAULT_SIZE = 3;
    public static final int HORIZONTAL = 0;
    private static final int MAX_COLUMNS = 50;
    private static final int MAX_ROWS = 50;
    public static final int SPANS_RESPECT_WIDGET_ORDER = 2;
    public static final int SUB_GRID_BY_COL_ROW = 1;
    public static final int VERTICAL = 1;
    private ConstraintWidget[] mBoxWidgets;
    private String mColumnWeights;
    private int mColumns;
    private int mColumnsSet;
    private int[][] mConstraintMatrix;
    ConstraintWidgetContainer mContainer;
    private int mFlags;
    private float mHorizontalGaps;
    private int mOrientation;
    private boolean[][] mPositionMatrix;
    private String mRowWeights;
    private int mRows;
    private int mRowsSet;
    private String mSkips;
    private int[][] mSpanMatrix;
    private String mSpans;
    private float mVerticalGaps;
    private boolean mExtraSpaceHandled = false;
    private int mNextAvailableIndex = 0;
    Set<String> mSpanIds = new HashSet();
    private int mSpanIndex = 0;

    public GridCore() {
        updateActualRowsAndColumns();
        initMatrices();
    }

    private void addConstraints() {
        setBoxWidgetVerticalChains();
        setBoxWidgetHorizontalChains();
        arrangeWidgets();
    }

    private void arrangeWidgets() {
        int[][] iArr;
        int i10;
        for (int i11 = 0; i11 < this.mWidgetsCount; i11++) {
            if (!this.mSpanIds.contains(this.mWidgets[i11].stringId)) {
                int nextPosition = getNextPosition();
                int rowByIndex = getRowByIndex(nextPosition);
                int colByIndex = getColByIndex(nextPosition);
                if (nextPosition == -1) {
                    return;
                }
                if (isSpansRespectWidgetOrder() && (iArr = this.mSpanMatrix) != null && (i10 = this.mSpanIndex) < iArr.length) {
                    int[] iArr2 = iArr[i10];
                    if (iArr2[0] == nextPosition) {
                        this.mPositionMatrix[rowByIndex][colByIndex] = true;
                        if (invalidatePositions(rowByIndex, colByIndex, iArr2[1], iArr2[2])) {
                            ConstraintWidget constraintWidget = this.mWidgets[i11];
                            int[] iArr3 = this.mSpanMatrix[this.mSpanIndex];
                            connectWidget(constraintWidget, rowByIndex, colByIndex, iArr3[1], iArr3[2]);
                            this.mSpanIndex++;
                        }
                    }
                }
                connectWidget(this.mWidgets[i11], rowByIndex, colByIndex, 1, 1);
            }
        }
    }

    private void clearHorizontalAttributes(ConstraintWidget constraintWidget) {
        constraintWidget.setHorizontalWeight(-1.0f);
        constraintWidget.mLeft.reset();
        constraintWidget.mRight.reset();
    }

    private void clearVerticalAttributes(ConstraintWidget constraintWidget) {
        constraintWidget.setVerticalWeight(-1.0f);
        constraintWidget.mTop.reset();
        constraintWidget.mBottom.reset();
        constraintWidget.mBaseline.reset();
    }

    private void connectWidget(ConstraintWidget constraintWidget, int i10, int i11, int i12, int i13) {
        constraintWidget.mLeft.connect(this.mBoxWidgets[i11].mLeft, 0);
        constraintWidget.mTop.connect(this.mBoxWidgets[i10].mTop, 0);
        constraintWidget.mRight.connect(this.mBoxWidgets[(i11 + i13) - 1].mRight, 0);
        constraintWidget.mBottom.connect(this.mBoxWidgets[(i10 + i12) - 1].mBottom, 0);
    }

    private void createBoxes() {
        int max = Math.max(this.mRows, this.mColumns);
        ConstraintWidget[] constraintWidgetArr = this.mBoxWidgets;
        int i10 = 0;
        if (constraintWidgetArr == null) {
            this.mBoxWidgets = new ConstraintWidget[max];
            while (true) {
                ConstraintWidget[] constraintWidgetArr2 = this.mBoxWidgets;
                if (i10 < constraintWidgetArr2.length) {
                    constraintWidgetArr2[i10] = makeNewWidget();
                    i10++;
                } else {
                    return;
                }
            }
        } else if (max != constraintWidgetArr.length) {
            ConstraintWidget[] constraintWidgetArr3 = new ConstraintWidget[max];
            while (i10 < max) {
                ConstraintWidget[] constraintWidgetArr4 = this.mBoxWidgets;
                if (i10 < constraintWidgetArr4.length) {
                    constraintWidgetArr3[i10] = constraintWidgetArr4[i10];
                } else {
                    constraintWidgetArr3[i10] = makeNewWidget();
                }
                i10++;
            }
            while (true) {
                ConstraintWidget[] constraintWidgetArr5 = this.mBoxWidgets;
                if (max < constraintWidgetArr5.length) {
                    this.mContainer.remove(constraintWidgetArr5[max]);
                    max++;
                } else {
                    this.mBoxWidgets = constraintWidgetArr3;
                    return;
                }
            }
        }
    }

    private void fillConstraintMatrix(boolean z10) {
        int[][] parseSpans;
        int[][] parseSpans2;
        if (z10) {
            for (int i10 = 0; i10 < this.mPositionMatrix.length; i10++) {
                int i11 = 0;
                while (true) {
                    boolean[][] zArr = this.mPositionMatrix;
                    if (i11 < zArr[0].length) {
                        zArr[i10][i11] = true;
                        i11++;
                    }
                }
            }
            for (int i12 = 0; i12 < this.mConstraintMatrix.length; i12++) {
                int i13 = 0;
                while (true) {
                    int[][] iArr = this.mConstraintMatrix;
                    if (i13 < iArr[0].length) {
                        iArr[i12][i13] = -1;
                        i13++;
                    }
                }
            }
        }
        this.mNextAvailableIndex = 0;
        String str = this.mSkips;
        if (str != null && !str.trim().isEmpty() && (parseSpans2 = parseSpans(this.mSkips, false)) != null) {
            handleSkips(parseSpans2);
        }
        String str2 = this.mSpans;
        if (str2 != null && !str2.trim().isEmpty() && (parseSpans = parseSpans(this.mSpans, true)) != null) {
            handleSpans(parseSpans);
        }
    }

    private int getColByIndex(int i10) {
        if (this.mOrientation == 1) {
            return i10 / this.mRows;
        }
        return i10 % this.mColumns;
    }

    private int getNextPosition() {
        boolean z10 = false;
        int i10 = 0;
        while (!z10) {
            i10 = this.mNextAvailableIndex;
            if (i10 >= this.mRows * this.mColumns) {
                return -1;
            }
            int rowByIndex = getRowByIndex(i10);
            int colByIndex = getColByIndex(this.mNextAvailableIndex);
            boolean[] zArr = this.mPositionMatrix[rowByIndex];
            if (zArr[colByIndex]) {
                zArr[colByIndex] = false;
                z10 = true;
            }
            this.mNextAvailableIndex++;
        }
        return i10;
    }

    private int getRowByIndex(int i10) {
        if (this.mOrientation == 1) {
            return i10 % this.mRows;
        }
        return i10 / this.mColumns;
    }

    private void handleSkips(int[][] iArr) {
        for (int[] iArr2 : iArr) {
            if (!invalidatePositions(getRowByIndex(iArr2[0]), getColByIndex(iArr2[0]), iArr2[1], iArr2[2])) {
                return;
            }
        }
    }

    private void handleSpans(int[][] iArr) {
        if (isSpansRespectWidgetOrder()) {
            return;
        }
        for (int i10 = 0; i10 < iArr.length; i10++) {
            int rowByIndex = getRowByIndex(iArr[i10][0]);
            int colByIndex = getColByIndex(iArr[i10][0]);
            int[] iArr2 = iArr[i10];
            if (!invalidatePositions(rowByIndex, colByIndex, iArr2[1], iArr2[2])) {
                return;
            }
            ConstraintWidget constraintWidget = this.mWidgets[i10];
            int[] iArr3 = iArr[i10];
            connectWidget(constraintWidget, rowByIndex, colByIndex, iArr3[1], iArr3[2]);
            this.mSpanIds.add(this.mWidgets[i10].stringId);
        }
    }

    private void initMatrices() {
        boolean[][] zArr;
        int[][] iArr = this.mConstraintMatrix;
        boolean z10 = false;
        if (iArr != null && iArr.length == this.mWidgetsCount && (zArr = this.mPositionMatrix) != null && zArr.length == this.mRows && zArr[0].length == this.mColumns) {
            z10 = true;
        }
        if (!z10) {
            initVariables();
        }
        fillConstraintMatrix(z10);
    }

    private void initVariables() {
        boolean[][] zArr = (boolean[][]) Array.newInstance(Boolean.TYPE, this.mRows, this.mColumns);
        this.mPositionMatrix = zArr;
        for (boolean[] zArr2 : zArr) {
            Arrays.fill(zArr2, true);
        }
        int i10 = this.mWidgetsCount;
        if (i10 > 0) {
            int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, i10, 4);
            this.mConstraintMatrix = iArr;
            for (int[] iArr2 : iArr) {
                Arrays.fill(iArr2, -1);
            }
        }
    }

    private boolean invalidatePositions(int i10, int i11, int i12, int i13) {
        for (int i14 = i10; i14 < i10 + i12; i14++) {
            for (int i15 = i11; i15 < i11 + i13; i15++) {
                boolean[][] zArr = this.mPositionMatrix;
                if (i14 < zArr.length && i15 < zArr[0].length) {
                    boolean[] zArr2 = zArr[i14];
                    if (zArr2[i15]) {
                        zArr2[i15] = false;
                    }
                }
                return false;
            }
        }
        return true;
    }

    private boolean isSpansRespectWidgetOrder() {
        if ((this.mFlags & 2) > 0) {
            return true;
        }
        return false;
    }

    private boolean isSubGridByColRow() {
        if ((this.mFlags & 1) > 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$parseSpans$0(String str, String str2) {
        return Integer.parseInt(str.split(":")[0]) - Integer.parseInt(str2.split(":")[0]);
    }

    private ConstraintWidget makeNewWidget() {
        ConstraintWidget constraintWidget = new ConstraintWidget();
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        constraintWidget.stringId = String.valueOf(constraintWidget.hashCode());
        return constraintWidget;
    }

    private int[][] parseSpans(String str, boolean z10) {
        try {
            String[] split = str.split(",");
            Arrays.sort(split, new Comparator() { // from class: androidx.constraintlayout.core.utils.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int lambda$parseSpans$0;
                    lambda$parseSpans$0 = GridCore.lambda$parseSpans$0((String) obj, (String) obj2);
                    return lambda$parseSpans$0;
                }
            });
            int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, split.length, 3);
            if (this.mRows != 1 && this.mColumns != 1) {
                for (int i10 = 0; i10 < split.length; i10++) {
                    String[] split2 = split[i10].trim().split(":");
                    String[] split3 = split2[1].split(TextureRenderKeys.KEY_IS_X);
                    iArr[i10][0] = Integer.parseInt(split2[0]);
                    if (isSubGridByColRow()) {
                        iArr[i10][1] = Integer.parseInt(split3[1]);
                        iArr[i10][2] = Integer.parseInt(split3[0]);
                    } else {
                        iArr[i10][1] = Integer.parseInt(split3[0]);
                        iArr[i10][2] = Integer.parseInt(split3[1]);
                    }
                }
                return iArr;
            }
            int i11 = 0;
            int i12 = 0;
            for (int i13 = 0; i13 < split.length; i13++) {
                String[] split4 = split[i13].trim().split(":");
                iArr[i13][0] = Integer.parseInt(split4[0]);
                int[] iArr2 = iArr[i13];
                iArr2[1] = 1;
                iArr2[2] = 1;
                if (this.mColumns == 1) {
                    iArr2[1] = Integer.parseInt(split4[1]);
                    i11 += iArr[i13][1];
                    if (z10) {
                        i11--;
                    }
                }
                if (this.mRows == 1) {
                    iArr[i13][2] = Integer.parseInt(split4[1]);
                    i12 += iArr[i13][2];
                    if (z10) {
                        i12--;
                    }
                }
            }
            if (i11 != 0 && !this.mExtraSpaceHandled) {
                setRows(this.mRows + i11);
            }
            if (i12 != 0 && !this.mExtraSpaceHandled) {
                setColumns(this.mColumns + i12);
            }
            this.mExtraSpaceHandled = true;
            return iArr;
        } catch (Exception unused) {
            return null;
        }
    }

    private float[] parseWeights(int i10, String str) {
        if (str != null && !str.trim().isEmpty()) {
            String[] split = str.split(",");
            float[] fArr = new float[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                if (i11 < split.length) {
                    try {
                        fArr[i11] = Float.parseFloat(split[i11]);
                    } catch (Exception e10) {
                        PrintStream printStream = System.err;
                        printStream.println("Error parsing `" + split[i11] + "`: " + e10.getMessage());
                        fArr[i11] = 1.0f;
                    }
                } else {
                    fArr[i11] = 1.0f;
                }
            }
            return fArr;
        }
        return null;
    }

    private void setBoxWidgetHorizontalChains() {
        int i10;
        int max = Math.max(this.mRows, this.mColumns);
        ConstraintWidget constraintWidget = this.mBoxWidgets[0];
        float[] parseWeights = parseWeights(this.mColumns, this.mColumnWeights);
        if (this.mColumns == 1) {
            clearHorizontalAttributes(constraintWidget);
            constraintWidget.mLeft.connect(this.mLeft, 0);
            constraintWidget.mRight.connect(this.mRight, 0);
            return;
        }
        int i11 = 0;
        while (true) {
            i10 = this.mColumns;
            if (i11 >= i10) {
                break;
            }
            ConstraintWidget constraintWidget2 = this.mBoxWidgets[i11];
            clearHorizontalAttributes(constraintWidget2);
            if (parseWeights != null) {
                constraintWidget2.setHorizontalWeight(parseWeights[i11]);
            }
            if (i11 > 0) {
                constraintWidget2.mLeft.connect(this.mBoxWidgets[i11 - 1].mRight, 0);
            } else {
                constraintWidget2.mLeft.connect(this.mLeft, 0);
            }
            if (i11 < this.mColumns - 1) {
                constraintWidget2.mRight.connect(this.mBoxWidgets[i11 + 1].mLeft, 0);
            } else {
                constraintWidget2.mRight.connect(this.mRight, 0);
            }
            if (i11 > 0) {
                constraintWidget2.mLeft.mMargin = (int) this.mHorizontalGaps;
            }
            i11++;
        }
        while (i10 < max) {
            ConstraintWidget constraintWidget3 = this.mBoxWidgets[i10];
            clearHorizontalAttributes(constraintWidget3);
            constraintWidget3.mLeft.connect(this.mLeft, 0);
            constraintWidget3.mRight.connect(this.mRight, 0);
            i10++;
        }
    }

    private void setBoxWidgetVerticalChains() {
        int i10;
        int max = Math.max(this.mRows, this.mColumns);
        ConstraintWidget constraintWidget = this.mBoxWidgets[0];
        float[] parseWeights = parseWeights(this.mRows, this.mRowWeights);
        if (this.mRows == 1) {
            clearVerticalAttributes(constraintWidget);
            constraintWidget.mTop.connect(this.mTop, 0);
            constraintWidget.mBottom.connect(this.mBottom, 0);
            return;
        }
        int i11 = 0;
        while (true) {
            i10 = this.mRows;
            if (i11 >= i10) {
                break;
            }
            ConstraintWidget constraintWidget2 = this.mBoxWidgets[i11];
            clearVerticalAttributes(constraintWidget2);
            if (parseWeights != null) {
                constraintWidget2.setVerticalWeight(parseWeights[i11]);
            }
            if (i11 > 0) {
                constraintWidget2.mTop.connect(this.mBoxWidgets[i11 - 1].mBottom, 0);
            } else {
                constraintWidget2.mTop.connect(this.mTop, 0);
            }
            if (i11 < this.mRows - 1) {
                constraintWidget2.mBottom.connect(this.mBoxWidgets[i11 + 1].mTop, 0);
            } else {
                constraintWidget2.mBottom.connect(this.mBottom, 0);
            }
            if (i11 > 0) {
                constraintWidget2.mTop.mMargin = (int) this.mVerticalGaps;
            }
            i11++;
        }
        while (i10 < max) {
            ConstraintWidget constraintWidget3 = this.mBoxWidgets[i10];
            clearVerticalAttributes(constraintWidget3);
            constraintWidget3.mTop.connect(this.mTop, 0);
            constraintWidget3.mBottom.connect(this.mBottom, 0);
            i10++;
        }
    }

    private void setupGrid(boolean z10) {
        int[][] parseSpans;
        if (this.mRows >= 1 && this.mColumns >= 1) {
            if (z10) {
                for (int i10 = 0; i10 < this.mPositionMatrix.length; i10++) {
                    int i11 = 0;
                    while (true) {
                        boolean[][] zArr = this.mPositionMatrix;
                        if (i11 < zArr[0].length) {
                            zArr[i10][i11] = true;
                            i11++;
                        }
                    }
                }
                this.mSpanIds.clear();
            }
            this.mNextAvailableIndex = 0;
            String str = this.mSkips;
            if (str != null && !str.trim().isEmpty() && (parseSpans = parseSpans(this.mSkips, false)) != null) {
                handleSkips(parseSpans);
            }
            String str2 = this.mSpans;
            if (str2 != null && !str2.trim().isEmpty()) {
                this.mSpanMatrix = parseSpans(this.mSpans, true);
            }
            createBoxes();
            int[][] iArr = this.mSpanMatrix;
            if (iArr != null) {
                handleSpans(iArr);
            }
        }
    }

    private void updateActualRowsAndColumns() {
        int i10;
        int i11 = this.mRowsSet;
        if (i11 != 0 && (i10 = this.mColumnsSet) != 0) {
            this.mRows = i11;
            this.mColumns = i10;
            return;
        }
        int i12 = this.mColumnsSet;
        if (i12 > 0) {
            this.mColumns = i12;
            this.mRows = ((this.mWidgetsCount + i12) - 1) / i12;
        } else if (i11 > 0) {
            this.mRows = i11;
            this.mColumns = ((this.mWidgetsCount + i11) - 1) / i11;
        } else {
            int sqrt = (int) (Math.sqrt(this.mWidgetsCount) + 1.5d);
            this.mRows = sqrt;
            this.mColumns = ((this.mWidgetsCount + sqrt) - 1) / sqrt;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(@Nullable LinearSystem linearSystem, boolean z10) {
        super.addToSolver(linearSystem, z10);
        addConstraints();
    }

    @Nullable
    public String getColumnWeights() {
        return this.mColumnWeights;
    }

    @Nullable
    public ConstraintWidgetContainer getContainer() {
        return this.mContainer;
    }

    public int getFlags() {
        return this.mFlags;
    }

    public float getHorizontalGaps() {
        return this.mHorizontalGaps;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    @Nullable
    public String getRowWeights() {
        return this.mRowWeights;
    }

    public float getVerticalGaps() {
        return this.mVerticalGaps;
    }

    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public void measure(int i10, int i11, int i12, int i13) {
        super.measure(i10, i11, i12, i13);
        this.mContainer = (ConstraintWidgetContainer) getParent();
        setupGrid(false);
        this.mContainer.add(this.mBoxWidgets);
    }

    public void setColumnWeights(@NonNull String str) {
        String str2 = this.mColumnWeights;
        if (str2 != null && str2.equals(str)) {
            return;
        }
        this.mColumnWeights = str;
    }

    public void setColumns(int i10) {
        if (i10 > 50 || this.mColumnsSet == i10) {
            return;
        }
        this.mColumnsSet = i10;
        updateActualRowsAndColumns();
        initVariables();
    }

    public void setContainer(@NonNull ConstraintWidgetContainer constraintWidgetContainer) {
        this.mContainer = constraintWidgetContainer;
    }

    public void setFlags(int i10) {
        this.mFlags = i10;
    }

    public void setHorizontalGaps(float f10) {
        if (f10 < 0.0f || this.mHorizontalGaps == f10) {
            return;
        }
        this.mHorizontalGaps = f10;
    }

    public void setOrientation(int i10) {
        if ((i10 != 0 && i10 != 1) || this.mOrientation == i10) {
            return;
        }
        this.mOrientation = i10;
    }

    public void setRowWeights(@NonNull String str) {
        String str2 = this.mRowWeights;
        if (str2 != null && str2.equals(str)) {
            return;
        }
        this.mRowWeights = str;
    }

    public void setRows(int i10) {
        if (i10 > 50 || this.mRowsSet == i10) {
            return;
        }
        this.mRowsSet = i10;
        updateActualRowsAndColumns();
        initVariables();
    }

    public void setSkips(@NonNull String str) {
        String str2 = this.mSkips;
        if (str2 != null && str2.equals(str)) {
            return;
        }
        this.mExtraSpaceHandled = false;
        this.mSkips = str;
    }

    public void setSpans(@NonNull CharSequence charSequence) {
        String str = this.mSpans;
        if (str != null && str.equals(charSequence.toString())) {
            return;
        }
        this.mExtraSpaceHandled = false;
        this.mSpans = charSequence.toString();
    }

    public void setVerticalGaps(float f10) {
        if (f10 < 0.0f || this.mVerticalGaps == f10) {
            return;
        }
        this.mVerticalGaps = f10;
    }

    public GridCore(int i10, int i11) {
        this.mRowsSet = i10;
        this.mColumnsSet = i11;
        if (i10 > 50) {
            this.mRowsSet = 3;
        }
        if (i11 > 50) {
            this.mColumnsSet = 3;
        }
        updateActualRowsAndColumns();
        initMatrices();
    }
}
