package li;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.tip.Builder;
import com.startshorts.androidplayer.databinding.NewDialogTipBinding;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import jk.b0;
import jk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NewTipDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b extends fi.a<NewDialogTipBinding> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f62222e = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Builder f62223d;

    /* compiled from: NewTipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: NewTipDialog.kt */
    @Metadata
    /* renamed from: li.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0865b extends yd.d {
        C0865b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            b.this.dismiss();
        }
    }

    /* compiled from: NewTipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            b.this.dismiss();
            View.OnClickListener negativeButtonClickListener = b.this.f62223d.getNegativeButtonClickListener();
            if (negativeButtonClickListener != null) {
                negativeButtonClickListener.onClick(v10);
            }
        }
    }

    /* compiled from: NewTipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            b.this.dismiss();
            View.OnClickListener positiveButtonClickListener = b.this.f62223d.getPositiveButtonClickListener();
            if (positiveButtonClickListener != null) {
                positiveButtonClickListener.onClick(v10);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@NotNull Context context, @NotNull Builder builder) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.f62223d = builder;
    }

    private final void w() {
        BaseTextView baseTextView = i().f41130c;
        baseTextView.setText(this.f62223d.getNegativeButtonText());
        if (this.f62223d.getNegativeButtonClickListener() == null) {
            baseTextView.setOnClickListener(new C0865b());
        } else {
            baseTextView.setOnClickListener(new c());
        }
    }

    private final void x() {
        BaseTextView baseTextView = i().f41131d;
        baseTextView.setText(this.f62223d.getPositiveButtonText());
        if (this.f62223d.getPositiveButtonClickListener() != null) {
            baseTextView.setOnClickListener(new d());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y(b bVar, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        bVar.dismiss();
        return Unit.f60915a;
    }

    @Override // fi.a
    public int g() {
        return R$layout.new_dialog_tip;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "TipDialog";
    }

    @Override // fi.a
    public int n() {
        return DeviceUtil.f48146a.G() - (g.a(60.0f) * 2);
    }

    @Override // fi.a
    public void p() {
        i().f41128a.setText(this.f62223d.getContent());
        x();
        w();
        AppCompatImageView ivClose = i().f41129b;
        Intrinsics.checkNotNullExpressionValue(ivClose, "ivClose");
        b0.c(ivClose, 0L, new Function1() { // from class: li.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit y10;
                y10 = b.y(b.this, (View) obj);
                return y10;
            }
        }, 1, null);
    }
}
