package com.startshorts.androidplayer.adapter.subs;

import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter;
import com.startshorts.androidplayer.ui.view.banner.BaseViewHolder;
import com.startshorts.androidplayer.ui.view.subs.SubsNormalOldStyleView;
import com.startshorts.androidplayer.ui.view.subs.SubsProOldStyleView;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubsTypeAdapter2.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubsTypeAdapter2 extends BaseBannerAdapter<SubsSku> {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f38080o = new a(null);
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f38081l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private BaseEpisode f38082m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private Function0<Unit> f38083n;

    /* compiled from: SubsTypeAdapter2.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    public int e(int i10) {
        if (i10 == 1) {
            return R$layout.item_subs_type_normal_2;
        }
        return R$layout.item_subs_type_pro_2;
    }

    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    protected int g(int i10) {
        List<SubsSku> d10 = d();
        Intrinsics.checkNotNullExpressionValue(d10, "getData(...)");
        SubsSku subsSku = (SubsSku) CollectionsKt.t0(d10, i10);
        if (subsSku == null || !subsSku.isPro()) {
            return 1;
        }
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    /* renamed from: n */
    public void b(@NotNull BaseViewHolder<SubsSku> holder, @NotNull SubsSku data, int i10, int i11, int i12) {
        String str;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(data, "data");
        String str2 = "";
        if (data.isPro()) {
            SubsProOldStyleView subsProOldStyleView = (SubsProOldStyleView) holder.findViewById(R$id.subs_view);
            if (subsProOldStyleView != null) {
                String str3 = this.f38081l;
                if (str3 == null) {
                    str = "";
                } else {
                    str = str3;
                }
                subsProOldStyleView.setSku(str, data, this.f38082m, true, this.f38083n);
                return;
            }
            return;
        }
        SubsNormalOldStyleView subsNormalOldStyleView = (SubsNormalOldStyleView) holder.findViewById(R$id.subs_view);
        if (subsNormalOldStyleView != null) {
            String str4 = this.f38081l;
            if (str4 != null) {
                str2 = str4;
            }
            subsNormalOldStyleView.setSku(str2, data, this.f38082m, true);
        }
    }

    public final void o(@Nullable BaseEpisode baseEpisode) {
        this.f38082m = baseEpisode;
    }

    public final void p(@Nullable String str) {
        this.f38081l = str;
    }

    public final void q(@Nullable Function0<Unit> function0) {
        this.f38083n = function0;
    }
}
