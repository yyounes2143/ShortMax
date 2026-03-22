package ig;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.subs.SubsPrivilege;
import com.startshorts.androidplayer.bean.subs.SubsPrivilege2;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import jk.f;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import uh.i0;
/* compiled from: SubsLocalDS.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSubsLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsLocalDS.kt\ncom/startshorts/androidplayer/repo/billing/subs/SubsLocalDS\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n1863#2,2:130\n*S KotlinDebug\n*F\n+ 1 SubsLocalDS.kt\ncom/startshorts/androidplayer/repo/billing/subs/SubsLocalDS\n*L\n34#1:130,2\n*E\n"})
/* loaded from: classes7.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final C0776a f53411a = new C0776a(null);

    /* compiled from: SubsLocalDS.kt */
    @Metadata
    /* renamed from: ig.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0776a {
        public /* synthetic */ C0776a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0776a() {
        }
    }

    private final String a() {
        return TimeUtil.f48175a.h(f.a(new Date()), "UTC+0", TimeUtil.Template.YEAR_MONTH_DAY);
    }

    @NotNull
    public final List<List<SubsPrivilege>> b(@NotNull Context context, @Nullable List<SubsSku> list) {
        int i10;
        Intrinsics.checkNotNullParameter(context, "context");
        List<SubsSku> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (SubsSku subsSku : list) {
                ArrayList arrayList2 = new ArrayList();
                if (subsSku.isPro()) {
                    Drawable drawable = ContextCompat.getDrawable(context, R$drawable.ic_subscription_privilege_5);
                    String string = context.getString(R$string.subscription_detail_activity_privilege_5_desc);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    arrayList2.add(new SubsPrivilege(drawable, string));
                } else {
                    Drawable drawable2 = ContextCompat.getDrawable(context, R$drawable.ic_subscription_privilege_1);
                    String string2 = context.getString(R$string.common_coins, String.valueOf(subsSku.getCoins()));
                    Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                    arrayList2.add(new SubsPrivilege(drawable2, string2));
                    Drawable drawable3 = ContextCompat.getDrawable(context, R$drawable.ic_subscription_privilege_2);
                    int i11 = R$string.common_bonus;
                    Integer bonus = subsSku.getBonus();
                    if (bonus != null) {
                        i10 = bonus.intValue();
                    } else {
                        i10 = 0;
                    }
                    String string3 = context.getString(i11, String.valueOf(i10));
                    Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                    arrayList2.add(new SubsPrivilege(drawable3, string3));
                }
                if (!i0.f68447a.b()) {
                    Drawable drawable4 = ContextCompat.getDrawable(context, R$drawable.ic_subscription_privilege_6);
                    String string4 = context.getString(R$string.offline_download);
                    Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                    arrayList2.add(new SubsPrivilege(drawable4, string4));
                }
                Drawable drawable5 = ContextCompat.getDrawable(context, R$drawable.ic_subscription_privilege_4);
                String string5 = context.getString(R$string.subscription_detail_activity_privilege_4_desc);
                Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
                arrayList2.add(new SubsPrivilege(drawable5, string5));
                Drawable drawable6 = ContextCompat.getDrawable(context, R$drawable.ic_subscription_privilege_3);
                String string6 = context.getString(R$string.subscription_detail_activity_privilege_3_desc);
                Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
                arrayList2.add(new SubsPrivilege(drawable6, string6));
                arrayList.add(arrayList2);
            }
            return arrayList;
        }
        return CollectionsKt.n();
    }

    @NotNull
    public final List<SubsPrivilege2> c(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ArrayList arrayList = new ArrayList();
        Drawable drawable = ContextCompat.getDrawable(context, R$drawable.ic_subscription_privilege_new_5);
        String string = context.getString(R$string.subscription_detail_activity_privilege_new_5_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = context.getString(R$string.subscription_detail_activity_privilege_new_5_desc);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        arrayList.add(new SubsPrivilege2(drawable, string, string2));
        Drawable drawable2 = ContextCompat.getDrawable(context, R$drawable.ic_subscription_privilege_new_4);
        String string3 = context.getString(R$string.subscription_detail_activity_privilege_4_desc);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        String string4 = context.getString(R$string.subscription_detail_activity_privilege_new_4_desc);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
        arrayList.add(new SubsPrivilege2(drawable2, string3, string4));
        Drawable drawable3 = ContextCompat.getDrawable(context, R$drawable.ic_subscription_privilege_new_3);
        String string5 = context.getString(R$string.subscription_detail_activity_privilege_3_desc);
        Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
        String string6 = context.getString(R$string.subscription_detail_activity_privilege_new_3_desc);
        Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
        arrayList.add(new SubsPrivilege2(drawable3, string5, string6));
        return arrayList;
    }

    public final boolean d() {
        return ud.b.f68412a.Q1(AccountRepo.f43052a.t0(), a());
    }
}
