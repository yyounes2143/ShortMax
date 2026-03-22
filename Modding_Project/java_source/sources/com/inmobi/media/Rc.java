package com.inmobi.media;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.inmobi.ads.viewsv2.NativeRecyclerViewAdapter;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Rc extends K8 {

    /* renamed from: b  reason: collision with root package name */
    public RecyclerView f24072b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Rc(Context context) {
        super(context, (byte) 1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.inmobi.media.K8
    public final void a(C2985h8 scrollableContainerAsset, L8 dataSource, int i10, int i11, D8 d82) {
        NativeRecyclerViewAdapter nativeRecyclerViewAdapter;
        Intrinsics.checkNotNullParameter(scrollableContainerAsset, "scrollableContainerAsset");
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        RecyclerView recyclerView = new RecyclerView(getContext());
        this.f24072b = recyclerView;
        recyclerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
        if (dataSource instanceof NativeRecyclerViewAdapter) {
            nativeRecyclerViewAdapter = (NativeRecyclerViewAdapter) dataSource;
        } else {
            nativeRecyclerViewAdapter = null;
        }
        recyclerView.setAdapter(nativeRecyclerViewAdapter);
        addView(this.f24072b);
    }
}
