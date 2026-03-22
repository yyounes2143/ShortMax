package com.google.android.material.internal;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import com.google.android.material.internal.MaterialCheckable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@UiThread
/* loaded from: classes5.dex */
public class CheckableGroup<T extends MaterialCheckable<T>> {
    private final Map<Integer, T> checkables = new HashMap();
    private final Set<Integer> checkedIds = new HashSet();
    private OnCheckedStateChangeListener onCheckedStateChangeListener;
    private boolean selectionRequired;
    private boolean singleSelection;

    /* loaded from: classes5.dex */
    public interface OnCheckedStateChangeListener {
        void onCheckedStateChanged(@NonNull Set<Integer> set);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkInternal(@NonNull MaterialCheckable<T> materialCheckable) {
        int id2 = materialCheckable.getId();
        if (this.checkedIds.contains(Integer.valueOf(id2))) {
            return false;
        }
        T t10 = this.checkables.get(Integer.valueOf(getSingleCheckedId()));
        if (t10 != null) {
            uncheckInternal(t10, false);
        }
        boolean add = this.checkedIds.add(Integer.valueOf(id2));
        if (!materialCheckable.isChecked()) {
            materialCheckable.setChecked(true);
        }
        return add;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCheckedStateChanged() {
        OnCheckedStateChangeListener onCheckedStateChangeListener = this.onCheckedStateChangeListener;
        if (onCheckedStateChangeListener != null) {
            onCheckedStateChangeListener.onCheckedStateChanged(getCheckedIds());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean uncheckInternal(@NonNull MaterialCheckable<T> materialCheckable, boolean z10) {
        int id2 = materialCheckable.getId();
        if (!this.checkedIds.contains(Integer.valueOf(id2))) {
            return false;
        }
        if (z10 && this.checkedIds.size() == 1 && this.checkedIds.contains(Integer.valueOf(id2))) {
            materialCheckable.setChecked(true);
            return false;
        }
        boolean remove = this.checkedIds.remove(Integer.valueOf(id2));
        if (materialCheckable.isChecked()) {
            materialCheckable.setChecked(false);
        }
        return remove;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addCheckable(T t10) {
        this.checkables.put(Integer.valueOf(t10.getId()), t10);
        if (t10.isChecked()) {
            checkInternal(t10);
        }
        t10.setInternalOnCheckedChangeListener(new MaterialCheckable.OnCheckedChangeListener<T>() { // from class: com.google.android.material.internal.CheckableGroup.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.material.internal.MaterialCheckable.OnCheckedChangeListener
            public /* bridge */ /* synthetic */ void onCheckedChanged(Object obj, boolean z10) {
                onCheckedChanged((AnonymousClass1) ((MaterialCheckable) obj), z10);
            }

            public void onCheckedChanged(T t11, boolean z10) {
                if (z10) {
                    if (!CheckableGroup.this.checkInternal(t11)) {
                        return;
                    }
                } else {
                    CheckableGroup checkableGroup = CheckableGroup.this;
                    if (!checkableGroup.uncheckInternal(t11, checkableGroup.selectionRequired)) {
                        return;
                    }
                }
                CheckableGroup.this.onCheckedStateChanged();
            }
        });
    }

    public void check(@IdRes int i10) {
        T t10 = this.checkables.get(Integer.valueOf(i10));
        if (t10 != null && checkInternal(t10)) {
            onCheckedStateChanged();
        }
    }

    public void clearCheck() {
        boolean isEmpty = this.checkedIds.isEmpty();
        for (T t10 : this.checkables.values()) {
            uncheckInternal(t10, false);
        }
        if (!isEmpty) {
            onCheckedStateChanged();
        }
    }

    @NonNull
    public Set<Integer> getCheckedIds() {
        return new HashSet(this.checkedIds);
    }

    @NonNull
    public List<Integer> getCheckedIdsSortedByChildOrder(@NonNull ViewGroup viewGroup) {
        Set<Integer> checkedIds = getCheckedIds();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ((childAt instanceof MaterialCheckable) && checkedIds.contains(Integer.valueOf(childAt.getId()))) {
                arrayList.add(Integer.valueOf(childAt.getId()));
            }
        }
        return arrayList;
    }

    @IdRes
    public int getSingleCheckedId() {
        if (this.singleSelection && !this.checkedIds.isEmpty()) {
            return this.checkedIds.iterator().next().intValue();
        }
        return -1;
    }

    public boolean isSelectionRequired() {
        return this.selectionRequired;
    }

    public boolean isSingleSelection() {
        return this.singleSelection;
    }

    public void removeCheckable(T t10) {
        t10.setInternalOnCheckedChangeListener(null);
        this.checkables.remove(Integer.valueOf(t10.getId()));
        this.checkedIds.remove(Integer.valueOf(t10.getId()));
    }

    public void setOnCheckedStateChangeListener(@Nullable OnCheckedStateChangeListener onCheckedStateChangeListener) {
        this.onCheckedStateChangeListener = onCheckedStateChangeListener;
    }

    public void setSelectionRequired(boolean z10) {
        this.selectionRequired = z10;
    }

    public void setSingleSelection(boolean z10) {
        if (this.singleSelection != z10) {
            this.singleSelection = z10;
            clearCheck();
        }
    }

    public void uncheck(@IdRes int i10) {
        T t10 = this.checkables.get(Integer.valueOf(i10));
        if (t10 != null && uncheckInternal(t10, this.selectionRequired)) {
            onCheckedStateChanged();
        }
    }
}
