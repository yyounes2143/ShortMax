package com.startshorts.androidplayer.ui.view.immersion.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlaySpeed;
import com.startshorts.androidplayer.ui.view.base.BaseFrameLayout;
import com.startshorts.androidplayer.ui.view.base.RVDecoration;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionPlaySpeedListView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionPlaySpeedListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionPlaySpeedListView.kt\ncom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,103:1\n1863#2,2:104\n360#2,7:106\n360#2,7:113\n*S KotlinDebug\n*F\n+ 1 ImmersionPlaySpeedListView.kt\ncom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView\n*L\n63#1:104,2\n67#1:106,7\n76#1:113,7\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionPlaySpeedListView extends BaseFrameLayout implements nj.a {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private SelectableAdapter<PlaySpeed> f47373b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private RecyclerView f47374c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private a f47375d;

    /* compiled from: ImmersionPlaySpeedListView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a(@NotNull PlaySpeed playSpeed);
    }

    /* compiled from: ImmersionPlaySpeedListView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements SelectableAdapter.d<PlaySpeed> {
        b() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter.d
        /* renamed from: b */
        public void a(View view, int i10, PlaySpeed d10) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(d10, "d");
            a mListener = ImmersionPlaySpeedListView.this.getMListener();
            if (mListener != null) {
                mListener.a(d10);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionPlaySpeedListView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // nj.a
    public void a(int i10) {
        setVisibility(i10);
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseFrameLayout
    public void e(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.recycler_view);
        this.f47374c = recyclerView;
        if (recyclerView != null) {
            recyclerView.setImportantForAccessibility(2);
        }
    }

    @Override // nj.a
    public boolean f() {
        return false;
    }

    @Override // nj.a
    public void g(@NotNull ImmersionShortsInfo shortsInfo, boolean z10) {
        Intrinsics.checkNotNullParameter(shortsInfo, "shortsInfo");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseFrameLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_play_speed_list;
    }

    @Nullable
    public final a getMListener() {
        return this.f47375d;
    }

    public void i(@Nullable PlaySpeed playSpeed, @NotNull List<PlaySpeed> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (playSpeed == null) {
            return;
        }
        if (this.f47373b == null) {
            SelectableAdapter<PlaySpeed> selectableAdapter = new SelectableAdapter<>(R$layout.item_play_speed);
            selectableAdapter.J(new b());
            this.f47373b = selectableAdapter;
            RecyclerView recyclerView = this.f47374c;
            if (recyclerView != null) {
                recyclerView.setBackgroundResource(R$drawable.bg_play_speed_list_view);
                recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
                if (recyclerView.getItemDecorationCount() == 0) {
                    RVDecoration.Orientation orientation = RVDecoration.Orientation.HORIZONTAL;
                    Drawable drawable = ContextCompat.getDrawable(recyclerView.getContext(), R$drawable.shape_play_speed_divider_line);
                    Intrinsics.checkNotNull(drawable);
                    recyclerView.addItemDecoration(new RVDecoration(orientation, drawable, null, false, 4, null));
                }
                recyclerView.setAdapter(this.f47373b);
            }
        }
        Iterator<T> it = list.iterator();
        while (true) {
            boolean z10 = false;
            if (!it.hasNext()) {
                break;
            }
            PlaySpeed playSpeed2 = (PlaySpeed) it.next();
            if (playSpeed2.getValue() == playSpeed.getValue()) {
                z10 = true;
            }
            playSpeed2.setSelected(z10);
        }
        SelectableAdapter<PlaySpeed> selectableAdapter2 = this.f47373b;
        if (selectableAdapter2 != null) {
            Iterator<PlaySpeed> it2 = list.iterator();
            int i10 = 0;
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().isSelected()) {
                        break;
                    }
                    i10++;
                } else {
                    i10 = -1;
                    break;
                }
            }
            selectableAdapter2.I(i10);
            BaseAdapter.D(selectableAdapter2, list, false, 2, null);
        }
    }

    @Override // nj.a
    public void k(@NotNull BaseEpisode episode, boolean z10) {
        Intrinsics.checkNotNullParameter(episode, "episode");
    }

    public final void setMListener(@Nullable a aVar) {
        this.f47375d = aVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionPlaySpeedListView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionPlaySpeedListView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
