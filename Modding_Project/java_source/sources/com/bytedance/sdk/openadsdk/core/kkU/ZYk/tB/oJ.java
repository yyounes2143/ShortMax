package com.bytedance.sdk.openadsdk.core.kkU.ZYk.tB;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bytedance.adsdk.ugeno.ZYk.tB;
import com.bytedance.adsdk.ugeno.ex;
import com.bytedance.adsdk.ugeno.yoga.ZYk.tB;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public class oJ extends FrameLayout {
    private final List<tB> ZYk;
    private ex ex;
    private final RecyclerView oJ;
    private final C0218oJ tB;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ZYk extends RecyclerView.ViewHolder {
        private final ViewGroup oJ;

        public ZYk(@NonNull View view) {
            super(view);
            this.oJ = (ViewGroup) view;
        }

        public void oJ(tB tBVar) {
            View dLZ = tBVar.dLZ();
            ViewParent parent = dLZ.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(dLZ);
            }
            this.oJ.removeAllViews();
            this.oJ.addView(dLZ, new tB.oJ(tBVar.XAo(), tBVar.ofl()));
        }
    }

    public oJ(@NonNull Context context) {
        super(context);
        this.ZYk = new CopyOnWriteArrayList();
        C0218oJ c0218oJ = new C0218oJ();
        this.tB = c0218oJ;
        RecyclerView recyclerView = new RecyclerView(context);
        this.oJ = recyclerView;
        addView(recyclerView);
        recyclerView.setAdapter(c0218oJ);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ex exVar = this.ex;
        if (exVar != null) {
            exVar.cFZ();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ex exVar = this.ex;
        if (exVar != null) {
            exVar.so();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        ex exVar = this.ex;
        if (exVar != null) {
            exVar.ba();
        }
        super.onLayout(z10, i10, i11, i12, i13);
        ex exVar2 = this.ex;
        if (exVar2 != null) {
            exVar2.oJ(i10, i11, i12, i13);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        ex exVar = this.ex;
        if (exVar != null) {
            int[] oJ = exVar.oJ(i10, i11);
            super.onMeasure(oJ[0], oJ[1]);
        } else {
            super.onMeasure(i10, i11);
        }
        ex exVar2 = this.ex;
        if (exVar2 != null) {
            exVar2.Pfn();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        ex exVar = this.ex;
        if (exVar != null) {
            exVar.ZYk(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    public void setOrientation(int i10) {
        if (i10 == 1) {
            this.oJ.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        } else {
            this.oJ.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        }
    }

    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar) {
        if (tBVar == null) {
            return;
        }
        this.ZYk.add(tBVar);
        C0218oJ c0218oJ = this.tB;
        if (c0218oJ != null) {
            c0218oJ.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bytedance.sdk.openadsdk.core.kkU.ZYk.tB.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0218oJ extends RecyclerView.Adapter<ZYk> {
        private C0218oJ() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return oJ.this.ZYk.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* renamed from: oJ */
        public ZYk onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            com.bytedance.adsdk.ugeno.yoga.ZYk.tB tBVar = new com.bytedance.adsdk.ugeno.yoga.ZYk.tB(viewGroup.getContext());
            com.bytedance.adsdk.ugeno.ZYk.tB tBVar2 = (com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this.ZYk.get(i10);
            tBVar.setLayoutParams(new ViewGroup.LayoutParams(tBVar2.XAo(), tBVar2.ofl()));
            return new ZYk(tBVar);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: oJ */
        public void onBindViewHolder(@NonNull ZYk zYk, int i10) {
            zYk.oJ((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this.ZYk.get(i10));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            return i10;
        }
    }

    public void oJ(ex exVar) {
        this.ex = exVar;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.kkU.ZYk.tB.ZYk zYk) {
        ViewGroup.LayoutParams layoutParams = this.oJ.getLayoutParams();
        layoutParams.width = zYk.XAo();
        layoutParams.height = zYk.ofl();
        this.oJ.setLayoutParams(layoutParams);
    }
}
