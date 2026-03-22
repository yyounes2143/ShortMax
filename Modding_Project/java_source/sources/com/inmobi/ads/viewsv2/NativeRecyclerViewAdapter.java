package com.inmobi.ads.viewsv2;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.inmobi.media.C2985h8;
import com.inmobi.media.C3113p8;
import com.inmobi.media.D8;
import com.inmobi.media.I8;
import com.inmobi.media.L8;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class NativeRecyclerViewAdapter extends RecyclerView.Adapter<I8> implements L8 {

    /* renamed from: a  reason: collision with root package name */
    public C3113p8 f23439a;

    /* renamed from: b  reason: collision with root package name */
    public D8 f23440b;

    /* renamed from: c  reason: collision with root package name */
    public final SparseArray f23441c;

    public NativeRecyclerViewAdapter(@NotNull C3113p8 nativeDataModel, @NotNull D8 nativeLayoutInflater) {
        Intrinsics.checkNotNullParameter(nativeDataModel, "nativeDataModel");
        Intrinsics.checkNotNullParameter(nativeLayoutInflater, "nativeLayoutInflater");
        this.f23439a = nativeDataModel;
        this.f23440b = nativeLayoutInflater;
        this.f23441c = new SparseArray();
    }

    @Nullable
    public ViewGroup buildScrollableView(int i10, @NotNull ViewGroup parent, @NotNull C2985h8 root) {
        ViewGroup container;
        D8 d82;
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(root, "pageContainerAsset");
        D8 d83 = this.f23440b;
        if (d83 != null) {
            container = d83.a(parent, root);
        } else {
            container = null;
        }
        if (container != null && (d82 = this.f23440b) != null) {
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(root, "root");
            d82.b(container, root);
        }
        return container;
    }

    @Override // com.inmobi.media.L8
    public void destroy() {
        C3113p8 c3113p8 = this.f23439a;
        if (c3113p8 != null) {
            c3113p8.f25145l = null;
            c3113p8.f25140g = null;
        }
        this.f23439a = null;
        this.f23440b = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        C3113p8 c3113p8 = this.f23439a;
        if (c3113p8 != null) {
            return c3113p8.d();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull I8 holder, int i10) {
        View buildScrollableView;
        Intrinsics.checkNotNullParameter(holder, "holder");
        C3113p8 c3113p8 = this.f23439a;
        C2985h8 b10 = c3113p8 != null ? c3113p8.b(i10) : null;
        WeakReference weakReference = (WeakReference) this.f23441c.get(i10);
        if (b10 != null) {
            if (weakReference == null || (buildScrollableView = (View) weakReference.get()) == null) {
                buildScrollableView = buildScrollableView(i10, holder.f23736a, b10);
            }
            if (buildScrollableView != null) {
                if (i10 != getItemCount() - 1) {
                    holder.f23736a.setPadding(0, 0, 16, 0);
                }
                holder.f23736a.addView(buildScrollableView);
                this.f23441c.put(i10, new WeakReference(buildScrollableView));
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public I8 onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new I8(new FrameLayout(parent.getContext()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NotNull I8 holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.f23736a.removeAllViews();
        super.onViewRecycled((NativeRecyclerViewAdapter) holder);
    }
}
