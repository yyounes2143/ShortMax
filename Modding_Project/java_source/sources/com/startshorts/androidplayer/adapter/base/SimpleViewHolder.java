package com.startshorts.androidplayer.adapter.base;

import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes6.dex */
public abstract class SimpleViewHolder<T> extends RecyclerView.ViewHolder {

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<View> f37200c;

    /* renamed from: d  reason: collision with root package name */
    public int f37201d;

    /* renamed from: e  reason: collision with root package name */
    public T f37202e;

    /* renamed from: f  reason: collision with root package name */
    private c<T> f37203f;

    /* renamed from: g  reason: collision with root package name */
    private final View.OnClickListener f37204g;

    /* renamed from: h  reason: collision with root package name */
    private final View.OnLongClickListener f37205h;

    /* loaded from: classes6.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SimpleViewHolder.this.f37203f != null) {
                c cVar = SimpleViewHolder.this.f37203f;
                SimpleViewHolder simpleViewHolder = SimpleViewHolder.this;
                cVar.a(view, simpleViewHolder.f37201d, simpleViewHolder.f37202e);
            }
        }
    }

    /* loaded from: classes6.dex */
    class b implements View.OnLongClickListener {
        b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            SimpleViewHolder.d(SimpleViewHolder.this);
            return true;
        }
    }

    /* loaded from: classes6.dex */
    public interface c<T> {
        void a(View view, int i10, T t10);
    }

    /* loaded from: classes6.dex */
    public interface d<T> {
    }

    public SimpleViewHolder(View view) {
        super(view);
        this.f37200c = new SparseArray<>();
        this.f37204g = new a();
        this.f37205h = new b();
    }

    static /* synthetic */ d d(SimpleViewHolder simpleViewHolder) {
        simpleViewHolder.getClass();
        return null;
    }

    public abstract void e(int i10, T t10);

    public void f(int i10, T t10, c<T> cVar, d<T> dVar) {
        this.f37201d = i10;
        this.f37202e = t10;
        this.f37203f = cVar;
        if (cVar != null) {
            this.itemView.setOnClickListener(this.f37204g);
        }
        if (dVar != null) {
            this.itemView.setOnLongClickListener(this.f37205h);
        }
    }
}
