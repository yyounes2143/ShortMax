package com.startshorts.androidplayer.ui.view.banner;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes7.dex */
public abstract class BaseBannerAdapter<T> extends RecyclerView.Adapter<BaseViewHolder<T>> {

    /* renamed from: i  reason: collision with root package name */
    protected List<T> f47064i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    private boolean f47065j;

    /* renamed from: k  reason: collision with root package name */
    private a f47066k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public interface a {
        void a(View view, int i10, int i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(BaseViewHolder baseViewHolder, View view) {
        int adapterPosition = baseViewHolder.getAdapterPosition();
        if (this.f47066k != null && adapterPosition != -1) {
            this.f47066k.a(view, fj.a.c(adapterPosition, f()), adapterPosition);
        }
    }

    protected abstract void b(BaseViewHolder<T> baseViewHolder, T t10, int i10, int i11, int i12);

    public BaseViewHolder<T> c(@NonNull ViewGroup viewGroup, View view, int i10) {
        return new BaseViewHolder<>(view);
    }

    public List<T> d() {
        return this.f47064i;
    }

    @LayoutRes
    public abstract int e(int i10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.f47064i.size();
    }

    protected int g(int i10) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        if (this.f47065j && f() > 1) {
            return 1000;
        }
        return f();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i10) {
        return g(fj.a.c(i10, f()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: i */
    public final void onBindViewHolder(@NonNull BaseViewHolder<T> baseViewHolder, int i10) {
        int c10 = fj.a.c(i10, f());
        b(baseViewHolder, this.f47064i.get(c10), c10, i10, f());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: j */
    public final BaseViewHolder<T> onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(e(i10), viewGroup, false);
        final BaseViewHolder<T> c10 = c(viewGroup, inflate, i10);
        inflate.setOnClickListener(new View.OnClickListener() { // from class: cj.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseBannerAdapter.this.h(c10, view);
            }
        });
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(boolean z10) {
        this.f47065j = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(List<? extends T> list) {
        if (list != null) {
            this.f47064i.clear();
            this.f47064i.addAll(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(a aVar) {
        this.f47066k = aVar;
    }
}
