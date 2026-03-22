package com.google.android.flexbox;

import android.view.View;
import java.util.List;
/* compiled from: FlexContainer.java */
/* loaded from: classes4.dex */
interface a {
    void a(View view, int i10, int i11, b bVar);

    View b(int i10);

    int c(int i10, int i11, int i12);

    int d(View view);

    View e(int i10);

    int f(View view, int i10, int i11);

    int g(int i10, int i11, int i12);

    int getAlignContent();

    int getAlignItems();

    int getFlexDirection();

    int getFlexItemCount();

    List<b> getFlexLinesInternal();

    int getFlexWrap();

    int getLargestMainSize();

    int getMaxLine();

    int getPaddingBottom();

    int getPaddingEnd();

    int getPaddingLeft();

    int getPaddingRight();

    int getPaddingStart();

    int getPaddingTop();

    int getSumOfCrossSize();

    void h(b bVar);

    void i(int i10, View view);

    boolean j();

    void setFlexLines(List<b> list);
}
