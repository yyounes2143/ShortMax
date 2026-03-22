package com.startshorts.androidplayer.ui.view.banner;

import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes7.dex */
public class BaseViewHolder<T> extends RecyclerView.ViewHolder {

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<View> f47067c;

    public BaseViewHolder(@NonNull View view) {
        super(view);
        this.f47067c = new SparseArray<>();
    }

    public void c(int i10, @DrawableRes int i11) {
        findViewById(i10).setBackgroundResource(i11);
    }

    public void d(int i10, CharSequence charSequence) {
        View findViewById = findViewById(i10);
        if (findViewById instanceof TextView) {
            ((TextView) findViewById).setText(charSequence);
        }
    }

    public void e(@IdRes int i10, int i11) {
        findViewById(i10).setVisibility(i11);
    }

    public <V extends View> V findViewById(int i10) {
        V v10 = (V) this.f47067c.get(i10);
        if (v10 == null) {
            V v11 = (V) this.itemView.findViewById(i10);
            this.f47067c.put(i10, v11);
            return v11;
        }
        return v10;
    }
}
