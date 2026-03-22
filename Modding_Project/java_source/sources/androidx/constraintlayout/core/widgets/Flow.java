package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public class Flow extends VirtualLayout {
    public static final int HORIZONTAL_ALIGN_CENTER = 2;
    public static final int HORIZONTAL_ALIGN_END = 1;
    public static final int HORIZONTAL_ALIGN_START = 0;
    public static final int VERTICAL_ALIGN_BASELINE = 3;
    public static final int VERTICAL_ALIGN_BOTTOM = 1;
    public static final int VERTICAL_ALIGN_CENTER = 2;
    public static final int VERTICAL_ALIGN_TOP = 0;
    public static final int WRAP_ALIGNED = 2;
    public static final int WRAP_CHAIN = 1;
    public static final int WRAP_CHAIN_NEW = 3;
    public static final int WRAP_NONE = 0;
    private ConstraintWidget[] mDisplayedWidgets;
    private int mHorizontalStyle = -1;
    private int mVerticalStyle = -1;
    private int mFirstHorizontalStyle = -1;
    private int mFirstVerticalStyle = -1;
    private int mLastHorizontalStyle = -1;
    private int mLastVerticalStyle = -1;
    private float mHorizontalBias = 0.5f;
    private float mVerticalBias = 0.5f;
    private float mFirstHorizontalBias = 0.5f;
    private float mFirstVerticalBias = 0.5f;
    private float mLastHorizontalBias = 0.5f;
    private float mLastVerticalBias = 0.5f;
    private int mHorizontalGap = 0;
    private int mVerticalGap = 0;
    private int mHorizontalAlign = 2;
    private int mVerticalAlign = 2;
    private int mWrapMode = 0;
    private int mMaxElementsWrap = -1;
    private int mOrientation = 0;
    private ArrayList<WidgetsList> mChainList = new ArrayList<>();
    private ConstraintWidget[] mAlignedBiggestElementsInRows = null;
    private ConstraintWidget[] mAlignedBiggestElementsInCols = null;
    private int[] mAlignedDimensions = null;
    private int mDisplayedWidgetsCount = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class WidgetsList {
        private ConstraintAnchor mBottom;
        private ConstraintAnchor mLeft;
        private int mMax;
        private int mOrientation;
        private int mPaddingBottom;
        private int mPaddingLeft;
        private int mPaddingRight;
        private int mPaddingTop;
        private ConstraintAnchor mRight;
        private ConstraintAnchor mTop;
        private ConstraintWidget mBiggest = null;
        int mBiggestDimension = 0;
        private int mWidth = 0;
        private int mHeight = 0;
        private int mStartIndex = 0;
        private int mCount = 0;
        private int mNbMatchConstraintsWidgets = 0;

        WidgetsList(int i10, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i11) {
            this.mPaddingLeft = 0;
            this.mPaddingTop = 0;
            this.mPaddingRight = 0;
            this.mPaddingBottom = 0;
            this.mMax = 0;
            this.mOrientation = i10;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = Flow.this.getPaddingLeft();
            this.mPaddingTop = Flow.this.getPaddingTop();
            this.mPaddingRight = Flow.this.getPaddingRight();
            this.mPaddingBottom = Flow.this.getPaddingBottom();
            this.mMax = i11;
        }

        private void recomputeDimensions() {
            this.mWidth = 0;
            this.mHeight = 0;
            this.mBiggest = null;
            this.mBiggestDimension = 0;
            int i10 = this.mCount;
            for (int i11 = 0; i11 < i10 && this.mStartIndex + i11 < Flow.this.mDisplayedWidgetsCount; i11++) {
                ConstraintWidget constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + i11];
                if (this.mOrientation != 0) {
                    int widgetWidth = Flow.this.getWidgetWidth(constraintWidget, this.mMax);
                    int widgetHeight = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                    int i12 = Flow.this.mVerticalGap;
                    if (constraintWidget.getVisibility() == 8) {
                        i12 = 0;
                    }
                    this.mHeight += widgetHeight + i12;
                    if (this.mBiggest == null || this.mBiggestDimension < widgetWidth) {
                        this.mBiggest = constraintWidget;
                        this.mBiggestDimension = widgetWidth;
                        this.mWidth = widgetWidth;
                    }
                } else {
                    int width = constraintWidget.getWidth();
                    int i13 = Flow.this.mHorizontalGap;
                    if (constraintWidget.getVisibility() == 8) {
                        i13 = 0;
                    }
                    this.mWidth += width + i13;
                    int widgetHeight2 = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                    if (this.mBiggest == null || this.mBiggestDimension < widgetHeight2) {
                        this.mBiggest = constraintWidget;
                        this.mBiggestDimension = widgetHeight2;
                        this.mHeight = widgetHeight2;
                    }
                }
            }
        }

        public void add(ConstraintWidget constraintWidget) {
            int i10 = 0;
            if (this.mOrientation == 0) {
                int widgetWidth = Flow.this.getWidgetWidth(constraintWidget, this.mMax);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    widgetWidth = 0;
                }
                int i11 = Flow.this.mHorizontalGap;
                if (constraintWidget.getVisibility() != 8) {
                    i10 = i11;
                }
                this.mWidth += widgetWidth + i10;
                int widgetHeight = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                if (this.mBiggest == null || this.mBiggestDimension < widgetHeight) {
                    this.mBiggest = constraintWidget;
                    this.mBiggestDimension = widgetHeight;
                    this.mHeight = widgetHeight;
                }
            } else {
                int widgetWidth2 = Flow.this.getWidgetWidth(constraintWidget, this.mMax);
                int widgetHeight2 = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    widgetHeight2 = 0;
                }
                int i12 = Flow.this.mVerticalGap;
                if (constraintWidget.getVisibility() != 8) {
                    i10 = i12;
                }
                this.mHeight += widgetHeight2 + i10;
                if (this.mBiggest == null || this.mBiggestDimension < widgetWidth2) {
                    this.mBiggest = constraintWidget;
                    this.mBiggestDimension = widgetWidth2;
                    this.mWidth = widgetWidth2;
                }
            }
            this.mCount++;
        }

        public void clear() {
            this.mBiggestDimension = 0;
            this.mBiggest = null;
            this.mWidth = 0;
            this.mHeight = 0;
            this.mStartIndex = 0;
            this.mCount = 0;
            this.mNbMatchConstraintsWidgets = 0;
        }

        public void createConstraints(boolean z10, int i10, boolean z11) {
            boolean z12;
            ConstraintWidget constraintWidget;
            int i11;
            char c10;
            float f10;
            float f11;
            int i12;
            int i13;
            int i14 = this.mCount;
            for (int i15 = 0; i15 < i14 && this.mStartIndex + i15 < Flow.this.mDisplayedWidgetsCount; i15++) {
                ConstraintWidget constraintWidget2 = Flow.this.mDisplayedWidgets[this.mStartIndex + i15];
                if (constraintWidget2 != null) {
                    constraintWidget2.resetAnchors();
                }
            }
            if (i14 != 0 && this.mBiggest != null) {
                if (z11 && i10 == 0) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                int i16 = -1;
                int i17 = -1;
                for (int i18 = 0; i18 < i14; i18++) {
                    if (z10) {
                        i13 = (i14 - 1) - i18;
                    } else {
                        i13 = i18;
                    }
                    if (this.mStartIndex + i13 >= Flow.this.mDisplayedWidgetsCount) {
                        break;
                    }
                    ConstraintWidget constraintWidget3 = Flow.this.mDisplayedWidgets[this.mStartIndex + i13];
                    if (constraintWidget3 != null && constraintWidget3.getVisibility() == 0) {
                        if (i16 == -1) {
                            i16 = i18;
                        }
                        i17 = i18;
                    }
                }
                ConstraintWidget constraintWidget4 = null;
                if (this.mOrientation == 0) {
                    ConstraintWidget constraintWidget5 = this.mBiggest;
                    constraintWidget5.setVerticalChainStyle(Flow.this.mVerticalStyle);
                    int i19 = this.mPaddingTop;
                    if (i10 > 0) {
                        i19 += Flow.this.mVerticalGap;
                    }
                    constraintWidget5.mTop.connect(this.mTop, i19);
                    if (z11) {
                        constraintWidget5.mBottom.connect(this.mBottom, this.mPaddingBottom);
                    }
                    if (i10 > 0) {
                        this.mTop.mOwner.mBottom.connect(constraintWidget5.mTop, 0);
                    }
                    char c11 = 3;
                    if (Flow.this.mVerticalAlign == 3 && !constraintWidget5.hasBaseline()) {
                        for (int i20 = 0; i20 < i14; i20++) {
                            if (z10) {
                                i12 = (i14 - 1) - i20;
                            } else {
                                i12 = i20;
                            }
                            if (this.mStartIndex + i12 >= Flow.this.mDisplayedWidgetsCount) {
                                break;
                            }
                            constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + i12];
                            if (constraintWidget.hasBaseline()) {
                                break;
                            }
                        }
                    }
                    constraintWidget = constraintWidget5;
                    int i21 = 0;
                    while (i21 < i14) {
                        if (z10) {
                            i11 = (i14 - 1) - i21;
                        } else {
                            i11 = i21;
                        }
                        if (this.mStartIndex + i11 < Flow.this.mDisplayedWidgetsCount) {
                            ConstraintWidget constraintWidget6 = Flow.this.mDisplayedWidgets[this.mStartIndex + i11];
                            if (constraintWidget6 == null) {
                                constraintWidget6 = constraintWidget4;
                                c10 = c11;
                            } else {
                                if (i21 == 0) {
                                    constraintWidget6.connect(constraintWidget6.mLeft, this.mLeft, this.mPaddingLeft);
                                }
                                if (i11 == 0) {
                                    int i22 = Flow.this.mHorizontalStyle;
                                    float f12 = Flow.this.mHorizontalBias;
                                    if (z10) {
                                        f12 = 1.0f - f12;
                                    }
                                    if (this.mStartIndex == 0 && Flow.this.mFirstHorizontalStyle != -1) {
                                        i22 = Flow.this.mFirstHorizontalStyle;
                                        if (z10) {
                                            f11 = Flow.this.mFirstHorizontalBias;
                                            f10 = 1.0f - f11;
                                            f12 = f10;
                                        } else {
                                            f10 = Flow.this.mFirstHorizontalBias;
                                            f12 = f10;
                                        }
                                    } else if (z11 && Flow.this.mLastHorizontalStyle != -1) {
                                        i22 = Flow.this.mLastHorizontalStyle;
                                        if (z10) {
                                            f11 = Flow.this.mLastHorizontalBias;
                                            f10 = 1.0f - f11;
                                            f12 = f10;
                                        } else {
                                            f10 = Flow.this.mLastHorizontalBias;
                                            f12 = f10;
                                        }
                                    }
                                    constraintWidget6.setHorizontalChainStyle(i22);
                                    constraintWidget6.setHorizontalBiasPercent(f12);
                                }
                                if (i21 == i14 - 1) {
                                    constraintWidget6.connect(constraintWidget6.mRight, this.mRight, this.mPaddingRight);
                                }
                                if (constraintWidget4 != null) {
                                    constraintWidget6.mLeft.connect(constraintWidget4.mRight, Flow.this.mHorizontalGap);
                                    if (i21 == i16) {
                                        constraintWidget6.mLeft.setGoneMargin(this.mPaddingLeft);
                                    }
                                    constraintWidget4.mRight.connect(constraintWidget6.mLeft, 0);
                                    if (i21 == i17 + 1) {
                                        constraintWidget4.mRight.setGoneMargin(this.mPaddingRight);
                                    }
                                }
                                if (constraintWidget6 != constraintWidget5) {
                                    c10 = 3;
                                    if (Flow.this.mVerticalAlign != 3 || !constraintWidget.hasBaseline() || constraintWidget6 == constraintWidget || !constraintWidget6.hasBaseline()) {
                                        int i23 = Flow.this.mVerticalAlign;
                                        if (i23 != 0) {
                                            if (i23 != 1) {
                                                if (z12) {
                                                    constraintWidget6.mTop.connect(this.mTop, this.mPaddingTop);
                                                    constraintWidget6.mBottom.connect(this.mBottom, this.mPaddingBottom);
                                                } else {
                                                    constraintWidget6.mTop.connect(constraintWidget5.mTop, 0);
                                                    constraintWidget6.mBottom.connect(constraintWidget5.mBottom, 0);
                                                }
                                            } else {
                                                constraintWidget6.mBottom.connect(constraintWidget5.mBottom, 0);
                                            }
                                        } else {
                                            constraintWidget6.mTop.connect(constraintWidget5.mTop, 0);
                                        }
                                    } else {
                                        constraintWidget6.mBaseline.connect(constraintWidget.mBaseline, 0);
                                    }
                                } else {
                                    c10 = 3;
                                }
                            }
                            i21++;
                            c11 = c10;
                            constraintWidget4 = constraintWidget6;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                ConstraintWidget constraintWidget7 = this.mBiggest;
                constraintWidget7.setHorizontalChainStyle(Flow.this.mHorizontalStyle);
                int i24 = this.mPaddingLeft;
                if (i10 > 0) {
                    i24 += Flow.this.mHorizontalGap;
                }
                if (z10) {
                    constraintWidget7.mRight.connect(this.mRight, i24);
                    if (z11) {
                        constraintWidget7.mLeft.connect(this.mLeft, this.mPaddingRight);
                    }
                    if (i10 > 0) {
                        this.mRight.mOwner.mLeft.connect(constraintWidget7.mRight, 0);
                    }
                } else {
                    constraintWidget7.mLeft.connect(this.mLeft, i24);
                    if (z11) {
                        constraintWidget7.mRight.connect(this.mRight, this.mPaddingRight);
                    }
                    if (i10 > 0) {
                        this.mLeft.mOwner.mRight.connect(constraintWidget7.mLeft, 0);
                    }
                }
                for (int i25 = 0; i25 < i14 && this.mStartIndex + i25 < Flow.this.mDisplayedWidgetsCount; i25++) {
                    ConstraintWidget constraintWidget8 = Flow.this.mDisplayedWidgets[this.mStartIndex + i25];
                    if (constraintWidget8 != null) {
                        if (i25 == 0) {
                            constraintWidget8.connect(constraintWidget8.mTop, this.mTop, this.mPaddingTop);
                            int i26 = Flow.this.mVerticalStyle;
                            float f13 = Flow.this.mVerticalBias;
                            if (this.mStartIndex == 0 && Flow.this.mFirstVerticalStyle != -1) {
                                i26 = Flow.this.mFirstVerticalStyle;
                                f13 = Flow.this.mFirstVerticalBias;
                            } else if (z11 && Flow.this.mLastVerticalStyle != -1) {
                                i26 = Flow.this.mLastVerticalStyle;
                                f13 = Flow.this.mLastVerticalBias;
                            }
                            constraintWidget8.setVerticalChainStyle(i26);
                            constraintWidget8.setVerticalBiasPercent(f13);
                        }
                        if (i25 == i14 - 1) {
                            constraintWidget8.connect(constraintWidget8.mBottom, this.mBottom, this.mPaddingBottom);
                        }
                        if (constraintWidget4 != null) {
                            constraintWidget8.mTop.connect(constraintWidget4.mBottom, Flow.this.mVerticalGap);
                            if (i25 == i16) {
                                constraintWidget8.mTop.setGoneMargin(this.mPaddingTop);
                            }
                            constraintWidget4.mBottom.connect(constraintWidget8.mTop, 0);
                            if (i25 == i17 + 1) {
                                constraintWidget4.mBottom.setGoneMargin(this.mPaddingBottom);
                            }
                        }
                        if (constraintWidget8 != constraintWidget7) {
                            if (z10) {
                                int i27 = Flow.this.mHorizontalAlign;
                                if (i27 != 0) {
                                    if (i27 != 1) {
                                        if (i27 == 2) {
                                            constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                                            constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                                        }
                                    } else {
                                        constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                                    }
                                } else {
                                    constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                                }
                            } else {
                                int i28 = Flow.this.mHorizontalAlign;
                                if (i28 != 0) {
                                    if (i28 != 1) {
                                        if (i28 == 2) {
                                            if (z12) {
                                                constraintWidget8.mLeft.connect(this.mLeft, this.mPaddingLeft);
                                                constraintWidget8.mRight.connect(this.mRight, this.mPaddingRight);
                                            } else {
                                                constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                                                constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                                            }
                                        }
                                    } else {
                                        constraintWidget8.mRight.connect(constraintWidget7.mRight, 0);
                                    }
                                } else {
                                    constraintWidget8.mLeft.connect(constraintWidget7.mLeft, 0);
                                }
                                constraintWidget4 = constraintWidget8;
                            }
                        }
                        constraintWidget4 = constraintWidget8;
                    }
                }
            }
        }

        public int getHeight() {
            if (this.mOrientation == 1) {
                return this.mHeight - Flow.this.mVerticalGap;
            }
            return this.mHeight;
        }

        public int getWidth() {
            if (this.mOrientation == 0) {
                return this.mWidth - Flow.this.mHorizontalGap;
            }
            return this.mWidth;
        }

        public void measureMatchConstraints(int i10) {
            int i11 = this.mNbMatchConstraintsWidgets;
            if (i11 == 0) {
                return;
            }
            int i12 = this.mCount;
            int i13 = i10 / i11;
            for (int i14 = 0; i14 < i12 && this.mStartIndex + i14 < Flow.this.mDisplayedWidgetsCount; i14++) {
                ConstraintWidget constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + i14];
                if (this.mOrientation == 0) {
                    if (constraintWidget != null && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                        Flow.this.measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i13, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                    }
                } else if (constraintWidget != null && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                    Flow.this.measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i13);
                }
            }
            recomputeDimensions();
        }

        public void setStartIndex(int i10) {
            this.mStartIndex = i10;
        }

        public void setup(int i10, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i11, int i12, int i13, int i14, int i15) {
            this.mOrientation = i10;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = i11;
            this.mPaddingTop = i12;
            this.mPaddingRight = i13;
            this.mPaddingBottom = i14;
            this.mMax = i15;
        }
    }

    private void createAlignedConstraints(boolean z10) {
        ConstraintWidget constraintWidget;
        float f10;
        int i10;
        if (this.mAlignedDimensions != null && this.mAlignedBiggestElementsInCols != null && this.mAlignedBiggestElementsInRows != null) {
            for (int i11 = 0; i11 < this.mDisplayedWidgetsCount; i11++) {
                this.mDisplayedWidgets[i11].resetAnchors();
            }
            int[] iArr = this.mAlignedDimensions;
            int i12 = iArr[0];
            int i13 = iArr[1];
            float f11 = this.mHorizontalBias;
            ConstraintWidget constraintWidget2 = null;
            int i14 = 0;
            while (i14 < i12) {
                if (z10) {
                    i10 = (i12 - i14) - 1;
                    f10 = 1.0f - this.mHorizontalBias;
                } else {
                    f10 = f11;
                    i10 = i14;
                }
                ConstraintWidget constraintWidget3 = this.mAlignedBiggestElementsInCols[i10];
                if (constraintWidget3 != null && constraintWidget3.getVisibility() != 8) {
                    if (i14 == 0) {
                        constraintWidget3.connect(constraintWidget3.mLeft, this.mLeft, getPaddingLeft());
                        constraintWidget3.setHorizontalChainStyle(this.mHorizontalStyle);
                        constraintWidget3.setHorizontalBiasPercent(f10);
                    }
                    if (i14 == i12 - 1) {
                        constraintWidget3.connect(constraintWidget3.mRight, this.mRight, getPaddingRight());
                    }
                    if (i14 > 0 && constraintWidget2 != null) {
                        constraintWidget3.connect(constraintWidget3.mLeft, constraintWidget2.mRight, this.mHorizontalGap);
                        constraintWidget2.connect(constraintWidget2.mRight, constraintWidget3.mLeft, 0);
                    }
                    constraintWidget2 = constraintWidget3;
                }
                i14++;
                f11 = f10;
            }
            for (int i15 = 0; i15 < i13; i15++) {
                ConstraintWidget constraintWidget4 = this.mAlignedBiggestElementsInRows[i15];
                if (constraintWidget4 != null && constraintWidget4.getVisibility() != 8) {
                    if (i15 == 0) {
                        constraintWidget4.connect(constraintWidget4.mTop, this.mTop, getPaddingTop());
                        constraintWidget4.setVerticalChainStyle(this.mVerticalStyle);
                        constraintWidget4.setVerticalBiasPercent(this.mVerticalBias);
                    }
                    if (i15 == i13 - 1) {
                        constraintWidget4.connect(constraintWidget4.mBottom, this.mBottom, getPaddingBottom());
                    }
                    if (i15 > 0 && constraintWidget2 != null) {
                        constraintWidget4.connect(constraintWidget4.mTop, constraintWidget2.mBottom, this.mVerticalGap);
                        constraintWidget2.connect(constraintWidget2.mBottom, constraintWidget4.mTop, 0);
                    }
                    constraintWidget2 = constraintWidget4;
                }
            }
            for (int i16 = 0; i16 < i12; i16++) {
                for (int i17 = 0; i17 < i13; i17++) {
                    int i18 = (i17 * i12) + i16;
                    if (this.mOrientation == 1) {
                        i18 = (i16 * i13) + i17;
                    }
                    ConstraintWidget[] constraintWidgetArr = this.mDisplayedWidgets;
                    if (i18 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i18]) != null && constraintWidget.getVisibility() != 8) {
                        ConstraintWidget constraintWidget5 = this.mAlignedBiggestElementsInCols[i16];
                        ConstraintWidget constraintWidget6 = this.mAlignedBiggestElementsInRows[i17];
                        if (constraintWidget != constraintWidget5) {
                            constraintWidget.connect(constraintWidget.mLeft, constraintWidget5.mLeft, 0);
                            constraintWidget.connect(constraintWidget.mRight, constraintWidget5.mRight, 0);
                        }
                        if (constraintWidget != constraintWidget6) {
                            constraintWidget.connect(constraintWidget.mTop, constraintWidget6.mTop, 0);
                            constraintWidget.connect(constraintWidget.mBottom, constraintWidget6.mBottom, 0);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getWidgetHeight(ConstraintWidget constraintWidget, int i10) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i11 = constraintWidget.mMatchConstraintDefaultHeight;
            if (i11 == 0) {
                return 0;
            }
            if (i11 == 2) {
                int i12 = (int) (constraintWidget.mMatchConstraintPercentHeight * i10);
                if (i12 != constraintWidget.getHeight()) {
                    constraintWidget.setMeasureRequested(true);
                    measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i12);
                }
                return i12;
            } else if (i11 == 1) {
                return constraintWidget.getHeight();
            } else {
                if (i11 == 3) {
                    return (int) ((constraintWidget.getWidth() * constraintWidget.mDimensionRatio) + 0.5f);
                }
            }
        }
        return constraintWidget.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getWidgetWidth(ConstraintWidget constraintWidget, int i10) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i11 = constraintWidget.mMatchConstraintDefaultWidth;
            if (i11 == 0) {
                return 0;
            }
            if (i11 == 2) {
                int i12 = (int) (constraintWidget.mMatchConstraintPercentWidth * i10);
                if (i12 != constraintWidget.getWidth()) {
                    constraintWidget.setMeasureRequested(true);
                    measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i12, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                }
                return i12;
            } else if (i11 == 1) {
                return constraintWidget.getWidth();
            } else {
                if (i11 == 3) {
                    return (int) ((constraintWidget.getHeight() * constraintWidget.mDimensionRatio) + 0.5f);
                }
            }
        }
        return constraintWidget.getWidth();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x005e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x010d -> B:42:0x0059). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x010f -> B:42:0x0059). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x0115 -> B:42:0x0059). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x0117 -> B:42:0x0059). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void measureAligned(androidx.constraintlayout.core.widgets.ConstraintWidget[] r11, int r12, int r13, int r14, int[] r15) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Flow.measureAligned(androidx.constraintlayout.core.widgets.ConstraintWidget[], int, int, int, int[]):void");
    }

    private void measureChainWrap(ConstraintWidget[] constraintWidgetArr, int i10, int i11, int i12, int[] iArr) {
        int i13;
        boolean z10;
        int i14;
        boolean z11;
        int i15;
        ConstraintAnchor constraintAnchor;
        int paddingRight;
        ConstraintAnchor constraintAnchor2;
        int paddingBottom;
        boolean z12;
        int i16;
        if (i10 == 0) {
            return;
        }
        this.mChainList.clear();
        WidgetsList widgetsList = new WidgetsList(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, i12);
        this.mChainList.add(widgetsList);
        if (i11 == 0) {
            i13 = 0;
            int i17 = 0;
            int i18 = 0;
            while (i18 < i10) {
                ConstraintWidget constraintWidget = constraintWidgetArr[i18];
                int widgetWidth = getWidgetWidth(constraintWidget, i12);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i19 = i13;
                if ((i17 == i12 || this.mHorizontalGap + i17 + widgetWidth > i12) && widgetsList.mBiggest != null) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if (!z12 && i18 > 0 && (i16 = this.mMaxElementsWrap) > 0 && i18 % i16 == 0) {
                    z12 = true;
                }
                if (z12) {
                    widgetsList = new WidgetsList(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, i12);
                    widgetsList.setStartIndex(i18);
                    this.mChainList.add(widgetsList);
                } else if (i18 > 0) {
                    i17 += this.mHorizontalGap + widgetWidth;
                    widgetsList.add(constraintWidget);
                    i18++;
                    i13 = i19;
                }
                i17 = widgetWidth;
                widgetsList.add(constraintWidget);
                i18++;
                i13 = i19;
            }
        } else {
            i13 = 0;
            int i20 = 0;
            int i21 = 0;
            while (i21 < i10) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i21];
                int widgetHeight = getWidgetHeight(constraintWidget2, i12);
                if (constraintWidget2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i22 = i13;
                if ((i20 == i12 || this.mVerticalGap + i20 + widgetHeight > i12) && widgetsList.mBiggest != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10 && i21 > 0 && (i14 = this.mMaxElementsWrap) > 0 && i21 % i14 == 0) {
                    z10 = true;
                }
                if (z10) {
                    widgetsList = new WidgetsList(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, i12);
                    widgetsList.setStartIndex(i21);
                    this.mChainList.add(widgetsList);
                } else if (i21 > 0) {
                    i20 += this.mVerticalGap + widgetHeight;
                    widgetsList.add(constraintWidget2);
                    i21++;
                    i13 = i22;
                }
                i20 = widgetHeight;
                widgetsList.add(constraintWidget2);
                i21++;
                i13 = i22;
            }
        }
        int size = this.mChainList.size();
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = this.mTop;
        ConstraintAnchor constraintAnchor5 = this.mRight;
        ConstraintAnchor constraintAnchor6 = this.mBottom;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight2 = getPaddingRight();
        int paddingBottom2 = getPaddingBottom();
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (horizontalDimensionBehaviour != dimensionBehaviour && getVerticalDimensionBehaviour() != dimensionBehaviour) {
            z11 = false;
        } else {
            z11 = true;
        }
        if (i13 > 0 && z11) {
            for (int i23 = 0; i23 < size; i23++) {
                WidgetsList widgetsList2 = this.mChainList.get(i23);
                if (i11 == 0) {
                    widgetsList2.measureMatchConstraints(i12 - widgetsList2.getWidth());
                } else {
                    widgetsList2.measureMatchConstraints(i12 - widgetsList2.getHeight());
                }
            }
        }
        int i24 = paddingTop;
        int i25 = paddingRight2;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        int i29 = paddingLeft;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int i30 = paddingBottom2;
        while (i28 < size) {
            WidgetsList widgetsList3 = this.mChainList.get(i28);
            if (i11 == 0) {
                if (i28 < size - 1) {
                    constraintAnchor2 = this.mChainList.get(i28 + 1).mBiggest.mTop;
                    paddingBottom = 0;
                } else {
                    constraintAnchor2 = this.mBottom;
                    paddingBottom = getPaddingBottom();
                }
                ConstraintAnchor constraintAnchor9 = widgetsList3.mBiggest.mBottom;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int i31 = i26;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int i32 = i27;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                i15 = i28;
                widgetsList3.setup(i11, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, i29, i24, i25, paddingBottom, i12);
                int max = Math.max(i32, widgetsList3.getWidth());
                i26 = i31 + widgetsList3.getHeight();
                if (i15 > 0) {
                    i26 += this.mVerticalGap;
                }
                constraintAnchor8 = constraintAnchor11;
                i27 = max;
                i24 = 0;
                constraintAnchor7 = constraintAnchor9;
                constraintAnchor = constraintAnchor14;
                int i33 = paddingBottom;
                constraintAnchor6 = constraintAnchor2;
                i30 = i33;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int i34 = i26;
                int i35 = i27;
                i15 = i28;
                if (i15 < size - 1) {
                    constraintAnchor = this.mChainList.get(i15 + 1).mBiggest.mLeft;
                    paddingRight = 0;
                } else {
                    constraintAnchor = this.mRight;
                    paddingRight = getPaddingRight();
                }
                ConstraintAnchor constraintAnchor16 = widgetsList3.mBiggest.mRight;
                widgetsList3.setup(i11, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, i29, i24, paddingRight, i30, i12);
                i27 = i35 + widgetsList3.getWidth();
                int max2 = Math.max(i34, widgetsList3.getHeight());
                if (i15 > 0) {
                    i27 += this.mHorizontalGap;
                }
                i26 = max2;
                i29 = 0;
                i25 = paddingRight;
                constraintAnchor8 = constraintAnchor16;
            }
            i28 = i15 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        iArr[0] = i27;
        iArr[1] = i26;
    }

    private void measureChainWrap_new(ConstraintWidget[] constraintWidgetArr, int i10, int i11, int i12, int[] iArr) {
        int i13;
        boolean z10;
        int i14;
        boolean z11;
        int i15;
        ConstraintAnchor constraintAnchor;
        int paddingRight;
        ConstraintAnchor constraintAnchor2;
        int paddingBottom;
        boolean z12;
        int i16;
        if (i10 == 0) {
            return;
        }
        this.mChainList.clear();
        WidgetsList widgetsList = new WidgetsList(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, i12);
        this.mChainList.add(widgetsList);
        if (i11 == 0) {
            int i17 = 0;
            i13 = 0;
            int i18 = 0;
            int i19 = 0;
            while (i19 < i10) {
                i17++;
                ConstraintWidget constraintWidget = constraintWidgetArr[i19];
                int widgetWidth = getWidgetWidth(constraintWidget, i12);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i20 = i13;
                if ((i18 == i12 || this.mHorizontalGap + i18 + widgetWidth > i12) && widgetsList.mBiggest != null) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if (!z12 && i19 > 0 && (i16 = this.mMaxElementsWrap) > 0 && i17 > i16) {
                    z12 = true;
                }
                if (z12) {
                    widgetsList = new WidgetsList(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, i12);
                    widgetsList.setStartIndex(i19);
                    this.mChainList.add(widgetsList);
                    i18 = widgetWidth;
                    i17 = 1;
                } else if (i19 > 0) {
                    i18 += this.mHorizontalGap + widgetWidth;
                } else {
                    i18 = widgetWidth;
                }
                widgetsList.add(constraintWidget);
                i19++;
                i13 = i20;
            }
        } else {
            int i21 = 0;
            i13 = 0;
            int i22 = 0;
            int i23 = 0;
            while (i23 < i10) {
                i21++;
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i23];
                int widgetHeight = getWidgetHeight(constraintWidget2, i12);
                if (constraintWidget2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i13++;
                }
                int i24 = i13;
                if ((i22 == i12 || this.mVerticalGap + i22 + widgetHeight > i12) && widgetsList.mBiggest != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10 && i23 > 0 && (i14 = this.mMaxElementsWrap) > 0 && i21 > i14) {
                    z10 = true;
                }
                if (z10) {
                    widgetsList = new WidgetsList(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, i12);
                    widgetsList.setStartIndex(i23);
                    this.mChainList.add(widgetsList);
                    i22 = widgetHeight;
                    i21 = 1;
                } else if (i23 > 0) {
                    i22 += this.mVerticalGap + widgetHeight;
                } else {
                    i22 = widgetHeight;
                }
                widgetsList.add(constraintWidget2);
                i23++;
                i13 = i24;
            }
        }
        int size = this.mChainList.size();
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = this.mTop;
        ConstraintAnchor constraintAnchor5 = this.mRight;
        ConstraintAnchor constraintAnchor6 = this.mBottom;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight2 = getPaddingRight();
        int paddingBottom2 = getPaddingBottom();
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (horizontalDimensionBehaviour != dimensionBehaviour && getVerticalDimensionBehaviour() != dimensionBehaviour) {
            z11 = false;
        } else {
            z11 = true;
        }
        if (i13 > 0 && z11) {
            for (int i25 = 0; i25 < size; i25++) {
                WidgetsList widgetsList2 = this.mChainList.get(i25);
                if (i11 == 0) {
                    widgetsList2.measureMatchConstraints(i12 - widgetsList2.getWidth());
                } else {
                    widgetsList2.measureMatchConstraints(i12 - widgetsList2.getHeight());
                }
            }
        }
        int i26 = paddingTop;
        int i27 = paddingRight2;
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        int i31 = paddingLeft;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int i32 = paddingBottom2;
        while (i30 < size) {
            WidgetsList widgetsList3 = this.mChainList.get(i30);
            if (i11 == 0) {
                if (i30 < size - 1) {
                    constraintAnchor2 = this.mChainList.get(i30 + 1).mBiggest.mTop;
                    paddingBottom = 0;
                } else {
                    constraintAnchor2 = this.mBottom;
                    paddingBottom = getPaddingBottom();
                }
                ConstraintAnchor constraintAnchor9 = widgetsList3.mBiggest.mBottom;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int i33 = i28;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int i34 = i29;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                i15 = i30;
                widgetsList3.setup(i11, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, i31, i26, i27, paddingBottom, i12);
                int max = Math.max(i34, widgetsList3.getWidth());
                i28 = i33 + widgetsList3.getHeight();
                if (i15 > 0) {
                    i28 += this.mVerticalGap;
                }
                constraintAnchor8 = constraintAnchor11;
                i29 = max;
                i26 = 0;
                constraintAnchor7 = constraintAnchor9;
                constraintAnchor = constraintAnchor14;
                int i35 = paddingBottom;
                constraintAnchor6 = constraintAnchor2;
                i32 = i35;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int i36 = i28;
                int i37 = i29;
                i15 = i30;
                if (i15 < size - 1) {
                    constraintAnchor = this.mChainList.get(i15 + 1).mBiggest.mLeft;
                    paddingRight = 0;
                } else {
                    constraintAnchor = this.mRight;
                    paddingRight = getPaddingRight();
                }
                ConstraintAnchor constraintAnchor16 = widgetsList3.mBiggest.mRight;
                widgetsList3.setup(i11, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, i31, i26, paddingRight, i32, i12);
                i29 = i37 + widgetsList3.getWidth();
                int max2 = Math.max(i36, widgetsList3.getHeight());
                if (i15 > 0) {
                    i29 += this.mHorizontalGap;
                }
                i28 = max2;
                i31 = 0;
                i27 = paddingRight;
                constraintAnchor8 = constraintAnchor16;
            }
            i30 = i15 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        iArr[0] = i29;
        iArr[1] = i28;
    }

    private void measureNoWrap(ConstraintWidget[] constraintWidgetArr, int i10, int i11, int i12, int[] iArr) {
        WidgetsList widgetsList;
        if (i10 == 0) {
            return;
        }
        if (this.mChainList.size() == 0) {
            widgetsList = new WidgetsList(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, i12);
            this.mChainList.add(widgetsList);
        } else {
            WidgetsList widgetsList2 = this.mChainList.get(0);
            widgetsList2.clear();
            widgetsList = widgetsList2;
            widgetsList.setup(i11, this.mLeft, this.mTop, this.mRight, this.mBottom, getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom(), i12);
        }
        for (int i13 = 0; i13 < i10; i13++) {
            widgetsList.add(constraintWidgetArr[i13]);
        }
        iArr[0] = widgetsList.getWidth();
        iArr[1] = widgetsList.getHeight();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z10) {
        boolean z11;
        boolean z12;
        boolean z13;
        super.addToSolver(linearSystem, z10);
        if (getParent() != null && ((ConstraintWidgetContainer) getParent()).isRtl()) {
            z11 = true;
        } else {
            z11 = false;
        }
        int i10 = this.mWrapMode;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        int size = this.mChainList.size();
                        for (int i11 = 0; i11 < size; i11++) {
                            WidgetsList widgetsList = this.mChainList.get(i11);
                            if (i11 == size - 1) {
                                z13 = true;
                            } else {
                                z13 = false;
                            }
                            widgetsList.createConstraints(z11, i11, z13);
                        }
                    }
                } else {
                    createAlignedConstraints(z11);
                }
            } else {
                int size2 = this.mChainList.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    WidgetsList widgetsList2 = this.mChainList.get(i12);
                    if (i12 == size2 - 1) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    widgetsList2.createConstraints(z11, i12, z12);
                }
            }
        } else if (this.mChainList.size() > 0) {
            this.mChainList.get(0).createConstraints(z11, 0, true);
        }
        needsCallbackFromSolver(false);
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.copy(constraintWidget, hashMap);
        Flow flow = (Flow) constraintWidget;
        this.mHorizontalStyle = flow.mHorizontalStyle;
        this.mVerticalStyle = flow.mVerticalStyle;
        this.mFirstHorizontalStyle = flow.mFirstHorizontalStyle;
        this.mFirstVerticalStyle = flow.mFirstVerticalStyle;
        this.mLastHorizontalStyle = flow.mLastHorizontalStyle;
        this.mLastVerticalStyle = flow.mLastVerticalStyle;
        this.mHorizontalBias = flow.mHorizontalBias;
        this.mVerticalBias = flow.mVerticalBias;
        this.mFirstHorizontalBias = flow.mFirstHorizontalBias;
        this.mFirstVerticalBias = flow.mFirstVerticalBias;
        this.mLastHorizontalBias = flow.mLastHorizontalBias;
        this.mLastVerticalBias = flow.mLastVerticalBias;
        this.mHorizontalGap = flow.mHorizontalGap;
        this.mVerticalGap = flow.mVerticalGap;
        this.mHorizontalAlign = flow.mHorizontalAlign;
        this.mVerticalAlign = flow.mVerticalAlign;
        this.mWrapMode = flow.mWrapMode;
        this.mMaxElementsWrap = flow.mMaxElementsWrap;
        this.mOrientation = flow.mOrientation;
    }

    public float getMaxElementsWrap() {
        return this.mMaxElementsWrap;
    }

    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public void measure(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int[] iArr;
        boolean z10;
        if (this.mWidgetsCount > 0 && !measureChildren()) {
            setMeasure(0, 0);
            needsCallbackFromSolver(false);
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int[] iArr2 = new int[2];
        int i16 = (i11 - paddingLeft) - paddingRight;
        int i17 = this.mOrientation;
        if (i17 == 1) {
            i16 = (i13 - paddingTop) - paddingBottom;
        }
        int i18 = i16;
        if (i17 == 0) {
            if (this.mHorizontalStyle == -1) {
                this.mHorizontalStyle = 0;
            }
            if (this.mVerticalStyle == -1) {
                this.mVerticalStyle = 0;
            }
        } else {
            if (this.mHorizontalStyle == -1) {
                this.mHorizontalStyle = 0;
            }
            if (this.mVerticalStyle == -1) {
                this.mVerticalStyle = 0;
            }
        }
        ConstraintWidget[] constraintWidgetArr = this.mWidgets;
        int i19 = 0;
        int i20 = 0;
        while (true) {
            i14 = this.mWidgetsCount;
            if (i19 >= i14) {
                break;
            }
            if (this.mWidgets[i19].getVisibility() == 8) {
                i20++;
            }
            i19++;
        }
        if (i20 > 0) {
            constraintWidgetArr = new ConstraintWidget[i14 - i20];
            int i21 = 0;
            for (int i22 = 0; i22 < this.mWidgetsCount; i22++) {
                ConstraintWidget constraintWidget = this.mWidgets[i22];
                if (constraintWidget.getVisibility() != 8) {
                    constraintWidgetArr[i21] = constraintWidget;
                    i21++;
                }
            }
            i15 = i21;
        } else {
            i15 = i14;
        }
        this.mDisplayedWidgets = constraintWidgetArr;
        this.mDisplayedWidgetsCount = i15;
        int i23 = this.mWrapMode;
        if (i23 != 0) {
            if (i23 != 1) {
                if (i23 != 2) {
                    if (i23 != 3) {
                        z10 = true;
                        iArr = iArr2;
                    } else {
                        z10 = true;
                        iArr = iArr2;
                        measureChainWrap_new(constraintWidgetArr, i15, this.mOrientation, i18, iArr2);
                    }
                } else {
                    z10 = true;
                    iArr = iArr2;
                    measureAligned(constraintWidgetArr, i15, this.mOrientation, i18, iArr2);
                }
            } else {
                z10 = true;
                iArr = iArr2;
                measureChainWrap(constraintWidgetArr, i15, this.mOrientation, i18, iArr2);
            }
        } else {
            iArr = iArr2;
            z10 = true;
            measureNoWrap(constraintWidgetArr, i15, this.mOrientation, i18, iArr2);
        }
        int i24 = iArr[0] + paddingLeft + paddingRight;
        int i25 = iArr[z10 ? 1 : 0] + paddingTop + paddingBottom;
        if (i10 == 1073741824) {
            i24 = i11;
        } else if (i10 == Integer.MIN_VALUE) {
            i24 = Math.min(i24, i11);
        } else if (i10 != 0) {
            i24 = 0;
        }
        if (i12 == 1073741824) {
            i25 = i13;
        } else if (i12 == Integer.MIN_VALUE) {
            i25 = Math.min(i25, i13);
        } else if (i12 != 0) {
            i25 = 0;
        }
        setMeasure(i24, i25);
        setWidth(i24);
        setHeight(i25);
        if (this.mWidgetsCount <= 0) {
            z10 = false;
        }
        needsCallbackFromSolver(z10);
    }

    public void setFirstHorizontalBias(float f10) {
        this.mFirstHorizontalBias = f10;
    }

    public void setFirstHorizontalStyle(int i10) {
        this.mFirstHorizontalStyle = i10;
    }

    public void setFirstVerticalBias(float f10) {
        this.mFirstVerticalBias = f10;
    }

    public void setFirstVerticalStyle(int i10) {
        this.mFirstVerticalStyle = i10;
    }

    public void setHorizontalAlign(int i10) {
        this.mHorizontalAlign = i10;
    }

    public void setHorizontalBias(float f10) {
        this.mHorizontalBias = f10;
    }

    public void setHorizontalGap(int i10) {
        this.mHorizontalGap = i10;
    }

    public void setHorizontalStyle(int i10) {
        this.mHorizontalStyle = i10;
    }

    public void setLastHorizontalBias(float f10) {
        this.mLastHorizontalBias = f10;
    }

    public void setLastHorizontalStyle(int i10) {
        this.mLastHorizontalStyle = i10;
    }

    public void setLastVerticalBias(float f10) {
        this.mLastVerticalBias = f10;
    }

    public void setLastVerticalStyle(int i10) {
        this.mLastVerticalStyle = i10;
    }

    public void setMaxElementsWrap(int i10) {
        this.mMaxElementsWrap = i10;
    }

    public void setOrientation(int i10) {
        this.mOrientation = i10;
    }

    public void setVerticalAlign(int i10) {
        this.mVerticalAlign = i10;
    }

    public void setVerticalBias(float f10) {
        this.mVerticalBias = f10;
    }

    public void setVerticalGap(int i10) {
        this.mVerticalGap = i10;
    }

    public void setVerticalStyle(int i10) {
        this.mVerticalStyle = i10;
    }

    public void setWrapMode(int i10) {
        this.mWrapMode = i10;
    }
}
