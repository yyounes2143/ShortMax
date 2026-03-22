package com.startshorts.androidplayer.adapter.region;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.adapter.region.RegionAdapter2;
import com.startshorts.androidplayer.bean.region.Region;
import com.startshorts.androidplayer.bean.region.RegionGroup;
import com.startshorts.androidplayer.databinding.ItemSelectRegionBinding;
import com.startshorts.androidplayer.databinding.ItemSelectRegionSectionBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import fk.v;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RegionAdapter2.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRegionAdapter2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegionAdapter2.kt\ncom/startshorts/androidplayer/adapter/region/RegionAdapter2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n1872#2,2:138\n1863#2,2:140\n1874#2:142\n*S KotlinDebug\n*F\n+ 1 RegionAdapter2.kt\ncom/startshorts/androidplayer/adapter/region/RegionAdapter2\n*L\n34#1:138,2\n48#1:140,2\n34#1:142\n*E\n"})
/* loaded from: classes6.dex */
public final class RegionAdapter2 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final List<a> f37847i = new ArrayList();
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final HashMap<String, Integer> f37848j = new HashMap<>();
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private String f37849k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f37850l;

    /* compiled from: RegionAdapter2.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public static final C0612a f37851d = new C0612a(null);

        /* renamed from: a  reason: collision with root package name */
        private final int f37852a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f37853b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final Region f37854c;

        /* compiled from: RegionAdapter2.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.adapter.region.RegionAdapter2$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0612a {
            public /* synthetic */ C0612a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private C0612a() {
            }
        }

        public a(int i10, @NotNull String firstCode, @Nullable Region region) {
            Intrinsics.checkNotNullParameter(firstCode, "firstCode");
            this.f37852a = i10;
            this.f37853b = firstCode;
            this.f37854c = region;
        }

        @NotNull
        public final String a() {
            return this.f37853b;
        }

        @Nullable
        public final Region b() {
            return this.f37854c;
        }

        public final int c() {
            return this.f37852a;
        }
    }

    /* compiled from: RegionAdapter2.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends RecyclerView.ViewHolder {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final ItemSelectRegionBinding f37855c;

        /* renamed from: d  reason: collision with root package name */
        private final int f37856d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ RegionAdapter2 f37857e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull RegionAdapter2 regionAdapter2, ItemSelectRegionBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37857e = regionAdapter2;
            this.f37855c = binding;
            this.f37856d = ResourcesCompat.getColor(binding.getRoot().getResources(), R$color.color_region_select_fragment_selected_bg, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(RegionAdapter2 regionAdapter2, String str, String str2, View view) {
            regionAdapter2.f(str);
            regionAdapter2.g(str2);
            regionAdapter2.notifyDataSetChanged();
        }

        public final void d(int i10, @NotNull a item) {
            final String str;
            int i11;
            Intrinsics.checkNotNullParameter(item, "item");
            Region b10 = item.b();
            final String str2 = null;
            if (b10 != null) {
                str = b10.getAreaCode();
            } else {
                str = null;
            }
            Region b11 = item.b();
            if (b11 != null) {
                str2 = b11.getCountryName();
            }
            this.f37855c.f40839c.setText(str2);
            BaseTextView baseTextView = this.f37855c.f40839c;
            if (v.f51778a.b()) {
                i11 = GravityCompat.END;
            } else {
                i11 = GravityCompat.START;
            }
            baseTextView.setGravity(i11);
            this.f37855c.f40837a.setText('+' + str);
            if (Intrinsics.areEqual(this.f37857e.b(), str) && Intrinsics.areEqual(this.f37857e.c(), str2)) {
                this.f37855c.f40838b.setBackgroundColor(this.f37856d);
            } else {
                this.f37855c.f40838b.setBackgroundResource(0);
            }
            ConstraintLayout constraintLayout = this.f37855c.f40838b;
            final RegionAdapter2 regionAdapter2 = this.f37857e;
            constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.adapter.region.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RegionAdapter2.b.e(RegionAdapter2.this, str, str2, view);
                }
            });
        }
    }

    /* compiled from: RegionAdapter2.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends RecyclerView.ViewHolder {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final ItemSelectRegionSectionBinding f37858c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ RegionAdapter2 f37859d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull RegionAdapter2 regionAdapter2, ItemSelectRegionSectionBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37859d = regionAdapter2;
            this.f37858c = binding;
        }

        public final void c(@NotNull a item) {
            Intrinsics.checkNotNullParameter(item, "item");
            this.f37858c.f40843a.setText(item.a());
        }
    }

    @Nullable
    public final a a(int i10) {
        if (i10 >= 0 && this.f37847i.size() > i10) {
            return this.f37847i.get(i10);
        }
        return null;
    }

    @Nullable
    public final String b() {
        return this.f37849k;
    }

    @Nullable
    public final String c() {
        return this.f37850l;
    }

    public final int d(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "char");
        Integer num = this.f37848j.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public final void e(@NotNull List<RegionGroup> data, @NotNull String selectedCode, @NotNull String selectedName) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(selectedCode, "selectedCode");
        Intrinsics.checkNotNullParameter(selectedName, "selectedName");
        this.f37849k = selectedCode;
        this.f37850l = selectedName;
        int i10 = 0;
        for (Object obj : data) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            RegionGroup regionGroup = (RegionGroup) obj;
            String firstCode = regionGroup.getFirstCode();
            if (firstCode.length() > 1) {
                this.f37848j.put("#", Integer.valueOf(this.f37847i.size()));
            } else {
                this.f37848j.put(firstCode, Integer.valueOf(this.f37847i.size()));
            }
            this.f37847i.add(new a(0, firstCode, null));
            for (Region region : regionGroup.getCodeInfoList()) {
                this.f37847i.add(new a(1, firstCode, region));
            }
            i10 = i11;
        }
        notifyDataSetChanged();
    }

    public final void f(@Nullable String str) {
        this.f37849k = str;
    }

    public final void g(@Nullable String str) {
        this.f37850l = str;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f37847i.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        return this.f37847i.get(i10).c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof c) {
            ((c) holder).c(this.f37847i.get(i10));
        } else if (holder instanceof b) {
            ((b) holder).d(i10, this.f37847i.get(i10));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 == 0) {
            ItemSelectRegionSectionBinding b10 = ItemSelectRegionSectionBinding.b(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
            return new c(this, b10);
        }
        ItemSelectRegionBinding b11 = ItemSelectRegionBinding.b(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(b11, "inflate(...)");
        return new b(this, b11);
    }
}
