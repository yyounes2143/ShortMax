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
import com.startshorts.androidplayer.adapter.immersion.PlayResolutionAdapter;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.RVDecoration;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionPlayResolutionListView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionPlayResolutionListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionPlayResolutionListView.kt\ncom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1863#2,2:108\n360#2,7:110\n360#2,7:117\n*S KotlinDebug\n*F\n+ 1 ImmersionPlayResolutionListView.kt\ncom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView\n*L\n64#1:108,2\n68#1:110,7\n77#1:117,7\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionPlayResolutionListView extends BaseConstraintLayout implements nj.a {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private SelectableAdapter<PlayResolution> f47361b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private RecyclerView f47362c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private a f47363d;

    /* compiled from: ImmersionPlayResolutionListView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a(@NotNull PlayResolution playResolution);
    }

    /* compiled from: ImmersionPlayResolutionListView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements SelectableAdapter.d<PlayResolution> {
        b() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.SelectableAdapter.d
        /* renamed from: b */
        public void a(View view, int i10, PlayResolution d10) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(d10, "d");
            a mListener = ImmersionPlayResolutionListView.this.getMListener();
            if (mListener != null) {
                mListener.a(d10);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionPlayResolutionListView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // nj.a
    public void a(int i10) {
        setVisibility(i10);
    }

    @Override // nj.a
    public boolean f() {
        return false;
    }

    @Override // nj.a
    public void g(@NotNull ImmersionShortsInfo shortsInfo, boolean z10) {
        Intrinsics.checkNotNullParameter(shortsInfo, "shortsInfo");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_play_resolution_list;
    }

    @Nullable
    public final a getMListener() {
        return this.f47363d;
    }

    @Override // nj.a
    public void k(@NotNull BaseEpisode episode, boolean z10) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        a(4);
    }

    public final void setMListener(@Nullable a aVar) {
        this.f47363d = aVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.recycler_view);
        this.f47362c = recyclerView;
        if (recyclerView != null) {
            recyclerView.setImportantForAccessibility(2);
        }
    }

    public void v(@Nullable Integer num, @NotNull List<PlayResolution> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (num == null) {
            return;
        }
        if (this.f47361b == null) {
            PlayResolutionAdapter playResolutionAdapter = new PlayResolutionAdapter();
            playResolutionAdapter.J(new b());
            this.f47361b = playResolutionAdapter;
            RecyclerView recyclerView = this.f47362c;
            if (recyclerView != null) {
                recyclerView.setBackgroundResource(R$drawable.bg_play_resolution_list_view);
                recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
                if (recyclerView.getItemDecorationCount() == 0) {
                    RVDecoration.Orientation orientation = RVDecoration.Orientation.HORIZONTAL;
                    Drawable drawable = ContextCompat.getDrawable(recyclerView.getContext(), R$drawable.shape_play_speed_divider_line);
                    Intrinsics.checkNotNull(drawable);
                    recyclerView.addItemDecoration(new RVDecoration(orientation, drawable, null, false, 4, null));
                }
                recyclerView.setAdapter(this.f47361b);
            }
        }
        Iterator<T> it = list.iterator();
        while (true) {
            boolean z10 = false;
            if (!it.hasNext()) {
                break;
            }
            PlayResolution playResolution = (PlayResolution) it.next();
            if (playResolution.getResolutionValue() == num.intValue()) {
                z10 = true;
            }
            playResolution.setSelected(z10);
        }
        SelectableAdapter<PlayResolution> selectableAdapter = this.f47361b;
        if (selectableAdapter != null) {
            Iterator<PlayResolution> it2 = list.iterator();
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
            selectableAdapter.I(i10);
            BaseAdapter.D(selectableAdapter, list, false, 2, null);
        }
    }

    public void w(@NotNull PlayResolution selectedResolution) {
        List<D> m10;
        SelectableAdapter<PlayResolution> selectableAdapter;
        Intrinsics.checkNotNullParameter(selectedResolution, "selectedResolution");
        SelectableAdapter<PlayResolution> selectableAdapter2 = this.f47361b;
        if (selectableAdapter2 != null && (m10 = selectableAdapter2.m()) != 0) {
            Iterator it = m10.iterator();
            int i10 = 0;
            while (true) {
                if (it.hasNext()) {
                    if (((PlayResolution) it.next()).getResolutionValue() == selectedResolution.getResolutionValue()) {
                        break;
                    }
                    i10++;
                } else {
                    i10 = -1;
                    break;
                }
            }
            if (i10 != -1 && (selectableAdapter = this.f47361b) != null) {
                selectableAdapter.L(i10);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionPlayResolutionListView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionPlayResolutionListView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
