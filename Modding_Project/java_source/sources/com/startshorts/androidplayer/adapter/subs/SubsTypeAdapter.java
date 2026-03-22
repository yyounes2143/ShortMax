package com.startshorts.androidplayer.adapter.subs;

import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.subs.SubsTypeAdapter;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter;
import com.startshorts.androidplayer.ui.view.banner.BaseViewHolder;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import fk.u;
import java.util.List;
import jk.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SubsTypeAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubsTypeAdapter extends BaseBannerAdapter<SubsSku> {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a f38079l = new a(null);

    /* compiled from: SubsTypeAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final String q(int i10, String str) {
        if (str != null && str.length() != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 6) {
                                if (i10 != 7) {
                                    return str;
                                }
                            }
                        }
                    }
                    return u.f51776a.e(R$string.subs_type_view_per_year_new, str);
                }
                return u.f51776a.e(R$string.subs_type_view_per_month_new, str);
            }
            return u.f51776a.e(R$string.subs_type_view_per_week_new, str);
        }
        return "";
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void r(com.startshorts.androidplayer.ui.view.banner.BaseViewHolder<com.startshorts.androidplayer.bean.subs.SubsSku> r13, com.startshorts.androidplayer.bean.subs.SubsSku r14) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.adapter.subs.SubsTypeAdapter.r(com.startshorts.androidplayer.ui.view.banner.BaseViewHolder, com.startshorts.androidplayer.bean.subs.SubsSku):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void s(final com.startshorts.androidplayer.ui.view.banner.BaseViewHolder<com.startshorts.androidplayer.bean.subs.SubsSku> r10, com.startshorts.androidplayer.bean.subs.SubsSku r11) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.adapter.subs.SubsTypeAdapter.s(com.startshorts.androidplayer.ui.view.banner.BaseViewHolder, com.startshorts.androidplayer.bean.subs.SubsSku):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(final BaseViewHolder baseViewHolder, final GradientTextView gradientTextView) {
        y.c(gradientTextView, 23.0f, 13.0f, baseViewHolder.findViewById(R$id.card_bg_view).getWidth(), new Function0() { // from class: qd.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit u10;
                u10 = SubsTypeAdapter.u(GradientTextView.this, baseViewHolder);
                return u10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u(GradientTextView gradientTextView, BaseViewHolder baseViewHolder) {
        gradientTextView.setVisibility(0);
        baseViewHolder.e(R$id.card_desc_tv, 0);
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    public int e(int i10) {
        if (i10 == 1) {
            return R$layout.item_subs_type_normal;
        }
        return R$layout.item_subs_type_pro;
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
    /* renamed from: p */
    public void b(@NotNull BaseViewHolder<SubsSku> holder, @NotNull SubsSku data, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(data, "data");
        if (data.isPro()) {
            s(holder, data);
        } else {
            r(holder, data);
        }
    }
}
