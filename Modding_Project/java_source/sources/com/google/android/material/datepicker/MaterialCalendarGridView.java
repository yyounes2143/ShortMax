package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;
import java.util.Calendar;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class MaterialCalendarGridView extends GridView {
    private final Calendar dayCompute;
    private final boolean nestedScrollable;

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    private void gainFocus(int i10, Rect rect) {
        if (i10 == 33) {
            setSelection(getAdapter2().lastPositionInMonth());
        } else if (i10 == 130) {
            setSelection(getAdapter2().firstPositionInMonth());
        } else {
            super.onFocusChanged(true, i10, rect);
        }
    }

    private View getChildAtPosition(int i10) {
        return getChildAt(i10 - getFirstVisiblePosition());
    }

    private static int horizontalMidPoint(@NonNull View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    private static boolean skipMonth(@Nullable Long l10, @Nullable Long l11, @Nullable Long l12, @Nullable Long l13) {
        if (l10 == null || l11 == null || l12 == null || l13 == null || l12.longValue() > l11.longValue() || l13.longValue() < l10.longValue()) {
            return true;
        }
        return false;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter2().notifyDataSetChanged();
    }

    @Override // android.view.View
    protected final void onDraw(@NonNull Canvas canvas) {
        int dayToPosition;
        int horizontalMidPoint;
        int dayToPosition2;
        int horizontalMidPoint2;
        int i10;
        int i11;
        int i12;
        int i13;
        int left;
        int left2;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        MonthAdapter adapter2 = getAdapter2();
        DateSelector<?> dateSelector = adapter2.dateSelector;
        CalendarStyle calendarStyle = adapter2.calendarStyle;
        int max = Math.max(adapter2.firstPositionInMonth(), getFirstVisiblePosition());
        int min = Math.min(adapter2.lastPositionInMonth(), getLastVisiblePosition());
        Long item = adapter2.getItem(max);
        Long item2 = adapter2.getItem(min);
        Iterator<Pair<Long, Long>> it = dateSelector.getSelectedRanges().iterator();
        while (it.hasNext()) {
            Pair<Long, Long> next = it.next();
            Long l10 = next.first;
            if (l10 != null) {
                if (next.second != null) {
                    Long l11 = l10;
                    long longValue = l11.longValue();
                    Long l12 = next.second;
                    long longValue2 = l12.longValue();
                    if (!skipMonth(item, item2, l11, l12)) {
                        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
                        if (longValue < item.longValue()) {
                            if (adapter2.isFirstInRow(max)) {
                                left2 = 0;
                            } else if (!isLayoutRtl) {
                                left2 = materialCalendarGridView.getChildAtPosition(max - 1).getRight();
                            } else {
                                left2 = materialCalendarGridView.getChildAtPosition(max - 1).getLeft();
                            }
                            horizontalMidPoint = left2;
                            dayToPosition = max;
                        } else {
                            materialCalendarGridView.dayCompute.setTimeInMillis(longValue);
                            dayToPosition = adapter2.dayToPosition(materialCalendarGridView.dayCompute.get(5));
                            horizontalMidPoint = horizontalMidPoint(materialCalendarGridView.getChildAtPosition(dayToPosition));
                        }
                        if (longValue2 > item2.longValue()) {
                            if (adapter2.isLastInRow(min)) {
                                left = getWidth();
                            } else if (!isLayoutRtl) {
                                left = materialCalendarGridView.getChildAtPosition(min).getRight();
                            } else {
                                left = materialCalendarGridView.getChildAtPosition(min).getLeft();
                            }
                            horizontalMidPoint2 = left;
                            dayToPosition2 = min;
                        } else {
                            materialCalendarGridView.dayCompute.setTimeInMillis(longValue2);
                            dayToPosition2 = adapter2.dayToPosition(materialCalendarGridView.dayCompute.get(5));
                            horizontalMidPoint2 = horizontalMidPoint(materialCalendarGridView.getChildAtPosition(dayToPosition2));
                        }
                        int itemId = (int) adapter2.getItemId(dayToPosition);
                        int i14 = max;
                        int i15 = min;
                        int itemId2 = (int) adapter2.getItemId(dayToPosition2);
                        while (itemId <= itemId2) {
                            int numColumns = getNumColumns() * itemId;
                            int numColumns2 = (numColumns + getNumColumns()) - 1;
                            View childAtPosition = materialCalendarGridView.getChildAtPosition(numColumns);
                            int top = childAtPosition.getTop() + calendarStyle.day.getTopInset();
                            MonthAdapter monthAdapter = adapter2;
                            int bottom = childAtPosition.getBottom() - calendarStyle.day.getBottomInset();
                            if (!isLayoutRtl) {
                                if (numColumns > dayToPosition) {
                                    i13 = 0;
                                } else {
                                    i13 = horizontalMidPoint;
                                }
                                if (dayToPosition2 > numColumns2) {
                                    i12 = getWidth();
                                } else {
                                    i12 = horizontalMidPoint2;
                                }
                            } else {
                                if (dayToPosition2 > numColumns2) {
                                    i10 = 0;
                                } else {
                                    i10 = horizontalMidPoint2;
                                }
                                if (numColumns > dayToPosition) {
                                    i11 = getWidth();
                                } else {
                                    i11 = horizontalMidPoint;
                                }
                                int i16 = i10;
                                i12 = i11;
                                i13 = i16;
                            }
                            canvas.drawRect(i13, top, i12, bottom, calendarStyle.rangeFill);
                            itemId++;
                            materialCalendarGridView = this;
                            it = it;
                            adapter2 = monthAdapter;
                        }
                        materialCalendarGridView = this;
                        max = i14;
                        min = i15;
                    }
                }
            } else {
                materialCalendarGridView = this;
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z10, int i10, Rect rect) {
        if (z10) {
            gainFocus(i10, rect);
        } else {
            super.onFocusChanged(false, i10, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (!super.onKeyDown(i10, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter2().firstPositionInMonth()) {
            return true;
        }
        if (19 != i10) {
            return false;
        }
        setSelection(getAdapter2().firstPositionInMonth());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i10, int i11) {
        if (this.nestedScrollable) {
            super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(ViewCompat.MEASURED_SIZE_MASK, Integer.MIN_VALUE));
            getLayoutParams().height = getMeasuredHeight();
            return;
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i10) {
        if (i10 < getAdapter2().firstPositionInMonth()) {
            super.setSelection(getAdapter2().firstPositionInMonth());
        } else {
            super.setSelection(i10);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof MonthAdapter) {
            super.setAdapter(listAdapter);
            return;
        }
        throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), MonthAdapter.class.getCanonicalName()));
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.dayCompute = UtcDates.getUtcCalendar();
        if (MaterialDatePicker.isFullscreen(getContext())) {
            setNextFocusLeftId(R.id.cancel_button);
            setNextFocusRightId(R.id.confirm_button);
        }
        this.nestedScrollable = MaterialDatePicker.isNestedScrollable(getContext());
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegateCompat() { // from class: com.google.android.material.datepicker.MaterialCalendarGridView.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCollectionInfo(null);
            }
        });
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    @NonNull
    /* renamed from: getAdapter */
    public ListAdapter getAdapter2() {
        return (MonthAdapter) super.getAdapter();
    }
}
