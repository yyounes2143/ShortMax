package com.scwang.smart.refresh.layout.simple;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.scwang.smart.refresh.layout.SmartRefreshLayout;
import com.scwang.smart.refresh.layout.constant.RefreshState;
import sc.a;
import sc.c;
import sc.d;
import sc.e;
import sc.f;
import tc.b;
/* loaded from: classes6.dex */
public abstract class SimpleComponent extends RelativeLayout implements a {

    /* renamed from: a  reason: collision with root package name */
    protected View f36989a;

    /* renamed from: b  reason: collision with root package name */
    protected b f36990b;

    /* renamed from: c  reason: collision with root package name */
    protected a f36991c;

    /* JADX INFO: Access modifiers changed from: protected */
    public SimpleComponent(@NonNull View view) {
        this(view, view instanceof a ? (a) view : null);
    }

    public void a(@NonNull f fVar, int i10, int i11) {
        a aVar = this.f36991c;
        if (aVar != null && aVar != this) {
            aVar.a(fVar, i10, i11);
        }
    }

    @SuppressLint({"RestrictedApi"})
    public boolean b(boolean z10) {
        a aVar = this.f36991c;
        if ((aVar instanceof c) && ((c) aVar).b(z10)) {
            return true;
        }
        return false;
    }

    public int c(@NonNull f fVar, boolean z10) {
        a aVar = this.f36991c;
        if (aVar != null && aVar != this) {
            return aVar.c(fVar, z10);
        }
        return 0;
    }

    public void d(@NonNull f fVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        a aVar = this.f36991c;
        if (aVar != null && aVar != this) {
            if ((this instanceof c) && (aVar instanceof d)) {
                if (refreshState.isFooter) {
                    refreshState = refreshState.toHeader();
                }
                if (refreshState2.isFooter) {
                    refreshState2 = refreshState2.toHeader();
                }
            } else if ((this instanceof d) && (aVar instanceof c)) {
                if (refreshState.isHeader) {
                    refreshState = refreshState.toFooter();
                }
                if (refreshState2.isHeader) {
                    refreshState2 = refreshState2.toFooter();
                }
            }
            a aVar2 = this.f36991c;
            if (aVar2 != null) {
                aVar2.d(fVar, refreshState, refreshState2);
            }
        }
    }

    @Override // sc.a
    public void e(float f10, int i10, int i11) {
        a aVar = this.f36991c;
        if (aVar != null && aVar != this) {
            aVar.e(f10, i10, i11);
        }
    }

    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return true;
        }
        if ((obj instanceof a) && getView() == ((a) obj).getView()) {
            return true;
        }
        return false;
    }

    @Override // sc.a
    public boolean f() {
        a aVar = this.f36991c;
        if (aVar != null && aVar != this && aVar.f()) {
            return true;
        }
        return false;
    }

    public void g(@NonNull f fVar, int i10, int i11) {
        a aVar = this.f36991c;
        if (aVar != null && aVar != this) {
            aVar.g(fVar, i10, i11);
        }
    }

    @Override // sc.a
    @NonNull
    public b getSpinnerStyle() {
        int i10;
        b[] bVarArr;
        b bVar = this.f36990b;
        if (bVar != null) {
            return bVar;
        }
        a aVar = this.f36991c;
        if (aVar != null && aVar != this) {
            return aVar.getSpinnerStyle();
        }
        View view = this.f36989a;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof SmartRefreshLayout.LayoutParams) {
                b bVar2 = ((SmartRefreshLayout.LayoutParams) layoutParams).f36951b;
                this.f36990b = bVar2;
                if (bVar2 != null) {
                    return bVar2;
                }
            }
            if (layoutParams != null && ((i10 = layoutParams.height) == 0 || i10 == -1)) {
                for (b bVar3 : b.f67288i) {
                    if (bVar3.f67291c) {
                        this.f36990b = bVar3;
                        return bVar3;
                    }
                }
            }
        }
        b bVar4 = b.f67283d;
        this.f36990b = bVar4;
        return bVar4;
    }

    @Override // sc.a
    @NonNull
    public View getView() {
        View view = this.f36989a;
        if (view == null) {
            return this;
        }
        return view;
    }

    public void h(@NonNull e eVar, int i10, int i11) {
        a aVar = this.f36991c;
        if (aVar != null && aVar != this) {
            aVar.h(eVar, i10, i11);
            return;
        }
        View view = this.f36989a;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof SmartRefreshLayout.LayoutParams) {
                eVar.c(this, ((SmartRefreshLayout.LayoutParams) layoutParams).f36950a);
            }
        }
    }

    public void i(boolean z10, float f10, int i10, int i11, int i12) {
        a aVar = this.f36991c;
        if (aVar != null && aVar != this) {
            aVar.i(z10, f10, i10, i11, i12);
        }
    }

    public void setPrimaryColors(@ColorInt int... iArr) {
        a aVar = this.f36991c;
        if (aVar != null && aVar != this) {
            aVar.setPrimaryColors(iArr);
        }
    }

    protected SimpleComponent(@NonNull View view, @Nullable a aVar) {
        super(view.getContext(), null, 0);
        this.f36989a = view;
        this.f36991c = aVar;
        if ((this instanceof c) && (aVar instanceof d) && aVar.getSpinnerStyle() == b.f67287h) {
            aVar.getView().setScaleY(-1.0f);
        } else if (this instanceof d) {
            a aVar2 = this.f36991c;
            if ((aVar2 instanceof c) && aVar2.getSpinnerStyle() == b.f67287h) {
                aVar.getView().setScaleY(-1.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SimpleComponent(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
