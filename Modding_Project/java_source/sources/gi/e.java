package gi;

import android.content.Context;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.subs.SubsUpdateMode;
import com.startshorts.androidplayer.databinding.DialogSubsUpdateBinding;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import jk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SubsUpdateDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class e extends fi.a<DialogSubsUpdateBinding> {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f52377h = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final SubsSku f52378d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final SubsSku f52379e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final SubsUpdateMode f52380f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final b f52381g;

    /* compiled from: SubsUpdateDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SubsUpdateDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();
    }

    /* compiled from: SubsUpdateDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            e.this.dismiss();
            e.this.v().a();
        }
    }

    /* compiled from: SubsUpdateDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            e.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(@NotNull Context context, @NotNull SubsSku currentSku, @NotNull SubsSku newSku, @NotNull SubsUpdateMode updateMode, @NotNull b listener) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(currentSku, "currentSku");
        Intrinsics.checkNotNullParameter(newSku, "newSku");
        Intrinsics.checkNotNullParameter(updateMode, "updateMode");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f52378d = currentSku;
        this.f52379e = newSku;
        this.f52380f = updateMode;
        this.f52381g = listener;
    }

    private final String u(int i10, String str) {
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
                    return m(R$string.subs_type_view_per_year_new, str);
                }
                return m(R$string.subs_type_view_per_month_new, str);
            }
            return m(R$string.subs_type_view_per_week_new, str);
        }
        return "";
    }

    private final void w() {
        d dVar = new d();
        i().f39302b.setOnClickListener(dVar);
        i().f39301a.setOnClickListener(dVar);
        i().f39303c.setOnClickListener(new c());
    }

    private final void x() {
        if (this.f52380f.getChangeMode() == 0) {
            i().f39304d.setText(m(R$string.subs_update_dialog_downgrade_content, TimeUtil.e(TimeUtil.f48175a, AccountRepo.f43052a.o0(), DeviceUtil.f48146a.e(), null, 4, null)));
            return;
        }
        i().f39304d.setText(l(R$string.subs_update_dialog_upgrade_content));
    }

    private final void y() {
        String originPriceText;
        i().f39306f.setText(u(this.f52378d.getType(), this.f52378d.getOriginPriceText()));
        BaseTextView baseTextView = i().f39309i;
        int type = this.f52379e.getType();
        if (this.f52379e.enableDiscount()) {
            originPriceText = this.f52379e.getDiscountPriceText();
        } else {
            originPriceText = this.f52379e.getOriginPriceText();
        }
        baseTextView.setText(u(type, originPriceText));
    }

    private final void z() {
        i().f39311k.setColor(ContextCompat.getColor(getContext(), R$color.color_subs_update_dialog_title_start), ContextCompat.getColor(getContext(), R$color.color_subs_update_dialog_title_end));
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_subs_update;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "SubsUpdateDialog";
    }

    @Override // fi.a
    public int n() {
        return g.a(290.0f);
    }

    @Override // fi.a
    public void p() {
        z();
        x();
        y();
        w();
    }

    @NotNull
    public final b v() {
        return this.f52381g;
    }
}
