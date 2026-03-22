package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.VirtualLayout;
import androidx.core.internal.view.SupportMenu;
import com.ss.texturerender.TextureRenderKeys;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class Grid extends VirtualLayout {
    private static final boolean DEBUG_BOXES = false;
    public static final int HORIZONTAL = 0;
    private static final String TAG = "Grid";
    public static final int VERTICAL = 1;
    private int[] mBoxViewIds;
    private View[] mBoxViews;
    private int mColumns;
    private int mColumnsSet;
    ConstraintLayout mContainer;
    private float mHorizontalGaps;
    private final int mMaxColumns;
    private final int mMaxRows;
    private int mNextAvailableIndex;
    private int mOrientation;
    private boolean[][] mPositionMatrix;
    private int mRows;
    private int mRowsSet;
    Set<Integer> mSpanIds;
    private String mStrColumnWeights;
    private String mStrRowWeights;
    private String mStrSkips;
    private String mStrSpans;
    private boolean mUseRtl;
    private boolean mValidateInputs;
    private float mVerticalGaps;

    public Grid(Context context) {
        super(context);
        this.mMaxRows = 50;
        this.mMaxColumns = 50;
        this.mNextAvailableIndex = 0;
        this.mSpanIds = new HashSet();
    }

    private boolean arrangeWidgets() {
        View[] views = getViews(this.mContainer);
        for (int i10 = 0; i10 < this.mCount; i10++) {
            if (!this.mSpanIds.contains(Integer.valueOf(this.mIds[i10]))) {
                int nextPosition = getNextPosition();
                int rowByIndex = getRowByIndex(nextPosition);
                int colByIndex = getColByIndex(nextPosition);
                if (nextPosition == -1) {
                    return false;
                }
                connectView(views[i10], rowByIndex, colByIndex, 1, 1);
            }
        }
        return true;
    }

    private void buildBoxes() {
        int max = Math.max(this.mRows, this.mColumns);
        View[] viewArr = this.mBoxViews;
        int i10 = 0;
        if (viewArr == null) {
            this.mBoxViews = new View[max];
            int i11 = 0;
            while (true) {
                View[] viewArr2 = this.mBoxViews;
                if (i11 >= viewArr2.length) {
                    break;
                }
                viewArr2[i11] = makeNewView();
                i11++;
            }
        } else if (max != viewArr.length) {
            View[] viewArr3 = new View[max];
            for (int i12 = 0; i12 < max; i12++) {
                View[] viewArr4 = this.mBoxViews;
                if (i12 < viewArr4.length) {
                    viewArr3[i12] = viewArr4[i12];
                } else {
                    viewArr3[i12] = makeNewView();
                }
            }
            int i13 = max;
            while (true) {
                View[] viewArr5 = this.mBoxViews;
                if (i13 >= viewArr5.length) {
                    break;
                }
                this.mContainer.removeView(viewArr5[i13]);
                i13++;
            }
            this.mBoxViews = viewArr3;
        }
        this.mBoxViewIds = new int[max];
        while (true) {
            View[] viewArr6 = this.mBoxViews;
            if (i10 < viewArr6.length) {
                this.mBoxViewIds[i10] = viewArr6[i10].getId();
                i10++;
            } else {
                setBoxViewVerticalChains();
                setBoxViewHorizontalChains();
                return;
            }
        }
    }

    private void clearHParams(View view) {
        ConstraintLayout.LayoutParams params = params(view);
        params.horizontalWeight = -1.0f;
        params.leftToRight = -1;
        params.leftToLeft = -1;
        params.rightToLeft = -1;
        params.rightToRight = -1;
        ((ViewGroup.MarginLayoutParams) params).leftMargin = -1;
        view.setLayoutParams(params);
    }

    private void clearVParams(View view) {
        ConstraintLayout.LayoutParams params = params(view);
        params.verticalWeight = -1.0f;
        params.topToBottom = -1;
        params.topToTop = -1;
        params.bottomToTop = -1;
        params.bottomToBottom = -1;
        ((ViewGroup.MarginLayoutParams) params).topMargin = -1;
        view.setLayoutParams(params);
    }

    private void connectView(View view, int i10, int i11, int i12, int i13) {
        ConstraintLayout.LayoutParams params = params(view);
        int[] iArr = this.mBoxViewIds;
        params.leftToLeft = iArr[i11];
        params.topToTop = iArr[i10];
        params.rightToRight = iArr[(i11 + i13) - 1];
        params.bottomToBottom = iArr[(i10 + i12) - 1];
        view.setLayoutParams(params);
    }

    private boolean generateGrid(boolean z10) {
        boolean z11;
        int[][] parseSpans;
        int[][] parseSpans2;
        if (this.mContainer == null || this.mRows < 1 || this.mColumns < 1) {
            return false;
        }
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
        buildBoxes();
        String str = this.mStrSkips;
        if (str != null && !str.trim().isEmpty() && (parseSpans2 = parseSpans(this.mStrSkips)) != null) {
            z11 = handleSkips(parseSpans2);
        } else {
            z11 = true;
        }
        String str2 = this.mStrSpans;
        if (str2 != null && !str2.trim().isEmpty() && (parseSpans = parseSpans(this.mStrSpans)) != null) {
            z11 &= handleSpans(this.mIds, parseSpans);
        }
        if (!(z11 & arrangeWidgets()) && this.mValidateInputs) {
            return false;
        }
        return true;
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

    private boolean handleSkips(int[][] iArr) {
        for (int i10 = 0; i10 < iArr.length; i10++) {
            int rowByIndex = getRowByIndex(iArr[i10][0]);
            int colByIndex = getColByIndex(iArr[i10][0]);
            int[] iArr2 = iArr[i10];
            if (!invalidatePositions(rowByIndex, colByIndex, iArr2[1], iArr2[2])) {
                return false;
            }
        }
        return true;
    }

    private boolean handleSpans(int[] iArr, int[][] iArr2) {
        View[] views = getViews(this.mContainer);
        for (int i10 = 0; i10 < iArr2.length; i10++) {
            int rowByIndex = getRowByIndex(iArr2[i10][0]);
            int colByIndex = getColByIndex(iArr2[i10][0]);
            int[] iArr3 = iArr2[i10];
            if (!invalidatePositions(rowByIndex, colByIndex, iArr3[1], iArr3[2])) {
                return false;
            }
            View view = views[i10];
            int[] iArr4 = iArr2[i10];
            connectView(view, rowByIndex, colByIndex, iArr4[1], iArr4[2]);
            this.mSpanIds.add(Integer.valueOf(iArr[i10]));
        }
        return true;
    }

    private void initVariables() {
        boolean[][] zArr = (boolean[][]) Array.newInstance(Boolean.TYPE, this.mRows, this.mColumns);
        this.mPositionMatrix = zArr;
        for (boolean[] zArr2 : zArr) {
            Arrays.fill(zArr2, true);
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

    private boolean isSpansValid(CharSequence charSequence) {
        return true;
    }

    private boolean isWeightsValid(String str) {
        return true;
    }

    private View makeNewView() {
        View view = new View(getContext());
        view.setId(View.generateViewId());
        view.setVisibility(4);
        this.mContainer.addView(view, new ConstraintLayout.LayoutParams(0, 0));
        return view;
    }

    private ConstraintLayout.LayoutParams params(View view) {
        return (ConstraintLayout.LayoutParams) view.getLayoutParams();
    }

    private int[][] parseSpans(String str) {
        if (!isSpansValid(str)) {
            return null;
        }
        String[] split = str.split(",");
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, split.length, 3);
        for (int i10 = 0; i10 < split.length; i10++) {
            String[] split2 = split[i10].trim().split(":");
            String[] split3 = split2[1].split(TextureRenderKeys.KEY_IS_X);
            iArr[i10][0] = Integer.parseInt(split2[0]);
            iArr[i10][1] = Integer.parseInt(split3[0]);
            iArr[i10][2] = Integer.parseInt(split3[1]);
        }
        return iArr;
    }

    private float[] parseWeights(int i10, String str) {
        float[] fArr = null;
        if (str != null && !str.trim().isEmpty()) {
            String[] split = str.split(",");
            if (split.length != i10) {
                return null;
            }
            fArr = new float[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                fArr[i11] = Float.parseFloat(split[i11].trim());
            }
        }
        return fArr;
    }

    private void setBoxViewHorizontalChains() {
        int i10;
        int id2 = getId();
        int max = Math.max(this.mRows, this.mColumns);
        float[] parseWeights = parseWeights(this.mColumns, this.mStrColumnWeights);
        int i11 = 0;
        ConstraintLayout.LayoutParams params = params(this.mBoxViews[0]);
        if (this.mColumns == 1) {
            clearHParams(this.mBoxViews[0]);
            params.leftToLeft = id2;
            params.rightToRight = id2;
            this.mBoxViews[0].setLayoutParams(params);
            return;
        }
        while (true) {
            i10 = this.mColumns;
            if (i11 >= i10) {
                break;
            }
            ConstraintLayout.LayoutParams params2 = params(this.mBoxViews[i11]);
            clearHParams(this.mBoxViews[i11]);
            if (parseWeights != null) {
                params2.horizontalWeight = parseWeights[i11];
            }
            if (i11 > 0) {
                params2.leftToRight = this.mBoxViewIds[i11 - 1];
            } else {
                params2.leftToLeft = id2;
            }
            if (i11 < this.mColumns - 1) {
                params2.rightToLeft = this.mBoxViewIds[i11 + 1];
            } else {
                params2.rightToRight = id2;
            }
            if (i11 > 0) {
                ((ViewGroup.MarginLayoutParams) params2).leftMargin = (int) this.mHorizontalGaps;
            }
            this.mBoxViews[i11].setLayoutParams(params2);
            i11++;
        }
        while (i10 < max) {
            ConstraintLayout.LayoutParams params3 = params(this.mBoxViews[i10]);
            clearHParams(this.mBoxViews[i10]);
            params3.leftToLeft = id2;
            params3.rightToRight = id2;
            this.mBoxViews[i10].setLayoutParams(params3);
            i10++;
        }
    }

    private void setBoxViewVerticalChains() {
        int i10;
        int id2 = getId();
        int max = Math.max(this.mRows, this.mColumns);
        float[] parseWeights = parseWeights(this.mRows, this.mStrRowWeights);
        int i11 = 0;
        if (this.mRows == 1) {
            ConstraintLayout.LayoutParams params = params(this.mBoxViews[0]);
            clearVParams(this.mBoxViews[0]);
            params.topToTop = id2;
            params.bottomToBottom = id2;
            this.mBoxViews[0].setLayoutParams(params);
            return;
        }
        while (true) {
            i10 = this.mRows;
            if (i11 >= i10) {
                break;
            }
            ConstraintLayout.LayoutParams params2 = params(this.mBoxViews[i11]);
            clearVParams(this.mBoxViews[i11]);
            if (parseWeights != null) {
                params2.verticalWeight = parseWeights[i11];
            }
            if (i11 > 0) {
                params2.topToBottom = this.mBoxViewIds[i11 - 1];
            } else {
                params2.topToTop = id2;
            }
            if (i11 < this.mRows - 1) {
                params2.bottomToTop = this.mBoxViewIds[i11 + 1];
            } else {
                params2.bottomToBottom = id2;
            }
            if (i11 > 0) {
                ((ViewGroup.MarginLayoutParams) params2).topMargin = (int) this.mHorizontalGaps;
            }
            this.mBoxViews[i11].setLayoutParams(params2);
            i11++;
        }
        while (i10 < max) {
            ConstraintLayout.LayoutParams params3 = params(this.mBoxViews[i10]);
            clearVParams(this.mBoxViews[i10]);
            params3.topToTop = id2;
            params3.bottomToBottom = id2;
            this.mBoxViews[i10].setLayoutParams(params3);
            i10++;
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
            this.mRows = ((this.mCount + i12) - 1) / i12;
        } else if (i11 > 0) {
            this.mRows = i11;
            this.mColumns = ((this.mCount + i11) - 1) / i11;
        } else {
            int sqrt = (int) (Math.sqrt(this.mCount) + 1.5d);
            this.mRows = sqrt;
            this.mColumns = ((this.mCount + sqrt) - 1) / sqrt;
        }
    }

    public String getColumnWeights() {
        return this.mStrColumnWeights;
    }

    public int getColumns() {
        return this.mColumnsSet;
    }

    public float getHorizontalGaps() {
        return this.mHorizontalGaps;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public String getRowWeights() {
        return this.mStrRowWeights;
    }

    public int getRows() {
        return this.mRowsSet;
    }

    public String getSkips() {
        return this.mStrSkips;
    }

    public String getSpans() {
        return this.mStrSpans;
    }

    public float getVerticalGaps() {
        return this.mVerticalGaps;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    public void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        this.mUseViewMeasure = true;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.Grid);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.Grid_grid_rows) {
                    this.mRowsSet = obtainStyledAttributes.getInteger(index, 0);
                } else if (index == R.styleable.Grid_grid_columns) {
                    this.mColumnsSet = obtainStyledAttributes.getInteger(index, 0);
                } else if (index == R.styleable.Grid_grid_spans) {
                    this.mStrSpans = obtainStyledAttributes.getString(index);
                } else if (index == R.styleable.Grid_grid_skips) {
                    this.mStrSkips = obtainStyledAttributes.getString(index);
                } else if (index == R.styleable.Grid_grid_rowWeights) {
                    this.mStrRowWeights = obtainStyledAttributes.getString(index);
                } else if (index == R.styleable.Grid_grid_columnWeights) {
                    this.mStrColumnWeights = obtainStyledAttributes.getString(index);
                } else if (index == R.styleable.Grid_grid_orientation) {
                    this.mOrientation = obtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.Grid_grid_horizontalGaps) {
                    this.mHorizontalGaps = obtainStyledAttributes.getDimension(index, 0.0f);
                } else if (index == R.styleable.Grid_grid_verticalGaps) {
                    this.mVerticalGaps = obtainStyledAttributes.getDimension(index, 0.0f);
                } else if (index == R.styleable.Grid_grid_validateInputs) {
                    this.mValidateInputs = obtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.Grid_grid_useRtl) {
                    this.mUseRtl = obtainStyledAttributes.getBoolean(index, false);
                }
            }
            updateActualRowsAndColumns();
            initVariables();
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mContainer = (ConstraintLayout) getParent();
        generateGrid(false);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        super.onDraw(canvas);
        if (!isInEditMode()) {
            return;
        }
        Paint paint = new Paint();
        paint.setColor(SupportMenu.CATEGORY_MASK);
        paint.setStyle(Paint.Style.STROKE);
        int top = getTop();
        int left = getLeft();
        int bottom = getBottom();
        int right = getRight();
        View[] viewArr = this.mBoxViews;
        int length = viewArr.length;
        int i10 = 0;
        while (i10 < length) {
            View view = viewArr[i10];
            int top2 = view.getTop() - top;
            int bottom2 = view.getBottom() - top;
            canvas.drawRect(view.getLeft() - left, 0.0f, view.getRight() - left, bottom - top, paint);
            canvas.drawRect(0.0f, top2, right - left, bottom2, paint);
            i10++;
            top = top;
        }
    }

    public void setColumnWeights(String str) {
        if (!isWeightsValid(str)) {
            return;
        }
        String str2 = this.mStrColumnWeights;
        if (str2 != null && str2.equals(str)) {
            return;
        }
        this.mStrColumnWeights = str;
        generateGrid(true);
        invalidate();
    }

    public void setColumns(int i10) {
        if (i10 > 50 || this.mColumnsSet == i10) {
            return;
        }
        this.mColumnsSet = i10;
        updateActualRowsAndColumns();
        initVariables();
        generateGrid(false);
        invalidate();
    }

    public void setHorizontalGaps(float f10) {
        if (f10 < 0.0f || this.mHorizontalGaps == f10) {
            return;
        }
        this.mHorizontalGaps = f10;
        generateGrid(true);
        invalidate();
    }

    public void setOrientation(int i10) {
        if ((i10 != 0 && i10 != 1) || this.mOrientation == i10) {
            return;
        }
        this.mOrientation = i10;
        generateGrid(true);
        invalidate();
    }

    public void setRowWeights(String str) {
        if (!isWeightsValid(str)) {
            return;
        }
        String str2 = this.mStrRowWeights;
        if (str2 != null && str2.equals(str)) {
            return;
        }
        this.mStrRowWeights = str;
        generateGrid(true);
        invalidate();
    }

    public void setRows(int i10) {
        if (i10 > 50 || this.mRowsSet == i10) {
            return;
        }
        this.mRowsSet = i10;
        updateActualRowsAndColumns();
        initVariables();
        generateGrid(false);
        invalidate();
    }

    public void setSkips(String str) {
        if (!isSpansValid(str)) {
            return;
        }
        String str2 = this.mStrSkips;
        if (str2 != null && str2.equals(str)) {
            return;
        }
        this.mStrSkips = str;
        generateGrid(true);
        invalidate();
    }

    public void setSpans(CharSequence charSequence) {
        if (!isSpansValid(charSequence)) {
            return;
        }
        String str = this.mStrSpans;
        if (str != null && str.contentEquals(charSequence)) {
            return;
        }
        this.mStrSpans = charSequence.toString();
        generateGrid(true);
        invalidate();
    }

    public void setVerticalGaps(float f10) {
        if (f10 < 0.0f || this.mVerticalGaps == f10) {
            return;
        }
        this.mVerticalGaps = f10;
        generateGrid(true);
        invalidate();
    }

    public Grid(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMaxRows = 50;
        this.mMaxColumns = 50;
        this.mNextAvailableIndex = 0;
        this.mSpanIds = new HashSet();
    }

    public Grid(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mMaxRows = 50;
        this.mMaxColumns = 50;
        this.mNextAvailableIndex = 0;
        this.mSpanIds = new HashSet();
    }
}
