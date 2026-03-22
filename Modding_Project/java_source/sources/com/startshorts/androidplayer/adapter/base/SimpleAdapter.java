package com.startshorts.androidplayer.adapter.base;

import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.adapter.base.SimpleViewHolder;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes6.dex */
public abstract class SimpleAdapter<T> extends RecyclerView.Adapter<SimpleViewHolder<T>> {

    /* renamed from: i  reason: collision with root package name */
    private ArrayList<T> f37198i = new ArrayList<>();

    /* renamed from: j  reason: collision with root package name */
    private SimpleViewHolder.c<T> f37199j;

    public SimpleAdapter() {
        setHasStableIds(true);
    }

    public void a(T t10) {
        this.f37198i.add(t10);
        notifyDataSetChanged();
    }

    public void b(Collection<? extends T> collection) {
        if (collection != null && !collection.isEmpty()) {
            this.f37198i.addAll(collection);
            notifyDataSetChanged();
        }
    }

    public void c() {
        this.f37198i.clear();
        notifyDataSetChanged();
    }

    public ArrayList<T> d() {
        return this.f37198i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public final void onBindViewHolder(SimpleViewHolder<T> simpleViewHolder, int i10) {
        T item = getItem(i10);
        simpleViewHolder.f(i10, item, this.f37199j, null);
        simpleViewHolder.e(i10, item);
    }

    public void f(SimpleViewHolder.c<T> cVar) {
        this.f37199j = cVar;
    }

    public int g() {
        return this.f37198i.size();
    }

    public T getItem(int i10) {
        if (i10 >= 0 && i10 < this.f37198i.size()) {
            return this.f37198i.get(i10);
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f37198i.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        T item = getItem(i10);
        if (item != null) {
            return item.hashCode();
        }
        return -1L;
    }
}
