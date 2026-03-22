package com.startshorts.androidplayer.adapter.subs;

import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter;
import com.startshorts.androidplayer.ui.view.banner.BaseViewHolder;
import com.startshorts.androidplayer.utils.TimeUtil;
import jk.u;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qf.h;
/* compiled from: SubsTypeAdapter3.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSubsTypeAdapter3.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsTypeAdapter3.kt\ncom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,145:1\n470#2:146\n470#2:147\n*S KotlinDebug\n*F\n+ 1 SubsTypeAdapter3.kt\ncom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter3\n*L\n44#1:146\n45#1:147\n*E\n"})
/* loaded from: classes6.dex */
public final class SubsTypeAdapter3 extends BaseBannerAdapter<SubsSku> {
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private r f38084l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Function0<Unit> f38085m;

    /* renamed from: n  reason: collision with root package name */
    private int f38086n = -1;

    /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void t(final com.startshorts.androidplayer.ui.view.banner.BaseViewHolder<com.startshorts.androidplayer.bean.subs.SubsSku> r17, final com.startshorts.androidplayer.bean.subs.SubsSku r18, int r19) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.adapter.subs.SubsTypeAdapter3.t(com.startshorts.androidplayer.ui.view.banner.BaseViewHolder, com.startshorts.androidplayer.bean.subs.SubsSku, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u(SubsSku subsSku, BaseViewHolder baseViewHolder, int i10) {
        int d10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(TimeUtil.f48175a.c(i10, true));
        if (!h.f65328a.o(subsSku) && (d10 = u.d(subsSku)) > 0) {
            String e10 = fk.u.f51776a.e(R$string.discount_label_off, String.valueOf(d10));
            sb2.append(" | ");
            sb2.append(e10);
        }
        baseViewHolder.d(R$id.first_recharge_tv, sb2.toString());
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v(SubsSku subsSku, boolean z10, BaseViewHolder baseViewHolder, SubsTypeAdapter3 subsTypeAdapter3) {
        boolean o10 = h.f65328a.o(subsSku);
        int d10 = u.d(subsSku);
        if (d10 > 0 && (!o10 || z10)) {
            baseViewHolder.e(R$id.first_recharge_tv, 0);
            baseViewHolder.d(R$id.first_recharge_tv, fk.u.f51776a.e(R$string.discount_label_off, String.valueOf(d10)));
        } else {
            baseViewHolder.e(R$id.first_recharge_tv, 8);
        }
        Function0<Unit> function0 = subsTypeAdapter3.f38085m;
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    public int e(int i10) {
        return R$layout.item_subs_type_pro3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    /* renamed from: p */
    public void b(@NotNull BaseViewHolder<SubsSku> holder, @NotNull SubsSku data, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(data, "data");
        t(holder, data, i10);
    }

    public final void q() {
        r rVar = this.f38084l;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("ReproductionSubsView", "cancelCountDownJob");
        }
        this.f38084l = null;
    }

    public final void r(@Nullable Function0<Unit> function0) {
        this.f38085m = function0;
    }

    public final void s(int i10) {
        this.f38086n = i10;
    }
}
